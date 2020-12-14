att.PrintName = "Newage Silencer"
att.Icon = Material("entities/acwatt_supp_mw2.png", "smooth")
att.Description = "Modern sound suppressor used in modern warfare. Not as quiet or improves performance, but far more ergonomic."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"muzzle","muzzle_shotgun"}

att.Model = "models/weapons/arccw/fesiugmw2/atts/supp_mw2.mdl"

att.Silencer = true
att.Override_MuzzleEffect = "muzzleflash_suppressed"
att.IsMuzzleDevice = false

att.Mult_ShootPitch = 0.9
att.Mult_ShootVol = 0.9
att.Mult_Range = 1.05

att.Mult_HipDispersion = 1.05

att.Add_BarrelLength = 12

att.ModelScale = Vector( 0.5, 0.5, 0.5 )

att.AddSuffix = " Silenced"