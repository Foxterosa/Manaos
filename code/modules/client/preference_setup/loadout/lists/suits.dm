/datum/gear/suit
	slot = slot_wear_suit
	sort_category = "Trajes y Capas Superiores"
	category = /datum/gear/suit
	banned_species = list(SPECIES_PLASMASANS)

/datum/gear/suit/poncho
	display_name = "Ponchos varios"
	path = /obj/item/clothing/suit/poncho/colored
	cost = 1
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/suit/security_poncho
	display_name = "Poncho, seguridad"
	path = /obj/item/clothing/suit/poncho/roles/security

/datum/gear/suit/medical_poncho
	display_name = "Poncho, medicina"
	path = /obj/item/clothing/suit/poncho/roles/medical

/datum/gear/suit/engineering_poncho
	display_name = "Poncho, ingenieria"
	path = /obj/item/clothing/suit/poncho/roles/engineering

/* /datum/gear/suit/space/void/lavaland
	display_name = "traje de explorador"
	path = /obj/item/clothing/suit/space/void/lavaland

	allowed_roles = list(/datum/job/mining)

/datum/gear/suit/space/void/lavalandh
	display_name = "casco de explorador"
	path = /obj/item/clothing/head/helmet/space/void/lavaland

	allowed_roles = list(/datum/job/mining)
*/
/datum/gear/suit/science_poncho
	display_name = "Poncho, ciencias"
	path = /obj/item/clothing/suit/poncho/roles/science

/datum/gear/suit/nanotrasen_poncho
	display_name = "Poncho, NanoTrasen"
	path = /obj/item/clothing/suit/poncho/roles/science/nanotrasen

/datum/gear/suit/cargo_poncho
	display_name = "Poncho, suministro"
	path = /obj/item/clothing/suit/poncho/roles/cargo

/datum/gear/suit/suit_jacket
	display_name = "Chaquetas de traje estandar"
	path = /obj/item/clothing/suit/storage/toggle/suit

/datum/gear/suit/suit_jacket/New()
	..()
	var/suitjackets = list()
	suitjackets += /obj/item/clothing/suit/storage/toggle/suit/black
	suitjackets += /obj/item/clothing/suit/storage/toggle/suit/blue
	suitjackets += /obj/item/clothing/suit/storage/toggle/suit/purple
	gear_tweaks += new/datum/gear_tweak/path/specified_types_list(suitjackets)

/datum/gear/suit/custom_suit_jacket
	display_name = "Chaqueta de traje, coloreable"
	path = /obj/item/clothing/suit/storage/toggle/suit
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/suit/hazard
	display_name = "Chaleco de alta visibilidad"
	path = /obj/item/clothing/suit/storage/hazardvest
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/suit/hoodie
	display_name = "Buzo con capucha, coloreable"
	path = /obj/item/clothing/suit/storage/hooded/hoodie
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/suit/hoodie_sel
	display_name = "Buzos con capucha varios"
	path = /obj/item/clothing/suit/storage/toggle/hoodie

/datum/gear/suit/hoodie_sel/New()
	..()
	var/hoodies = list()
	hoodies += /obj/item/clothing/suit/storage/toggle/hoodie/cti
	hoodies += /obj/item/clothing/suit/storage/toggle/hoodie/mu
	hoodies += /obj/item/clothing/suit/storage/toggle/hoodie/nt
	hoodies += /obj/item/clothing/suit/storage/toggle/hoodie/smw
	gear_tweaks += new/datum/gear_tweak/path/specified_types_list(hoodies)

/datum/gear/suit/labcoat
	display_name = "Bata de laboratorio, coloreable"
	path = /obj/item/clothing/suit/storage/toggle/labcoat
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/suit/labcoat_blue
	display_name = "Bata de laboratorio recortada de manga azul"
	path = /obj/item/clothing/suit/storage/toggle/labcoat/blue

/datum/gear/suit/labcoat_corp
	display_name = "Bata de laboratorio corporativa"
	path = /obj/item/clothing/suit/storage/toggle/labcoat/science
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/suit/coat
	display_name = "Saco, coloreable"
	path = /obj/item/clothing/suit/storage/toggle/labcoat/coat
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/suit/leather
	display_name = "Camperas varias"
	path = /obj/item/clothing/suit

/datum/gear/suit/leather/New()
	..()
	var/jackets = list()
	jackets += /obj/item/clothing/suit/storage/toggle/bomber
	jackets += /obj/item/clothing/suit/storage/leather_jacket/nanotrasen
	jackets += /obj/item/clothing/suit/storage/toggle/brown_jacket/nanotrasen
	jackets += /obj/item/clothing/suit/storage/leather_jacket
	jackets += /obj/item/clothing/suit/storage/toggle/brown_jacket
	jackets += /obj/item/clothing/suit/storage/mbill
	gear_tweaks += new/datum/gear_tweak/path/specified_types_list(jackets)

/datum/gear/suit/wintercoat
	display_name = "Abrigo invernal"
	path = /obj/item/clothing/suit/storage/hooded/wintercoat

/datum/gear/suit/wintercoat_dais
	display_name = "Abrigo invernal, SAID"
	path = /obj/item/clothing/suit/storage/hooded/wintercoat/dais
	cost = 2

/datum/gear/suit/wintercoat_capitan
	display_name = "Abrigo invernal, Comandante"
	path = /obj/item/clothing/suit/storage/hooded/wintercoat/captain
	cost = 2

/datum/gear/suit/wintercoat_cargo
	display_name = "Abrigo invernal, cargo"
	path = /obj/item/clothing/suit/storage/hooded/wintercoat/cargo
	cost = 2

/datum/gear/suit/wintercoat_ingenieria
	display_name = "Abrigo invernal, ingenieria"
	path = /obj/item/clothing/suit/storage/hooded/wintercoat/engineering
	cost = 2

/datum/gear/suit/wintercoat_atmos
	display_name = "Abrigo invernal, atmosfericos"
	path = /obj/item/clothing/suit/storage/hooded/wintercoat/engineering/atmos
	cost = 2

/datum/gear/suit/wintercoat_botanica
	display_name = "Abrigo invernal, botanica"
	path = /obj/item/clothing/suit/storage/hooded/wintercoat/hydro
	cost = 2

/datum/gear/suit/wintercoat_medicina
	display_name = "Abrigo invernal, medicina"
	path = /obj/item/clothing/suit/storage/hooded/wintercoat/medical
	cost = 2

/datum/gear/suit/wintercoat_mineria
	display_name = "Abrigo invernal, mineria"
	path = /obj/item/clothing/suit/storage/hooded/wintercoat/miner
	cost = 2

/datum/gear/suit/wintercoat_ciencias
	display_name = "Abrigo invernal, ciencias"
	path = /obj/item/clothing/suit/storage/hooded/wintercoat/science
	cost = 2

/datum/gear/suit/wintercoat_seguridad
	display_name = "Abrigo invernal, seguridad"
	path = /obj/item/clothing/suit/storage/hooded/wintercoat/security
	cost = 2

/datum/gear/suit/track
	display_name = "Chaquetas deportivas"
	path = /obj/item/clothing/suit/storage/toggle/track
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/suit/blueapron
	display_name = "Delantal azul"
	path = /obj/item/clothing/suit/apron
	cost = 1

/datum/gear/suit/overalls
	display_name = "Mono con delantal"
	path = /obj/item/clothing/suit/apron/overalls
	cost = 1

/datum/gear/suit/medcoat
	display_name = "Indumentaria medica"
	path = /obj/item/clothing/suit

/datum/gear/suit/medcoat/New()
	..()
	gear_tweaks += new/datum/gear_tweak/path/specified_types_args(/obj/item/clothing/suit/storage/toggle/fr_jacket, /obj/item/clothing/suit/storage/toggle/fr_jacket/ems, /obj/item/clothing/suit/surgicalapron)

/datum/gear/suit/trenchcoat
	display_name = "Gabardinas"
	path = /obj/item/clothing/suit
	cost = 3

/datum/gear/suit/trenchcoat/New()
	..()
	var/trenchcoats = list()
	trenchcoats += /obj/item/clothing/suit/storage/det_trench
	trenchcoats += /obj/item/clothing/suit/storage/det_trench/grey
	trenchcoats += /obj/item/clothing/suit/leathercoat
	gear_tweaks += new/datum/gear_tweak/path/specified_types_list(trenchcoats)
