/datum/gear/head/solberet
	display_name = "Boinas del GCS"
	description = "Una boina indicando servicio en una organizacion del Gobierno Central Solar."
	path = /obj/item/clothing/head/beret/solgov

/datum/gear/head/solberet/New()
	..()
	var/berets = list()
	berets["Boina de Fuerzas de la Paz"] = /obj/item/clothing/head/beret/solgov
	berets["Boina de Defensa Nacional"] = /obj/item/clothing/head/beret/solgov/homeguard
	berets["Boina de Administracion de Portales"] = /obj/item/clothing/head/beret/solgov/gateway
	berets["Boina de Aduana e Intercambio"] = /obj/item/clothing/head/beret/solgov/customs
	berets["Boina de Investigacion Gubernamental"] = /obj/item/clothing/head/beret/solgov/research
	berets["Boina de Servicios de Salud"] = /obj/item/clothing/head/beret/solgov/health
	berets["Boina de Seguridad Diplomatica"] = /obj/item/clothing/head/beret/solgov/diplomatic
	berets["Boina de Seguridad Fronteriza"] = /obj/item/clothing/head/beret/solgov/borderguard
	berets["Boina de Asalto Orbital"] = /obj/item/clothing/head/beret/solgov/orbital
	gear_tweaks += new/datum/gear_tweak/path(berets)

/datum/gear/head/veteranhat
	display_name = "Gorra de veterano"
	path = /obj/item/clothing/head/soft/solgov/veteranhat
	allowed_branches = list(/datum/mil_branch/civilian, /datum/mil_branch/solgov, /datum/mil_branch/marine_corps, /datum/mil_branch/private_security)

/datum/gear/head/solhat
	display_name = "Gorra del Gobierno Central Solar"
	path = /obj/item/clothing/head/soft/solgov

/datum/gear/head/fleethat
	display_name = "Gorra de la Flota"
	path = /obj/item/clothing/head/solgov/utility/fleet
	cost = 0

/datum/gear/head/echat
	display_name = "Gorra Expedicionaria"
	path = /obj/item/clothing/head/soft/solgov/expedition
	cost = 0

/datum/gear/head/surgical
	allowed_roles = STERILE_ROLES

/datum/gear/head/beret

/datum/gear/mask/bandana

/datum/gear/head/bandana

/datum/gear/head/beanie

/datum/gear/head/bow

/datum/gear/head/cap

/datum/gear/head/hairflower

/datum/gear/head/hardhat

/datum/gear/head/formalhat

/datum/gear/head/informalhat

/datum/gear/head/welding

/datum/gear/tactical/balaclava

/datum/gear/head/fleetberet
	display_name = "Boinas de la Flota"
	description = "Una boina indicando servicio en una de las flotas dentro de la... bueno, uh, Flota."
	path = /obj/item/clothing/head/beret/solgov/fleet/branch
	allowed_branches = list(/datum/mil_branch/fleet)

/datum/gear/head/fleetberet/New()
	..()
	var/berets = list()
	berets["Boina de la Primera Flota"] = /obj/item/clothing/head/beret/solgov/fleet/branch
	berets["Boina de la Segunda Flota"] = /obj/item/clothing/head/beret/solgov/fleet/branch/second
	berets["Boina de la Tercera Flota"] = /obj/item/clothing/head/beret/solgov/fleet/branch/third
	berets["Boina de la Cuarta Flota"] = /obj/item/clothing/head/beret/solgov/fleet/branch/fourth
	berets["Boina de la Quinta Flota"] = /obj/item/clothing/head/beret/solgov/fleet/branch/fifth
	gear_tweaks += new/datum/gear_tweak/path(berets)

/datum/gear/head/ECberet
	display_name = "Boinas expedicionarias"
	description = "Una boina indicando servicio en una de las ramas en la NTSC."
	path = /obj/item/clothing/head/beret/solgov/expedition/branch

/datum/gear/head/ECberet/New()
	..()
	var/berets = list()
	berets["Boina de operaciones de campo"] = /obj/item/clothing/head/beret/solgov/expedition/branch
	berets["Boina de inspeccion"] = /obj/item/clothing/head/beret/solgov/expedition/branch/observatory
	gear_tweaks += new/datum/gear_tweak/path(berets)

/datum/gear/head/pilothelmet
	display_name = "Casco aviador"
	path = /obj/item/clothing/mask/pilothelmet
	slot = slot_wear_mask
