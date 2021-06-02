/obj/machinery/mineral/unloading_machine
	name = "unloading machine"
	icon_state = "unloader"
	input_turf =  WEST
	output_turf = EAST
	var/output_speed = 10

/obj/machinery/mineral/unloading_machine/RefreshParts()
	var/M = 0

	M = Clamp(total_component_rating_of_type(/obj/item/weapon/stock_parts/manipulator), 0, 6)
	output_speed = 5 * M

/obj/machinery/mineral/unloading_machine/Process()
	if(input_turf && output_turf)
		if(length(output_turf.contents) < output_speed)
			var/ore_this_tick = output_speed
			for(var/obj/structure/ore_box/unloading in input_turf)
				for(var/obj/item/weapon/ore/_ore in unloading)
					_ore.dropInto(output_turf)
					if(--ore_this_tick<=0) return
			for(var/obj/item/_ore in input_turf)
				if(_ore.simulated && !_ore.anchored)
					_ore.dropInto(output_turf)
					if(--ore_this_tick<=0) return