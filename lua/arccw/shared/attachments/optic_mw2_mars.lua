att.PrintName = "MARS (RDS)"
att.Icon = Material("entities/acwatt_optic_mw2_mars.png", "smooth")
att.Description = "Funny moon sight."

att.SortOrder = 0

att.Desc_Pros = {
    "autostat.holosight",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "optic"

att.Model 			= "models/weapons/arccw/fesiugmw2/atts/scopes/mars_4.mdl"
att.ModelOffset = Vector(-0.7, 0, -0.25)

att.AdditionalSights = {
    {
        Pos = Vector(-0, 10, -1.48),
        Ang = Angle(0, 0, 0),
        Magnification = 1.3,
        ScrollFunc = ArcCW.SCROLL_NONE,
        IgnoreExtra = true,
    }
}

att.ScopeGlint = false

att.Holosight = true
att.HolosightReticle = Material("holosights/mw2_reddot.png")
att.HolosightSize = 0.3
att.HolosightBone = "holosight"

att.Colorable = true

att.Mult_SightTime = 1.05

att.AddSuffix = " MARS"