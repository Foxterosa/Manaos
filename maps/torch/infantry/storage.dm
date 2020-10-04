/////////
// Infantry Kits
/////////

/obj/item/gunbox/infantry
	name = "Kit estandar"
	desc = "Una caja segura que contiene un arma secundaria y una primaria."

/obj/item/gunbox/infantry/attack_self(mob/living/user)
	var/list/options = list()
	options["Balistica - Rifle Bullpup"] = list(/obj/item/weapon/gun/projectile/automatic/bullpup_rifle/sec/loaded,/obj/item/ammo_magazine/mil_rifle/sec,/obj/item/weapon/gun/projectile/pistol/military/sec,/obj/item/weapon/grenade/frag/shell,/obj/item/weapon/grenade/frag/shell,/obj/item/weapon/grenade/frag/shell)
	options["Energia - Carabina laser"] = list(/obj/item/weapon/gun/energy/laser/infantry,/obj/item/weapon/gun/projectile/pistol/military/sec,/obj/item/weapon/grenade/smokebomb,/obj/item/weapon/grenade/smokebomb,/obj/item/weapon/grenade/frag)
	var/choice = input(user,"¿Que tipo de equipamiento?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun/))
				to_chat(user, "Has elegido [AM].")
		qdel(src)

/obj/item/gunbox/infcoml
	name = "Kit del lider de escuadron"
	desc = "Una caja segura que contiene un arma secundaria y una primaria."

/obj/item/gunbox/infcom/attack_self(mob/living/user)
	var/list/options = list()
	options["Balistica - Escopeta"] = list(/obj/item/weapon/gun/projectile/shotgun/sabotgun,/obj/item/weapon/gun/projectile/pistol/military/sec)
	options["Balistica - Subfusil"] = list(/obj/item/weapon/gun/projectile/automatic/p90/sec,/obj/item/ammo_magazine/p90, /obj/item/weapon/gun/projectile/pistol/military/sec)
	options["Energia - Carabina laser (Disparo rapido)"] = list(/obj/item/weapon/gun/energy/laser/infantry/sl,/obj/item/weapon/gun/energy/revolver/inf)
	var/choice = input(user,"¿Que tipo de equipamiento?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun/))
				to_chat(user, "Has elegido [AM].")
		qdel(src)

/obj/item/gunbox/inftech
	name = "Kit tecnico"
	desc = "Una caja segura que contiene todo lo que necesitas."

/obj/item/gunbox/inftech/attack_self(mob/living/user)
	var/list/options = list()
//	options["Rocket Launcher"] = list(/obj/item/weapon/gun/launcher/rocket/recoilless/sec,/obj/item/ammo_casing/rocket/rcr,/obj/item/ammo_casing/rocket/rcr,/obj/item/weapon/gun/projectile/pistol/military/sec)
//Activar cuando quiten estas cosas del locker en el mapa	options["Tecnico de combate"] =list(/obj/item/device/multitool,/obj/item/weapon/storage/belt/utility/full,obj/item/clothing/gloves/insulated,obj/item/weapon/plastique,obj/item/weapon/plastique,obj/item/weapon/plastique,obj/item/weapon/plastique)
	options["Medico de combate"] = list(/obj/item/weapon/storage/firstaid/adv,/obj/item/weapon/storage/firstaid/combat,/obj/item/device/scanner/health,/obj/item/clothing/glasses/hud/health/sun,/obj/item/weapon/storage/belt/medical/emt,/obj/item/bodybag/cryobag,/obj/item/weapon/storage/box/autoinjectors/advanced)
	var/choice = input(user,"¿Que tipo de equipamiento?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun/))
				to_chat(user, "Has elegido [AM].")
		qdel(src)

/////////
// Suits
/////////
/obj/machinery/suit_cycler/infantry
	name = "Infantry suit cycler"
	model_text = "Infantry"
	req_access = list(access_infantry)
	available_modifications = list(/decl/item_modifier/space_suit/hazard, /decl/item_modifier/space_suit/engineering/alt, /decl/item_modifier/space_suit/security/alt, /decl/item_modifier/space_suit/security)
