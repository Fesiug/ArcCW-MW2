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
SWEP.RecoilVMShake = 0
SWEP.RecoilPunchBackMax = 0
SWEP.RecoilPunchBackMaxSights = 0

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

local idk = 1/45*2

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


function SWEP:SetupDataTables()
	BaseClass.SetupDataTables( self )
    self:NetworkVar("Bool", 7, "UBGLDebounce")
    
    self:NetworkVar("Bool", 30, "MW2Masterkey_NeedPump")
    self:NetworkVar("Bool", 31, "MW2Masterkey_Reloading")

    self:NetworkVar("Float", 29, "MW2Masterkey_ShellInsertTime")
    self:NetworkVar("Float", 30, "MW2Masterkey_ReloadingTimer")
end