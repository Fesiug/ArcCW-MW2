att.PrintName = "Tactical Knife"
att.Icon = Material("entities/acwatt_mw2_tacknife.png", "smooth")

att.Description = "Underhand blade.\n\nPress E+LMB to melee."
att.Desc_Pros = {
	"Quick, deadly melee attack",
}
att.Desc_Cons = {
	"- Increased visual recoil",
	"BUG: Cannot use optics",
    "(Sight autosolver doesn't correct for new idle)",
}
att.AutoStats = false
att.Slot = {"mw2_tacknife","altirons","yeslaser"}

att.Hook_SelectBashAnim = function(wep, anim)
	return "bash_knife"
end

att.SortOrder = 1738

att.Override_CanBash = true

att.Mult_MeleeTime = 1
att.Mult_MeleeDamage = 4
att.Add_MeleeRange = 18
att.Mult_MeleeAttackTime = 0.395
att.Mult_MeleeTime = 1.6
att.Override_MeleeDamageType = DMG_SLASH

att.GivesFlags = {"arcticfixyoshit1"}

att.AddSuffix = " Tactical"