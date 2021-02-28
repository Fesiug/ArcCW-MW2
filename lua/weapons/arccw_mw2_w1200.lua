SWEP.Base = "arccw_mw2_abase"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - MW2"
SWEP.AdminOnly = false
SWEP.WeaponCamBone = tag_camera

SWEP.PrintName = "W1200"
SWEP.Trivia_Class = "Shotgun"
SWEP.Trivia_Desc = "Pump action."

if CLIENT and GetConVar("arccw_mw2cl_trivia"):GetBool() then
SWEP.Trivia_Manufacturer = "Winchester"
SWEP.Trivia_Calibre = "12 Gauge"
SWEP.Trivia_Mechanism = "Pump-Action"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1964
end

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/fesiugmw2/c_winchester.mdl"
SWEP.MirrorVMWM = false
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.ViewModelFOV = 65

SWEP.Damage = 40
SWEP.DamageMin = 10
SWEP.Range = 800 * 0.025  -- GAME UNITS * 0.025 = METRES
SWEP.Penetration = 1
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any


SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 7 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 9
SWEP.ReducedClipSize = 4

SWEP.VisualRecoilMult = 0
SWEP.Recoil = 2
SWEP.RecoilSide = 2

SWEP.ShotgunReload = true
SWEP.ManualAction = true

SWEP.Delay = 10/30 -- 60 / RPM.
SWEP.Num = 8 -- number of shots per trigger pull.
SWEP.RunawayBurst = false
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0,
    },
}

SWEP.NPCWeaponType = "weapon_shotgun"
SWEP.NPCWeight = 125

SWEP.AccuracyMOA = 80 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 350 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 100 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 0 -- dispersion that remains even in sights

SWEP.Primary.Ammo = "buckshot" -- what ammo type the gun uses

SWEP.ShootVol = 120 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound =			"weapons/fesiugmw2/fire/shot_w1200.wav"
--SWEP.DistantShootSound =	"weapons/fesiugmw2/fire_distant/shot_w1200.wav"
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
SWEP.SightedSpeedMult = 0.8
SWEP.SightTime = 0.3

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.IronSightStruct = {
    Pos = Vector(-2.82, -4.163, 1.1),
    Ang = Angle(0.626, 0, 0),
    ViewModelFOV = 65 / 1.18,
    Magnification = 1.18,
}


SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "shotgun"
SWEP.HoldtypeSights = "ar2"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

SWEP.ActivePos = Vector(-0.5, -3.75, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(5.479, -5, -1.321)
SWEP.CustomizeAng = Angle(18.2, 39.4, 14.8)

SWEP.HolsterPos = Vector(3, 0, 0) + Vector(-0.5, -3.75, 1)
SWEP.HolsterAng = Angle(-10, 25, 0)

SWEP.SprintPos = Vector(-0.5, -3.75, 1)
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
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = "optic",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(1, 0, 1.8),
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
            vpos = Vector(20, 0, 0.8950),
            vang = Angle(0, 0, 0),
            wpos = Vector(26.648, 0.782, -8.042),
            wang = Angle(-9.79, 0, 180)
        },
		VMScale = Vector(1.25, 1.25, 1.25),
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip"},
        Bone = "j_pump",
        Offset = {
            vpos = Vector(0, 0, -0.7),
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
            vpos = Vector(20, 0, -1),
            vang = Angle(0, 0, 0),
            wpos = Vector(15.625, -0.253, -6.298),
            wang = Angle(-8.829, -0.556, 90)
        },
		VMScale = Vector(1.25, 1.25, 1.25),
    },
    {
        PrintName = "Ammo Type",
        Slot = "ammo_shotgun"
    },
    {
        PrintName = "Perk",
        Slot = "perk"
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 2/30,
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
        Time = 19/30,
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.9,
    },
    ["holster"] = {
        Source = "putaway",
        Time = 14/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.9,
    },
    ["fire"] = {
        Source = "fire",
        Time = 10/30,
		MinProgress = 10/30,
    },
    ["fire_iron"] = {
        Source = "fire_ads",
        Time = 11/30,
		MinProgress = 11/30,
    },
    ["cycle"] = {
        Source = "rechamber",
        Time = 15/30,
        SoundTable = {{s = "weapons/fesiugmw2/foley/wpfoly_winchester_reload_pump_v1.wav", 		t = 2/30}},
        ShellEjectAt = 2/30,
		MinProgress = 0.333, -- how much time in seconds must pass before the animation can be cancelled
    },
    ["cycle_iron"] = {
        Source = "rechamber_ads",
        Time = 15/30,
        SoundTable = {{s = "weapons/fesiugmw2/foley/wpfoly_winchester_reload_pump_v1.wav", 		t = 2/30}},
        ShellEjectAt = 2/30,
		MinProgress = 0.333, -- how much time in seconds must pass before the animation can be cancelled
    },
    ["sgreload_start"] = {
        Source = "reload_start",
        Time = 31/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
		RestoreAmmo = 1, -- only used by shotgun empty insert reload
		-- it's modified, i'm sorry
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_winchester_reload_lift_v1.wav", 	t = 0/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_winchester_reload_loop_v1.wav", 	t = 14/30},
					},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0,
    },
    ["sgreload_insert"] = {
        Source = "reload_loop",
        Time = 18/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        SoundTable = {{s = "weapons/fesiugmw2/foley/wpfoly_winchester_reload_loop_v1.wav", 		t = 3/30}},
        TPAnimStartTime = 0.3,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["sgreload_finish"] = {
        Source = "reload_finish",
        Time = 22/30,
        SoundTable = {{s = "weapons/fesiugmw2/foley/wpfoly_winchester_reload_pump_v1.wav", 		t = 8/30}},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.8,
    },
}

 -- Super fucky temp!
 -- S H U T  U P    A N D   K E E P  T H E M   P I N N E D  D O W N  

-- notverycreativenowarewe
local nvcnaw = 7

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