ArcCW_MW2_Mech = { "weapons/fesiugmw2/mechanism/weap_mech_layer_c1.wav", "weapons/fesiugmw2/mechanism/weap_mech_layer_c2.wav", "weapons/fesiugmw2/mechanism/weap_mech_layer_c3.wav", "weapons/fesiugmw2/mechanism/weap_mech_layer_c4.wav", "weapons/fesiugmw2/mechanism/weap_mech_layer_c5.wav", "weapons/fesiugmw2/mechanism/weap_mech_layer_c6.wav", "weapons/fesiugmw2/mechanism/weap_mech_layer_c7.wav", "weapons/fesiugmw2/mechanism/weap_mech_layer_c8.wav" }

--[[
	Maya:
	X	=	-Y
	Y	=	-X
	Z	=	+Z
	Vector( -y, -x, z )

	Angles:
	X	=	-Y
	Y	=	+Z
	Z	=	+X
	Angle( -y, z, x )
]]

if SERVER then
	util.AddNetworkString("AMW2_RPGTrack")

	function AMW2_RPGTrack(ply, final)
		net.Start("AMW2_RPGTrack")
			net.WriteBool(final)
		net.Send(ply)
	end
end

function AMW2_Vector(x, y, z)
	return Vector( -y, -x, z )
end

function AMW2_Angle(x, y, z)
	return Angle( -y, z, x )
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

sound.Add( {
	name = "AMW2.Rocket.Loop",
	channel = CHAN_STATIC,
	volume = 1,
	level = 70,
	pitch = 100,
	sound = ")weapons/fesiugmw2/fire/rpg7_loop.wav",
} )

sound.Add( {
	name = "AMW2.Rocket.Loop_Whistle",
	channel = CHAN_STATIC,
	volume = 1,
	level = 70,
	pitch = 100,
	sound = ")weapons/fesiugmw2/fire/rpg7_trail_whistle.wav",
} )

sound.Add( {
	name = "AMW2.Rocket.Loop_Hiss",
	channel = CHAN_STATIC,
	volume = 1,
	level = 70,
	pitch = 100,
	sound = ")weapons/fesiugmw2/fire/rpg7_trail_hiss.wav",
} )

sound.Add( {
	name = "AMW2.Explode",
	channel = CHAN_STATIC,
	volume = 1,
	level = 110,
	pitch = 100,
	sound = ")weapons/fesiugmw2/fire/rpg7_trail_hiss.wav",
} )

sound.Add( {
	name = "AMW2.Explode",
	channel = CHAN_STATIC,
	volume = 1,
	level = 100,
	pitch = 100,
	sound = {
		")weapons/fesiugmw2/explosion/grenade_explod_a10.wav",
		")weapons/fesiugmw2/explosion/grenade_explod_a11.wav",
		")weapons/fesiugmw2/explosion/grenade_explod_a12.wav",
		")weapons/fesiugmw2/explosion/grenade_explod_a13.wav",
		")weapons/fesiugmw2/explosion/grenade_explod_a14.wav",
		")weapons/fesiugmw2/explosion/grenade_explod_a15.wav",
		")weapons/fesiugmw2/explosion/grenade_explod_a16.wav",
	}
} )

sound.Add( {
	name = "AMW2.ExplodeFar",
	channel = CHAN_STATIC,
	volume = 1,
	level = 140,
	pitch = 100,
	sound = {
		")weapons/fesiugmw2/explosion/explo_distant01.wav",
		")weapons/fesiugmw2/explosion/explo_distant02.wav",
		")weapons/fesiugmw2/explosion/explo_distant03.wav",
		")weapons/fesiugmw2/explosion/explo_distant05.wav",
		")weapons/fesiugmw2/explosion/explo_distant07.wav",
	}
} )