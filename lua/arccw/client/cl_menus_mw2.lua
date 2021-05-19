-- stole yo shit

hook.Add( "PopulateToolMenu", "ArcCW_MW2_Options", function()
    spawnmenu.AddToolMenuOption( "Utilities", "ArcCW", "ArcCW_MW2_Options", "MW2", "", "", ArcCW_MW2_Options)
end )

function ArcCW_MW2_Options( CPanel )
    --CPanel:AddControl("Header", {Description = "The options below require admin privileges to change, and only work on Listen Servers."})
    CPanel:AddControl("Label", {Text = "The options below can be customized by all players."})
    
    CPanel:AddControl("Checkbox", {Label = "Additional Trivia", Command = "arccw_mw2cl_trivia" })
    CPanel:AddControl("Label", {Text = "Requires a restart to take effect."})
end