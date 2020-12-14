SWEP.Base = "arccw_mw2_abase"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - MW2, UNSUPPORTED" -- edit this if you like
SWEP.AdminOnly = false
SWEP.WeaponCamBone = tag_camera

SWEP.PrintName = "AA-12"
SWEP.Trivia_Class = "Shotgun"
SWEP.Trivia_Desc = "Fully automatic, low ammo."

if CLIENT and GetConVar("arccw_mw2cl_trivia"):GetBool() then
SWEP.Trivia_Manufacturer = "Maxwell Atchisson"
SWEP.Trivia_Calibre = "12 Gauge"
SWEP.Trivia_Mechanism = "API Blowback"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 2005
end

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/fesiugmw2/mactonight/c_mw2_aa12_1.mdl"
SWEP.MirrorVMWM = false
SWEP.WorldModel = "models/weapons/w_shot_xm1014.mdl"
SWEP.ViewModelFOV = 65

if GetConVar("arccw_mw2_bal_m1014"):GetBool() then
	SWEP.Damage = 4
	SWEP.DamageMin = 2 -- damage done at maximum range
else
	SWEP.Damage = 20
	SWEP.DamageMin = 15
end
SWEP.Range = 300 * 0.025  -- GAME UNITS * 0.025 = METRES
SWEP.Penetration = 1
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any


SWEP.ChamberSize = 0 * GetConVar("arccw_mw2_chambering"):GetInt()
SWEP.Primary.ClipSize = 8 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 16
SWEP.ReducedClipSize = 4

SWEP.VisualRecoilMult = 0
SWEP.Recoil = 3
SWEP.RecoilSide = 3

SWEP.Delay = 0.15 -- 60 / RPM.
SWEP.Num = 8 -- number of shots per trigger pull.
SWEP.RunawayBurst = false
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_shotgun"
SWEP.NPCWeight = 125

SWEP.AccuracyMOA = 125 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 300 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 275

SWEP.Primary.Ammo = "buckshot" -- what ammo type the gun uses

SWEP.ShootVol = 120 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound =			"weapons/fesiugmw2/fire/shot_aa12.wav"
--SWEP.DistantShootSound =	"weapons/fesiugmw2/fire_distant/shot_aa12.wav"
SWEP.ShootSoundSilenced =	"weapons/fesiugmw2/fire/shot_sil.wav"

SWEP.MuzzleEffect = "muzzleflash_m3"
SWEP.ShellModel = "models/shells/shell_12gauge.mdl"
SWEP.ShellPitch = 100
SWEP.ShellSounds = ArcCW.ShotgunShellSoundsTable
SWEP.ShellScale = 1.5
SWEP.ShellRotateAngle = Angle(0, 90, 0)

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.4
SWEP.SightTime = 0.3

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-3.12, -8.306, 0.439),
    Ang = Angle(0, 0, 0),
    Magnification = 1.18,
    SwitchToSound = "", -- sound that plays when switching to this sight
}


SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "shotgun"
SWEP.HoldtypeSights = "ar2"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(10.479, 0, -1.321)
SWEP.CustomizeAng = Angle(18.2, 39.4, 14.8)

SWEP.HolsterPos = Vector(3, 0, 0)
SWEP.HolsterAng = Angle(-10, 25, 0)

SWEP.SprintPos = Vector(0, 0, 1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.ExtraSightDist = 5

SWEP.AttachmentElements = {
    ["nors"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {},
    },
}

SWEP.Attachments = {
	{
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = "optic", -- what kind of attachments can fit here, can be string or table
        Bone = "tag_weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-0.6, 0, 4.2), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 0),
            wang = Angle(-9.738, 0, 180)
        },
        InstalledEles = {"nors"},
    },
    {
        PrintName = "Fire Group",
        Slot = "fcg",
        DefaultAttName = "Standard FCG",
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle_shotgun",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(22, 0, 1.9),
            vang = Angle(0, 0, 0),
            wpos = Vector(26.648, 0.782, -8.042),
            wang = Angle(-9.79, 0, 180)
        },
		VMScale = Vector(2.8, 1.4, 1.4),
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(10, 0, -1.7),
            vang = Angle(0, 0, 0),
            wpos = Vector(14.329, 0.602, -4.453),
            wang = Angle(-10.216, 0, 180)
        },
        SlideAmount = { -- how far this attachment can slide in both directions.
            -- overrides Offset.
            vmin = Vector(9, 0, 0.3),
            vmax = Vector(17, 0, 1),
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(16, -1.1, 2.2), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 0, 90),
            wpos = Vector(15.625, -0.253, -6.298),
            wang = Angle(-8.829, -0.556, 90)
        },
    },
    {
        PrintName = "Ammo Type",
        Slot = "ammo_shotgun"
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
            vmin = Vector(0, -0.8, 3),
            vmax = Vector(7, -0.8, 2),
            wmin = Vector(5.36, 0.739, -5.401),
            wmax = Vector(5.36, 0.739, -5.401),
        },
    },
}

-- draw
-- holster
-- reload
-- fire
-- cycle (for bolt actions)
-- append _empty for empty variation

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 0.06,
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 1,
    },
    ["draw"] = {
        Source = "draw",
        Time = 1.04,
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.9,
    },
    ["fire"] = {
        Source = "fire",
        Time = 0.2,
    },
    ["fire_iron"] = {
        Source = "idle",
        Time = 0.5,
    },
    ["reload"] = {
        Source = "reload_tac",
        Time = 2.23 * 1.25,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_aa12_reload_lift_v1.wav", 		t = 0/80},
						{s = "weapons/fesiugmw2/foley/wpfoly_aa12_reload_clipout_v1.wav", 	t = 43/80 * 1.25},
						{s = "weapons/fesiugmw2/foley/wpfoly_aa12_reload_clipin_v1.wav", 	t = 125/80 * 1.25},
					},
        Checkpoints = {24, 97},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 2.9 * 1.25,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_aa12_reload_lift_v1.wav", 		t = 0/80},
						{s = "weapons/fesiugmw2/foley/wpfoly_aa12_reload_clipout_v1.wav", 	t = 43/80 * 1.25},
						{s = "weapons/fesiugmw2/foley/wpfoly_aa12_reload_clipin_v1.wav", 	t = 125/80 * 1.25},
						{s = "weapons/fesiugmw2/foley/wpfoly_aa12_reload_chamber_v1.wav", 	t = 165/80 * 1.25},
					},
        Checkpoints = {24, 97, 131},
        FrameRate = 37,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.6,
    },
}