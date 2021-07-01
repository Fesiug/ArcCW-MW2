SWEP.Base = "arccw_mw2_abase"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - MW2"
SWEP.AdminOnly = false
SWEP.WeaponCamBone = tag_camera

SWEP.PrintName = "G18"
SWEP.Trivia_Class = "Machine Pistol"
SWEP.Trivia_Desc = "Fully automatic, close range."

if CLIENT and GetConVar("arccw_mw2cl_trivia"):GetBool() then
SWEP.Trivia_Manufacturer = "Glock Ges.m.b.H."
SWEP.Trivia_Calibre = "9x19mm Para"
SWEP.Trivia_Mechanism = "Short Recoil"
SWEP.Trivia_Country = "Austria"
SWEP.Trivia_Year = 1986
end

SWEP.Slot = 1

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/fesiugmw2/c_glock.mdl"
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos = Vector(-12.5, 3, -2.5),
    ang = Angle(-7, 0, 180),
    scale = 1.25
}
SWEP.WorldModel = "models/weapons/w_pist_glock18.mdl"
SWEP.ViewModelFOV = 65

SWEP.Damage = 30
SWEP.DamageMin = 20
SWEP.Range = 250 * 0.025  -- GAME UNITS * 0.025 = METRES
SWEP.Penetration = 4
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any


SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 33 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 50
SWEP.ReducedClipSize = 18

SWEP.VisualRecoilMult = 0
SWEP.Recoil = 0.65
SWEP.RecoilSide = 0.70
SWEP.RecoilRise = 0.25

SWEP.Delay = 0.054 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {"weapon_pistol"}
SWEP.NPCWeight = 100

SWEP.AccuracyMOA = 15 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 250 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 175

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 110 -- pitch of shoot sound

SWEP.ShootSound =			"weapons/fesiugmw2/fire/glock.wav"
--SWEP.DistantShootSound =	"weapons/fesiugmw2/fire_distant/glock.wav"
SWEP.ShootSoundSilenced =	"weapons/fesiugmw2/fire/usp45_sil.wav"

SWEP.MuzzleEffect = "muzzleflash_4"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1
SWEP.ShellRotateAngle = Angle(0, 90, 0)

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.8
SWEP.SightTime = 0.2

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.IronSightStruct = {
    Pos = Vector(-2.773, 4.524, 0.565),
    Ang = Angle(0.339, 0, 0),
    Magnification = 1.13,
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "revolver"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(7, -3, -1)
SWEP.CustomizeAng = Angle(10, 30, 0)

SWEP.CrouchPos = Vector(-3.364, -1.27, -0.802)
SWEP.CrouchAng = Angle(1.12, 0, -21.444)

SWEP.HolsterPos = Vector(1, 0, 1)
SWEP.HolsterAng = Angle(-10, 12, 0)

SWEP.SprintPos = Vector(0, 0, 1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 18

SWEP.ExtraSightDist = 5

SWEP.AttachmentElements = {
    ["railthegrind"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/fesiugmw2/atts/pistolrail_1.mdl",
                Bone = "tag_weapon",
                Offset = {
                    pos = Vector(-0.5, -0.025, -0.4),
                    ang = Angle(0, 0, 0),
                }
            }
        },
    },
    ["wepcamo-desert"]		= { VMSkin = 1 },
    ["wepcamo-arctic"]		= { VMSkin = 2 },
    ["wepcamo-woodland"]	= { VMSkin = 3 },
    ["wepcamo-digital"]		= { VMSkin = 4 },
    ["wepcamo-urban"]		= { VMSkin = 5 },
    ["wepcamo-bluetiger"]	= { VMSkin = 6 },
    ["wepcamo-redtiger"]	= { VMSkin = 7 },
    ["wepcamo-fall"]		= { VMSkin = 8 },
    ["wepcamo-whiteout"]	= { VMSkin = 9 },
    ["wepcamo-blackout"]        = { VMSkin = 10 },
    ["wepcamo-bushdweller"]     = { VMSkin = 11 },
    ["wepcamo-thunderstorm"]    = { VMSkin = 12 },
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = "optic_lp",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(-1.2, 0, 2),
            vang = Angle(0, 0, 0),
        },
        InstalledEles = {"railthegrind"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(4.6, -0.085, 1.1),
            vang = Angle(0, 0, 0),
            wpos = Vector(26.648, 0.782, -8.042),
            wang = Angle(-9.79, 0, 180)
        },
		VMScale = Vector(0.75, 0.75, 0.75),
    },
    {
        PrintName = "Underbarrel",
		Slot = {"foregrip_pistol"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(1.9, 0, -0.5),
            vang = Angle(0, 0, 0),
            wpos = Vector(14.329, 0.602, -4.453),
            wang = Angle(-10.216, 0, 180)
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac_pistol",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(3.5, -0.05, 0),
            vang = Angle(0, 0, 0),
        },
    },
    {
        PrintName = "Fire Group",
        Slot = "fcg",
        DefaultAttName = "Standard FCG"
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
        PrintName = "Camouflage",
        DefaultAttName = "None",
        Slot = "mw2_wepcamo",
        FreeSlot = true,
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(2.5, -0.45, 0.2),
            vang = Angle(0, 0, 0),
            wpos = Vector(8, 2.5, -4),
            wang = Angle(0, 0, 180)
        },
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 1/30
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
        Time = 10/30
    },
    ["idle_sprint"] = {
        Source = "sprint_loop",
        Time = 30/40
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
        Time = 10/30
    },
    ["draw"] = {
        Source = "pullout",
        Time = 25/30,
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.35,
    },
    ["holster"] = {
        Source = "putaway",
        Time = 25/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.35,
    },
    ["ready"] = {
        Source = "pullout_first",
        Time = 28/30,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_glock_reload_first_lift_v1.wav", 	t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_glock_reload_first_chamber_v1.wav", 	t = 12/30},
					},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.35,
    },
    ["fire"] = {
        Source = "fire",
        Time = 5/30,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "fire_ads",
        Time = 5/30,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        Time = 69/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_glock_reload_lift_v1.wav", 	t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_glock_reload_clipout_v1.wav", 	t = 13/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_glock_reload_clipin_v1.wav", 	t = 51/30},
					},
        Checkpoints = {36, 126},
        FrameRate = 80,
        LHIK = true,
        LHIKIn = 0.65,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 88/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_glock_reload_lift_v1.wav", 	t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_glock_reload_clipout_v1.wav", 	t = 12/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_glock_reload_clipin_v1.wav", 	t = 51/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_glock_reload_chamber_v1.wav", 	t = 68/30},
					},
        Checkpoints = {36, 126, 178},
        FrameRate = 80,
        LHIK = true,
        LHIKIn = 0.65,
        LHIKOut = 0.6,
    },
}