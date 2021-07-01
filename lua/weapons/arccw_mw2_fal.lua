SWEP.Base = "arccw_mw2_abase"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - MW2"
SWEP.AdminOnly = false
SWEP.WeaponCamBone = tag_camera

SWEP.PrintName = "FAL"
SWEP.Trivia_Class = "Assault Rifle"
SWEP.Trivia_Desc = "Semi-automatic (single fire)"

if CLIENT and GetConVar("arccw_mw2cl_trivia"):GetBool() then
SWEP.Trivia_Manufacturer = "Colt"
SWEP.Trivia_Calibre = "5.56x45mm NATO"
SWEP.Trivia_Mechanism = "Short-Stroke Gas Piston"
SWEP.Trivia_Country = "Belgium"
SWEP.Trivia_Year = 1947
end

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/fesiugmw2_2/c_fal.mdl"
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos = Vector(-5, 3, -5),
    ang = Angle(-10, 0, 180),
    scale = 1.25
}
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"
SWEP.ViewModelFOV = 65

SWEP.Damage = 55
SWEP.DamageMin = 35
SWEP.RangeMin = 1000 * 0.025  -- GAME UNITS * 0.025 = METRES
SWEP.Range = 1500 * 0.025  -- GAME UNITS * 0.025 = METRES
SWEP.Penetration = 7
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any


SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 20 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 30
SWEP.ReducedClipSize = 10

SWEP.VisualRecoilMult = 0
SWEP.Recoil = 0.5
SWEP.RecoilSide = 0.3
SWEP.RecoilRise = 0.2

SWEP.Delay = 0.079 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {"weapon_ar2", "weapon_smg1"}
SWEP.NPCWeight = 100

SWEP.AccuracyMOA = 2.5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 500 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Primary.Ammo = "smg1" -- what ammo type the gun uses

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound =			"weapons/fesiugmw2/fire/fal.wav"
SWEP.ShootMechSound =       ArcCW_MW2_Mech
--SWEP.DistantShootSound =	"weapons/fesiugmw2/fire_distant/m4_mp.wav"
SWEP.ShootSoundSilenced =	"weapons/fesiugmw2/fire/m4_sil.wav"

SWEP.MuzzleEffect = "muzzleflash_4"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellPitch = 95
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.95
SWEP.SightedSpeedMult = 0.38
SWEP.SightTime = 0.25
SWEP.ShellRotateAngle = Angle(0, 90, 0)

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.IronSightStruct = {
    Pos = Vector(-2.595, -3.512, 0.159), --
    Ang = Angle(0, 0, 0),
    ViewModelFOV = 65 / 1.3,
    Magnification = 1.3,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

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

SWEP.BarrelLength = 27

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
            ["mw2_ubgl_m203"] = {
                VMBodygroups = {{ind = 2, bg = 1}},
            },
            ["mw2_ubgl_masterkey"] = {
                VMBodygroups = {{ind = 2, bg = 2}},
            },
}

SWEP.ExtraSightDist = 5

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = "optic",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(6.972, 0, 4.018),
            vang = Angle(0, 0, 0),
            wang = Angle(-9.738, 0, 180)
        },
        SlideAmount = {
            vmin = Vector(0.668, 0, 3.618),
            vmax = Vector(5.076, 0, 3.618),
            wmin = Vector(5.36, 0.739, -5.401),
            wmax = Vector(5.36, 0.739, -5.401),
        },
        InstalledEles = {"nors"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(17, 0, 2),
            vang = Angle(0, 0, 0),
            wpos = Vector(33.719, -2.122, -5.573),
            wang = Angle(0, 6.034, 180)
        },
		WMScale = Vector(1, 1, 1),
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "ubgl", "bipod", "mw2_ubgl"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(18.427, 0, -1.04),
            vang = Angle(0, 0, 0),
            wpos = Vector(14.329, 0.602, -4.453),
            wang = Angle(-2.461, -6.525, 176.662)
        },
        SlideAmount = {
            vmin = Vector(6.748, 0, 1.04),
            vmax = Vector(12.427, 0, 1.04),
            wmin = Vector(20.996, -0.991, -3.837),
            wmax = Vector(13.661, -0.078, -3.837),
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(12.5, -1, 2.25),
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
            vpos = Vector(4, -0.4, 1.25),
            vang = Angle(0, 0, 0),
            wpos = Vector(9.625, 1.5, -4),
            wang = Angle(0, 0, 180)
        },
    },
}



SWEP.Hook_TranslateAnimation = function(wep, anim)
	local attached = wep.Attachments[3].Installed
	
	-- m203 is 1, masterkey is 2, fgrip is 3
	local attthing
		if 		attached == "mw2_ubgl_m203" 		then attthing = 1
		elseif 	attached == "mw2_ubgl_masterkey" 	then attthing = 2
		else 											 attthing = 0
	end
    
	-- when entering ubgl
	if anim == "enter_ubgl" then
		if attthing == 1 then
			return "switch2_alt_m203"
		elseif attthing == 2 then
			return "switch2_alt_masterkey"
		end
	elseif anim == "exit_ubgl" then
		if attthing == 1 then
			return "switch2_gun_m203"
		elseif attthing == 2 then
			return "switch2_gun_masterkey"
		end
	end

    if attthing == 1 and wep:GetInUBGL() then
        return "alt_" .. anim .. "_m203"
		elseif attthing == 1 then
			return anim .. "_m203"
		
	elseif attthing == 2 and wep:GetInUBGL() then
        return "alt_" .. anim .. "_masterkey"
		elseif attthing == 2 then
			return anim .. "_masterkey"
		
    end
end

SWEP.Animations = {
		["enter_ubgl"] = {
			Source = "idle",
			Time = 1/30
		},
		["exit_ubgl"] = {
			Source = "idle",
			Time = 1/30
		}, 						-- Fuck you.
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
        Time = 32/40
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
        Time = 10/30
    },
    ["draw"] = {
        Source = "pullout",
        Time = 35/30,
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
    },
    ["holster"] = {
        Source = "putaway",
        Time = 25/30,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
    },
    ["fire"] = {
        Source = "fire",
        Time = 5/30,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "fire_ads",
        Time = 5/30,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        Time = 81/30,
        MinProgress = 1.799,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_fal_reload_lift_v1.wav", 		t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_fal_reload_clipout_v1.wav", 	t = 29/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_fal_reload_clipin_v1.wav", 	    t = 47/30},
					},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 98/30,
        MinProgress = 1.799,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_fal_reload_lift_v1.wav", 		t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_fal_reload_clipout_v1.wav", 	t = 34/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_fal_reload_clipin_v1.wav", 	    t = 50/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_fal_reload_chamber_v1.wav",		t = 69/30},
					},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.6,
    },
    ["reload_empty_hb"] = {
        Source = "reload_empty_hb",
        Time = 93/30,
        MinProgress = 1.799,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_fal_reload_lift_v1.wav", 		t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_fal_reload_clipout_v1.wav", 	t = 33/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_fal_reload_clipin_v1.wav", 	    t = 48/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_fal_reload_chamber_v1.wav",		t = 67/30},
					},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.6,
    },
------------------------------------------------
------ Here lies M203 ANIMATIONS ... AWESOME ---
------------------------------------------------
    ["idle_m203"] = {
        Source = "idle_m203",
        Time = 100/30
    },
    ["enter_sprint_m203"] = {
        Source = "sprint_in_m203",
        Time = 10/30
    },
    ["idle_sprint_m203"] = {
        Source = "sprint_loop_m203",
        Time = 32/40
    },
    ["exit_sprint_m203"] = {
        Source = "sprint_out_m203",
        Time = 10/30
    },
    ["draw_m203"] = {
        Source = "pullout_m203",
        Time = 36/30,
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
    },
    ["holster_m203"] = {
        Source = "putaway_m203",
        Time = 26/30,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
    },
    ["fire_m203"] = {
        Source = "fire_m203",
        Time = 5/30,
        ShellEjectAt = 0,
    },
    ["fire_iron_m203"] = {
        Source = "fire_ads_m203",
        Time = 5/30,
        ShellEjectAt = 0,
    },
    ["reload_m203"] = {
        Source = "reload_m203",
        Time = 80/30,
        MinProgress = 1.799,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_fal_reload_lift_v1.wav", 		t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_fal_reload_clipout_v1.wav", 	t = 33/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_fal_reload_clipin_v1.wav", 	    t = 49/30},
					},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty_m203"] = {
        Source = "reload_empty_m203",
        Time = 98/30,
        MinProgress = 1.799,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_fal_reload_lift_v1.wav", 		t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_fal_reload_clipout_v1.wav", 	t = 34/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_fal_reload_clipin_v1.wav", 	    t = 50/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_fal_reload_chamber_v1.wav",		t = 68/30},
					},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.6,
    },
------------------------------------------------
------ Here lies M203 IN THE ANIMATIONS........... ... AWESOME ---
------------------------------------------------
    ["alt_idle_m203"] = {
        Source = "alt_idle_m203",
        Time = 1/30
    },
    ["alt_enter_sprint_m203"] = {
        Source = "alt_sprint_in_m203",
        Time = 10/30
    },
    ["alt_idle_sprint_m203"] = {
        Source = "alt_sprint_loop_m203",
        Time = 30/40
    },
    ["alt_exit_sprint_m203"] = {
        Source = "alt_sprint_out_m203",
        Time = 10/30
    },
    ["alt_draw_m203"] = {
        Source = "alt_pullout_m203",
        Time = 30/30,
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
    },
    ["alt_holster_m203"] = {
        Source = "alt_putaway_m203",
        Time = 18/30,
    },
    ["alt_fire_m203"] = {
        Source = "alt_fire_m203",
        Time = 10/30,
    },
    ["alt_reload_m203"] = {
        Source = "alt_reload_m203",
        Time = 78/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_m203_chamber_open_v12.wav", 		t = 12/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_m203_load_v12.wav", 	t = 39/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_m203_chamber_close_v12.wav", 	t = 61/30},
					},
    },
------------------------------------------------
------ Here lies MASTERKEY ANIMATIONS ... AWESOME ---
------------------------------------------------
    ["idle_masterkey"] = {
        Source = "idle_masterkey",
        Time = 100/30
    },
    ["enter_sprint_masterkey"] = {
        Source = "sprint_in_masterkey",
        Time = 10/30
    },
    ["idle_sprint_masterkey"] = {
        Source = "sprint_loop_masterkey",
        Time = 32/40
    },
    ["exit_sprint_masterkey"] = {
        Source = "sprint_out_masterkey",
        Time = 10/30
    },
    ["draw_masterkey"] = {
        Source = "pullout_masterkey",
        Time = 36/30,
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
    },
    ["holster_masterkey"] = {
        Source = "putaway_masterkey",
        Time = 23/30,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
    },
    ["fire_masterkey"] = {
        Source = "fire_masterkey",
        Time = 5/30,
        ShellEjectAt = 0,
    },
    ["fire_iron_masterkey"] = {
        Source = "fire_ads_masterkey",
        Time = 5/30,
        ShellEjectAt = 0,
    },
    ["reload_masterkey"] = {
        Source = "reload_masterkey",
        Time = 80/30,
        MinProgress = 1.799,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_fal_reload_lift_v1.wav", 		t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_fal_reload_clipout_v1.wav", 	t = 33/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_fal_reload_clipin_v1.wav", 	    t = 49/30},
					},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty_masterkey"] = {
        Source = "reload_empty_masterkey",
        Time = 98/30,
        MinProgress = 1.799,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_fal_reload_lift_v1.wav", 		t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_fal_reload_clipout_v1.wav", 	t = 34/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_fal_reload_clipin_v1.wav", 	    t = 50/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_fal_reload_chamber_v1.wav",		t = 68/30},
					},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.6,
    },
------------------------------------------------
------ Here lies MASTERKEY IN THE ANIMATIONS........... ... AWESOME ---
------------------------------------------------
    ["alt_idle_masterkey"] = {
        Source = "alt_idle_masterkey",
        Time = 1/30
    },
    ["alt_enter_sprint_masterkey"] = {
        Source = "alt_sprint_in_masterkey",
        Time = 10/30
    },
    ["alt_idle_sprint_masterkey"] = {
        Source = "alt_sprint_loop_masterkey",
        Time = 30/40
    },
    ["alt_exit_sprint_masterkey"] = {
        Source = "alt_sprint_out_masterkey",
        Time = 10/30
    },
    ["alt_draw_masterkey"] = {
        Source = "alt_pullout_masterkey",
        Time = 25/30,
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
    },
    ["alt_holster_masterkey"] = {
        Source = "alt_putaway_masterkey",
        Time = 19/30,
    },
    ["alt_fire_masterkey"] = {
        Source = "alt_fire_masterkey",
        Time = 10/30,
    },
    ["alt_cycle_masterkey"] = {
        Source = "alt_cycle_masterkey",
        SoundTable = {{s = "weapons/fesiugmw2/foley/wpfoly_winchester_reload_pump_v1.wav", 		t = 0/30}},
        Time = 15/30,
    },
    ["alt_reload_start_masterkey"] = {
        Source = "alt_reload_start_masterkey",
        Time = 35/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_shotattach_reload_lift_v1.wav", 		t = 0/30},
						{s = "MW2Common.Masterkey_Load", 		t = 25/30},
					},
    },
    ["alt_reload_loop_masterkey"] = {
        Source = "alt_reload_loop_masterkey",
        Time = 33/40,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "MW2Common.Masterkey_Load", 	t = 24/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_shotattach_reload_end_v1.wav", 	t = 33/30}, -- end
					},
    },
    ["alt_reload_finish_masterkey"] = {
        Source = "alt_reload_finish_masterkey",
        Time = 49/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						--{s = "MW2Common.Masterkey_Load", 	t = 0/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_winchester_reload_pump_v1.wav", 	t = 20/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_shotattach_reload_end_v1.wav", 	t = 33/30},
					},
    },
-----------------------------------------------------
    ["switch2_gun_m203"] = {
        Source = "switch2_gun_m203",
        SoundTable = {{s = "MW2Common.Underbarrel", 		t = 0}},
        Time = 24/30
    },
    ["switch2_alt_m203"] = {
        Source = "switch2_alt_m203",
        SoundTable = {{s = "MW2Common.Underbarrel", 		t = 0}},
        Time = 24/30
    },
    ["switch2_gun_masterkey"] = {
        Source = "switch2_gun_masterkey",
        SoundTable = {{s = "MW2Common.Underbarrel", 		t = 0}},
        Time = 22/30
    },
    ["switch2_alt_masterkey"] = {
        Source = "switch2_alt_masterkey",
        SoundTable = {
						{s = "MW2Common.Underbarrel", 		t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_winchester_reload_pump_v1.wav", 		t = 14/30},
					},
        Time = 25/30
    },
}