att.PrintName = "Thermal (FLIR)"
att.Icon = Material("entities/acwatt_optic_mw2_thermal.png", "smooth")
att.Description = "thermal scope"

att.SortOrder = 50

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
    "autostat.thermal"
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic"

att.Model =				"models/weapons/arccw/fesiugmw2/atts/scopes/thermal_base.mdl"
att.HolosightPiece =	"models/weapons/arccw/fesiugmw2/atts/scopes/thermal_lens.mdl"
att.ModelOffset = Vector(0, 0, -0.2)

att.AdditionalSights = {
    {
        Pos = Vector(0, 6.5, -0.8),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 65 / 1.9,
        Magnification = 1.9,
        Thermal = true,
        IgnoreExtra = true,
    }
}

att.ScopeGlint = true

att.Holosight = true
att.HolosightReticle = Material("hud/scopes/mw2_thermal.png", "mips smooth")
att.HolosightNoFlare = true
att.HolosightSize = 16
att.HolosightBone = "holosight"

att.HolosightMagnification = 2.1
att.HolosightBlackbox = true

att.HolosightConstDist = 42

att.Mult_SightTime = 1.2
att.Mult_SightedSpeedMult = 0.85
-- att.Mult_SpeedMult = 0.95

att.AddSuffix = " Thermal"