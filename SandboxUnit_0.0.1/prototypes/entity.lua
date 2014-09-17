data:extend(
{
  {
	type = "item",
	name = "Sandbox-Item",
	icon = "__SandboxUnits__/graphics/icons/SandboxItems.png",
	flags = {"placeable-neutral","placeable-player","player-creation"},
	minanble = {hardness = 0.2, mining_time = 0.5, result = "SandboxItem"},
	max_health = 500,
	corpse = "medium-remnants",
	collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
	selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
  }
}
)