SWEP.Base = "arccw_mw2_abase"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - MW2"
SWEP.AdminOnly = false
SWEP.WeaponCamBone = tag_camera

SWEP.PrintName = "Desert Eagle"
SWEP.Trivia_Class = "Handgun"
SWEP.Trivia_Desc = "Semi-automatic (single fire)"

if CLIENT and GetConVar("arccw_mw2cl_trivia"):GetBool() then
SWEP.Trivia_Manufacturer = "Magnum Research"
SWEP.Trivia_Calibre = ".50 Action Express"
SWEP.Trivia_Mechanism = "Gas-Operated"
SWEP.Trivia_Country = "Israel"
SWEP.Trivia_Year = 1982
end

SWEP.Slot = 1

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/fesiugmw2/c_desert_eagle_3.mdl"
SWEP.MirrorVMWM = false
SWEP.WorldModel = "models/weapons/w_pist_deagle.mdl"
SWEP.ViewModelFOV = 65

SWEP.Damage = 50
SWEP.DamageMin = 30
SWEP.Range = 1200 * 0.025  -- GAME UNITS * 0.025 = METRES
SWEP.Penetration = 12
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any


SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 7 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 10
SWEP.ReducedClipSize = 4

SWEP.VisualRecoilMult = 0
SWEP.Recoil = 1
SWEP.RecoilSide = 1

SWEP.Delay = 0.079 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0,
    },
}

SWEP.NPCWeaponType = {"weapon_ar2", "weapon_smg1"}
SWEP.NPCWeight = 150

SWEP.AccuracyMOA = 5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 250 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 100

SWEP.Primary.Ammo = "357" -- what ammo type the gun uses

SWEP.ShootVol = 130 -- volume of shoot sound
SWEP.ShootPitch = 115 -- pitch of shoot sound

SWEP.ShootSound =			"weapons/fesiugmw2/fire/deagle.wav"
--SWEP.DistantShootSound =	"weapons/fesiugmw2/fire_distant/deagle.wav"
SWEP.ShootSoundSilenced =	"weapons/fesiugmw2/fire/usp45_sil.wav"

SWEP.MuzzleEffect = "muzzleflash_pistol_deagle"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.5
SWEP.ShellRotateAngle = Angle(0, 90, 0)

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.8
SWEP.SightTime = 0.125


SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.IronSightStruct = {
    Pos = Vector(-1.554, 2.392, 0.9),
    Ang = Angle(-0.347, 0, 0),
    ViewModelFOV = 65,
    Magnification = 1,
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "revolver"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(4, -3, -1)
SWEP.CustomizeAng = Angle(10, 19, 0)

SWEP.CrouchPos = Vector(-2.764, -0.927, -0.202)
SWEP.CrouchAng = Angle(1.12, -1, -21.444)

SWEP.HolsterPos = Vector(3, 0, 0)
SWEP.HolsterAng = Angle(-10, 25, 0)

SWEP.SprintPos = Vector(0, 0, 1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 18

SWEP.ExtraSightDist = 15

-----[ Tactical knife sheet ]------
	SWEP.CanBash				= true -- Tac knife will save us
	--SWEP.MeleeDamage			= 100
	--SWEP.MeleeRange				= 16
	--SWEP.MeleeDamageType		= DMG_CLUB
	--SWEP.MeleeTime				= 0.8
	SWEP.MeleeGesture			= ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE
	--SWEP.MeleeAttackTime		= 0.079
	SWEP.MeleeMissSound			= ""
	SWEP.MeleeHitSound			= "MW2Common.Melee.HitWorld"
	SWEP.MeleeHitNPCSound		= "MW2Common.Melee.HitFleshy_Slice"

SWEP.AttachmentElements = {
    ["nolaser"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
        WMBodygroups = {},
    },
    ["skin_gold"] = {
        VMBodygroups = {{ind = 0, bg = 1}},
        WMBodygroups = {},
    },
    ["altirons"] = {
        Override_IronSightStruct = {
            Pos = Vector(-1.701, -2.346, -0.1),
            Ang = Angle(-0.347, 0, 0),
            ViewModelFOV = 65,
            Magnification = 1,
        },
        VMBodygroups = {{ind = 1, bg = 1}},
    },
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = "optic_lp",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(0, 0, 0),
            vang = Angle(0, 0, 0),
        },
        SlideAmount = {
            vmin = Vector(3.2, 0, 1.7),
            vmax = Vector(5.5, 0, 1.7),
        },
        ExcludeFlags = {"arcticfixyoshit1","cantuseshitinakimboyet"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(6.2, 0, 1),
            vang = Angle(0, 0, 0),
            wpos = Vector(26.648, 0.782, -8.042),
            wang = Angle(-9.79, 0, 180)
        },
        ExcludeFlags = {"cantuseshitinakimboyet"},
    },
    {
        PrintName = "Underbarrel",
		Slot = {"foregrip_pistol", "style_pistol", "mw2_tacknife"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(1.9, 0, -0.5),
            vang = Angle(0, 0, 0),
            wpos = Vector(14.329, 0.602, -4.453),
            wang = Angle(-10.216, 0, 180)
        },
        InstalledEles = {"nolaser"},
        MergeSlots = {9},
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(4.4, 0, 0),
            vang = Angle(0, 0, 0),
        },
        InstalledEles = {"nolaser"},
    },
    {
        PrintName = "Fire Group",
        Slot = "fcg",
        DefaultAttName = "Standard FCG",
        ExcludeFlags = {"cantuseshitinakimboyet"},
    },
    {
        PrintName = "Ammo Type",
        Slot = "ammo_bullet"
    },
    {
        PrintName = "Perk",
        Slot = "perk"
    },
    {
        PrintName = "Skin",
        Slot = {"skin_mw2deagle"},
        DefaultAttName = "Two-Tone",
        FreeSlot = true,
		Hidden = false,
		DefaultAttIcon = Material("entities/acwatt_deagle_mw2.png", "smooth")
    },
    {
        PrintName = "Akimbotest",
        DefaultAttName = "No LH",
        Slot = "akimbotest",
        Bone = "tag_view",
        Offset = {
            vpos = Vector(0, 0, 0),
            vang = Angle(0, 0, 0),
        },
        Hidden = true,
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(3, -0.4, 0.5),
            vang = Angle(0, 0, 0),
            wpos = Vector(9.625, 2.5, -3.75),
            wang = Angle(0, 0, 180)
        },
    },
}

SWEP.Hook_SelectReloadAnimation = function(wep, anim)
    if wep.Attachments[3].Installed == "mw2_tacticalknife" then
        return anim .. "_knife"
    elseif wep.Attachments[9].Installed then
        return anim .. "_akimbo_right"
    end
end
SWEP.Hook_TranslateAnimation = function(wep, anim)
    if wep.Attachments[3].Installed == "mw2_tacticalknife" then
        return anim .. "_knife"
    elseif wep.Attachments[9].Installed then
        return anim .. "_akimbo_right"
    end
end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 2/30
    },
    ["idle_empty"] = {
        Source = "idle_empty",
        Time = 2/30
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
        Time = 11/30
    },
    ["idle_sprint"] = {
        Source = "sprint_loop",
        Time = 31/40
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
        Time = 11/30
    },
    ["draw"] = {
        Source = "pullout",
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
        Time = 29/30 /4,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.35,
    },
    ["holster"] = {
        Source = "putaway",
        Time = 33/30 /4,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.35,
    },
    ["fire"] = {
        Source = "fire",
        Time = 15/30,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "fire_ads",
        Time = 15/30,
        ShellEjectAt = 0,
    },
    ["fire_empty"] = {
        Source = "fire_last",
        Time = 15/30,
        ShellEjectAt = 0,
    },
    ["fire_iron_empty"] = {
        Source = "fire_last",
        Time = 15/30,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        Time = 58/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_de50_reload_clipout_v1.wav", 	t = 10/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_de50_reload_clipin_v1.wav", 	t = 39/30},
					},
        Checkpoints = {24, 97},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.4,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 62/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_de50_reload_clipout_v1.wav", 	t = 10/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_de50_reload_clipin_v1.wav", 	t = 39/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_de50_reload_chamber_v1.wav", 	t = 47/30},
					},
        Checkpoints = {24, 97, 131},
        FrameRate = 37,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.6,
    },
---------------------------------------------------------
--------- LE TACTICAL KNIFE XDXDXDXD---------------------
---------------------------------------------------------
		["idle_knife"] = {
			Source = "idle_knife",
			Time = 300/30
		},
		["enter_sprint_knife"] = {
			Source = "sprint_in_knife",
			Time = 10/30
		},
		["idle_sprint_knife"] = {
			Source = "sprint_loop_knife",
			Time = 30/40
		},
		["exit_sprint_knife"] = {
			Source = "sprint_out_knife",
			Time = 10/30
		},
		["fire_knife"] = {
			Source = "fire_knife",
			Time = 15/30,
			ShellEjectAt = 0,
		},
		["fire_iron_knife"] = {
			Source = "fire_ads_knife",
			Time = 15/30,
			ShellEjectAt = 0,
		},
		["fire_empty_knife"] = {
			Source = "fire_knife",
			Time = 15/30,
			ShellEjectAt = 0,
		},
		["fire_iron_empty_knife"] = {
			Source = "fire_knife",
			Time = 15/30,
			ShellEjectAt = 0,
		},
		["draw_knife"] = {
			Source = "pullout_knife",
			SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
			Time = 29/30 /4,
			LHIK = true,
			LHIKIn = 0,
			LHIKOut = 0.35,
		},
		["holster_knife"] = {
			Source = "putaway_knife",
			Time = 33/30 /4,
			LHIK = true,
			LHIKIn = 0,
			LHIKOut = 0.35,
		},
		["reload_knife"] = {
			Source = "reload_knife",
			Time = 58/30,
			TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
			SoundTable = {
							{s = "weapons/fesiugmw2/foley/wpfoly_de50_reload_clipout_v1.wav", 	t = 10/30},
							{s = "weapons/fesiugmw2/foley/wpfoly_de50_reload_clipin_v1.wav", 	t = 39/30},
						},
			Checkpoints = {24, 97},
			FrameRate = 30,
			LHIK = true,
			LHIKIn = 0.5,
			LHIKOut = 0.4,
		},
		["reload_empty_knife"] = {
			Source = "reload_empty_knife",
			Time = 62/30,
			TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
			SoundTable = {
							{s = "weapons/fesiugmw2/foley/wpfoly_de50_reload_clipout_v1.wav", 	t = 10/30},
							{s = "weapons/fesiugmw2/foley/wpfoly_de50_reload_clipin_v1.wav", 	t = 39/30},
							{s = "weapons/fesiugmw2/foley/wpfoly_de50_reload_chamber_v1.wav", 	t = 47/30},
						},
			Checkpoints = {24, 97, 131},
			FrameRate = 37,
			LHIK = true,
			LHIKIn = 0.5,
			LHIKOut = 0.6,
		},
		["bash_knife"] = {
			Source = "melee_knife",
			SoundTable = {{s = "MW2Common.Melee.Swing", 		t = 0}},
			Time = 97/120 / 1.6, -- damn you universal
			LHIK = true,
		},

---------------------------------------------------------
--------- LE akimbo gun ---------------------
---------------------------------------------------------
    ["idle_akimbo_right"] = {
        Source = "idle_akimbo_right",
        Time = 200/30
    },
    ["idle_empty_akimbo_right"] = {
        Source = "idle_empty_akimbo_right",
        Time = 200/30
    },
    ["enter_sprint_akimbo_right"] = {
        Source = "sprint_in_akimbo_right",
        Time = 11/30
    },
    ["idle_sprint_akimbo_right"] = {
        Source = "sprint_loop_akimbo_right",
        Time = 31/40
    },
    ["exit_sprint_akimbo_right"] = {
        Source = "sprint_out_akimbo_right",
        Time = 11/30
    },
    ["draw_akimbo_right"] = {
        Source = "pullout_akimbo_right",
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
        Time = 30/30 /4,
    },
    ["holster_akimbo_right"] = {
        Source = "putaway_akimbo_right",
        Time = 34/30 /4,
    },
    ["fire_akimbo_right"] = {
        Source = "fire_akimbo_right",
        Time = 16/30,
        ShellEjectAt = 0,
    },
    ["fire_empty_akimbo_right"] = {
        Source = "fire_last_akimbo_right",
        Time = 16/30,
        ShellEjectAt = 0,
    },
    ["reload_akimbo_right"] = {
        Source = "reload_akimbo_right",
        Time = 58/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_de50_reload_clipout_v1.wav", 	t = 10/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_de50_reload_clipin_v1.wav", 	t = 39/30},
					},
    },
    ["reload_empty_akimbo_right"] = {
        Source = "reload_empty_akimbo_right",
        Time = 63/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_de50_reload_clipout_v1.wav", 	t = 10/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_de50_reload_clipin_v1.wav", 	t = 39/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_de50_reload_chamber_v1.wav", 	t = 48/30},
					},
    },
}