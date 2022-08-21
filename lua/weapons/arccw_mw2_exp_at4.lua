
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
SWEP.PrintName								= "AT4-HS"
SWEP.Trivia_Class							= "Launcher"
SWEP.Trivia_Desc							= "Free fire or vehicle lock-on."


-- Presentation
SWEP.ViewModel								= "models/weapons/arccw/fesiugmw2_2/c_at4.mdl"
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
SWEP.AccuracyMOA							= 60
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
	Pos = Vector(-0.66, -8, 0.72),
	Ang = Angle(13.2, -10.1, 11),
	ViewModelFOV = 65 / 1.1818,
	Magnification = 1.1818,
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
	["ready"] = {
		Source = "pullout_first",
		SoundTable = {
			{s = "weapons/fesiugmw2/foley/wpfoly_at4_raise_first_v1.wav", 		t = 0/30}, -- temp
		},
	},
	["draw"] = {
		Source = "pullout",
		SoundTable = {
			{s = "weapons/fesiugmw2/foley/wpfoly_at4_raise_v1.wav", 		t = 0/30}, -- temp
		},
	},
	["holster"] = {
		Source = "putaway",
		SoundTable = {
			{s = "weapons/fesiugmw2/foley/wpfoly_at4_drop_v1.wav", 		t = 0/30}, -- temp
		},
	},
	["fire"] = {
		Source = "fire_ads",
	},
	["reload"] = {
		Source = "reload",
		Time = 3,
		MinProgress = 2.299, -- temp
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
	},
}

--
-- Rocket launcher code
--
local target = false
local lastt = 0

local track1 = 0

SWEP.Hook_Think = function(wep)
	--local totrack = wep:GetOwner():GetEyeTrace().Entity
	if SERVER and wep:GetSightDelta() == 0 then
		local hs = 32
		local p = wep:GetOwner()
		local tr = {
			start = p:EyePos(),
			endpos = p:EyePos() + (p:EyeAngles():Forward() * 65535),
			filter = p,
			ignoreworld = true,
		}

		tr = util.TraceLine(tr)

		local totrack = tr.Entity
		if IsValid(totrack) and !totrack.DoNotTrack and totrack:GetVelocity():Length2D() > 10 then
			if lastt < CurTime() then
				track1 = track1 + 1
				if track1 >= 3 then
					wep:EmitSound( "weapons/fesiugmw2/organizelater/weap_hellfire_lock.wav", 70, 100, 1, CHAN_STATIC )
				else
					wep:EmitSound( "weapons/fesiugmw2/organizelater/bomb_tick_digital1.wav", 70, 100, 1, CHAN_STATIC )
				end
				lastt = CurTime() + 1
			end
			if track1 >= 3 then
				target = totrack
			else
				target = false
			end
		else
			track1 = 0
		end
		--print(target)
	end
end

SWEP.Hook_PostFireRocket = function(wep, ent)
	ent.Homing = true
	ent.WhoToTrack = target
	print(ent.WhoToTrack)
	print(target)
	ent.Velocity = 60 / ArcCW.HUToM
	ent.AngleDodgyness = 0
	ent.AngleDodgynessTime = 0
end