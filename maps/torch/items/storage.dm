/////////
// Bodyguard Lockbox
/////////
/obj/item/gunbox/bodyguard
	name = "Kit de equipamiento"
	desc = "Una caja segura que contiene un arma."
	icon = 'icons/obj/storage.dmi'
	icon_state = "ammo" //temp

/obj/item/gunbox/bodyguard/attack_self(mob/living/user)
	var/list/options = list()
	options["Balistica - Pistola militar"] = list(/obj/item/weapon/gun/projectile/pistol/military/alt/solar,/obj/item/ammo_magazine/pistol/double/rubber)
	options["Energia - Smartgun"] = list(/obj/item/weapon/gun/energy/gun/secure/corporate)
	options["Energia - Stun"] = list(/obj/item/weapon/gun/energy/stunrevolver/secure/nanotrasen)
	var/choice = input(user,"¿Que tipo de equipamiento?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun/))
				to_chat(user, "Has elegido [AM].")
		qdel(src)


/obj/item/gunbox/detective
	name = "Kit de equipamiento"
	desc = "Una caja segura que contiene un arma."
	icon = 'icons/obj/storage.dmi'
	icon_state = "ammo"

/obj/item/gunbox/detective/attack_self(mob/living/user)
	var/list/options = list()
	options["Balistica - Revolver mars"] = list(/obj/item/weapon/gun/projectile/revolver/detective, /obj/item/ammo_magazine/speedloader/magnum/detective, /obj/item/ammo_magazine/speedloader/magnum/detective, /obj/item/ammo_magazine/speedloader/magnum/detective)
	options["Energia - Smartgun"] = list(/obj/item/weapon/gun/energy/gun/secure/corporate)
	options["Energia - Stun"] = list(/obj/item/weapon/gun/energy/stunrevolver/secure/nanotrasen)
	var/choice = input(user,"¿Que tipo de equipamiento?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun/))
				to_chat(user, "Has elegido [AM].")
		qdel(src)
