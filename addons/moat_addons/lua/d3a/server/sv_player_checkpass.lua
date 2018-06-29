D3A.Player = D3A.Player or {}

local staff = {}
staff["moderator"] = true
staff["trialstaff"] = true
staff["admin"] = true
staff["senioradmin"] = true
staff["headadmin"] = true
staff["communitylead"] = true

local vip = {}
vip["credibleclub"] = true
vip["vip"] = true

local max_players, hostname = GetConVarNumber("maxplayers"), GetHostName():lower()
local beta_server, maintenance_server = hostname:find("beta"), hostname:find("maintenance")
local default_avatar = "https://moat.gg/assets/img/mg-logo2.jpg"

local players_connecting = {}
local kick_reasons = {}
kick_reasons["banned"] = "\nYou are banned!\n==================\nTime left: #\nReason: #\n==================\nThink it's an unfair ban?\nHead to https://moat.gg/unban to make an unban appeal"
kick_reasons["full"] = "Server Full!\n\nThere is a reserved slot for staff members only, sorry! We still love you <3"
kick_reasons["ttc"] = "This is the Moat.GG Terror City server.\n\nYou must be at least level 10 to join, as it's a bit more advanced than regular TTT. Please join one of our regular servers, sorry <3"
kick_reasons["maintenance"] = "Maintenance mode is active on this server! Sit tight while we work on things. Please try again later <3"

function D3A.Player.InsertNewPlayerToTable(SteamID, SteamID32, IP, Name, AvatarURL)
	AvatarURL = AvatarURL or default_avatar
	local qstr = "INSERT INTO player "
	qstr = qstr .. "(steam_id, name, rank, first_join, last_join, avatar_url, playtime, inventory_credits, event_credits, donator_credits)"
	qstr = qstr .. " VALUES (#, #, NULL, UNIX_TIMESTAMP(), NULL, #, 0, 0, 0, 0);"

	qstr = qstr .. "INSERT INTO player_iplog (SteamID, Address, LastSeen) VALUES (#, #, UNIX_TIMESTAMP());"

	D3A.MySQL.FormatQuery(qstr, SteamID, Name, AvatarURL, SteamID, IP, function()
		http.Fetch("https://moat.gg/api/steam/avatar/" .. SteamID)
	end)

	D3A.Print(SteamID32 .. " | Connecting for the first time.")
end

function D3A.Player.KickID(steamid32, type, ...)
	local args, arg, str = {...}, 0, kick_reasons[type] or "Whoopsies! Something went wrong!"
	str = str:gsub("#", function() arg = arg + 1 return tostring(args[arg]) end)

	game.KickID(steamid32, tostring(str))
end

function D3A.Player.CheckReserved(steamid, rank)
	if (maintenance_server and (rank and rank ~= "communitylead")) then
		D3A.Player.KickID(steamid, "maintenance")
		return
	end

	local cnt = player.GetCount() + 1
	if (cnt < max_players) then return end
	if (staff[rank]) then return end
	local pls = player.GetAll()
	local staff_found = false

	for i = 1, #pls do
		local g = pls[i]:GetUserGroup()

		if (g and staff[g]) then
			staff_found = true
			break
		end
	end

	if (staff_found) then return end
	D3A.Player.KickID(steamid, "full")
end

function D3A.Player.CheckConnecting(SteamID, SteamID32)
	if (not SteamID) then return end
	SteamID32 = SteamID32 or util.SteamIDFrom64(SteamID)

	if (players_connecting[SteamID] and players_connecting[SteamID][1] > CurTime()) then
		if (players_connecting[SteamID][2]) then
			D3A.Player.KickID(SteamID32, "banned", players_connecting[SteamID][3] or "", players_connecting[SteamID][4] or "")
		elseif (players_connecting[SteamID][5]) then
			D3A.Player.KickID(SteamID32, "ttc")
		end

		return
	end

	players_connecting[SteamID] = {}
	players_connecting[SteamID][1] = 0
end

function D3A.Player.CheckIfBanned(SteamID, SteamID32)
	if (not SteamID) then return end
	SteamID32 = SteamID32 or util.SteamIDFrom64(SteamID)

	D3A.Bans.IsBanned(SteamID32, function(isbanned, data)
		if (not isbanned) then return end
		local time, length, reason = tonumber(data.Current.time), tonumber(data.Current.length), reason
		local exp = length == 0 and "permanently" or tostring(math.Round(((time + length) - os.time())/60, 2) .. " minutes")

		players_connecting[SteamID][2] = true
		players_connecting[SteamID][3] = exp
		players_connecting[SteamID][4] = reason
		D3A.Player.KickID(SteamID32, "banned", exp, reason)
	end)
end

function D3A.Player.CheckBetaAccess(SteamID, SteamID32)
	if (not SteamID) then return end
	SteamID32 = SteamID32 or util.SteamIDFrom64(SteamID)

	D3A.MySQL.Query("SELECT stats_tbl FROM moat_stats WHERE `steamid` ='" .. SteamID32 .. "';", function(d)
		if (d and d[1]) then
			local t = d[1].stats_tbl
			if (t) then
				local t2 = util.JSONToTable(t)
				if (t2) then
					local lvl = t2.l
					if (lvl and tonumber(lvl) >= 10) then 
						return 
					end
				end
			end
		end

		players_connecting[SteamID][5] = true
		D3A.Player.KickID(SteamID32, "ttc")
	end)
end

function D3A.Player.LoadPlayerInfo(SteamID, SteamID32, Name, IP)
	D3A.MySQL.Query(D3A_selectUserInfo(SteamID), function(d)
		if (d and d[1]) then
			D3A.Player.Cache[SteamID] = d[1]

			D3A.Print(SteamID32 .. " | Connecting")
			D3A.Player.CheckReserved(SteamID32, d[1].rank or "user")
		else
			D3A.Player.InsertNewPlayerToTable(SteamID, SteamID32, IP, Name)
			D3A.Player.CheckReserved(SteamID32, "user")
		end
	end)
end

function D3A.Player.CheckPassword(SteamID, IP, sv_Pass, cl_Pass, Name)
	local SteamID32 = util.SteamIDFrom64(SteamID)
	IP = IP and string.Explode(":", IP)[1] or "0.0.0.0"

	if (sv_Pass != "") and (cl_Pass != sv_Pass) then
		return false, "Invalid password: " .. cl_Pass
	end

	-- Check if joining too fast
	D3A.Player.CheckConnecting(SteamID, SteamID32)

	-- Check if banned
	D3A.Player.CheckIfBanned(SteamID, SteamID32)

	-- Load or create player data
	D3A.Player.LoadPlayerInfo(SteamID, SteamID32, Name, IP)

	if (beta_server) then
		D3A.Player.CheckBetaAccess(SteamID, SteamID32)
	end

	players_connecting[SteamID][1] = CurTime() + 5
end
hook.Add("CheckPassword", "D3A.Player.CheckPassword", D3A.Player.CheckPassword)