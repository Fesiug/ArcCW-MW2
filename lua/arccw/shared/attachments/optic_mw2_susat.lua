att.PrintName = "SUSAT (2.1x)"
att.Icon = Material("entities/acwatt_optic_mw2_susat.png", "smooth")
att.Description = "Magnified medium-range optic that's just a worse ACOG"

att.SortOrder = 2.1

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "info.togglesight"
}
att.AutoStats = true
att.Slot = {"optic"}

att.Model = "models/weapons/arccw/fesiugmw2/atts/scopes/susat_3.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(-0.015, 11, -1.54),
        Ang = Angle(0, 0, 0),
        Magnification = 2.1,
        IgnoreExtra = true
    },
    {
        Pos = Vector(0, 11, -2.55),
        Ang = Angle(1, 0, 0),
        Magnification = 1.3,
        IgnoreExtra = true
    },
}

att.ModelOffset = Vector(-0.35, 0, -0.32)

att.Holosight = false

att.Mult_SightTime = 1.12
att.Mult_SightedSpeedMult = 0.92

att.Hook_ModifyRecoil = function(wep)
    return {VisualRecoilMult = wep:GetSightDelta()}
end

att.AddSuffix = " SUSAT"