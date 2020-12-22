// Created by Crowbar 0.68

$modelname "weapons\arccw\fesiugmw2\atts\scopes\tuna_2.mdl"

$bodygroup "1"
{
	studio "ref_scope.smd"
}
$bodygroup "hsp"
{
	studio "ref_hsp.smd"
	blank
}


$surfaceprop "default"

$contents "solid"

$illumposition 0.021 -1.574 1.074

$cdmaterials "models\weapons\fesiugmw2\f2000\"
$cdmaterials "models\weapons\fesiugmw2\_attach\"

$attachment "holosight" "holosight" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -3.269 -0.998 -0.171 6.416 1.052 2.232

$definebone "root" "" 0 0.000913 0 0 89.999982 89.999982 0 0 0 0 0 0
$definebone "holosight" "root" -0.000913 1.309647 2.269966 0 0 89.999982 0 0 0 0 0 0


$sequence "idle" {
	"tuna_2_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "tuna_2_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
