att.PrintName = "Tuna (RDS)"
att.Icon = Material("entities/acwatt_optic_tuna.png", "smooth")
att.Description = "Integrated telescopic scope created for the F2000."

att.SortOrder = 0

att.Desc_Pros = {
    "autostat.holosight",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic"

att.Model 			= "models/weapons/arccw/fesiugmw2/atts/scopes/tuna_2.mdl"
att.ModelOffset = Vector(-1, 0, -0.3)

att.AdditionalSights = {
    {
        Pos = Vector(-0, 10, -1),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 65 / 1.3,
        Magnification = 1.3,
        ScrollFunc = ArcCW.SCROLL_NONE,
        IgnoreExtra = true,
    }
}

att.ScopeGlint = false

att.Holosight = true
att.HolosightReticle = Material("holosights/mw2_reddot.png", "mips smooth")
att.HolosightSize = 0.3
att.HolosightBone = "holosight"

att.Colorable = true

att.Mult_SightTime = 1.05

att.AddSuffix = " Tuna"