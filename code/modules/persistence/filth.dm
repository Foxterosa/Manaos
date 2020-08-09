/obj/effect/decal/cleanable/filth
	name = "suciedad"
	desc = "Asqueroso. Parece que alguien en el ultimo viaje no hice bien su trabajo."
	icon = 'icons/effects/blood.dmi'
	icon_state = "mfloor1"
	random_icon_states = list("mfloor1", "mfloor2", "mfloor3", "mfloor4", "mfloor5", "mfloor6", "mfloor7")
	color = "#464f33"
	persistent = TRUE
	anchored = TRUE

/obj/effect/decal/cleanable/filth/Initialize()
	. = ..()
	alpha = rand(180,220)
