// State values:
// [icon_base]: initial base icon_state without edges or corners.
// if has_base_range is set, append 0-has_base_range ie.
//   [icon_base][has_base_range]
// [icon_base]_broken: damaged overlay.
// if has_damage_range is set, append 0-damage_range for state ie.
//   [icon_base]_broken[has_damage_range]
// [icon_base]_edges: directional overlays for edges.
// [icon_base]_corners: directional overlays for non-edge corners.

/decl/flooring
	var/name
	var/desc
	var/icon
	var/icon_base
	var/color
	var/footstep_type = /decl/footsteps/blank

	var/has_base_range
	var/has_damage_range
	var/has_burn_range
	var/damage_temperature
	var/apply_thermal_conductivity
	var/apply_heat_capacity

	var/build_type      // Unbuildable if not set. Must be /obj/item/stack.
	var/build_cost = 1  // Stack units.
	var/build_time = 0  // BYOND ticks.

	var/descriptor = "baldosas"
	var/flags
	var/can_paint
	var/can_engrave = TRUE

	//How we smooth with other flooring
	var/decal_layer = DECAL_LAYER
	var/floor_smooth = SMOOTH_ALL
	var/list/flooring_whitelist = list() //Smooth with nothing except the contents of this list
	var/list/flooring_blacklist = list() //Smooth with everything except the contents of this list

	//How we smooth with walls
	var/wall_smooth = SMOOTH_ALL
	//There are no lists for walls at this time

	//How we smooth with space and openspace tiles
	var/space_smooth = SMOOTH_ALL
	//There are no lists for spaces

/decl/flooring/proc/on_remove()
	return

/decl/flooring/grass
	name = "pasto"
	desc = "Pasto, comunmente se ve en planetas habitables o simplemente en un jardin."
	icon = 'icons/turf/flooring/grass.dmi'
	icon_base = "grass"
	has_base_range = 3
	damage_temperature = T0C+80
	flags = TURF_HAS_EDGES | TURF_HAS_CORNERS | TURF_REMOVE_SHOVEL
	build_type = /obj/item/stack/tile/grass
	can_engrave = FALSE
	floor_smooth = SMOOTH_NONE
	wall_smooth = SMOOTH_ALL
	space_smooth = SMOOTH_NONE
	decal_layer = ABOVE_WIRE_LAYER

/decl/flooring/dirt
	name = "suciedad"
	desc = "Suciedad acumulada en un solo sitio. Quizas deberian de limpiar eso."
	icon = 'icons/turf/flooring/grass.dmi'
	icon_base = "dirt"
	has_base_range = 3
	damage_temperature = T0C+80
	can_engrave = FALSE

/decl/flooring/asteroid
	name = "arena"
	desc = "Cuidado con que te entre arena en tus botas."
	icon = 'icons/turf/flooring/asteroid.dmi'
	icon_base = "asteroid"
	flags = TURF_HAS_EDGES | TURF_REMOVE_SHOVEL
	build_type = null
	can_engrave = FALSE

/decl/flooring/carpet
	name = "alfombra marron"
	desc = "Una elegante, y comoda, alfombra, de color marron"
	icon = 'icons/turf/flooring/carpet.dmi'
	icon_base = "brown"
	build_type = /obj/item/stack/tile/carpet
	damage_temperature = T0C+200
	flags = TURF_HAS_CORNERS | TURF_HAS_INNER_CORNERS | TURF_REMOVE_CROWBAR | TURF_CAN_BURN
	can_engrave = FALSE
	footstep_type = /decl/footsteps/carpet
	floor_smooth = SMOOTH_NONE
	wall_smooth = SMOOTH_NONE
	space_smooth = SMOOTH_NONE

/decl/flooring/carpet/blue
	name = "alfombra azul"
	icon_base = "blue1"
	build_type = /obj/item/stack/tile/carpetblue

/decl/flooring/carpet/blue2
	name = "alfombra celeste"
	icon_base = "blue2"
	build_type = /obj/item/stack/tile/carpetblue2

/decl/flooring/carpet/blue3
	name = "alfombra celeste mejorada"
	icon_base = "blue3"
	build_type = /obj/item/stack/tile/carpetblue3

/decl/flooring/carpet/magenta
	name = "alfombra rosa"
	icon_base = "purple"
	build_type = /obj/item/stack/tile/carpetmagenta

/decl/flooring/carpet/purple
	name = "alfombra purpura"
	icon_base = "purple"
	build_type = /obj/item/stack/tile/carpetpurple

/decl/flooring/carpet/orange
	name = "alfombra naranja"
	icon_base = "orange"
	build_type = /obj/item/stack/tile/carpetorange

/decl/flooring/carpet/green
	name = "alfombra verde"
	icon_base = "green"
	build_type = /obj/item/stack/tile/carpetgreen

/decl/flooring/carpet/red
	name = "alfombra roja"
	icon_base = "red"
	build_type = /obj/item/stack/tile/carpetred

/decl/flooring/linoleum
	name = "linoleo"
	desc = "Se ve de buena calidad, limpio y lindo."
	icon = 'icons/turf/flooring/linoleum.dmi'
	icon_base = "lino"
	can_paint = 1
	build_type = /obj/item/stack/tile/linoleum
	flags = TURF_REMOVE_SCREWDRIVER
	footstep_type = /decl/footsteps/tiles

/decl/flooring/tiling
	name = "suelo"
	desc = "Un conjunto solido y pesado de baldosas."
	icon = 'icons/turf/flooring/tiles.dmi'
	icon_base = "tiled"
	color = COLOR_DARK_GUNMETAL
	has_damage_range = 4
	damage_temperature = T0C+1400
	flags = TURF_REMOVE_CROWBAR | TURF_CAN_BREAK | TURF_CAN_BURN
	build_type = /obj/item/stack/tile/floor
	can_paint = 1
	footstep_type = /decl/footsteps/tiles

/decl/flooring/tiling/mono
	icon_base = "monotile"
	build_type = /obj/item/stack/tile/mono

/decl/flooring/tiling/mono/dark
	color = COLOR_DARK_GRAY
	build_type = /obj/item/stack/tile/mono/dark

/decl/flooring/tiling/mono/white
	icon_base = "monotile_light"
	color = COLOR_OFF_WHITE
	build_type = /obj/item/stack/tile/mono/white

/decl/flooring/tiling/white
	icon_base = "tiled_light"
	desc = "La contraparte del color negro."
	color = COLOR_OFF_WHITE
	build_type = /obj/item/stack/tile/floor_white

/decl/flooring/tiling/dark
	desc = "Un suelo de color oscuro, la oscuridad le rodea."
	color = COLOR_DARK_GRAY
	build_type = /obj/item/stack/tile/floor_dark

/decl/flooring/tiling/dark/mono
	icon_base = "monotile"
	build_type = null

/decl/flooring/tiling/freezer
	desc = "El frio se acumula aqui..."
	icon_base = "freezer"
	color = null
	has_damage_range = null
	flags = TURF_REMOVE_CROWBAR
	build_type = /obj/item/stack/tile/floor_freezer

/decl/flooring/tiling/tech
	icon = 'icons/turf/flooring/techfloor.dmi'
	icon_base = "techfloor_gray"
	build_type = /obj/item/stack/tile/techgrey
	color = null

/decl/flooring/tiling/tech/grid
	icon_base = "techfloor_grid"
	build_type = /obj/item/stack/tile/techgrid

/decl/flooring/tiling/new_tile
	icon_base = "tile_full"
	color = null
	build_type = null

/decl/flooring/tiling/new_tile/cargo_one
	icon_base = "cargo_one_full"
	build_type = null

/decl/flooring/tiling/new_tile/kafel
	icon_base = "kafel_full"
	build_type = null

/decl/flooring/tiling/stone
	icon_base = "stone"
	build_type = /obj/item/stack/tile/stone

/decl/flooring/tiling/new_tile/techmaint
	icon_base = "techmaint"
	build_type = /obj/item/stack/tile/techmaint

/decl/flooring/tiling/new_tile/monofloor
	icon_base = "monofloor"
	color = COLOR_GUNMETAL

/decl/flooring/tiling/new_tile/steel_grid
	icon_base = "grid"
	color = COLOR_GUNMETAL
	build_type = /obj/item/stack/tile/grid

/decl/flooring/tiling/new_tile/steel_ridged
	icon_base = "ridged"
	color = COLOR_GUNMETAL
	build_type = /obj/item/stack/tile/ridge

/decl/flooring/wood
	name = "suelo de madera"
	desc = "Un lindo conjunto de placas de madera en el suelo. Inflamable"
	icon = 'icons/turf/flooring/wood.dmi'
	icon_base = "wood"
	has_damage_range = 6
	damage_temperature = T0C+200
	descriptor = "planks"
	build_type = /obj/item/stack/tile/wood
	flags = TURF_CAN_BREAK | TURF_IS_FRAGILE | TURF_REMOVE_SCREWDRIVER
	footstep_type = /decl/footsteps/wood
	color = WOOD_COLOR_GENERIC

/decl/flooring/wood/mahogany
	color = WOOD_COLOR_RICH
	build_type = /obj/item/stack/tile/mahogany

/decl/flooring/wood/maple
	color = WOOD_COLOR_PALE
	build_type = /obj/item/stack/tile/maple

/decl/flooring/wood/ebony
	color = WOOD_COLOR_BLACK
	build_type = /obj/item/stack/tile/ebony

/decl/flooring/wood/walnut
	color = WOOD_COLOR_CHOCOLATE
	build_type = /obj/item/stack/tile/walnut

/decl/flooring/wood/bamboo
	color = WOOD_COLOR_PALE2
	build_type = /obj/item/stack/tile/bamboo

/decl/flooring/wood/yew
	color = WOOD_COLOR_YELLOW
	build_type = /obj/item/stack/tile/yew

/decl/flooring/reinforced
	name = "suelo reforzado"
	desc = "Altamente reforzado con placas de acero."
	icon = 'icons/turf/flooring/tiles.dmi'
	icon_base = "reinforced"
	flags = TURF_REMOVE_WRENCH | TURF_ACID_IMMUNE
	build_type = /obj/item/stack/material/steel
	build_cost = 1
	build_time = 30
	apply_thermal_conductivity = 0.025
	apply_heat_capacity = 325000
	can_paint = 1
	footstep_type = /decl/footsteps/plating

/decl/flooring/reinforced/circuit
	name = "suelo de alta-tecnologia"
	icon = 'icons/turf/flooring/circuit.dmi'
	icon_base = "bcircuit"
	build_type = null
	flags = TURF_ACID_IMMUNE | TURF_CAN_BREAK | TURF_REMOVE_WRENCH
	can_paint = 1
	can_engrave = FALSE

/decl/flooring/reinforced/circuit/green
	icon_base = "gcircuit"

/decl/flooring/reinforced/circuit/red
	icon_base = "rcircuit"
	flags = TURF_ACID_IMMUNE
	can_paint = 0

/decl/flooring/reinforced/cult
	name = "suelo infernal"
	desc = "Escuchas susurros y lamentos viniendo del suelo..."
	icon = 'icons/turf/flooring/cult.dmi'
	icon_base = "cult"
	build_type = null
	has_damage_range = 6
	flags = TURF_ACID_IMMUNE | TURF_CAN_BREAK | TURF_REMOVE_WRENCH
	can_paint = null

/decl/flooring/reinforced/cult/on_remove()
	GLOB.cult.remove_cultiness(CULTINESS_PER_TURF)

/decl/flooring/reinforced/shuttle
	name = "suelo de lanzadera espacial"
	icon = 'icons/turf/shuttle.dmi'
	build_type = null
	flags = TURF_ACID_IMMUNE | TURF_CAN_BREAK | TURF_REMOVE_CROWBAR
	can_paint = 1
	can_engrave = FALSE

/decl/flooring/reinforced/shuttle/blue
	icon_base = "floor"

/decl/flooring/reinforced/shuttle/yellow
	icon_base = "floor2"

/decl/flooring/reinforced/shuttle/white
	icon_base = "floor3"

/decl/flooring/reinforced/shuttle/red
	icon_base = "floor4"

/decl/flooring/reinforced/shuttle/purple
	icon_base = "floor5"

/decl/flooring/reinforced/shuttle/darkred
	icon_base = "floor6"

/decl/flooring/reinforced/shuttle/black
	icon_base = "floor7"

/decl/flooring/reinforced/shuttle/skrell
	icon = 'icons/turf/skrellturf.dmi'
	icon_base = "skrellblack"

/decl/flooring/reinforced/shuttle/skrell/white
	icon_base = "skrellwhite"

/decl/flooring/reinforced/shuttle/skrell/red
	icon_base = "skrellred"

/decl/flooring/reinforced/shuttle/skrell/blue
	icon_base = "skrellblue"

/decl/flooring/reinforced/shuttle/skrell/orange
	icon_base = "skrellorange"

/decl/flooring/reinforced/shuttle/skrell/green
	icon_base = "skrellgreen"

/decl/flooring/crystal
	name = "suelo de cristal"
	icon = 'icons/turf/flooring/crystal.dmi'
	build_type = null
	flags = TURF_ACID_IMMUNE | TURF_CAN_BREAK | TURF_REMOVE_CROWBAR
	color = "#00ffe1"
