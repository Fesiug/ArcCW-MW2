att.PrintName = "M93 Raffica"
att.Icon = Material("entities/acwatt_mw2_akimbo.png", "smooth")
att.Description = "Wholy."
att.Hidden = true
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

att.AddSuffix = " + M93R"

att.MountPositionOverride = 0

att.Model = "models/weapons/arccw/fesiugmw2/akimbo/c_beretta393_left_2.mdl"

att.LHIK = true
att.LHIK_Animation = true
att.LHIK_MovementMult = 0

att.UBGL = true

att.UBGL_PrintName = "AKIMBO"
att.UBGL_Automatic = true
att.UBGL_MuzzleEffect = "muzzleflash_4"
att.UBGL_ClipSize = 20
att.UBGL_Ammo = "pistol"
att.UBGL_RPM = 60 / 0.064
att.UBGL_Recoil = .45
att.UBGL_RecoilSide = .55
att.UBGL_RecoilRise = .25
att.UBGL_Capacity = 20

local burstcount = 0
local burstlength = 3

att.Hook_ShouldNotSight = function(wep)
    return true
end

att.Hook_Think = function(wep)
    if !IsFirstTimePredicted() then return end
    if wep:GetOwner():KeyPressed(IN_RELOAD) then
        wep:SetInUBGL(false)
        wep:ReloadUBGL()
        wep:Reload()
    elseif wep:GetOwner():KeyPressed(IN_ATTACK) then
        wep:SetInUBGL(true)
        wep:ShootUBGL()
    elseif wep:GetOwner():KeyReleased(IN_ATTACK) then
        local postburst = 0.1

        if (CurTime() + postburst) > wep:GetNextSecondaryFire() then
        wep:SetNextSecondaryFire(CurTime() + postburst) end
    elseif wep:GetOwner():KeyPressed(IN_ATTACK2) then
        wep:SetInUBGL(false)
    end

    if wep:Clip2() > 0 then
        if burstcount > 0 then
            wep:ShootUBGL()
        end
    
    end

        if burstcount == burstlength then
            att.UBGL_Automatic = false
            burstcount = 0
        end

end

att.Hook_TranslateSequence = function(wep, anim)
    local awesome-- = wep:GetAnimKeyTime(anim)

    -- i fucking hate it! i really do why the fuck it so nastyy
    -- need to find a way to fix this disaster

    
    if anim == "sprint_in_akimbo_right" or anim == "sprint_out_akimbo_right" or anim == "sprint_loop_akimbo_right" or anim == "pullout_akimbo_right" or anim == "putaway_akimbo_right" then
        if anim == "sprint_in_akimbo_right" then
            awesome = 11/30
            playanim = "sprint_in"
        elseif anim == "sprint_out_akimbo_right" then
            awesome = 11/30
            playanim = "sprint_out"
        elseif anim == "sprint_loop_akimbo_right" then
            awesome = 31/40
            playanim = "sprint_loop"
        elseif anim == "pullout_akimbo_right" then
            awesome = 26/30 /4
            playanim = "pullout"
        elseif anim == "putaway_akimbo_right" then
            awesome = 26/30 /4
            playanim = "putaway"
        end
            wep:DoLHIKAnimation(playanim, awesome)
    end
end

att.Hook_LHIK_TranslateAnimation = function(wep, anim)
    if anim == "idle" and wep:Clip2() <= 0 then
        return "idle_empty"
    end
end

local function Ammo(wep)
    return wep.Owner:GetAmmoCount("pistol") -- att.UBGL_Ammo
end

att.UBGL_Fire = function(wep, ubgl)
    if wep:Clip2() <= 0 then return end

    -- this bitch
    local fixedcone = wep:GetDispersion() / 360 / 60

    wep.Owner:FireBullets({
		Src = wep.Owner:EyePos(),
		Num = 1,
		Damage = 40,
		Force = 1,
		Attacker = wep.Owner,
		Dir = wep.Owner:EyeAngles():Forward(),
		Spread = Vector(fixedcone, fixedcone, 0),
		Callback = function(_, tr, dmg)
			local dist = (tr.HitPos - tr.StartPos):Length() * ArcCW.HUToM

			local dmgmax = 40
			local dmgmin = 20

			local delta = dist / 800 * 0.025

			delta = math.Clamp(delta, 0, 1)

			local amt = Lerp(delta, dmgmax, dmgmin)

			dmg:SetDamage(amt)
		end
	})
    wep:EmitSound("weapons/fesiugmw2/fire/m9.wav", 110, 100 * math.Rand(1 - 0.05, 1 + 0.05))
                            -- This is kinda important
                                            -- Wep volume
                                                    -- Weapon pitch (along with the pitch randomizer)




    wep:SetClip2(wep:Clip2() - 1)

    if IsFirstTimePredicted() then
        burstcount = burstcount + 1
    end
    
    if wep:Clip2() > 0 then
        wep:DoLHIKAnimation("fire", 6/30)
    else
        wep:DoLHIKAnimation("fire_last", 6/30)
    end

    wep:DoEffects()
end

att.UBGL_Reload = function(wep, ubgl)
    wep:Reload()

    local clip = 20

    if wep:Clip2() >= clip then return end -- att.UBGL_Capacity

    if Ammo(wep) <= 0 then return end

    burstcount = 0

    if wep:Clip2() <= 0 then
        wep:DoLHIKAnimation("reload_empty", 89/40)
        wep:SetNextSecondaryFire(CurTime() + 89/40)
        wep:PlaySoundTable({
            {s = "weapons/fesiugmw2/foley/wpfoly_beretta9mm_reload_clipout_v2.wav", 	t = 4/40},
            {s = "weapons/fesiugmw2/foley/wpfoly_beretta9mm_reload_clipin_v2.wav",  	t = 42/40},
            {s = "weapons/fesiugmw2/foley/wpfoly_beretta9mm_reload_chamber_v2.wav", 	t = 67/40},
        })
    else
        wep:DoLHIKAnimation("reload", 70/40)
        wep:SetNextSecondaryFire(CurTime() + 70/40)
        wep:PlaySoundTable({
            {s = "weapons/fesiugmw2/foley/wpfoly_beretta9mm_reload_clipout_v2.wav", 	t = 4/40},
            {s = "weapons/fesiugmw2/foley/wpfoly_beretta9mm_reload_clipin_v2.wav", 	    t = 36/40},
        })
    end

    local reserve = Ammo(wep)

    reserve = reserve + wep:Clip2()

    local load = math.Clamp(clip, 0, reserve)

    wep.Owner:SetAmmo(reserve - load, "pistol") -- att.UBGL_Ammo

    wep:SetClip2(load)
end

att.Hook_GetHUDData = function( wep, data )
    if ArcCW:ShouldDrawHUDElement("CHudAmmo") then
        data.clip = wep:Clip2() .. " / " .. wep:Clip1()
    else
        data.clip = wep:Clip1() + wep:Clip2()
    end
    data.ubgl = nil
    return data
end