SWEP.Base = "arccw_mw2_abase"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - MW2"
SWEP.AdminOnly = false
SWEP.CamAttachment = 3

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

SWEP.ViewModel = "models/weapons/arccw/fesiugmw2_2/c_aa12_1.mdl"
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos = Vector(-8, 3, -6),
    ang = Angle(-10, 0, 180),
    scale = 1.125
}
SWEP.WorldModel = "models/weapons/w_shot_xm1014.mdl"
SWEP.ViewModelFOV = 65

SWEP.Damage = 20
SWEP.DamageMin = 15
SWEP.Range = 300 * 0.025  -- GAME UNITS * 0.025 = METRES
SWEP.Penetration = 1
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any


SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 8 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 16
SWEP.ReducedClipSize = 4

SWEP.VisualRecoilMult = 0
SWEP.Recoil = 3
SWEP.RecoilSide = 2

SWEP.Delay = 0.15 -- 60 / RPM.
SWEP.Num = 8 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_shotgun"
SWEP.NPCWeight = 100

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
SWEP.ShellScale = 1
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

SWEP.IronSightStruct = {
    Pos = Vector(-2.83, -7.06, 0.439),
    Ang = Angle(0, 0, 0),
    ViewModelFOV = 65 / 1.18,
    Magnification = 1.18,
}


SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(10.479, 0, -1.321)
SWEP.CustomizeAng = Angle(18.2, 39.4, 14.8)

SWEP.HolsterPos = Vector(1, 0, 1)
SWEP.HolsterAng = Angle(-10, 12, 0)

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
    ["grip"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
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

SWEP.Attachments = {
	{
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = "optic",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(0, 0, 3.7),
            vang = Angle(0, 0, 0),
            wang = Angle(-9.738, 0, 180)
        },
        InstalledEles = {"nors"},
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
        Slot = {"foregrip","foregrip_mw2exclusive"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(10, 0, -1.7),
            vang = Angle(0, 0, 0),
            wpos = Vector(14.329, 0.602, -4.453),
            wang = Angle(-10.216, 0, 180)
        },
        SlideAmount = {
            vmin = Vector(9, 0, 0.3),
            vmax = Vector(17, 0, 1),
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(16, -1.1, 2.2),
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
        PrintName = "Fire Group",
        Slot = "fcg",
        DefaultAttName = "Standard FCG",
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
            vpos = Vector(2, -0.6, 1.5),
            vang = Angle(0, 0, 0),
            wpos = Vector(9.625, 1.253, -3.298),
            wang = Angle(0, 0, 180)
        },
    },
}

SWEP.Hook_TranslateAnimation = function(wep, anim)
    if wep.Attachments[3].Installed then
        return anim .. "_grip"
    end
end

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
        Time = 24/30,
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
    },
    ["holster"] = {
        Source = "putaway",
        Time = 26/30,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
    },
    ["fire"] = {
        Source = "fire",
        Time = 4/30,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "fire_ads",
        Time = 4/30,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        Time = 66/24,
        MinProgress = 2,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_aa12_reload_lift_v1.wav", 		t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_aa12_reload_clipout_v1.wav", 	t = 15/24},
						{s = "weapons/fesiugmw2/foley/wpfoly_aa12_reload_clipin_v1.wav", 	    t = 43/24},
					},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 86/24,
        MinProgress = 2,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_aa12_reload_lift_v1.wav", 		t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_aa12_reload_clipout_v1.wav", 	t = 14/24},
						{s = "weapons/fesiugmw2/foley/wpfoly_aa12_reload_clipin_v1.wav", 	    t = 47/24},
						{s = "weapons/fesiugmw2/foley/wpfoly_aa12_reload_chamber_v1.wav",		t = 64/24},
					},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.6,
    },
---------------------------------------------------
    ["idle_grip"] = {
        Source = "idle_grip",
        Time = 100/30
    },
    ["enter_sprint_grip"] = {
        Source = "sprint_in_grip",
        Time = 10/30
    },
    ["idle_sprint_grip"] = {
        Source = "sprint_loop_grip",
        Time = 30/40
    },
    ["exit_sprint_grip"] = {
        Source = "sprint_out_grip",
        Time = 10/30
    },
    ["draw_grip"] = {
        Source = "pullout_grip",
        Time = 24/30,
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
    },
    ["holster_grip"] = {
        Source = "putaway_grip",
        Time = 26/30,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
    },
    ["fire_grip"] = {
        Source = "fire_grip",
        Time = 4/30,
        ShellEjectAt = 0,
    },
    ["fire_iron_grip"] = {
        Source = "fire_ads_grip",
        Time = 4/30,
        ShellEjectAt = 0,
    },
    ["reload_grip"] = {
        Source = "reload_grip",
        Time = 66/24,
        MinProgress = 2,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_aa12_reload_lift_v1.wav", 		t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_aa12_reload_clipout_v1.wav", 	t = 15/24},
						{s = "weapons/fesiugmw2/foley/wpfoly_aa12_reload_clipin_v1.wav", 	    t = 43/24},
					},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty_grip"] = {
        Source = "reload_empty_grip",
        Time = 86/24,
        MinProgress = 2,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_aa12_reload_lift_v1.wav", 		t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_aa12_reload_clipout_v1.wav", 	t = 14/24},
						{s = "weapons/fesiugmw2/foley/wpfoly_aa12_reload_clipin_v1.wav", 	    t = 47/24},
						{s = "weapons/fesiugmw2/foley/wpfoly_aa12_reload_chamber_v1.wav",		t = 64/24},
					},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.6,
    },
}

 -- Super fucky temp!
 -- S H U T  U P    A N D   K E E P  T H E M   P I N N E D  D O W N  

-- notverycreativenowarewe
local nvcnaw = 6

 -- hipfire
 -- maximum accuracy
    SWEP.Inaccuracy_Hip_Max_Stand	= nvcnaw
    SWEP.Inaccuracy_Hip_Max_Duck	= nvcnaw
    SWEP.Inaccuracy_Hip_Max_Prone	= nvcnaw
 -- minimum accuracy
    SWEP.Inaccuracy_Hip_Min_Stand   = nvcnaw
    SWEP.Inaccuracy_Hip_Min_Duck    = nvcnaw
    SWEP.Inaccuracy_Hip_Min_Prone   = nvcnaw

 -- sighted fire
 -- yeah
    SWEP.Inaccuracy_ADS = 5.5

 -- inaccuracy when you're... i don't remember
SWEP.Inaccuracy_Add_ADS			= 0
SWEP.Inaccuracy_Add_Hip			= 0
SWEP.Inaccuracy_Add_Move		= 0.1