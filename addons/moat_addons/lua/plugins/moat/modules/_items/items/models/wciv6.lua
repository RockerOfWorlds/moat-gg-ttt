ITEM.ID = 7017 --models/player/portal/male_09_snow.mdl
ITEM.Name = "Winter Male 6"
ITEM.Description = "A special model from the holiday season"
ITEM.Model = "models/player/portal/male_09_snow.mdl"
ITEM.Rarity = 4
ITEM.Collection = "Holiday Collection"

function ITEM:OnPlayerSpawn(ply)
	timer.Simple( 1, function() ply:SetModel( self.Model ) end )
end