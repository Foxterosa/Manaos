// Funcion que detecta cuando un personaje llega a la estacion
/mob/new_player/proc/start_player(mob/user)
	var/mob/living/carbon/human/target = user

//		Smug
	if(ishuman(target) && target.real_name == "Smug Whitley" && target.ckey == "Smug Face AK12")
		for(var/obj/item/weapon/storage/backpack/B in (target.contents))
			new /obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army(B)
			return
//		---

/obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army
	name = "Hal winter coat"
	desc = "A comfy winter coat, in green colours."
	icon_state = "coatar"
