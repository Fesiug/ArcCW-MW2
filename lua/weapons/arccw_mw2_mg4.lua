SWEP.Base = "arccw_mw2_abase"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - MW2"
SWEP.AdminOnly = false
SWEP.WeaponCamBone = tag_camera

SWEP.PrintName = "MG4"
SWEP.Trivia_Class = "Light Machine Gun"
SWEP.Trivia_Desc = "Fully automatic, large magazines."

if CLIENT and GetConVar("arccw_mw2cl_trivia"):GetBool() then
SWEP.Trivia_Manufacturer = "Heckler & Koch"
SWEP.Trivia_Calibre = "5.56x45mm NATO"
SWEP.Trivia_Mechanism = "Gas-Operated"
SWEP.Trivia_Country = "Germany"
SWEP.Trivia_Year = 2001
end

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/fesiugmw2_2/c_mg4_1.mdl"
SWEP.MirrorVMWM = false
SWEP.WorldModel = "models/weapons/w_mach_m249para.mdl"
SWEP.ViewModelFOV = 65

SWEP.Damage = 30
SWEP.DamageMin = 30
SWEP.RangeMin = 1500 * 0.025  -- GAME UNITS * 0.025 = METRES
SWEP.Range = 2000 * 0.025  -- GAME UNITS * 0.025 = METRES
SWEP.Penetration = 7
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any


SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 100 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 200
SWEP.ReducedClipSize = 50

SWEP.VisualRecoilMult = 0
SWEP.Recoil = 0.38
SWEP.RecoilSide = 0.38
SWEP.RecoilRise = 0

SWEP.Delay = 0.07 -- 60 / RPM.
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
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound =			"weapons/fesiugmw2/fire/mg4.wav"
SWEP.ShootMechSound =       ArcCW_MW2_Mech
--SWEP.DistantShootSound =	"weapons/fesiugmw2/fire_distant/mg4.wav"
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

SWEP.IronSightStruct = {
    Pos = Vector(-3.627, -2.651, 1.28),
    Ang = Angle(-0.149, 0, 0),
    Magnification = 1.3,
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

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    [10] = "j_bullet_010",
    [9] = "j_bullet_09",
    [8] = "j_bullet_08",
    [7] = "j_bullet_07",
    [6] = "j_bullet_06",
    [5] = "j_bullet_05",
    [4] = "j_bullet_04",
    [3] = "j_bullet_03",
    [2] = "j_bullet_02",
    [1] = "j_bullet_01",
}

SWEP.ExtraSightDist = 5
SWEP.Bipod_Integral = true

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = "optic",
        Bone = "j_reload",
        Offset = {
            vpos = Vector(-8.5, 0, 0.8),
            vang = Angle(0, 0, 0),
        },
        SlideAmount = {
            vmin = Vector(-8, 0.3, 0.6),
            vmax = Vector(-6, 0.3, 0.6),
        },
        InstalledEles = {"nors"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(28, 0, 3.6),
            vang = Angle(0, 0, 0),
        },
		VMScale = Vector(2, 1.5, 1.5),
        InstalledEles = {"muzzle"},
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "ubgl", "bipod", "foregrip_mw2exclusive"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(18.427, 0, -1.04),
            vang = Angle(0, 0, 0),
        },
        SlideAmount = {
            vmin = Vector(10.748, 0, 0),
            vmax = Vector(18.427, 0, 1),
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(17, -1.1, 3.1),
            vang = Angle(0, 0, 90),
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
        PrintName = "Charm",
        DefaultAttName = "None",
        Slot = "charm",
        Bone = "tag_weapon",
        FreeSlot = true,
        Offset = {
            vang = Angle(0, 0, 0),
        },
        SlideAmount = {
            vmin = Vector(2.7, -0.8, 2),
            vmax = Vector(6.5, -0.8, 2),
        },
    },
    {
        PrintName = "Camouflage",
        DefaultAttName = "None",
        Slot = "mw2_wepcamo",
        FreeSlot = true,
    },
}



SWEP.Hook_SelectReloadAnimation = function(wep, anim)
    if wep.Attachments[1].Installed then
        return anim .. "_att"
    end
end

SWEP.Hook_TranslateAnimation = function(wep, anim)
    if wep.Attachments[3].Installed then
        return anim .. "_grip"
    end
end



SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 100/30
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
        Time = 10/30
    },
    ["idle_sprint"] = {
        Source = "sprint_loop",
        Time = 29/40
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
        Time = 10/30
    },
    ["draw"] = {
        Source = "pullout",
        Time = 41/30,
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.35,
    },
    ["holster"] = {
        Source = "putaway",
        Time = 18/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.35,
    },
    ["fire"] = {
        Source = "fire",
        Time = 9/30,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "fire_ads",
        Time = 13/30,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        Time = 291/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 7.13,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_lift_v1.wav", 			t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_chamber_v1.wav", 		t = 18/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_open_v1.wav", 			t = 80/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_clipout_v1.wav", 		t = 103/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_clipin_v1.wav", 		t = 152/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_hitclip_v1.wav", 		t = 175/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_lift_v1.wav", 			t = 192/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_close_v1.wav", 			t = 212/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_hit_v1.wav", 			t = 225/30},
					},
        LastClip1OutTime = 2.5,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 1,
    },
    ["reload_att"] = {
        Source = "reload_att",
        Time = 291/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 7.13,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_lift_v1.wav", 			t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_chamber_v1.wav", 		t = 18/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_open_v1.wav", 			t = 80/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_clipout_v1.wav", 		t = 103/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_clipin_v1.wav", 		t = 152/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_hitclip_v1.wav", 		t = 175/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_lift_v1.wav", 			t = 192/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_close_v1.wav", 			t = 212/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_hit_v1.wav", 			t = 225/30},
					},
        LastClip1OutTime = 2.5,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 1,
    },
------------------
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
        Time = 29/40
    },
    ["exit_sprint_grip"] = {
        Source = "sprint_out_grip",
        Time = 10/30
    },
    ["draw_grip"] = {
        Source = "pullout_grip",
        Time = 41/30,
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.35,
    },
    ["holster_grip"] = {
        Source = "putaway_grip",
        Time = 18/30,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.35,
    },
    ["fire_grip"] = {
        Source = "fire_grip",
        Time = 9/30,
        ShellEjectAt = 0,
    },
    ["fire_iron_grip"] = {
        Source = "fire_ads_grip",
        Time = 13/30,
        ShellEjectAt = 0,
    },
    ["reload_grip"] = {
        Source = "reload_grip",
        Time = 291/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 7.13,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_lift_v1.wav", 			t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_chamber_v1.wav", 		t = 18/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_open_v1.wav", 			t = 80/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_clipout_v1.wav", 		t = 103/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_clipin_v1.wav", 		t = 152/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_hitclip_v1.wav", 		t = 175/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_lift_v1.wav", 			t = 192/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_close_v1.wav", 			t = 212/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_hit_v1.wav", 			t = 225/30},
					},
        LastClip1OutTime = 2.5,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 1,
    },
    ["reload_att_grip"] = {
        Source = "reload_att_grip",
        Time = 291/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        MinProgress = 7.13,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_lift_v1.wav", 			t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_chamber_v1.wav", 		t = 18/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_open_v1.wav", 			t = 80/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_clipout_v1.wav", 		t = 103/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_clipin_v1.wav", 		t = 152/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_hitclip_v1.wav", 		t = 175/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_lift_v1.wav", 			t = 192/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_close_v1.wav", 			t = 212/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_mg4_reload_hit_v1.wav", 			t = 225/30},
					},
        LastClip1OutTime = 2.5,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 1,
    },
}