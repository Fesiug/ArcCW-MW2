
--
-- Necessities
--
SWEP.Base									= "arccw_mw2_abase"
SWEP.UseHands								= true
SWEP.Spawnable								= true
SWEP.AdminOnly								= false
SWEP.Slot									= 4


--
-- Description
--
SWEP.Category								= "ArcCW - MW2 - Explosives"
SWEP.PrintName								= "Stinger"
SWEP.Trivia_Class							= "Launcher"
SWEP.Trivia_Desc							= "Vehicle lock-on only."


-- Presentation
SWEP.ViewModel								= "models/weapons/arccw/fesiugmw2_2/c_stinger.mdl"
SWEP.ViewModelFOV							= 65
SWEP.WorldModel								= "models/weapons/w_rif_m4a1.mdl"
SWEP.MirrorVMWM								= true
SWEP.WorldModelOffset = {
	pos = Vector(-1, 1, -7),
	ang = Angle(-10, 0, 180),
	scale = 1.25
}


--
-- Damage
--
SWEP.Damage									= 0
SWEP.DamageMin								= 0
SWEP.RangeMin								= 0 * 0.025  -- GAME UNITS * 0.025 = METRES
SWEP.Range									= 0 * 0.025  -- GAME UNITS * 0.025 = METRES
SWEP.Penetration							= 7
SWEP.DamageType								= DMG_BLAST
SWEP.ShootEntity							= "amw2_proj_rocket"
SWEP.MuzzleVelocity							= 5000


--
-- Recoil
--
SWEP.Recoil									= 0.5
SWEP.RecoilSide								= 0.3
	-- Meaningless shit that means nothing
SWEP.VisualRecoilMult						= 0
SWEP.RecoilRise								= 0.2

--
-- Ability
--
SWEP.Primary.Ammo							= "RPG_Rocket"
SWEP.Primary.ClipSize						= 1
SWEP.ChamberSize							= 0
SWEP.Delay									= 0.1
SWEP.Num									= 1
SWEP.Firemodes = {
	{ Mode = 2 },
	{ Mode = 0 }
}
SWEP.Hook_ShouldNotFire = function(wep)
	return (wep:GetSightDelta() != 0)
end
SWEP.BarrelLength							= 48

-- Speed
SWEP.SpeedMult								= 1
SWEP.SightedSpeedMult						= 0.4
SWEP.SightTime								= 0.5

--
-- Accuracy
--
SWEP.AccuracyMOA							= 120
SWEP.HipDispersion							= 500
SWEP.MoveDispersion							= 150


--
-- Audio
--
SWEP.ShootVol								= 110
SWEP.ShootPitch								= 100

SWEP.ShootSound								= ")weapons/fesiugmw2/fire/rpg7.wav"
--SWEP.ShootMechSound							= ArcCW_MW2_Mech
--SWEP.DistantShootSound						= "weapons/fesiugmw2/fire_distant/m4_mp.wav"


--
-- Attachments & Shells
--
SWEP.MuzzleEffectAttachment					= 1
SWEP.CaseEffectAttachment					= 2
SWEP.CamAttachment							= 3
SWEP.MuzzleEffect							= "muzzleflash_shotgun"

SWEP.ShellModel								= "models/shells/shell_556.mdl"
SWEP.ShellRotateAngle						= Angle(0, 90, 0)
SWEP.ShellPitch								= 100
SWEP.ShellScale								= 1


--
-- Attachments
--
SWEP.AttachmentsElements = {}

SWEP.Attachments = {}


--
-- Presentation 2
--
SWEP.IronSightStruct = {
	Pos = Vector(-0.93, -0.34, 0.71),
	Ang = Angle(17.6, -18.8, 42),
	ViewModelFOV = 65 / 2.6,
	Magnification = 2.6,
}

SWEP.AnimShoot								= ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.HoldtypeHolstered						= "passive"
SWEP.HoldtypeActive							= "smg"
SWEP.HoldtypeSights							= "rpg"

SWEP.ActivePos								= AMW2_Vector(0, 0, 0)
SWEP.ActivePos.z							= SWEP.ActivePos.z + 1
SWEP.ActiveAng								= AMW2_Angle(0, 0, 0)

SWEP.CustomizePos							= Vector(10.479, 0, -1.321)
SWEP.CustomizeAng							= Angle(18.2, 39.4, 14.8)

SWEP.HolsterPos								= Vector(3, 3, 3)
SWEP.HolsterAng								= Angle(-15, 12, 0)

SWEP.SprintPos								= Vector(0, 0, 1)
SWEP.SprintAng								= Angle(0, 0, 0)


--
-- Animation
--
SWEP.BulletBones = {
	[1] = "tag_clip"
}

SWEP.Animations = {
	["idle"] = {
		Source = "idle",
	},
	["enter_sprint"] = {
		Source = "sprint_in",
	},
	["idle_sprint"] = {
		Source = "sprint_loop",
	},
	["exit_sprint"] = {
		Source = "sprint_out",
	},
	["draw"] = {
		Source = "pullout",
		SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
	},
	["holster"] = {
		Source = "putaway",
	},
	["fire"] = {
		Source = "fire_ads",
	},
	["reload"] = {
		Source = "reload",
		MinProgress = 1.169, -- temp
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		SoundTable = {
			{s = "weapons/fesiugmw2/foley/wpfoly_rpg_reload_lift_v1.wav", 		t = 0/24}, -- temp
			{s = "weapons/fesiugmw2/foley/wpfoly_rpg_reload_insert_v2.wav", 	t = 20/24}, -- temp
			{s = "weapons/fesiugmw2/foley/wpfoly_rpg_reload_twist_v2.wav", 	    t = 34/24}, -- temp
		},
	},
}