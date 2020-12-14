-- stole yo shit

hook.Add( "PopulateToolMenu", "ArcCW_MW2_Options", function()
    spawnmenu.AddToolMenuOption( "Options", "ArcCW", "ArcCW_MW2_Options", "MW2", "", "", ArcCW_MW2_Options)
end )

function ArcCW_MW2_Options( CPanel )

    CPanel:AddControl("Header", {Description = "The options below require admin privileges to change, and only work on Listen Servers."})

    CPanel:AddControl("Checkbox", {Label = "Can weapons hold a round in the chamber?", Command = "arccw_mw2_chambering" })

    CPanel:AddControl("Checkbox", {Label = "Shotgun nerfs (ex: 40-20 to 8-4)", Command = "arccw_mw2_bal_m1014" })
    CPanel:AddControl("Slider", {Label = "Damage multiplier", Command = "arccw_mw2_bal_dmgmul", min = 0.8, max = 1, Type = "float" })
    CPanel:AddControl("Label", {Text = "Does not apply to shotguns."})

    CPanel:AddControl("Label", {Text = "The options below can be customized by all players."})
    
    CPanel:AddControl("Checkbox", {Label = "Additional Trivia", Command = "arccw_mw2cl_trivia" })
    CPanel:AddControl("Label", {Text = "Requires a restart to take effect."})
end