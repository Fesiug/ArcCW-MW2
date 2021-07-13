SWEP.Base = "arccw_mw2_abase"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - MW2"
SWEP.AdminOnly = false
SWEP.WeaponCamBone = tag_camera

SWEP.PrintName = "M1014"
SWEP.Trivia_Class = "Shotgun"
SWEP.Trivia_Desc = "Semi-automatic (single fire)"

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/fesiugmw2/c_benelli_5.mdl"
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos = Vector(-4, 3, -5),
    ang = Angle(-10, 0, 180),
    scale = 1.125
}
SWEP.WorldModel = "models/weapons/w_shot_xm1014.mdl"
SWEP.ViewModelFOV = 65

SWEP.Damage = 40
SWEP.DamageMin = 20
SWEP.Range = 500 * 0.025  -- GAME UNITS * 0.025 = METRES
SWEP.Penetration = 1
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any


SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 4 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 6
SWEP.ReducedClipSize = 2

SWEP.VisualRecoilMult = 0
SWEP.MaxRecoilBlowback = 0
SWEP.Recoil = 5
SWEP.RecoilSide = 1
SWEP.RecoilPunch = 1

SWEP.ShotgunReload = true

SWEP.Delay = 0.2 -- 60 / RPM.
SWEP.Num = 8 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_shotgun"
SWEP.NPCWeight = 100

SWEP.AccuracyMOA = 100 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 300 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Primary.Ammo = "buckshot" -- what ammo type the gun uses

SWEP.ShootVol = 120 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound =			"weapons/fesiugmw2/fire/shot_m1014.wav"
--SWEP.DistantShootSound =	"weapons/fesiugmw2/fire_distant/shot_m1014.wav"
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
    Pos = Vector(-2.816, -4.9, 1.39),
    Ang = Angle(0.1, 0, 0),
    ViewModelFOV = 65 / 1.18,
    Magnification = 1.18,
}


SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "shotgun"
SWEP.HoldtypeSights = "ar2"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(5.479, -3, 0.321)
SWEP.CustomizeAng = Angle(6.2, 29.4, 14.8)

SWEP.HolsterPos = Vector(1, 0, 1)
SWEP.HolsterAng = Angle(-10, 12, 0)

SWEP.SprintPos = Vector(0, 0, 1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.ExtraSightDist = 5
SWEP.Bipod_Integral = true

SWEP.AttachmentElements = {
    ["grip"] = {
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

SWEP.Attachments = {
	{
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = "optic",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(-0.6, 0, 1.7),
            vang = Angle(0, 0, 0),
            wang = Angle(-9.738, 0, 180)
        },
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle_shotgun",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(18, 0, 0.7),
            vang = Angle(0, 0, 0),
            wpos = Vector(26.648, 0.782, -8.042),
            wang = Angle(-9.79, 0, 180)
        },
		VMScale = Vector(1.25, 1.25, 1.25),
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "foregrip_mw2exclusive"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(5, 0, -1.5),
            vang = Angle(0, 0, 0),
            wpos = Vector(14.329, 0.602, -4.453),
            wang = Angle(-10.216, 0, 180)
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(6, -1, -0.6),
            vang = Angle(0, 0, 90),
            wpos = Vector(15.625, -0.253, -6.298),
            wang = Angle(-8.829, -0.556, 90)
        },
        SlideAmount = {
            vmin = Vector(4, -1, -0.6),
            vmax = Vector(9.5, -1, -0.6),
        },
    },
    {
        PrintName = "Fire Group",
        Slot = "fcg",
        DefaultAttName = "Standard FCG"
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
            vpos = Vector(0, -0.5, -0.25),
            vang = Angle(0, 0, 0),
            wpos = Vector(9.625, 1.5, -4),
            wang = Angle(0, 0, 180)
        },
    },
}

SWEP.Hook_TranslateAnimation = function(wep, anim)
    if wep.Attachments[3].Installed then
        return anim .. "_fgrip"
    end
end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 1/300,
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
        Time = 32/30,
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.9,
    },
    ["holster"] = {
        Source = "putaway",
        Time = 29/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.9,
    },
    ["fire"] = {
        Source = "fire",
        Time = 13/30,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "fire_ads",
        Time = 14/30,
        ShellEjectAt = 0,
    },
    ["sgreload_start"] = {
        Source = "reload_start",
        Time = 30/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        SoundTable = {
                        {s = "weapons/fesiugmw2/foley/wpfoly_m4ben_reload_lift_v1.wav", 		t = 0},
                        {s = "weapons/fesiugmw2/foley/wpfoly_m4ben_reload_loop_v1.wav", 		t = 17/30},
                    },
		RestoreAmmo = 1, -- only used by shotgun empty insert reload
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0,
    },
    ["sgreload_insert"] = {
        Source = "reload_loop",
        Time = 17/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        SoundTable = {
                        {s = "weapons/fesiugmw2/foley/wpfoly_m4ben_reload_loop_v1.wav", 		t = 3/30},
                    },
        TPAnimStartTime = 0.3,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["sgreload_finish"] = {
        Source = "reload_finish",
        Time = 11/30,
        SoundTable = {
                        {s = "weapons/fesiugmw2/foley/wpfoly_m4ben_reload_end_v1.wav", 		t = 0.01},
                    },
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.4,
    },
    ["sgreload_finish_empty"] = {
        Source = "reload_finish",
        Time = 11/30,
        SoundTable = {
                        {s = "weapons/fesiugmw2/foley/wpfoly_m4ben_reload_end_v1.wav", 		t = 0.01},
                    },
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.4,
    },
---------------------------------------------
    ["idle_fgrip"] = {
        Source = "idle_fgrip",
        Time = 1/300,
    },
    ["enter_sprint_fgrip"] = {
        Source = "sprint_in_fgrip",
        Time = 10/30
    },
    ["idle_sprint_fgrip"] = {
        Source = "sprint_loop_fgrip",
        Time = 30/40
    },
    ["exit_sprint_fgrip"] = {
        Source = "sprint_out_fgrip",
        Time = 10/30
    },
    ["draw_fgrip"] = {
        Source = "pullout_fgrip",
        Time = 32/30,
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.9,
    },
    ["holster_fgrip"] = {
        Source = "putaway_fgrip",
        Time = 29/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.9,
    },
    ["fire_fgrip"] = {
        Source = "fire_fgrip",
        Time = 13/30,
        ShellEjectAt = 0,
    },
    ["fire_iron_fgrip"] = {
        Source = "fire_ads_fgrip",
        Time = 14/30,
        ShellEjectAt = 0,
    },
    ["sgreload_start_fgrip"] = {
        Source = "reload_start_fgrip",
        Time = 30/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        SoundTable = {
                        {s = "weapons/fesiugmw2/foley/wpfoly_m4ben_reload_lift_v1.wav", 		t = 0},
                        {s = "weapons/fesiugmw2/foley/wpfoly_m4ben_reload_loop_v1.wav", 		t = 17/30},
                    },
		RestoreAmmo = 1, -- only used by shotgun empty insert reload
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0,
    },
    ["sgreload_insert_fgrip"] = {
        Source = "reload_loop_fgrip",
        Time = 17/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        SoundTable = {
                        {s = "weapons/fesiugmw2/foley/wpfoly_m4ben_reload_loop_v1.wav", 		t = 3/30},
                    },
        TPAnimStartTime = 0.3,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["sgreload_finish_fgrip"] = {
        Source = "reload_finish_fgrip",
        Time = 11/30,
        SoundTable = {
                        {s = "weapons/fesiugmw2/foley/wpfoly_m4ben_reload_end_v1.wav", 		t = 0.01},
                    },
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.4,
    },
    ["sgreload_finish_empty_fgrip"] = {
        Source = "reload_finish_fgrip",
        Time = 11/30,
        SoundTable = {
                        {s = "weapons/fesiugmw2/foley/wpfoly_m4ben_reload_end_v1.wav", 		t = 0.01},
                    },
        LHIK = true,
        LHIKIn = 0.4,
        LHIKOut = 0.4,
    },
}

 -- Super fucky temp!
 -- S H U T  U P    A N D   K E E P  T H E M   P I N N E D  D O W N  

-- notverycreativenowarewe
local nvcnaw = 5

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