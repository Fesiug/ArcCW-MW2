SWEP.Base = "arccw_mw2_abase"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - MW2"
SWEP.AdminOnly = false
SWEP.WeaponCamBone = tag_camera

SWEP.PrintName = "P90"
SWEP.Trivia_Class = "Sub Machine Gun"
SWEP.Trivia_Desc = "Fully automatic, large magazines."

if CLIENT and GetConVar("arccw_mw2cl_trivia"):GetBool() then
SWEP.Trivia_Manufacturer = "FN Herstal"
SWEP.Trivia_Calibre = "5.7mm PDW"
SWEP.Trivia_Mechanism = "Straight Blowback"
SWEP.Trivia_Country = "Belgium"
SWEP.Trivia_Year = 1989
end

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/fesiugmw2/c_p90.mdl"
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos = Vector(-5, 3, -5),
    ang = Angle(-10, 0, 180),
    scale = 1.33
}
SWEP.WorldModel = "models/weapons/w_smg_p90.mdl"
SWEP.ViewModelFOV = 65

SWEP.Damage = 30
SWEP.DamageMin = 20
SWEP.Range = 1000 * 0.025  -- GAME UNITS * 0.025 = METRES
SWEP.Penetration = 3
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any


SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 50 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 75
SWEP.ReducedClipSize = 25

SWEP.VisualRecoilMult = 0
SWEP.Recoil = 0.34
SWEP.RecoilSide = 0.34
SWEP.RecoilRise = 0

SWEP.Delay = 0.064 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0,
    },
}

SWEP.NPCWeaponType = {"weapon_ar2", "weapon_smg1"}
SWEP.NPCWeight = 100

SWEP.AccuracyMOA = 15 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 250 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 200

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound =			"weapons/fesiugmw2/fire/p90.wav"
SWEP.ShootMechSound =       ArcCW_MW2_Mech
--SWEP.DistantShootSound =	"weapons/fesiugmw2/fire_distant/mp5.wav"
SWEP.ShootDrySound =        "weapons/fesiugmw2/fire/dryfire_smg.wav"
SWEP.ShootSoundSilenced =	"weapons/fesiugmw2/fire/p90_sil.wav"

SWEP.MuzzleEffect = "muzzleflash_smg"
SWEP.ShellModel = "models/shells/shell_57.mdl"
SWEP.ShellScale = 1.5
SWEP.ShellRotateAngle = Angle(0, 90, 0)

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.80
SWEP.SightTime = 0.2

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.IronSightStruct = {
    Pos = Vector(-3.2, -5, -0.2),
    Ang = Angle(0, 0, 0),
    ViewModelFOV = 65 / 1.18,
    Magnification = 1.18,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "smg"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(6.479, -2, -1.321)
SWEP.CustomizeAng = Angle(18.2, 39.4, 4.8)

SWEP.HolsterPos = Vector(1, 0, 1)
SWEP.HolsterAng = Angle(-10, 12, 0)

SWEP.SprintPos = Vector(0, 0, 1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 24

SWEP.AttachmentElements = {
    ["nors"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {},
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

SWEP.ExtraSightDist = 5

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic","optic_lp"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(4.8, 0, 3.7),
            vang = Angle(0, 0, 0),
            wpos = Vector(1.998, 0.17, -5.025),
            wang = Angle(-3.074, -23.004, -172.249)
        },
        InstalledEles = {"nors"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(8, 0, 0.7),
            vang = Angle(0, 0, 0),
            wpos = Vector(12.057, 4.317, -3.858),
            wang = Angle(-3.074, -23.004, 0)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"style_pistol"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(8.5, 0, 0.3),
            vang = Angle(0, 0, 0),
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(7, -1.1, 2.8),
            vang = Angle(0, 0, 90),
            wpos = Vector(8.425, 3.891, -4.147),
            wang = Angle(-3.074, -23.004, -77.301)
        },
        VMScale = Vector(0.05, 0.05, 0.05)
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
            vpos = Vector(0.75, -1, 0.75),
            vang = Angle(0, 0, 0),
            wpos = Vector(9.625, 1.5, -4),
            wang = Angle(0, 0, 180)
        },
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 0/30,
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
        Time = 26/30,
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.9,
    },
    ["ready"] = {
        Source = "pullout_first",
        Time = 35/30,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_p90_pickup_lift_v1.wav",   	t = 0/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_p90_reload_chamber_v1.wav", 	t = 14/30},
					},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.9,
    },
    ["holster"] = {
        Source = "putaway",
        Time = 24/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.9,
    },
    ["fire"] = {
        Source = "fire",
        Time = 6/30,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "fire_ads",
        Time = 6/30,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        Time = 93/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_p90_reload_lift_v1.wav",   	t = 0/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_p90_reload_clipout_v1.wav", 	t = 14/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_p90_reload_clipin_v1.wav", 	t = 51/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_p90_reload_hit_v1.wav", 	    t = 67/30},
					},
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.3,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 110/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_p90_reload_lift_v1.wav",   	t = 0/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_p90_reload_clipout_v1.wav", 	t = 14/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_p90_reload_clipin_v1.wav", 	t = 51/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_p90_reload_hit_v1.wav", 	    t = 67/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_p90_reload_chamber_v1.wav", 	t = 90/30},
					},
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.3,
    },
}