att.PrintName = "Holographic Sight (HOLO)"
att.Icon = Material("entities/acwatt_optic_mw2_eotech.png", "smooth")
att.Description = "Boxy holographic sight used by special forces."

att.SortOrder = 0.5

att.Desc_Pros = {
    "autostat.holosight",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"optic","optic_lp"}

att.Model = "models/weapons/arccw/fesiugmw2/atts/scopes/eotech_1.mdl"
att.ModelOffset = Vector(-1, 0, -0.1)

att.AdditionalSights = {
    {
        Pos = Vector(0, 3, -1.16),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 65 / 1.3,
        Magnification = 1.3,
        ScrollFunc = ArcCW.SCROLL_NONE,
        IgnoreExtra = true,
    }
}

att.Holosight = true
att.HolosightReticle = Material("holosights/mw2_holo.png", "mips smooth")
att.HolosightFlare = Material("holosights/mw2_holo_flare.png", "mips smooth")
att.HolosightSize = 0.7
att.HolosightBone = "holosight"

att.Mult_SightTime = 1.075

att.Colorable = true

att.AddSuffix = " Holographic"