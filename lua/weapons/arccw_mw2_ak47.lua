SWEP.Base = "arccw_mw2_abase"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - MW2"
SWEP.AdminOnly = false
SWEP.WeaponCamBone = tag_camera

SWEP.PrintName = "AK-47"
SWEP.Trivia_Class = "Assault Rifle"
SWEP.Trivia_Desc = "Fully automatic, all purpose weapon."

if CLIENT and GetConVar("arccw_mw2cl_trivia"):GetBool() then
SWEP.Trivia_Manufacturer = "rusasian"
SWEP.Trivia_Calibre = "7.62xshortmm Soviet"
SWEP.Trivia_Mechanism = "Gas-Operated"
SWEP.Trivia_Country = "USARR"
SWEP.Trivia_Year = 1947
end

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/fesiugmw2_2/c_ak47_1a.mdl"
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos = Vector(-3, 3, -5),
    ang = Angle(-10, 0, 180),
    scale = 1.125
}
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"
SWEP.ViewModelFOV = 65

SWEP.Damage = 40
SWEP.DamageMin = 30
SWEP.Range = 2000 * 0.025  -- GAME UNITS * 0.025 = METRES
SWEP.Penetration = 10
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any


SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 30 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 45
SWEP.ReducedClipSize = 15

SWEP.VisualRecoilMult = 0
SWEP.Recoil = 0.5
SWEP.RecoilSide = 0.3
SWEP.RecoilRise = 0.2

SWEP.Delay = 0.085 -- 60 / RPM.
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
SWEP.NPCWeight = 100

SWEP.AccuracyMOA = 2.5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 500 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Primary.Ammo = "ar2" -- what ammo type the gun uses

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound =			"weapons/fesiugmw2/fire/ak47.wav"
SWEP.ShootMechSound =       ArcCW_MW2_Mech
--SWEP.DistantShootSound =	"weapons/fesiugmw2/fire_distant/ak47.wav"
SWEP.ShootSoundSilenced =	"weapons/fesiugmw2/fire/m4_sil.wav"
SWEP.MW2_M203isGP25 = true

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
    Pos = Vector(-2.345, -2.012, 0.659), --
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
        VMBodygroups = {{ind = 2, bg = 1}},
        WMBodygroups = {},
    },
    ["nogrip"] = {
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
    ["wepcamo-ak47_cod4"]    = {
        VMBodygroups = { { ind = 0, bg = 1 } },
        Override_IronSightStruct = {
            Pos = Vector(-2.345, -2.012, 0.659),
            Ang = Angle(0.3, 0, 0),
            ViewModelFOV = 65 / 1.3,
            Magnification = 1.3,
        },
        AttPosMods = {
            [1] = {
                vpos = Vector(1.5, 0, 2.5),
            },
            [3] = {
                SlideAmount = {
                    vmin = Vector(9, 0, 0.4),
                    vmax = Vector(11.5, 0, 0.4),
                },
            },
        },        
    },
            ["mw2_ubgl_m203"] = {
                VMBodygroups = {{ind = 1, bg = 1}},
            },
            ["mw2_ubgl_masterkey"] = {
                VMBodygroups = {{ind = 1, bg = 2}},
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
            vpos = Vector(1.5, 0, 3.1),
            vang = Angle(0, 0, 0),
        },
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(19.5, 0, 1.45),
            vang = Angle(0, 0, 0),
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "ubgl", "bipod", "mw2_ubgl"},
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(18.427, 0, -1.04),
            vang = Angle(0, 0, 0),
        },
        SlideAmount = {
            vmin = Vector(9, 0, 0),
            vmax = Vector(11.5, 0, 0),
        }
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(12.5, -0.7, 2.25),
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
        PrintName = "Camouflage",
        DefaultAttName = "None",
        Slot = {"mw2_wepcamo","mw2_wepedit_ak47"},
        FreeSlot = true,
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "tag_weapon",
        Offset = {
            vpos = Vector(3.5, -0.4, 1.15),
            vang = Angle(0, 0, 0),
            wpos = Vector(9.625, 1.253, -3.298),
            wang = Angle(0, 0, 180)
        },
    },
}



SWEP.Hook_TranslateAnimation = function(wep, anim)
	local attached = wep.Attachments[3].Installed
	
	-- m203 is 1, masterkey is 2, fgrip is 3
	local attthing
		if 	attached == "mw2_ubgl_masterkey" 	    then attthing = 2
		elseif 	attached 							then attthing = 1
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
			Time = 0/30
		},
		["exit_ubgl"] = {
			Source = "idle",
			Time = 0/30
		}, 						-- Fuck you.
    ["idle"] = {
        Source = "idle",
        Time = 2/30
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
        Time = 29/30,
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
    ["ready"] = {
        Source = "pullout_first",
        Time = 45/30,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_chamber_v4.wav", 	t = 11/30},
					},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
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
        Time = 83/30,
        MinProgress = 1.75,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_lift_v4.wav", 		t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_clipout_v5.wav", 	t = 19/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_clipin_v4.wav", 	    t = 57/30},
					},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 106/30,
        MinProgress = 1.75,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_lift_v4.wav", 		t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_clipout_v5.wav", 	t = 19/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_clipin_v4.wav", 	    t = 56/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_chamber_v4.wav",		t = 77/30},
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
        Time = 2/30
    },
    ["enter_sprint_m203"] = {
        Source = "sprint_in_m203",
        Time = 10/30
    },
    ["idle_sprint_m203"] = {
        Source = "sprint_loop_m203",
        Time = 30/40
    },
    ["exit_sprint_m203"] = {
        Source = "sprint_out_m203",
        Time = 10/30
    },
    ["draw_m203"] = {
        Source = "pullout_m203",
        Time = 29/30,
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
    },
    ["holster_m203"] = {
        Source = "putaway_m203",
        Time = 25/30,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
    },
    ["ready_m203"] = {
        Source = "pullout_first_m203",
        Time = 45/30,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_chamber_v4.wav", 	t = 11/30},
					},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
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
        Time = 83/30,
        MinProgress = 1.75,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_lift_v4.wav", 		t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_clipout_v5.wav", 	t = 19/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_clipin_v4.wav", 	    t = 57/30},
					},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty_m203"] = {
        Source = "reload_empty_m203",
        Time = 106/30,
        MinProgress = 1.75,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_lift_v4.wav", 		t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_clipout_v5.wav", 	t = 19/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_clipin_v4.wav", 	    t = 56/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_chamber_v4.wav",		t = 77/30},
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
        Source = "sprint_loop_m203",
        Time = 30/40
    },
    ["alt_exit_sprint_m203"] = {
        Source = "alt_sprint_out_m203",
        Time = 10/30
    },
    ["alt_draw_m203"] = {
        Source = "alt_pullout_m203",
        Time = 29/30,
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
    },
    ["alt_holster_m203"] = {
        Source = "alt_putaway_m203",
        Time = 25/30,
    },
    ["alt_fire_m203"] = {
        Source = "alt_fire_m203",
        Time = 10/30,
    },
    ["alt_reload_m203"] = {
        Source = "alt_reload_m203",
        Time = 94/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47gp25_grnd_lift_v1.wav", 	t = 15/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47gp25_grnd_chamber_v1.wav", 	t = 53/30},
					},
    },
------------------------------------------------
------ Here lies MASTERKEY ANIMATIONS ... AWESOME ---
------------------------------------------------
    ["idle_masterkey"] = {
        Source = "idle_masterkey",
        Time = 2/30
    },
    ["enter_sprint_masterkey"] = {
        Source = "sprint_in_masterkey",
        Time = 10/30
    },
    ["idle_sprint_masterkey"] = {
        Source = "sprint_loop_masterkey",
        Time = 30/40
    },
    ["exit_sprint_masterkey"] = {
        Source = "sprint_out_masterkey",
        Time = 10/30
    },
    ["draw_masterkey"] = {
        Source = "pullout_masterkey",
        Time = 29/30,
        SoundTable = {{s = "MW2Common.Deploy", 		t = 0}},
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
    },
    ["holster_masterkey"] = {
        Source = "putaway_masterkey",
        Time = 25/30,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
    },
    ["ready_masterkey"] = {
        Source = "pullout_first_masterkey",
        Time = 45/30,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_chamber_v4.wav", 	t = 11/30},
					},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
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
        Time = 83/30,
        MinProgress = 1.75,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_lift_v4.wav", 		t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_clipout_v5.wav", 	t = 19/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_clipin_v4.wav", 	    t = 57/30},
					},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty_masterkey"] = {
        Source = "reload_empty_masterkey",
        Time = 106/30,
        MinProgress = 1.75,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_lift_v4.wav", 		t = 0},
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_clipout_v5.wav", 	t = 19/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_clipin_v4.wav", 	    t = 56/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_ak47_reload_chamber_v4.wav",		t = 77/30},
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
        Time = 25/30,
    },
    ["alt_fire_masterkey"] = {
        Source = "alt_fire_masterkey",
        Time = 10/30,
    },
    ["alt_cycle_masterkey"] = {
        Source = "alt_cycle_masterkey",
        SoundTable = {{s = "weapons/fesiugmw2/foley/wpfoly_winchester_reload_pump_v1.wav", 		t = 3/30}},
        Time = 15/30,
    },
    ["alt_reload_start_masterkey"] = {
        Source = "alt_reload_start_masterkey",
        Time = 35/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiugmw2/foley/wpfoly_shotattach_reload_lift_v1.wav", 		t = 0/30},
						{s = "MW2Common.Masterkey_Load", 		t = 26/30},
					},
    },
    ["alt_reload_loop_masterkey"] = {
        Source = "alt_reload_loop_masterkey",
        Time = 33/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "MW2Common.Masterkey_Load", 	t = 24/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_shotattach_reload_end_v1.wav", 	t = 33/30}, -- end
					},
    },
    ["alt_reload_finish_masterkey"] = {
        Source = "alt_reload_finish_masterkey",
        Time = 50/30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						--{s = "MW2Common.Masterkey_Load", 	t = 0/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_shotattach_reload_end_v1.wav", 	t = 0/30},
						{s = "weapons/fesiugmw2/foley/wpfoly_winchester_reload_pump_v1.wav", 	t = 22/30},
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