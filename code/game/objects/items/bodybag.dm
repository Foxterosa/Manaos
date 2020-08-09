//Also contains /obj/structure/closet/body_bag because I doubt anyone would think to look for bodybags in /object/structures

/obj/item/bodybag
	name = "bolsa para cadaveres"
	desc = "Una bolsa plegada disenada para el almacenamiento y transporte de cadaveres."
	icon = 'icons/obj/closets/bodybag.dmi'
	icon_state = "bodybag_folded"
	w_class = ITEM_SIZE_SMALL
	attack_self(mob/user)
		var/obj/structure/closet/body_bag/R = new /obj/structure/closet/body_bag(user.loc)
		R.add_fingerprint(user)
		qdel(src)


/obj/item/weapon/storage/box/bodybags
	name = "bolsas para cadaveres"
	desc = "Esta caja contiene bolsas para cadaveres."
	icon_state = "bodybags"
	New()
		..()
		new /obj/item/bodybag(src)
		new /obj/item/bodybag(src)
		new /obj/item/bodybag(src)
		new /obj/item/bodybag(src)
		new /obj/item/bodybag(src)
		new /obj/item/bodybag(src)
		new /obj/item/bodybag(src)


/obj/structure/closet/body_bag
	name = "bolsa para cadaveres"
	desc = "Una bolsa de plastico disenada para el almacenamiento y transporte de cadaveres."
	icon = 'icons/obj/closets/bodybag.dmi'
	closet_appearance = null
	open_sound = 'sound/items/zip.ogg'
	close_sound = 'sound/items/zip.ogg'
	var/item_path = /obj/item/bodybag
	density = 0
	storage_capacity = (MOB_MEDIUM * 2) - 1
	var/contains_body = 0
	var/has_label = FALSE

/obj/structure/closet/body_bag/attackby(var/obj/item/W, mob/user as mob)
	if (istype(W, /obj/item/weapon/pen))
		var/t = input(user, "What would you like the label to be?", text("[]", src.name), null)  as text
		if (user.get_active_hand() != W)
			return
		if (!in_range(src, user) && src.loc != user)
			return
		t = sanitizeSafe(t, MAX_NAME_LEN)
		if (t)
			src.SetName("body bag - ")
			src.name += t
			has_label = TRUE
		else
			src.SetName("body bag")
		src.update_icon()
		return
	else if(isWirecutter(W))
		src.SetName("body bag")
		has_label = FALSE
		to_chat(user, "Cortaste la etiqueta de la [src].")
		src.update_icon()
		return

/obj/structure/closet/body_bag/on_update_icon()
	if(opened)
		icon_state = "open"
	else
		icon_state = "closed_unlocked"

	src.overlays.Cut()
	if(has_label)
		src.overlays += image(src.icon, "bodybag_label")

/obj/structure/closet/body_bag/store_mobs(var/stored_units)
	contains_body = ..()
	return contains_body

/obj/structure/closet/body_bag/close()
	if(..())
		set_density(0)
		return 1
	return 0

/obj/structure/closet/body_bag/proc/fold(var/user)
	if(!(ishuman(user) || isrobot(user)))	return 0
	if(opened)	return 0
	if(contents.len)	return 0
	visible_message("[user] dobla la [name]")
	. = new item_path(get_turf(src))
	qdel(src)

/obj/structure/closet/body_bag/MouseDrop(over_object, src_location, over_location)
	..()
	if((over_object == usr && (in_range(src, usr) || usr.contents.Find(src))))
		fold(usr)

/obj/item/robot_rack/body_bag
	name = "estante para bolsas de estasis"
	desc = "Un estante para transportar bolsas de estasis plegadas y bolsas para cadaveres."
	icon = 'icons/obj/closets/cryobag.dmi'
	icon_state = "bodybag_folded"
	object_type = /obj/item/bodybag
	interact_type = /obj/structure/closet/body_bag
	capacity = 3