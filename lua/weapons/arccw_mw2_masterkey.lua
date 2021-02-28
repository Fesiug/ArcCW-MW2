SWEP.Base = "arccw_mw2_abase"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - MW2"
SWEP.AdminOnly = false
SWEP.WeaponCamBone = tag_camera

SWEP.PrintName = "Masterkey"
SWEP.Trivia_Class = "Shotgun"
SWEP.Trivia_Desc = "Pump action.\nUnofficial."

if CLIENT and GetConVar("arccw_mw2cl_trivia"):GetBool() then
SWEP.Trivia_Manufacturer = "Knight's Armament Company"
SWEP.Trivia_Calibre = "12 Gauge"
SWEP.Trivia_Mechanism = "Pump-Action"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1998
end

SWEP.Slot = 1

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/fesiugmw2/c_mifl_masterkey_1.mdl"
SWEP.MirrorVMWM = false
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.ViewModelFOV = 65

SWEP.Damage = 25
SWEP.DamageMin = 0
SWEP.Range = 1750 * 0.025  -- GAME UNITS * 0.025 = METRES
SWEP.Penetration = 1
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 4 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 6
SWEP.ReducedClipSize = 2

SWEP.VisualRecoilMult = 0
SWEP.Recoil = 2
SWEP.RecoilSide = 2

SWEP.ShotgunReload = true
SWEP.ManualAction = true

SWEP.Delay = 10/30 -- 60 / RPM.
SWEP.Num = 6 -- number of shots per trigger pull.
SWEP.RunawayBurst = false
SWEP.Firemodes = {
    {
        PrintName = "PUMP",
        Mode = 1,
    },
    {
        Mode = 0,
    },
}

SWEP.NPCWeaponType = "weapon_shotgun"
SWEP.NPCWeight = 125

SWEP.AccuracyMOA = 75 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 160 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 0 -- dispersion that remains even in sights

SWEP.Primary.Ammo = "buckshot" -- what ammo type the gun uses

SWEP.ShootVol = 120 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound =			"weapons/fesiugmw2/fire/shot_attach.wav"
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
SWEP.SightedSpeedMult = 0.9
SWEP.SightTime = 0.2

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.IronSightStruct = {
    Pos = Vector(-2.701, 0, 2.279),
    Ang = Angle(2.005, 0, 0),
    ViewModelFOV = 65 / 1.18,
    Magnification = 1.18,
}


SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "shotgun"
SWEP.HoldtypeSights = "ar2"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

SWEP.ActivePos = Vector(-0.2, 0, 2)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(5.479, -5, -1.321) + Vector(-0.2, 0, 2)
SWEP.CustomizeAng = Angle(10.2, 39.4, 14.8)

SWEP.HolsterPos = Vector(3, 0, 0) + Vector(0, 2, 2)
SWEP.HolsterAng = Angle(-10, 25, 0)

SWEP.SprintPos = Vector(2.5, -0.75, 1)
SWEP.SprintAng = Angle(-5, 15, 0)

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
            vpos = Vector(9.5, -0.05, 0.65),
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
            vpos = Vector(21, -0.075, -0.2),
            vang = Angle(0, 0, 0),
            wpos = Vector(26.648, 0.782, -8.042),
            wang = Angle(-9.79, 0, 180)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip"},
        Bone = "j_pump_shotgun",
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
        Bone = "j_pump_shotgun",
        Offset = {
            vpos = Vector(2, 0.5, 0),
            vang = Angle(0, 0, -90),
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


--- no sprint, first deploy and holster for you jidhsfjkhsdfjogGNASJIODNJODAJKOnajiognv-
--- NIGGA SHOE ---
SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 2/30,
    },
    ["draw"] = {
        Source = "draw",
        Time = 19/30/2,
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.9,
    },
    ["fire"] = {
        Source = "alt_fire",
        Time = 15/30,
    },
    ["fire_iron"] = {
        Source = "alt_fire",
        Time = 11/30,
    },
    ["cycle"] = {
        Source = "alt_cycle",
        Time = 15/30,
        SoundTable = {{s = "weapons/fesiugmw2/foley/wpfoly_winchester_reload_pump_v1.wav", 		t = 2/30}},
        ShellEjectAt = 2/30,
		MinProgress = 0.333, -- how much time in seconds must pass before the animation can be cancelled
    },
    ["sgreload_start"] = {
        Source = "alt_reload_start",
        Time = (35/30)*0.8,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
		RestoreAmmo = 1, -- only used by shotgun empty insert reload
		-- it's modified, i'm sorry
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_winchester_reload_lift_v1.wav", 	t = (0/30)*0.8},
						{s = "weapons/fesiugmw2/foley/wpfoly_winchester_reload_loop_v1.wav", 	t = (26/30)*0.8},
					},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0,
    },
    ["sgreload_insert"] = {
        Source = "alt_reload_loop",
        Time = (33/30)*0.8,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        SoundTable = {{s = "weapons/fesiugmw2/foley/wpfoly_winchester_reload_loop_v1.wav", 		t = (23/30)*0.8}},
        TPAnimStartTime = 0.3,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["sgreload_finish"] = {
        Source = "alt_reload_finish",
        Time = (50/30)*0.8,
        SoundTable = {{s = "weapons/fesiugmw2/foley/wpfoly_winchester_reload_pump_v1.wav", 		t = (21/30)*0.8}},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.8,
    },
    ["sgreload_finish_empty"] = {
        Source = "alt_reload_finish",
        Time = (50/30)*0.8,
        SoundTable = {{s = "weapons/fesiugmw2/foley/wpfoly_winchester_reload_pump_v1.wav", 		t = (21/30)*0.8}},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.8,
    },
}

 -- Super fucky temp!
 -- S H U T  U P    A N D   K E E P  T H E M   P I N N E D  D O W N  

 -- hipfire
 -- maximum accuracy
    SWEP.Inaccuracy_Hip_Max_Stand	= 7
    SWEP.Inaccuracy_Hip_Max_Duck	= 7
    SWEP.Inaccuracy_Hip_Max_Prone	= 7
 -- minimum accuracy
    SWEP.Inaccuracy_Hip_Min_Stand   = 5
    SWEP.Inaccuracy_Hip_Min_Duck    = 5
    SWEP.Inaccuracy_Hip_Min_Prone   = 5

 -- sighted fire
 -- yeah
    SWEP.Inaccuracy_ADS = 5.5

 -- inaccuracy when you're... i don't remember
SWEP.Inaccuracy_Add_ADS			= 0
SWEP.Inaccuracy_Add_Hip			= 0
SWEP.Inaccuracy_Add_Move		= 0.1