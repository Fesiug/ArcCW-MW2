CreateConVar("arccw_mw2_bal_m1014", 0, FCVAR_ARCHIVE + FCVAR_REPLICATED, "M1014 nerf (40-20 to 8-4)", 0, 1)
CreateConVar("arccw_mw2_bal_dmgmul", 1, FCVAR_ARCHIVE + FCVAR_REPLICATED, "Weapon damage multiplier", 0, 1)

CreateConVar("arccw_mw2_chambering", 1, FCVAR_ARCHIVE + FCVAR_REPLICATED, "Can weapons be chambered?", 0, 1)

CreateConVar("arccw_mw2_attsuffix", 0, FCVAR_ARCHIVE + FCVAR_REPLICATED, "Add suffixes when attachments are attached to weapons. Requires restart.")

if CLIENT then
	CreateClientConVar("arccw_mw2cl_trivia", 1, true, false, "Show extra trivia in customization, such as manufacturers and mechanisms.")
end

sound.Add(
	{
		name	=		"MW2Common.Deploy",			
		channel	=		CHAN_ITEM,
		volume	=		1.0,
		pitch	=		{90, 110},
		sound	= 		"weapons/fesiugmw2/wpnarm_2.wav"	
	}
)
sound.Add(
	{
		name	=		"MW2Common.Underbarrel",			
		channel	=		CHAN_ITEM,
		volume	=		1.0,
		pitch	=		{90, 110},
		sound	= 		"weapons/fesiugmw2/pu_weapon01.wav"	
	}
)
sound.Add(
	{
		name	=		"MW2Common.Masterkey_Load",			
		channel	=		CHAN_ITEM,
		volume	=		1.0,
		pitch	=		100,
		sound	= 		{
							"weapons/fesiugmw2/foley/wpfoly_shotattach_reload_clipin1_v1.wav",
							"weapons/fesiugmw2/foley/wpfoly_shotattach_reload_clipin2_v1.wav"
						}
	}
)

sound.Add(
	{
		name	=		"MW2Common.Melee.Swing",			
		channel	=		CHAN_STATIC,
		volume	=		1.0,
		sound	= 		{
							"weapons/fesiugmw2/melee/h2h_knife_swing1.wav",
							"weapons/fesiugmw2/melee/h2h_knife_swing2.wav"
						}
	}
)

sound.Add(
	{
		name	=		"MW2Common.Melee.HitFleshy_Stab", -- heh
		channel	=		CHAN_ITEM,
		volume	=		1.0,
		sound	= 		{
							"weapons/fesiugmw2/melee/h2h_knife_stab1.wav",
							"weapons/fesiugmw2/melee/h2h_knife_stab1.wav"
						}
	}
)

sound.Add(
	{
		name	=		"MW2Common.Melee.HitFleshy_Slice", -- heh
		channel	=		CHAN_ITEM,
		volume	=		1.0,
		sound	= 		{
							"weapons/fesiugmw2/melee/h2h_knife_slice1.wav",
							"weapons/fesiugmw2/melee/h2h_knife_slice2.wav"
						}
	}
)

sound.Add(
	{
		name	=		"MW2Common.Melee.HitWorld",
		channel	=		CHAN_ITEM,
		volume	=		1.0,
		sound	= 		{
							"weapons/fesiugmw2/melee/h2h_knife_impact_other1.wav",
							"weapons/fesiugmw2/melee/h2h_knife_impact_other2.wav",
							"weapons/fesiugmw2/melee/h2h_knife_impact_other3.wav"
						}
	}
)