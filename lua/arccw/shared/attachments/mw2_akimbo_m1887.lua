att.PrintName = "Model 1887"
att.Icon = Material("entities/acwatt_mw2_akimbo.png", "smooth")
att.Description = "Terminate."
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

att.AddSuffix = " + Model 1887"

att.MountPositionOverride = 0

att.Model = "models/weapons/arccw/fesiugmw2_2/c_m1887_1.mdl"


att.LHIK = true
att.LHIK_Animation = true
att.LHIK_MovementMult = 0

att.UBGL = true

att.UBGL_PrintName = "AKIMBO"
att.UBGL_Automatic = false
att.UBGL_MuzzleEffect = "muzzleflash_m3"
att.UBGL_ClipSize = 7
att.UBGL_Ammo = "Buckshot"
att.UBGL_RPM = 60 / 0.079
att.UBGL_Recoil = 1
att.UBGL_RecoilSide = 1
att.UBGL_RecoilRise = 0
att.UBGL_Capacity = 7

att.Hook_ShouldNotSight = function(wep)
    return true
end

att.Hook_Think = function(wep)
	if wep:GetMW2Masterkey_NeedPump() and wep:GetMW2Masterkey_ReloadingTimer() <= CurTime() and !wep:GetMW2Masterkey_Reloading() and !wep.Owner:KeyDown(IN_ATTACK2) then
        wep:DoLHIKAnimation("rechamber_l", 35/30)
		wep:SetNextSecondaryFire(CurTime() + 0.85)
		wep:SetMW2Masterkey_NeedPump(false)

        wep:PlaySoundTable({
            {s = "weapons/fesiugmw2/foley/wpfoly_m1887_reload_lift_v1.wav", 	t = 0/30},
            {s = "weapons/fesiugmw2/foley/wpfoly_m1887_reload_open_v1.wav", 	t = 6/30},
            {s = "weapons/fesiugmw2/foley/wpfoly_m1887_reload_close_v1.wav", 	t = 16/30},
        })
	end
	if wep:GetMW2Masterkey_Reloading() and wep:GetMW2Masterkey_ReloadingTimer() < CurTime() and (wep:Clip2() >= 7 or wep:GetOwner():KeyDown(IN_ATTACK2)) then
		MW2M1887_ReloadFinish(wep)
	elseif wep:GetMW2Masterkey_Reloading() and wep:GetMW2Masterkey_ReloadingTimer() < CurTime() and wep:Clip2() < 7 then
		MW2M1887_ReloadLoop(wep)
	end

    if wep:GetMW2Masterkey_ShellInsertTime() < CurTime() and wep:GetMW2Masterkey_ShellInsertTime() != 0 then
	    MW2M1887_InsertShell(wep)
        wep:SetMW2Masterkey_ShellInsertTime(0)
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
        wep:SetInUBGL(false)
    end
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
    ["pullout_first_r"] = {
        time = 47/30,
        anim = "pullout_first_l",
        --soundtable = {}
    },
    ["pullout_r"] = {
        time = 25/30,
        anim = "pullout_l",
    },
    ["putaway_r"] = {
        time = 25/30,
        anim = "putaway_l",
    },
}

att.Hook_TranslateSequence = function(wep, anim)    
    --if anim != "idle_r" then print("lol", anim) end
    if awesomelist[anim] then
        local bab = awesomelist[anim]
        --print(CurTime() .. " - epic win")
        --PrintTable(bab)
        wep:DoLHIKAnimation(bab.anim, bab.time)
        if bab.soundtable then wep:PlaySoundTable(bab.soundtable) end
    end
end

att.Hook_LHIK_TranslateAnimation = function(wep, anim)
    if anim == "idle" then return "idle_l" end
end

local function Ammo(wep)
    return wep.Owner:GetAmmoCount("Buckshot") -- att.UBGL_Ammo
end

att.UBGL_Fire = function(wep, ubgl)
    PrintTable(att)

    if wep:Clip2() <= 0 then return end
	if wep:GetMW2Masterkey_NeedPump() then return end
	if wep:GetMW2Masterkey_Reloading() then return end

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
    wep:EmitSound("weapons/fesiugmw2/fire/shot_w1200.wav", 130, 115 * math.Rand(1 - 0.05, 1 + 0.05))
                            -- This is kinda important
                                            -- Wep volume
                                                    -- Weapon pitch (along with the pitch randomizer)




    wep:SetClip2(wep:Clip2() - 1)
    
    wep:DoLHIKAnimation("fire_l", 12/30)
    wep:SetMW2Masterkey_ReloadingTimer(CurTime() + 0.433)
    wep:SetMW2Masterkey_NeedPump(true)

    wep:DoEffects()
end

att.UBGL_Reload = function(wep, ubgl)
    wep:SetInUBGL(false)
    wep:Reload()

	if wep:Clip2() >= 7 then return end
	if Ammo(wep) <= 0 then return end
	if wep:GetMW2Masterkey_Reloading() then return end

	MW2M1887_ReloadStart(wep)
	wep:SetMW2Masterkey_Reloading(true)
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



-- don't copy... yet

function MW2M1887_ReloadStart(wep)
    wep:DoLHIKAnimation("reload_start_l", 59/30)
	wep:SetMW2Masterkey_ReloadingTimer(CurTime() + 59/30)
	
	--wep:SetReloading(CurTime() + 59/30)
    wep:SetMW2Masterkey_ShellInsertTime(CurTime() + 1.45)
	wep:SetMW2Masterkey_Reloading(true)

    wep:PlaySoundTable({
        {s = "weapons/fesiugmw2/foley/wpfoly_m1887_reload_lift_v1.wav", 	t = 0/30},
        {s = "weapons/fesiugmw2/foley/wpfoly_m1887_reload_open_v1.wav", 	t = 14/30},
        {s = "weapons/fesiugmw2/foley/wpfoly_m1887_reload_shell_v1.wav", 	t = 54/30},
    })
end

function MW2M1887_ReloadLoop(wep)
    wep:DoLHIKAnimation("reload_loop_l", 33/40)
	wep:SetMW2Masterkey_ReloadingTimer(CurTime() + 33/40)
    wep:SetMW2Masterkey_ShellInsertTime(CurTime() + 0.6)
	--wep:SetReloading(CurTime() + 33/40)

    wep:PlaySoundTable({
        {s = "weapons/fesiugmw2/foley/wpfoly_m1887_reload_shell_v1.wav", 		t = 18/40}
    })
end

function MW2M1887_ReloadFinish(wep)
    wep:DoLHIKAnimation("reload_finish_l", 41/30)
	--wep:SetReloading(CurTime() + 41/30)
	wep:SetMW2Masterkey_Reloading(false)
	wep:SetMW2Masterkey_NeedPump(false)
    
    wep:PlaySoundTable({
        {s = "weapons/fesiugmw2/foley/wpfoly_m1887_reload_close_v1.wav", 	t = 15/30},
    })
end

function MW2M1887_InsertShell(wep)
	wep:GetOwner():RemoveAmmo(1, "buckshot")
	wep:SetClip2(wep:Clip2() + 1)
end