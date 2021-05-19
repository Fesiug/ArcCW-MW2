att.PrintName = "Of Wood and Steel"
att.Icon = Material("entities/acwatt_mw2_wepedit_ak47_cod.png", "smooth"
)
att.Description = "Call of Duty 4's AK-47, loaded into memory in MW2 Multiplayer."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Slot = "mw2_wepedit_ak47"
att.Free = true

att.ActivateElements = {"wepcamo-ak47_cod4","altirons"}

att.SortOrder = 20 *-1

att.Hook_GetShootSound = function(wep, sound)
    if sound == "weapons/fesiugmw2/fire/ak47.wav" then return "weapons/fesiugmw2/organizelater/weap_ak47_slst_3.wav" end
end