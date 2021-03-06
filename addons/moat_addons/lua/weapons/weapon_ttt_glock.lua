
AddCSLuaFile()

SWEP.HoldType = "pistol"
SWEP.PrintName = "Glock"

if CLIENT then
   SWEP.Slot = 1

   SWEP.Icon = "vgui/ttt/icon_glock"
   SWEP.IconLetter = "c"
end

SWEP.Kind = WEAPON_PISTOL
SWEP.WeaponID = AMMO_GLOCK
SWEP.ENUM = 11

SWEP.Base = "weapon_tttbase"
SWEP.Primary.Recoil	= 1
SWEP.Primary.Damage = 15
SWEP.Primary.Delay = 0.09
SWEP.Primary.Cone = 0.028
SWEP.Primary.ClipSize = 20
SWEP.Primary.Automatic = true
SWEP.Primary.DefaultClip = 20
SWEP.Primary.ClipMax = 60
SWEP.Primary.Ammo = "Pistol"
SWEP.AutoSpawnable = true
SWEP.AmmoEnt = "item_ammo_pistol_ttt"

SWEP.UseHands			= true
SWEP.ViewModelFlip		= false
SWEP.ViewModelFOV		= 54
SWEP.ViewModel  = "models/weapons/cstrike/c_pist_glock18.mdl"
SWEP.WorldModel = "models/weapons/w_pist_glock18.mdl"

SWEP.Primary.Sound = Sound( "Weapon_Glock.Single" )
SWEP.IronSightsPos = Vector( -5.79, -3.9982, 2.8289 )

SWEP.HeadshotMultiplier = 1.75

SWEP.DeploySpeed = 1.4
SWEP.ReloadSpeed = 1
SWEP.ReloadAnim = {
	DefaultReload = {
		Anim = "glock_reload",
		Time = 2.17143,
	},
}