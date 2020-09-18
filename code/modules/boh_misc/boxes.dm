/////////
// Ammo
/////////

/obj/item/weapon/storage/box/ammo/beanbags/full
	name = "caja pesada de cartuchos de goma (12g)"
	startswith = list(/obj/item/ammo_magazine/shotholder/beanbag = 6)

/obj/item/weapon/storage/box/ammo/beanbags/half
	name = "caja de cartuchos de goma (12g)"
	startswith = list(/obj/item/ammo_magazine/shotholder/beanbag = 3)

/obj/item/weapon/storage/box/ammo/beanbags/eight
	name = "caja de cartuchos de goma (12g)"
	startswith = list(/obj/item/ammo_magazine/shotholder/beanbag = 2)

/obj/item/weapon/storage/box/ammo/solar
	name = "caja de cargadores (10mm)"
	desc = "It has a picture of a gun and several warning symbols on the front."
	startswith = list(/obj/item/ammo_magazine/pistol/double = 3)

/obj/item/weapon/storage/box/ammo/solar/full
	name = "caja de cargadores (10mm)"
	desc = "It has a picture of a gun and several warning symbols on the front."
	startswith = list(/obj/item/ammo_magazine/pistol/double = 7)

/obj/item/weapon/storage/box/ammo/solar/rubber
	name = "caja de cargadores de goma (10mm)"
	desc = "It has a picture of a gun and several warning symbols on the front."
	startswith = list(/obj/item/ammo_magazine/pistol/double/rubber = 7)

/obj/item/weapon/storage/box/ammo/shotgunammo/full
	name = "caja pesada de cartuchos (12g)"
	startswith = list(/obj/item/ammo_magazine/shotholder = 7)

/obj/item/weapon/storage/box/ammo/shotgunammo/birdshot/full
	name = "caja pesada de cartuchos de goma (12g)"
	startswith = list(/obj/item/ammo_magazine/shotholder/birdshot = 7)

/obj/item/weapon/storage/box/ammo/sabotbox
	name = "caja de cartuchos sabot (12g)"
	startswith = list(/obj/item/ammo_magazine/shotholder/sabot = 7)


/obj/item/gunbox
	name = "Kit de equipamiento"
	desc = "Una caja segura que contiene un arma."
	icon = 'icons/obj/storage.dmi'
	icon_state = "ammo" //temp

/obj/item/gunbox/attack_self(mob/living/user)
	var/list/options = list()
	options["Balistica - Pistola militar"] = list(/obj/item/weapon/gun/projectile/pistol/military/alt/solar,/obj/item/ammo_magazine/pistol/double/rubber)
	options["Energia - Smartgun"] = list(/obj/item/weapon/gun/energy/gun/secure)
	options["Energia - Stun Revolver"] = list(/obj/item/weapon/gun/energy/stunrevolver/secure)
	var/choice = input(user,"¿Que tipo de equipamiento?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun/))
				to_chat(user, "Has elegido [AM]. Esto probablemente vale más de lo que se puede usar con tu cheque de pago.")
		qdel(src)

/////////
// 'Officer' Lockbox
/////////

/obj/item/gunbox/captain
	desc = "Una caja segura que contiene un arma."

/obj/item/gunbox/captain/attack_self(mob/living/user)
	var/list/options = list()
	options["Balistica - .454 Revolver"] = list(/obj/item/weapon/gun/projectile/revolver/medium/captain/large,/obj/item/weapon/storage/fancy/cigar,/obj/item/ammo_magazine/speedloader/large)
	options["Balistica - SA Lumoco P3"] = list(/obj/item/weapon/gun/projectile/pistol/holdout/cap,/obj/item/ammo_magazine/pistol/small,/obj/item/clothing/mask/smokable/ecig/deluxe)
	options["Balistica - ID locked Mk58"] = list(/obj/item/weapon/gun/projectile/pistol/command,/obj/item/ammo_magazine/pistol,/obj/item/weapon/storage/fancy/cigar)
	options["Energia - EPP"] = list(/obj/item/weapon/gun/energy/pulse_rifle/pistol/epp,/obj/item/documents/epp)
	options["Energia - Smart Service Revolver"] = list(/obj/item/weapon/gun/energy/revolver/secure)
	var/choice = input(user,"¿Que tipo de equipamiento?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun/))
				to_chat(user, "Has elegido [AM].")
		qdel(src)

/////////
// 'Officer' Lockbox 2
/////////

/obj/item/gunbox/executive
	desc = "Una caja segura que contiene un arma."

/obj/item/gunbox/executive/attack_self(mob/living/user)
	var/list/options = list()
	options["Balistica - Mk58"] = list(/obj/item/weapon/gun/projectile/pistol/sec/solar,/obj/item/ammo_magazine/pistol,/obj/item/weapon/storage/fancy/cigar)
	options["Balistica - SA Lumoco P3"] = list(/obj/item/weapon/gun/projectile/pistol/holdout/cap,/obj/item/ammo_magazine/pistol/small,/obj/item/clothing/mask/smokable/ecig/deluxe)
	options["Balistica - Custom Revolver"] = list(/obj/item/weapon/gun/projectile/revolver/medium/captain/xo,/obj/item/weapon/storage/fancy/cigar,/obj/item/ammo_magazine/speedloader/xo)
	options["Energia - EPP"] = list(/obj/item/weapon/gun/energy/pulse_rifle/pistol/epp,/obj/item/documents/epp)
	options["Energia - Smart Service Revolver"] = list(/obj/item/weapon/gun/energy/revolver/secure)
	var/choice = input(user,"¿Que tipo de equipamiento?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun/))
				to_chat(user, "Has elegido [AM].")
		qdel(src)

/////////
// Illum Box
/////////

/obj/item/weapon/storage/box/illumnades
	name = "caja de granadas de ilumnación"
	desc = "Diseñadas para iluminar un área sin el uso de una llama o electrónica, independientemente de la atmósfera."
	icon_state = "flashbang"
	startswith = list(/obj/item/weapon/grenade/light = 6)

/////////
// Explosive Duffle
/////////
// LOTS O' C4
/obj/item/weapon/storage/backpack/dufflebag/syndie/c4
	name = "hefty bag"
	startswith = list(/obj/item/weapon/plastique = 19)

/////////
// Chemical Box
/////////
/obj/item/weapon/storage/lockbox/vials/random
	name = "caja segura de probetas"
	desc = "A locked box for keeping things away from children."
	w_class = ITEM_SIZE_NORMAL
	req_access = list(access_research)
	startswith = list(/obj/item/weapon/reagent_containers/glass/beaker/vial/projectsecret = 12)

/////////
// flares
/////////
// why this didn't exist already stuns me. or i'm just blind

/obj/item/weapon/storage/box/flares
	name = "caja de bengalas"
	desc = "Una caja de bengalas, no hay mucho que decir."
	icon_state = "box"
	startswith = list(/obj/item/device/flashlight/flare = 12)

