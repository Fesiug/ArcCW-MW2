SWEP.Base = "arccw_base"
SWEP.Spawnable = false
SWEP.Category = "ArcCW - MW2"
SWEP.AdminOnly = false
SWEP.WeaponCamBone = tag_camera

SWEP.PrintName = "ArcCW MW2 Sub-Base"
SWEP.Trivia_Class = "California Compliant"
SWEP.Trivia_Desc = "Sub Base"

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/fesiugmw2/c_m4_3a.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"
SWEP.ViewModelFOV = 65

SWEP.Damage = 0
SWEP.DamageMin = 0
SWEP.Range = 0
SWEP.Penetration = 0
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 0
SWEP.ExtendedClipSize = 0
SWEP.ReducedClipSize = 0

SWEP.Recoil = 0
SWEP.RecoilSide = 0
SWEP.RecoilRise = 0
SWEP.MaxRecoilBlowback = 0
SWEP.VisualRecoilMult = 0
SWEP.RecoilPunch = 0

SWEP.IronSightStruct = {
	Pos = Vector(0, 0, 0),
	Ang = Angle(0, 0, 0),
    ViewModelFOV = 65 / 1.3,
	Magnification = 1.3,
	SwitchToSound = "",
}

--[[SWEP.Hook_ModifyRecoil = function(wep)
	return {
		Recoil = 0,
		RecoilSide = 0,
		VisualRecoilMult = 0,
	}
end]]


SWEP.ShootMechSound = nil


 -- hipfire
 -- maximum accuracy
    SWEP.Inaccuracy_Hip_Max_Stand	= 7
    SWEP.Inaccuracy_Hip_Max_Duck	= 6
    SWEP.Inaccuracy_Hip_Max_Prone	= 5
 -- minimum accuracy
    SWEP.Inaccuracy_Hip_Min_Stand   = 3
    SWEP.Inaccuracy_Hip_Min_Duck    = 2.5
    SWEP.Inaccuracy_Hip_Min_Prone   = 2

 -- sighted fire
 -- yeah
    SWEP.Inaccuracy_ADS = 0

 -- inaccuracy when you're... i don't remember
SWEP.Inaccuracy_Add_ADS			= 0
SWEP.Inaccuracy_Add_Hip			= 0.6
SWEP.Inaccuracy_Add_Move		= 5

 -- how fast to decay inaccuracy
 -- additive
SWEP.Inaccuracy_Hip_Decay_Stand	= 4
SWEP.Inaccuracy_Hip_Decay_Duck	= 1.05
SWEP.Inaccuracy_Hip_Decay_Prone	= 1.1

local idk = 1/45

DEFINE_BASECLASS("arccw_base")


function SWEP:DoShootSound(sndoverride, dsndoverride, voloverride, pitchoverride)
    local fsound = self.ShootSound
    local msound = self.ShootMechSound
    local suppressed = self:GetBuff_Override("Silencer")
    if suppressed then
        fsound = self.ShootSoundSilenced
        msound = nil
    end

    fsound = self:GetBuff_Hook("Hook_GetShootSound", fsound)

    local spv    = self.ShootPitchVariation
    local volume = self.ShootVol
    local pitch  = self.ShootPitch * math.Rand(1 - spv, 1 + spv) * self:GetBuff_Mult("Mult_ShootPitch")

    local v = GetConVar("arccw_weakensounds"):GetFloat()
    volume = volume - v

    volume = volume * self:GetBuff_Mult("Mult_ShootVol")

    volume = math.Clamp(volume, 51, 149)
    pitch  = math.Clamp(pitch, 0, 255)

    if sndoverride then fsound = sndoverride end
    if voloverride then volume = voloverride end
    if pitchoverride then pitch = pitchoverride end

    if suppressed then
        pitch = 100
        msound = nil
    end

    if fsound then self:MyEmitSound(fsound, volume, pitch, 1, CHAN_WEAPON) end
    if msound then self:MyEmitSound(msound, 45, math.Rand(95, 105), .45, CHAN_AUTO) end

    local data = {
        sound   = fsound,
        volume  = volume,
        pitch   = pitch,
    }

    self:GetBuff_Hook("Hook_AddShootSound", data)
end

SWEP.Override_NoRandSpread = true
function SWEP:GetDispersion()
	return 0
end
function SWEP:Think()
	BaseClass.Think( self )
    local InADS = 1 - self:GetSightDelta()
    local InHip = self:GetSightDelta()

	local Owner = self:GetOwner()

	local max = self.Inaccuracy_Hip_Max_Stand
	local state = self.Inaccuracy_Hip_Min_Stand
	local decay = self.Inaccuracy_Hip_Decay_Stand
    
	if Owner:Crouching() then
		state = self.Inaccuracy_Hip_Min_Duck
		max = self.Inaccuracy_Hip_Max_Duck
		decay = decay + self.Inaccuracy_Hip_Decay_Duck
	end

	local speed    = Owner:GetAbsVelocity():Length()
	local maxspeed = Owner:GetWalkSpeed() * self:GetBuff("SpeedMult")
	speed = math.Clamp(speed / maxspeed, 0, 1)

	state = state + ( speed * self.Inaccuracy_Add_Move )
	max = max + ( speed * self.Inaccuracy_Add_Move )

	state = ( ( state * InHip ) + ( self.Inaccuracy_ADS * InADS ) ) * idk
	max = ( ( max * self:GetBuff_Mult("Mult_HipDispersion") * InHip ) + ( self.Inaccuracy_ADS * InADS ) ) * idk


	self:SetInaccuracy( math.Clamp( self:GetInaccuracy() - (decay*idk) * FrameTime(), state, max ) )
end
SWEP.Hook_FireBullets = function(wep, bullet)
	local ro = wep:GetInaccuracy() * wep:GetBuff_Mult("Mult_AccuracyMOA")
	bullet.Dir = wep:GetOwner():GetAimVector() + VectorRand(-ro/2, ro/2	)
	--bullet.Spread = Vector(0, 0, 0)

	wep:SetInaccuracy( wep:GetInaccuracy() + ( wep:GetSightDelta() * (wep.Inaccuracy_Add_Hip*idk) ) + ( (1-wep:GetSightDelta()) * (wep.Inaccuracy_Add_ADS*idk) ) )
	return bullet
end

function SWEP:SetupDataTables()
	BaseClass.SetupDataTables( self )
    
    self:NetworkVar("Bool", 30, "MW2Masterkey_NeedPump")
    self:NetworkVar("Bool", 31, "MW2Masterkey_Reloading")

    self:NetworkVar("Float", 29, "MW2Masterkey_ShellInsertTime")
    self:NetworkVar("Float", 30, "MW2Masterkey_ReloadingTimer")
	self:NetworkVar("Float", 31, "Inaccuracy")
end

SWEP.Hook_DrawHUD = function(wep)
    local mr = math.Round

    if true then return end

    surface.SetFont("ArcCW_26")
    surface.SetTextColor(255, 255, 255, 255)

    surface.SetTextPos(ScrW() / 2, 26 * 8)
    surface.DrawText( mr( wep:GetInaccuracy(), 4 ))

    surface.SetTextPos(ScrW() / 2, 26 * 10)
    surface.DrawText( mr( wep:GetInaccuracy() * ( 10 * 180 * 60 ), 0 ) )

    local speed    = wep:GetOwner():GetAbsVelocity():Length()
    local maxspeed = wep:GetOwner():GetWalkSpeed() * wep:GetBuff("SpeedMult")
    speed = math.Clamp(speed / maxspeed, 0, 1)
    surface.SetTextPos(ScrW() / 2, 26 * 12)
    surface.DrawText( mr( speed*100, 0 ).."%" )

    surface.SetFont("ArcCW_8")
    surface.SetTextPos(ScrW() / 2, 26 * 8)
    surface.DrawText("INACCURACY")

    surface.SetTextPos(ScrW() / 2, 26 * 10)
    surface.DrawText("MOA")

    surface.SetTextPos(ScrW() / 2, 26 * 12)
    surface.DrawText("MOVESPEED")
end

local delta = 0
local size = 0
local cw = nil

function SWEP:ShouldDrawCrosshair()
    if GetConVar("arccw_override_crosshair_off"):GetBool() then return false end
    if !GetConVar("arccw_crosshair"):GetBool() then return false end
    if self:GetReloading() then return false end
    local asight = self:GetActiveSights()

    if !self:GetOwner():ShouldDrawLocalPlayer()
            and self:GetState() == ArcCW.STATE_SIGHTS and !asight.CrosshairInSights then
        return false
    end

    if self:GetState() == ArcCW.STATE_SPRINT and !(self:GetBuff_Override("Override_ShootWhileSprint") or self.ShootWhileSprint) then return false end
    if self:GetCurrentFiremode().Mode == 0 then return false end
    if self:GetBuff_Hook("Hook_ShouldNotFire") then return false end
    if self:GetState() == ArcCW.STATE_CUSTOMIZE then return false end

    return true
end

function SWEP:DoDrawCrosshair(x, y)
	local pos = LocalPlayer():EyePos()
	local ang = LocalPlayer():EyeAngles() - self:GetOurViewPunchAngles()
	local dot = true
	local prong_top = true
	local prong_left = true
	local prong_right = true
	local prong_down = true

	local prong_len = GetConVar("arccw_crosshair_length"):GetFloat()
	local prong_wid = GetConVar("arccw_crosshair_thickness"):GetFloat()
	local prong_out = GetConVar("arccw_crosshair_outline"):GetInt()

	local clr = Color(GetConVar("arccw_crosshair_clr_r"):GetInt(),
			GetConVar("arccw_crosshair_clr_g"):GetInt(),
			GetConVar("arccw_crosshair_clr_b"):GetInt())
	if GetConVar("arccw_ttt_rolecrosshair") and GetConVar("arccw_ttt_rolecrosshair"):GetBool() then
		if GetRoundState() == ROUND_PREP or GetRoundState() == ROUND_POST then
			clr = Color(255, 255, 255)
		elseif LocalPlayer().GetRoleColor and LocalPlayer():GetRoleColor() then
			clr = LocalPlayer():GetRoleColor() -- TTT2 feature
		elseif LocalPlayer():IsActiveTraitor() then
			clr = Color(255, 50, 50)
		elseif LocalPlayer():IsActiveDetective() then
			clr = Color(50, 50, 255)
		else
			clr = Color(50, 255, 50)
		end
	end
    if GetConVar("arccw_crosshair_aa"):GetBool() and LocalPlayer().ArcCW_AATarget != nil and GetConVar("arccw_aimassist"):GetBool() and GetConVar("arccw_aimassist_cl"):GetBool() then
            -- whooie
        clr = Color(255, 0, 0)
    end
	clr.a = GetConVar("arccw_crosshair_clr_a"):GetInt()

	local outlineClr = Color(GetConVar("arccw_crosshair_outline_r"):GetInt(),
			GetConVar("arccw_crosshair_outline_g"):GetInt(),
			GetConVar("arccw_crosshair_outline_b"):GetInt(),
			GetConVar("arccw_crosshair_outline_a"):GetInt())

	local gap = ScreenScale(24)
			* (GetConVar("arccw_crosshair_static"):GetBool() and 0.25 or math.Clamp(self:GetInaccuracy() * 10, 0.1, 100))
			* GetConVar("arccw_crosshair_gap"):GetFloat()
	gap = gap + ScreenScale(8) * math.Clamp(self.RecoilAmount, 0, 1)

	local prong = ScreenScale(prong_len)
	local p_w = ScreenScale(prong_wid)
	local p_w2 = p_w + prong_out

	cw = cw or self

	cam.Start3D()
	local sp = (pos + (ang:Forward() * 3200)):ToScreen()
	cam.End3D()

	x, y = sp.x, sp.y

	local st = self:GetSightTime() / 2

	if self:ShouldDrawCrosshair() then
		delta = math.Approach(delta, 1, RealFrameTime() * 1 / st)
	else
		delta = math.Approach(delta, 0, RealFrameTime() * 1 / st)
	end

	if GetConVar("arccw_crosshair_dot"):GetBool() and dot then
		surface.SetDrawColor(outlineClr.r, outlineClr.g, outlineClr.b, outlineClr.a * delta)
		surface.DrawRect(x - p_w2 / 2, y - p_w2 / 2, p_w2, p_w2)

		surface.SetDrawColor(clr.r, clr.g, clr.b, clr.a * delta)
		surface.DrawRect(x - p_w / 2, y - p_w / 2, p_w, p_w)
	end

	size = math.Approach(size, gap, RealFrameTime() * 32 * gap)

	if cw != self then
		delta = 0
		size = gap
	end

	cw = self
	gap = size
	local prong2 = prong + prong_out

	surface.SetDrawColor(outlineClr.r, outlineClr.g, outlineClr.b, outlineClr.a * delta)

	if prong_left then
		surface.DrawRect(x - gap - prong2 + prong_out / 2, y - p_w2 / 2, prong2, p_w2)
	end
	if prong_right then
		surface.DrawRect(x + gap - prong_out / 2, y - p_w2 / 2, prong2, p_w2)
	end
	if prong_top then
		surface.DrawRect(x - p_w2 / 2, y - gap - prong2 + prong_out / 2, p_w2, prong2)
	end
	if prong_down then
		surface.DrawRect(x - p_w2 / 2, y + gap - prong_out / 2, p_w2, prong2)
	end
		
		surface.SetDrawColor(clr.r, clr.g, clr.b, clr.a * delta)

	if prong_left then
		surface.DrawRect(x - gap - prong, y - p_w / 2, prong, p_w)
	end
	if prong_right then
		surface.DrawRect(x + gap, y - p_w / 2, prong, p_w)
	end
	if prong_top then
		surface.DrawRect(x - p_w / 2, y - gap - prong, p_w, prong)
	end
	if prong_down then
		surface.DrawRect(x - p_w / 2, y + gap, p_w, prong)
	end


	return true
end