SWEP.Base = "arccw_mw2_abase"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - MW2, UNSUPPORTED" -- edit this if you like
SWEP.AdminOnly = false
SWEP.WeaponCamBone = tag_camera

SWEP.PrintName = "M240"
SWEP.Trivia_Class = "Light Machine Gun"
SWEP.Trivia_Desc = "Fully automatic, large magazines."

if CLIENT and GetConVar("arccw_mw2cl_trivia"):GetBool() then
SWEP.Trivia_Manufacturer = "Belgium"
SWEP.Trivia_Calibre = "7.62x51mm NATO"
SWEP.Trivia_Mechanism = "Gas-Operated"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1977
end

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/fesiugmw2/mactonight/c_mw2_m240.mdl"
SWEP.MirrorVMWM = false
SWEP.WorldModel = "models/weapons/w_mach_m249para.mdl"
SWEP.ViewModelFOV = 65

SWEP.Damage = 30 * GetConVar("arccw_mw2_bal_dmgmul"):GetFloat()
SWEP.DamageMin = 30 * GetConVar("arccw_mw2_bal_dmgmul"):GetFloat() -- damage done at maximum range
SWEP.Range = 1000 * 0.025  -- GAME UNITS * 0.025 = METRES
SWEP.Penetration = 7
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any


SWEP.ChamberSize = 0 * GetConVar("arccw_mw2_chambering"):GetInt()
SWEP.Primary.ClipSize = 100 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 200
SWEP.ReducedClipSize = 50

SWEP.VisualRecoilMult = 0
SWEP.Recoil = 0.5
SWEP.RecoilSide = 0.5
SWEP.RecoilRise = 0

SWEP.Delay = 0.064 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {"weapon_ar2", "weapon_smg1"}
SWEP.NPCWeight = 150

SWEP.AccuracyMOA = 10 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 600 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Primary.Ammo = "smg1" -- what ammo type the gun uses

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 70 -- pitch of shoot sound

SWEP.ShootSound =			"weapons/fesiugmw2/fire/m240.wav"
SWEP.ShootMechSound =       ArcCW_MW2_Mech
--SWEP.DistantShootSound =	"weapons/fesiugmw2/fire_distant/m240.wav"
SWEP.ShootSoundSilenced =	"weapons/fesiugmw2/fire/m240_sil.wav"

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = "models/shells/shell_762nato.mdl"
SWEP.ShellScale = 1.5
SWEP.ShellRotateAngle = Angle(0, 90, 0)

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.875
SWEP.SightedSpeedMult = 0.35
SWEP.SightTime = 0.25

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-3.776, -2.9, 0.579),
    Ang = Angle(-0.101, 0, 0),
    Magnification = 1.3,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(9.76, 0, -1.88)
SWEP.CustomizeAng = Angle(7.8, 27.7, 11.699)

SWEP.HolsterPos = Vector(3, 0, 0)
SWEP.HolsterAng = Angle(-10, 25, 0)

SWEP.SprintPos = Vector(0, 0, 1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 32

SWEP.AttachmentElements = {
    ["nors"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {},
    },
    ["bipod"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
        WMBodygroups = {},
    },
}

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    [14] = "j_ammo_014",
    [13] = "j_ammo_013",
    [12] = "j_ammo_012",
    [11] = "j_ammo_011",
    [10] = "j_ammo_010",
    [9] = "j_ammo_09",
    [8] = "j_ammo_08",
    [7] = "j_ammo_07",
    [6] = "j_ammo_06",
    [5] = "j_ammo_05",
    [4] = "j_ammo_04",
    [3] = "j_ammo_03",
    [2] = "j_ammo_02",
    [1] = "j_ammo_01",
}

SWEP.ExtraSightDist = 5

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = "optic", -- what kind of attachments can fit here, can be string or table
        Bone = "j_ammo_cover", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-8.5, 0, 0.8), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wang = Angle(-9.738, 0, 180)
        },
        SlideAmount = { -- how far this attachment can slide in both directions.
            -- overrides Offset.
            vmin = Vector(-8.5, 0, 0.8),
            vmax = Vector(-5, 0, 0.8),
        },
        InstalledEles = {"nors"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(34, 0, 2.2),
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
            vmin = Vector(15.748, 0, 0),
            vmax = Vector(22.427, 0, 0),
            wmin = Vector(15, 0.74, -4.301),
            wmax = Vector(15, 0.74, -4.301),
        },
        InstalledEles = {"bipod"},
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(20, -1.4, 1.4), -- offset that the attachment will be relative to the bone
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
            vmin = Vector(2.7, -0.8, 2),
            vmax = Vector(6.5, -0.8, 2),
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
        Time = 1.4,
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 0.35,
    },
    ["fire"] = {
        Source = "fire",
        Time = 0.33,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "fire_ads",
        Time = 0.33,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload_tac",
        Time = 7.75,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {35, 97, 120, 160, 190},
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_rpd_reload_lift_v1.wav", 			t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_rpd_reload_chamber_v1.wav", 		t = 44/90},
						{s = "weapons/fesiugmw2/foley/wpfoly_rpd_reload_open_v1.wav", 			t = 210/90 - 0.2},
						{s = "weapons/fesiugmw2/foley/wpfoly_rpd_reload_clipout_v1.wav", 		t = 273/90 - 0.2},
						{s = "weapons/fesiugmw2/foley/wpfoly_rpd_reload_clipin_v1.wav", 		t = 384/90 - 0.2},
						{s = "weapons/fesiugmw2/foley/wpfoly_rpd_reload_close_v1.wav", 			t = 540/90 - 0.2},
						{s = "weapons/fesiugmw2/foley/wpfoly_rpd_reload_hit_v1.wav", 			t = 540/90 + 0.4 - 0.2},
					},
        FrameRate = 30,
        LastClip1OutTime = 2,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 1,
    },
}