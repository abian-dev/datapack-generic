## Creates Lightning Root
scoreboard players remove %vfxRadialForkedLightning.numRoots kits.z 1
$execute store result score %vfxRadialForkedLightning.numBranches kits.z run random value $(branchesMin)..$(branchesMax)
execute positioned as @s run function kits:generic/vfx/radial_forked_lightning/branch