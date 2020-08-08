// sprite stolen from vgstation

/obj/item/weapon/material/bell
	name = "bell"
	desc = "A bell to ring to get people's attention. Don't break it."
	icon = 'icons/obj/objects.dmi'
	icon_state = "bell"
	max_force = 5
	force_divisor = 0.8
	thrown_force_divisor = 0.3
	hitsound = 'sound/items/oneding.ogg'
	default_material = MATERIAL_ALUMINIUM

/obj/item/weapon/material/gavelblock/attack_hand(mob/user as mob)
	if (user.a_intent == I_GRAB)
		return ..()
	else if (user.a_intent == I_HURT)
		user.visible_message("<span class='warning'>\The [user] hammers \the [src]!</span>")
		playsound(user.loc, 'sound/items/manydings.ogg', 60)
	else
		user.visible_message("<span class='notice'>\The [user] rings \the [src].</span>")
		playsound(user.loc, 'sound/items/oneding.ogg', 20)
	flick("bell_dingeth", src)

/obj/item/weapon/material/bell/apply_hit_effect()
	. = ..()
	shatter()



/obj/item/weapon/material/gavelblock
	name = "bloque de martillo"
	desc = "Golpéalo con un martillo cuando las cosas se pongan ruidosas."
	icon = 'icons/obj/items.dmi'
	icon_state = "gavelblock"
	max_force = 5
	force_divisor = 0.8
	thrown_force_divisor = 0.3
	hitsound = 'sound/items/gavel.ogg'
	default_material = MATERIAL_ALUMINIUM

/obj/item/weapon/material/gavelblock/attack_hand(mob/user as mob)
	if (user.a_intent == I_GRAB)
		return ..()
	else if (user.a_intent == I_HURT)
		user.visible_message("<span class='warning'>[user] golpea el bloque con el martillo!</span>")
		playsound(user.loc, 'sound/items/gavel.ogg', 60)

/obj/item/weapon/material/gavelblock/apply_hit_effect()
	. = ..()
	shatter()

/obj/item/weapon/martillo
	name = "martillo"
	desc = "Orden orden! Nada de bombas en mi corte."
	icon = 'icons/obj/items.dmi'
	icon_state = "gavelhammer"
	item_state = "gavelhammer"
	force = 5.0
	throwforce = 7.0
	w_class = ITEM_SIZE_SMALL