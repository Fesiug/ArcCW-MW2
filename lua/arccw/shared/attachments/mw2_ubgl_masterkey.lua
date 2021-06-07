att.PrintName = "Shotgun"
att.Icon = Material("entities/acwatt_mw2_ubgl_masterkey.png", "smooth")
att.Description = "Weapon-exclusive underbarrel shotgun with its own unique animations."
att.Desc_Pros = {
	"pro.ubsg",
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
	"info.toggleubgl"
}
att.AutoStats = true
att.Slot = "mw2_ubgl"

att.SortOrder = 1738 - 0.1

att.MountPositionOverride = 0

att.UBGL = true
att.UBGL_BaseAnims = true

att.UBGL_PrintName = "UB (BUCK)"
att.UBGL_Automatic = false
att.UBGL_MuzzleEffect = "muzzleflash_m3"
att.UBGL_ClipSize = 4
att.UBGL_Ammo = "buckshot"
att.UBGL_RPM = 1200
att.UBGL_Recoil = 0
att.UBGL_Capacity = 4

att.AddSuffix = " w/ Shotgun"

att.Hook_ShouldNotSight = function(wep)
	return wep:GetInUBGL()
end

local function Ammo(wep)
	return wep.Owner:GetAmmoCount("buckshot")
end

att.UBGL_Fire = function(wep, ubgl)
	if wep:GetMW2Masterkey_Reloading() then
		MW2Masterkey_ReloadFinish(wep)
		return
	end
	if wep:GetMW2Masterkey_NeedPump() then return end
	if wep:Clip2() <= 0 then return end

	wep:PlayAnimation("alt_fire_masterkey", 1, true, nil, nil, nil, true)
    wep:SetWeaponOpDelay(CurTime() + 0.43)

	wep.Owner:FireBullets({
		Src = wep.Owner:EyePos(),
		Num = 6,
		Damage = 25,
		Force = 2,
		Attacker = wep.Owner,
		Dir = wep.Owner:EyeAngles():Forward(),
		Spread = Vector(0.1, 0.1, 0),
		Callback = function(_, tr, dmg)
			local dist = (tr.HitPos - tr.StartPos):Length() * ArcCW.HUToM

			local dmgmax = 25
			local dmgmin = 0

			local delta = dist / 1750 * 0.025

			delta = math.Clamp(delta, 0, 1)

			local amt = Lerp(delta, dmgmax, dmgmin)

			dmg:SetDamage(amt)
		end
	})

	wep:EmitSound("weapons/fesiugmw2/fire/shot_attach.wav", 100)

	wep:SetClip2(wep:Clip2() - 1)

	wep:DoEffects()
	wep:SetMW2Masterkey_NeedPump(true)
end

att.UBGL_Reload = function(wep, ubgl)
	if wep:Clip2() >= 4 then return end
	if Ammo(wep) <= 0 then return end
	if wep:GetMW2Masterkey_Reloading() then return end

	MW2Masterkey_ReloadStart(wep)
	wep:SetMW2Masterkey_Reloading(true)
end

att.Hook_Think = function(wep)
	if wep:GetMW2Masterkey_NeedPump() and wep:GetWeaponOpDelay() <= CurTime() and wep:Clip2() > 0 and !wep:GetMW2Masterkey_Reloading() and !wep.Owner:KeyDown(IN_ATTACK) then
		wep:PlayAnimation("alt_cycle_masterkey", 1, true, nil, nil, nil, true)
		wep:SetReloading(CurTime() + 15/30)
		wep:SetMW2Masterkey_NeedPump(false)
	end
	if wep:GetMW2Masterkey_Reloading() and wep:GetMW2Masterkey_ReloadingTimer() < CurTime() and wep:Clip2() >= 4 then
		MW2Masterkey_ReloadFinish(wep)
	elseif wep:GetMW2Masterkey_Reloading() and wep:GetMW2Masterkey_ReloadingTimer() < CurTime() and wep:Clip2() < 4 then
		MW2Masterkey_ReloadLoop(wep)
	end

    if wep:GetMW2Masterkey_ShellInsertTime() < CurTime() and wep:GetMW2Masterkey_ShellInsertTime() != 0 then
	    MW2Masterkey_InsertShell(wep)
        wep:SetMW2Masterkey_ShellInsertTime(0)
    end
end

function MW2Masterkey_ReloadStart(wep)
	wep:PlayAnimation("alt_reload_start_masterkey", 1, true, nil, nil, nil, true)
	wep:SetReloading(CurTime() + 1)
	wep:SetMW2Masterkey_ReloadingTimer(CurTime() + 1)
    wep:SetMW2Masterkey_ShellInsertTime(CurTime() + 0.6)
	wep:SetMW2Masterkey_Reloading(true)
end

function MW2Masterkey_ReloadLoop(wep)
	wep:PlayAnimation("alt_reload_loop_masterkey", 1, true, nil, nil, nil, true)
	wep:SetReloading(CurTime() + 0.75)
	wep:SetMW2Masterkey_ReloadingTimer(CurTime() + 0.75)
    wep:SetMW2Masterkey_ShellInsertTime(CurTime() + 0.55)
end

function MW2Masterkey_ReloadFinish(wep)
	wep:PlayAnimation("alt_reload_finish_masterkey", 1, true, nil, nil, nil, true)
	wep:SetReloading(CurTime() + 1.35)
	wep:SetMW2Masterkey_Reloading(false)
	wep:SetMW2Masterkey_NeedPump(false)
end

function MW2Masterkey_InsertShell(wep)
	wep.Owner:RemoveAmmo(1, "buckshot")
	wep:SetClip2(wep:Clip2() + 1)
end

att.Mult_SightTime = 1.25
att.Mult_SpeedMult = 0.8
att.Mult_SightedSpeedMult = 0.85