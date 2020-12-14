att.PrintName = "ACOG (2.1x)"
att.Icon = Material("entities/acwatt_optic_mw2_acog.png", "smooth")
att.Description = "Magnified medium-range optic. ACOG stands for 'Advanced Combat Optical Gunsight'."

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

att.Model = "models/weapons/arccw/fesiugmw2/atts/scopes/acog_2.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 11, -0.98),
        Ang = Angle(0, 0, 0),
        Magnification = 2.1,
        IgnoreExtra = true
    },
    {
        Pos = Vector(0.62, 11, -1.5),
        Ang = Angle(-1, 0, 0),
        Magnification = 1.3,
        IgnoreExtra = true
    },
}

att.ModelOffset = Vector(-1, 0, -0.1)

att.Holosight = false

att.Mult_SightTime = 1.12
att.Mult_SightedSpeedMult = 0.92

att.Hook_ModifyRecoil = function(wep)
    return {VisualRecoilMult = wep:GetSightDelta()}
end

att.AddSuffix = " ACOG"