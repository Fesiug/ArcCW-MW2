SWEP.Base = "arccw_mw2_abase"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - MW2"
SWEP.AdminOnly = false
SWEP.WeaponCamBone = tag_camera

SWEP.PrintName = "PP2000"
SWEP.Trivia_Class = "Machine Pistol"
SWEP.Trivia_Desc = "Fully automatic, close range."

if CLIENT and GetConVar("arccw_mw2cl_trivia"):GetBool() then
SWEP.Trivia_Manufacturer = "KBP IDB"
SWEP.Trivia_Calibre = "9x19mm Para"
SWEP.Trivia_Mechanism = "Straight Blowback"
SWEP.Trivia_Country = "Russia"
SWEP.Trivia_Year = 2000
end

SWEP.Slot = 1

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/fesiugmw2/c_pp2000_3a.mdl"
SWEP.MirrorVMWM = false
SWEP.WorldModel = "models/weapons/w_smg_tmp.mdl"
SWEP.ViewModelFOV = 65

SWEP.Damage = 40
SWEP.DamageMin = 20
SWEP.Range = 750 * 0.025  -- GAME UNITS * 0.025 = METRES
SWEP.Penetration = 4
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any


SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 20 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 30
SWEP.ReducedClipSize = 10

SWEP.VisualRecoilMult = 0
SWEP.Recoil = 0.5
SWEP.RecoilSide = 0.5
SWEP.RecoilRise = 0.2

SWEP.Delay = 0.075 -- 60 / RPM.
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

SWEP.AccuracyMOA = 12 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 300 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 175

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound =			"weapons/fesiugmw2/fire/pp2000.wav"
--SWEP.DistantShootSound =	"weapons/fesiugmw2/fire_distant/pp2000.wav"
SWEP.ShootSoundSilenced =	"weapons/fesiugmw2/fire/usp45_sil.wav"

SWEP.MuzzleEffect = "muzzleflash_4"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.5
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
    Pos = Vector(-3.85, -2.485, 0.9),
    Ang = Angle(-0.4, 0, 0),
    Magnification = 1.18,
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "revolver"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(8.479, -2, 1.321)
SWEP.CustomizeAng = Angle(0.2, 39.4, 14.8)

SWEP.HolsterPos = Vector(3, 0, 0)
SWEP.HolsterAng = Angle(-10, 25, 0)

SWEP.SprintPos = Vector(0, 0, 1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 18

SWEP.ExtraSightDist = 0

SWEP.AttachmentElements = {
    ["stock2"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
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
        Slot = {"optic_lp"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(0, 0, 0),
            vang = Angle(0, 0, 0),
        },
        SlideAmount = {
            vmin = Vector(-3, -0.025, 2),
            vmax = Vector(-1, -0.025, 2),
        },
		ExtraSightDist = 5,
        InstalledEles = {"stock2"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(7, 0, 0.6),
            vang = Angle(0, 0, 0),
            wpos = Vector(26.648, 0.782, -8.042),
            wang = Angle(-9.79, 0, 180)
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(0, -0.9, 1.2),
            vang = Angle(0, 0, 90),
        },
		VMScale = Vector(0.8, 0.8, 0.8),
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
        PrintName = "Charm",
        DefaultAttName = "None",
        Slot = "charm",
        Bone = "tag_weapon",
        FreeSlot = true,
        Offset = {
            vpos = Vector(-4, -0.7, 1),
            vang = Angle(0, 0, 0),
            wpos = Vector(5.36, 0.739, -5.401),
            wang = Angle(-9.738, 0, 180)
        },
    },
    {
        PrintName = "Camouflage",
        DefaultAttName = "None",
        Slot = "mw2_wepcamo",
        FreeSlot = true,
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
        Time = 33/30,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_pp2000_reload_first_lift_v1.wav", 	t = 0/30},
						--{s = "weapons/fesiugmw2/foley/wpfoly_pp2000_reload_chamber_v1.wav", 	t = 17/30},
					},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.9,
    },
    ["holster"] = {
        Source = "putaway",
        Time = 26/30,
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
        Time = 62/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_pp2000_reload_lift_v1.wav", 		t = 0/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_pp2000_reload_clipout_v1.wav", 	t = 12/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_pp2000_reload_clipin_v1.wav", 	    t = 39/30},
					},
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 83/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_pp2000_reload_lift_v1.wav", 	    t = 0/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_pp2000_reload_clipout_v1.wav", 	t = 11/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_pp2000_reload_clipin_v1.wav", 	    t = 39/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_pp2000_reload_chamber_v1.wav", 	t = 59/30},
					},
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.5,
    },
}