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
att.UBGL_ClipSize = 1
att.UBGL_Ammo = "buckshot"
att.UBGL_RPM = 1200
att.UBGL_Recoil = 0.5
att.UBGL_Capacity = 4

att.Reloading = false
att.ReloadingTimer = 0
att.NeedPump = false

att.AddSuffix = " w/ Shotgun"

att.Hook_ShouldNotSight = function(wep)
    return wep:GetInUBGL()
end

local function Ammo(wep)
	return wep.Owner:GetAmmoCount("buckshot")
end

att.UBGL_Fire = function(wep, ubgl)
	--[[if att.Reloading then
		Masterkey_ReloadFinish(wep)
		return
	end]]
	if att.NeedPump then return end
	if wep:Clip2() <= 0 then return end

	wep:PlayAnimation("alt_fire_masterkey", 1, true, nil, nil, nil, true)

	--wep:FireRocket("arccw_gl_he_mw2", 30000)
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
	att.NeedPump = true
end

att.UBGL_Reload = function(wep, ubgl)
	if wep:Clip2() >= 4 then return end
	if Ammo(wep) <= 0 then return end
	if att.Reloading == true then return end

	Masterkey_ReloadStart(wep)
	att.Reloading = true
end

att.Hook_Think = function(wep)
	if att.NeedPump and wep:GetNextSecondaryFire() <= CurTime() and wep:Clip2() > 0 and !att.Reloading and !wep.Owner:KeyDown(IN_ATTACK) then
		wep:PlayAnimation("alt_cycle_masterkey", 1, true, nil, nil, nil, true)
		wep:SetReloading(CurTime() + 15/30)
		att.NeedPump = false
	end
	if att.Reloading and wep:Clip2() >= 4 then
		Masterkey_ReloadFinish(wep)
	elseif att.Reloading and att.ReloadingTimer <= CurTime() and wep:Clip2() < 4 then
		Masterkey_ReloadLoop(wep)
	end
end

function Masterkey_ReloadStart(wep)
	wep:PlayAnimation("alt_reload_start_masterkey", 1, true, nil, nil, nil, true)
	att.ReloadingTimer = (CurTime() + 35/30)
	wep:SetReloading(CurTime() + 35/30)
	att.Reloading = true
end

function Masterkey_ReloadLoop(wep)
	wep:PlayAnimation("alt_reload_loop_masterkey", 1, true, nil, nil, nil, true)
	att.ReloadingTimer = (CurTime() + 33/30)
	wep:SetReloading(CurTime() + 33/30)
	Masterkey_InsertShell(wep)
end

function Masterkey_ReloadFinish(wep)
	wep:PlayAnimation("alt_reload_finish_masterkey", 1, true, nil, nil, nil, true)
	wep:SetReloading(CurTime() + 50/30)
	att.Reloading = false
	att.NeedPump = false
end

function Masterkey_InsertShell(wep)
	wep.Owner:RemoveAmmo(1, "buckshot")
	wep:SetClip2(wep:Clip2() + 1)
end

att.Mult_SightTime = 1.25
att.Mult_SpeedMult = 0.8
att.Mult_SightedSpeedMult = 0.85