SWEP.Base = "arccw_mw2_abase"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - MW2, UNSUPPORTED" -- edit this if you like
SWEP.AdminOnly = false
SWEP.WeaponCamBone = tag_camera

SWEP.PrintName = "AK-47"
SWEP.Trivia_Class = "Assault Rifle"
SWEP.Trivia_Desc = "Fully automatic, all purpose weapon."

if CLIENT and GetConVar("arccw_mw2cl_trivia"):GetBool() then
SWEP.Trivia_Manufacturer = "Colt"
SWEP.Trivia_Calibre = "5.56x45mm NATO"
SWEP.Trivia_Mechanism = "Gas-Operated"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1994
end

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/fesiugmw2/mactonight/c_mw2_ak47.mdl"
SWEP.MirrorVMWM = false
SWEP.WorldModel = "models/weapons/w_rif_ak47.mdl"
SWEP.ViewModelFOV = 65

SWEP.Damage = 40 * GetConVar("arccw_mw2_bal_dmgmul"):GetFloat()
SWEP.DamageMin = 30 * GetConVar("arccw_mw2_bal_dmgmul"):GetFloat() -- damage done at maximum range
SWEP.Range = 2000 * 0.025  -- GAME UNITS * 0.025 = METRES
SWEP.Penetration = 10
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any


SWEP.ChamberSize = 1 * GetConVar("arccw_mw2_chambering"):GetInt()
SWEP.Primary.ClipSize = 30 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 45
SWEP.ReducedClipSize = 15

SWEP.VisualRecoilMult = 0
SWEP.Recoil = 0.67
SWEP.RecoilSide = 0.34
SWEP.RecoilRise = 0

SWEP.Delay = 0.085 -- 60 / RPM.
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

SWEP.NPCWeaponType = {"weapon_ar2", "weapon_smg1"}
SWEP.NPCWeight = 150

SWEP.AccuracyMOA = 2.5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 500 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Primary.Ammo = "ar2" -- what ammo type the gun uses

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound =			"weapons/fesiugmw2/fire/ak47.wav"
--SWEP.DistantShootSound =	"weapons/fesiugmw2/fire_distant/ak47.wav"
SWEP.ShootSoundSilenced =	"weapons/fesiugmw2/fire/m4_sil.wav"

SWEP.MuzzleEffect = "muzzleflash_4"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellPitch = 95
SWEP.ShellScale = 1.5
SWEP.ShellRotateAngle = Angle(0, 90, 0)

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.95
SWEP.SightedSpeedMult = 0.38
SWEP.SightTime = 0.25

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-2.59, -3.606, 0.796),
    Ang = Angle(-0.309, 0, 0),
    Magnification = 1.3,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(7.92, 0, 1.08)
SWEP.CustomizeAng = Angle(6.8, 37.7, 10.3)

SWEP.HolsterPos = Vector(3, 0, 0)
SWEP.HolsterAng = Angle(-10, 25, 0)

SWEP.SprintPos = Vector(0, 0, 1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 27

SWEP.ExtraSightDist = 5

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = "optic", -- what kind of attachments can fit here, can be string or table
        Bone = "tag_weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(1.5, 0, 3.5), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
        },
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(21.5, 0, 1.6),
            vang = Angle(0, 0, 0),
            wpos = Vector(26.648, 0.782, -8.042),
            wang = Angle(-9.79, 0, 180)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "ubgl", "bipod"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(18.427, 0, -1.04),
            vang = Angle(0, 0, 0),
            wpos = Vector(14.329, 0.602, -4.453),
            wang = Angle(-10.216, 0, 180)
        },
        SlideAmount = {
            vmin = Vector(6.748, 0, 0.04),
            vmax = Vector(12.427, 0, 0.04),
            wmin = Vector(15, 0.74, -4.301),
            wmax = Vector(15, 0.74, -4.301),
        }
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(12.5, -0.7, 2.25), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 90),
            wpos = Vector(15.625, -0.253, -6.298),
            wang = Angle(-8.829, -0.556, 90)
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
        PrintName = "Charm", -- print name
        DefaultAttName = "None",
        Slot = "charm", -- what kind of attachments can fit here, can be string or table
        Bone = "tag_weapon", -- relevant bone any attachments will be mostly referring to
        FreeSlot = true,
        Offset = {
            vang = Angle(0, 0, 0),
            wang = Angle(-9.738, 0, 180)
        },
        SlideAmount = { -- how far this attachment can slide in both directions.
            -- overrides Offset.
            vmin = Vector(3.7, -0.5, 0.75),
            vmax = Vector(6.5, -0.5, 2.5),
            wmin = Vector(5.36, 0.739, -5.401),
            wmax = Vector(5.36, 0.739, -5.401),
        },
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 0.06
    },
    ["draw"] = {
        Source = "draw",
        Time = 1,
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["ready"] = {
        Source = "draw_first",
        Time = 1.53,
        SoundTable = {
						{s = "MW2Common.Deploy", 		t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_chamber_v4.wav", 	t = 40/80},
					},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = "fire",
        Time = 0.2,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "fire_ads",
        Time = 0.2,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload_tac",
        Time = 2.83,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_lift_v4.wav", 		t = 0/80},
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_clipout_v5.wav", 	t = 20/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_clipin_v4.wav", 	t = 55/30},
					},
        Checkpoints = {24, 97},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 3.56,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_lift_v4.wav", 		t = 0/80},
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_clipout_v5.wav", 	t = 20/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_clipin_v4.wav", 	t = 55/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_chamber_v4.wav", 	t = 75/30},
					},
        Checkpoints = {24, 97, 131},
        FrameRate = 37,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.6,
    },
}