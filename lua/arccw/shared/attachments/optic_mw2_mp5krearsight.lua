att.PrintName = "Rearsight"
att.Icon = Material("entities/acwatt_optic_mw2_mp5krearsight.png", "smooth")
att.Description = "Alternative set of ironsights. Well, the addition of some."

att.SortOrder = 100

att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "mw2_steyrrearsight"
att.MountPositionOverride = 0

att.Model = "models/weapons/arccw/fesiugmw2/atts/scopes/mp5k_rearsight_1.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 6.026, -0.5),
        Ang = Angle(0.8, 0, 0),
        ViewModelFOV = 65 / 1.3,
        Magnification = 1.3,
        IgnoreExtra = true
    },
}

att.ModelOffset = Vector(-0.5, 0, -0.4)
att.ModelScale  = Vector(0.9, 0.9, 0.9)

att.Holosight = false