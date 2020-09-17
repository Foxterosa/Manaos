/obj/item/remains
	name = "restos"
	gender = PLURAL
	icon = 'icons/effects/blood.dmi'
	icon_state = "remains"
	anchored = 0

/obj/item/remains/human
	desc = "Parecen ser restos humanos... Percibes un aura extraña..."

/obj/effect/decal/remains	// Apparently used by cult somewhere?
	desc = "Parecen ser restos humanos...  Percibes un aura extraña..."
	icon = 'icons/effects/blood.dmi'
	icon_state = "remains"

/obj/item/remains/xeno
	desc = "Parecen ser restos de algo... Alien. Percibes un aura extraña..."
	icon_state = "remainsxeno"

/obj/item/remains/robot
	desc = "Parecen ser restos de algo mecanico... Percibes un aura extraña..."
	icon = 'icons/mob/robots_gibs.dmi'
	icon_state = "remainsrobot"

/obj/item/remains/mouse
	desc = "Parecen ser restos de un diminuto roedor."
	icon_state = "mouse"

/obj/item/remains/lizard
	desc = "Parecen ser restos de un diminuto roedor."
	icon_state = "lizard"

/obj/item/remains/attack_hand(mob/user as mob)
	to_chat(user, "<span class='notice'>[src] se desvanecen juntos en un monticulo de cenizas..</span>")
	var/turf/simulated/floor/F = get_turf(src)
	if (istype(F))
		new /obj/effect/decal/cleanable/ash(F)
	qdel(src)

/obj/item/remains/robot/attack_hand(mob/user as mob)
	return
