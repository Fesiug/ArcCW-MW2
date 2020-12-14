att.PrintName = "Red Dot Sight (RDS)"
att.Icon = Material("entities/acwatt_optic_mw2_reddot.png", "smooth")
att.Description = "Thin red dot sight used by special forces."

att.SortOrder = 0

att.Desc_Pros = {
    "autostat.holosight",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"optic","optic_lp"}

att.Model = "models/weapons/arccw/fesiugmw2/atts/scopes/reddot_2d.mdl"
att.ModelOffset = Vector(-1, 0, -0.1)

att.AdditionalSights = {
    {
        Pos = Vector(0, 8, -0.8),
        Ang = Angle(0, 0, 0),
        Magnification = 1.3,
        ScrollFunc = ArcCW.SCROLL_NONE,
        IgnoreExtra = true,
    }
}

att.Holosight = true
att.HolosightReticle = Material("holosights/mw2_reddot.png")
att.HolosightSize = 0.3
att.HolosightBone = "holosight"

att.Mult_SightTime = 1.05

att.Colorable = true

att.AddSuffix = " RDS"