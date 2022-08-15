att.PrintName = "Ranger"
att.Icon = Material("entities/acwatt_mw2_akimbo.png", "smooth")
att.Description = "Wholy."
att.Hidden = false
att.Desc_Pros = {
    "+100% more gun",
}
att.Desc_Cons = {
    "- Cannot use ironsights"
}
att.Desc_Neutrals = {
    "Don't toggle the UBGL"
}
att.AutoStats = true
att.Mult_HipDispersion = 4
att.Slot = "akimbotest"

att.GivesFlags = {"cantuseshitinakimboyet"}

att.SortOrder = 1738

att.AddSuffix = " + Ranger"

att.MountPositionOverride = 0

att.Model = "models/weapons/arccw/fesiugmw2_2/c_ranger_2.mdl"


att.LHIK = true
att.LHIK_Animation = true
att.LHIK_MovementMult = 0

att.UBGL = true

att.UBGL_PrintName = "AKIMBO"
att.UBGL_Automatic = false
att.UBGL_MuzzleEffect = "muzzleflash_m3"
att.UBGL_ClipSize = 2
att.UBGL_Ammo = "Buckshot"
att.UBGL_RPM = 60 / 0.009
att.UBGL_Recoil = 3
att.UBGL_RecoilSide = 2
att.UBGL_RecoilRise = 0
att.UBGL_Capacity = 2

att.Hook_ShouldNotSight = function(wep)
    return true
end

local function Ammo(wep)
    return wep.Owner:GetAmmoCount("Buckshot") -- att.UBGL_Ammo
end

att.Hook_Think = function(wep)
    if wep:GetMW2Masterkey_ShellInsertTime() < CurTime() and wep:GetMW2Masterkey_ShellInsertTime() != 0 then
        wep:SetMW2Masterkey_ShellInsertTime(0)
        local clip = 2
        if wep:Clip2() >= clip then return end
        if Ammo(wep) <= 0 then return end

        local reserve = Ammo(wep)
        reserve = reserve + wep:Clip2()
        local load = math.Clamp(clip, 0, reserve)
        wep.Owner:SetAmmo(reserve - load, "Buckshot")
        wep:SetClip2(load)
    end

    if !IsFirstTimePredicted() then return end
    if wep:GetOwner():KeyPressed(IN_RELOAD) then
        wep:SetInUBGL(false)
        wep:ReloadUBGL()
    elseif wep:GetOwner():KeyPressed(IN_ATTACK) then
        wep:SetInUBGL(false)
    elseif wep:GetOwner():KeyPressed(IN_ATTACK2) then
        wep:SetInUBGL(true)
        wep:ShootUBGL()
    end
end

att.Hook_TranslateSequence = function(wep, anim)
end

local awesomelist = {
    ["sprint_in_r"] = {
        time = 10/30,
        anim = "sprint_in_l",
    },
    ["sprint_out_r"] = {
        time = 10/30,
        anim = "sprint_out_l",
    },
    ["sprint_loop_r"] = {
        time = 30/40,
        anim = "sprint_loop_l",
    },
    ["pullout_r"] = {
        time = 12/30,
        anim = "pullout_l",
    },
    ["putaway_r"] = {
        time = 23/30,
        anim = "putaway_l",
    },
}

att.Hook_TranslateSequence = function(wep, anim)
    if awesomelist[anim] then
        local bab = awesomelist[anim]
        wep:DoLHIKAnimation(bab.anim, bab.time)
    end
end

att.Hook_LHIK_TranslateAnimation = function(wep, anim)
    if anim == "idle" then return "idle_l" end
end

att.UBGL_Fire = function(wep, ubgl)
    if wep:Clip2() <= 0 then return end

    -- this bitch
    local fixedcone = wep:GetDispersion() / 360 / 60

    wep.Owner:FireBullets({
		Src = wep.Owner:EyePos(),
		Num = 6,
		Damage = 75,
		Force = 1,
		Attacker = wep.Owner,
		Dir = wep.Owner:EyeAngles():Forward(),
		Spread = Vector(fixedcone, fixedcone, 0),
		Callback = function(_, tr, dmg)
			local dist = (tr.HitPos - tr.StartPos):Length() * ArcCW.HUToM

			local dmgmax = 75
			local dmgmin = 35

			local delta = dist / 800 * 0.025

			delta = math.Clamp(delta, 0, 1)

			local amt = Lerp(delta, dmgmax, dmgmin)

			dmg:SetDamage(amt)
		end
	})
    wep:EmitSound("weapons/fesiugmw2/fire/shot_ranger.wav", 130, 115 * math.Rand(1 - 0.05, 1 + 0.05))
                            -- This is kinda important
                                            -- Wep volume
                                                    -- Weapon pitch (along with the pitch randomizer)




    wep:SetClip2(wep:Clip2() - 1)
    
    wep:DoLHIKAnimation("fire_l", 16/30)

    wep:DoEffects()
end

att.UBGL_Reload = function(wep, ubgl)
        if wep:Clip2() >= 2 then return end
        if Ammo(wep) <= 0 then return end

    wep:SetInUBGL(false)
    wep:Reload()

    wep:DoLHIKAnimation("reload_mp_l", 120/30)
    wep:SetNextSecondaryFire(CurTime() + 120/30)
    wep:SetMW2Masterkey_ShellInsertTime(CurTime() + 1.549)
    wep:PlaySoundTable({
        {s = "weapons/fesiugmw2/foley/wpfoly_ranger_reload_lift_v1.wav", 		t = 0.01},
        {s = "weapons/fesiugmw2/foley/wpfoly_ranger_reload_clipout_v1.wav", 		t = 12/30},
        {s = "weapons/fesiugmw2/foley/wpfoly_ranger_reload_clip1in_v1.wav", 		t = 53/30},
        {s = "weapons/fesiugmw2/foley/wpfoly_ranger_reload_clip2in_v1.wav", 		t = 70/30},
        {s = "weapons/fesiugmw2/foley/wpfoly_ranger_reload_chamber_v1.wav", 		t = 106/30},
    })
end