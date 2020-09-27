/datum/gear/head/solberet
	display_name = "SolGov beret selection"
	description = "A beret denoting service in an organization within SolGov."
	path = /obj/item/clothing/head/beret/solgov

/datum/gear/head/solberet/New()
	..()
	var/berets = list()
	berets["peacekeeper beret"] = /obj/item/clothing/head/beret/solgov
	berets["home guard beret"] = /obj/item/clothing/head/beret/solgov/homeguard
	berets["gateway administration beret"] = /obj/item/clothing/head/beret/solgov/gateway
	berets["customs and trade beret"] = /obj/item/clothing/head/beret/solgov/customs
	berets["government research beret"] = /obj/item/clothing/head/beret/solgov/research
	berets["health service beret"] = /obj/item/clothing/head/beret/solgov/health
	berets["diplomatic security beret"] = /obj/item/clothing/head/beret/solgov/diplomatic
	berets["border security beret"] = /obj/item/clothing/head/beret/solgov/borderguard
	berets["orbital assault beret"] = /obj/item/clothing/head/beret/solgov/orbital
	gear_tweaks += new/datum/gear_tweak/path(berets)

/datum/gear/head/veteranhat
	display_name = "veteran hat"
	path = /obj/item/clothing/head/soft/solgov/veteranhat
	allowed_branches = list(/datum/mil_branch/civilian, /datum/mil_branch/solgov, /datum/mil_branch/marine_corps, /datum/mil_branch/private_security)

/datum/gear/head/solhat
	display_name = "sol central government hat"
	path = /obj/item/clothing/head/soft/solgov

/datum/gear/head/fleethat
	display_name = "fleet hat"
	path = /obj/item/clothing/head/solgov/utility/fleet
	cost = 0

/datum/gear/head/echat
	display_name = "SC cap"
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
	display_name = "Fleet branch beret selection"
	description = "A beret denoting service in one of the fleets within the NT Fleet."
	path = /obj/item/clothing/head/beret/solgov/fleet/branch
	allowed_branches = list(/datum/mil_branch/fleet)

/datum/gear/head/fleetberet/New()
	..()
	var/berets = list()
	berets["first fleet beret"] = /obj/item/clothing/head/beret/solgov/fleet/branch
	berets["second fleet beret"] = /obj/item/clothing/head/beret/solgov/fleet/branch/second
	berets["third fleet beret"] = /obj/item/clothing/head/beret/solgov/fleet/branch/third
	berets["fourth fleet beret"] = /obj/item/clothing/head/beret/solgov/fleet/branch/fourth
	berets["fifth fleet beret"] = /obj/item/clothing/head/beret/solgov/fleet/branch/fifth
	gear_tweaks += new/datum/gear_tweak/path(berets)

/datum/gear/head/ECberet
	display_name = "SC sections beret selection"
	description = "A beret denoting service in one of the branches within the NTSC."
	path = /obj/item/clothing/head/beret/solgov/expedition/branch

/datum/gear/head/ECberet/New()
	..()
	var/berets = list()
	berets["field operation beret"] = /obj/item/clothing/head/beret/solgov/expedition/branch
	berets["observatory beret"] = /obj/item/clothing/head/beret/solgov/expedition/branch/observatory
	gear_tweaks += new/datum/gear_tweak/path(berets)

/datum/gear/head/pilothelmet
	display_name = "Casco Aviador"
	path = /obj/item/clothing/mask/pilothelmet
	slot = slot_wear_mask
