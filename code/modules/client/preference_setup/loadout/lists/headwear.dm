/datum/gear/head
	sort_category = "Sombreros y Accesorios de Cabeza"
	slot = slot_head
	category = /datum/gear/head
	banned_species = list(SPECIES_PLASMASANS)

/datum/gear/head/beret
	display_name = "Boina"
	path = /obj/item/clothing/head/beret/plaincolor
	flags = GEAR_HAS_COLOR_SELECTION
	description = "Una boina simple de color liso. Esta no tiene ningun emblema o insignia."

/datum/gear/head/bandana
	display_name = "Bandanas"
	path = /obj/item/clothing

/datum/gear/head/bandana/New()
	..()
	gear_tweaks += new/datum/gear_tweak/path/specified_types_list(typesof(/obj/item/clothing/mask/bandana) + typesof(/obj/item/clothing/head/bandana))

/datum/gear/head/beanie
	display_name = "Gorro de lana, coloreable"
	path = /obj/item/clothing/head/beanie
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/head/bow
	display_name = "Lazo para pelo, coloreable"
	path = /obj/item/clothing/head/hairflower/bow
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/head/flat_cap
	display_name = "Gorra plana, coloreable"
	path = /obj/item/clothing/head/flatcap
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/head/cap
	display_name = "Gorras varias"
	path = /obj/item/clothing/head

/datum/gear/head/cap/New()
	..()
	var/caps = list()
	caps["Gorra negra"] = /obj/item/clothing/head/soft/black
	caps["Gorra azul"] = /obj/item/clothing/head/soft/blue
	caps["Gorra verde"] = /obj/item/clothing/head/soft/green
	caps["Gorra gris"] = /obj/item/clothing/head/soft/grey
	caps["Gorra de cartero"] = /obj/item/clothing/head/mailman
	caps["Gorra naranja"] = /obj/item/clothing/head/soft/orange
	caps["Gorra purpura"] = /obj/item/clothing/head/soft/purple
	caps["Gorra arcoiris"] = /obj/item/clothing/head/soft/rainbow
	caps["Gorra roja"] = /obj/item/clothing/head/soft/red
	caps["Gorra blanca"] = /obj/item/clothing/head/soft/mime
	caps["Gorra amarilla"] = /obj/item/clothing/head/soft/yellow
	caps["Gorra de Major Bill"] = /obj/item/clothing/head/soft/mbill
	gear_tweaks += new/datum/gear_tweak/path(caps)

/datum/gear/head/hairflower
	display_name = "Horquilla de flor"
	path = /obj/item/clothing/head/hairflower

/datum/gear/head/hairflower/New()
	..()
	var/pins = list()
	pins["Horquilla azul"] = /obj/item/clothing/head/hairflower/blue
	pins["Horquilla rosa"] = /obj/item/clothing/head/hairflower/pink
	pins["Horquilla roja"] = /obj/item/clothing/head/hairflower
	pins["Horquilla amarilla"] = /obj/item/clothing/head/hairflower/yellow
	gear_tweaks += new/datum/gear_tweak/path(pins)

/datum/gear/head/hardhat
	display_name = "Cascos de construccion"
	path = /obj/item/clothing/head/hardhat
	cost = 2

/datum/gear/head/hardhat/New()
	..()
	var/hardhats = list()
	hardhats["Casco azul"] = /obj/item/clothing/head/hardhat/dblue
	hardhats["Casco naranja"] = /obj/item/clothing/head/hardhat/orange
	hardhats["Casco rojo"] = /obj/item/clothing/head/hardhat/red
	hardhats["Casco liviano de control de daño"] = /obj/item/clothing/head/hardhat/EMS/DC_light
	hardhats["Casco de la Oficina de Gestion de Emergencias"] = /obj/item/clothing/head/hardhat/damage_control/EMB
	hardhats["Casco rojo de la Oficina de Gestion de Emergencias"] = /obj/item/clothing/head/hardhat/damage_control/EMB_Ancient
	hardhats["Casco amarillo de la Oficina de Gestion de Emergencias"] = /obj/item/clothing/head/hardhat/damage_control/EMB_Ancient/yellow
	hardhats["Casco blanco de la Oficina de Gestion de Emergencias"] = /obj/item/clothing/head/hardhat/damage_control/EMB_Ancient/white
	hardhats["Casco viejo de autoproteccion"] = /obj/item/clothing/head/hardhat/self_protection/old
	gear_tweaks += new/datum/gear_tweak/path(hardhats)

/datum/gear/head/formalhat
	display_name = "Sombreros formales"
	path = /obj/item/clothing/head

/datum/gear/head/formalhat/New()
	..()
	var/formalhats = list()
	formalhats["Sombrero de barquero"] = /obj/item/clothing/head/boaterhat
	formalhats["Bombin"] = /obj/item/clothing/head/bowler
	formalhats["Fedora"] = /obj/item/clothing/head/fedora //m'lady
	formalhats["Trilby de pluma"] = /obj/item/clothing/head/feathertrilby
	formalhats["Fez"] = /obj/item/clothing/head/fez
	formalhats["Sombrero de copa"] = /obj/item/clothing/head/that
	formalhats["Fedora marron"] = /obj/item/clothing/head/det
	formalhats["Fedora gris"] = /obj/item/clothing/head/det/grey
	gear_tweaks += new/datum/gear_tweak/path(formalhats)

/datum/gear/head/informalhat
	display_name = "Sombreros casuales"
	path = /obj/item/clothing/head

/datum/gear/head/informalhat/New()
	..()
	var/informalhats = list()
	informalhats["Sombrero cowboy"] = /obj/item/clothing/head/cowboy_hat
	informalhats["Ushanka"] = /obj/item/clothing/head/ushanka
	gear_tweaks += new/datum/gear_tweak/path(informalhats)

/datum/gear/head/hijab
	display_name = "Hijab, coloreable"
	path = /obj/item/clothing/head/hijab
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/head/kippa
	display_name = "Kippa, coloreable"
	path = /obj/item/clothing/head/kippa
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/head/turban
	display_name = "Turbante, coloreable"
	path = /obj/item/clothing/head/turban
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/head/taqiyah
	display_name = "Taqiyah, coloreable"
	path = /obj/item/clothing/head/taqiyah
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/head/rastacap
	display_name = "Gorro de rastafari"
	path = /obj/item/clothing/head/rastacap

/datum/gear/head/surgical
	display_name = "Gorras estandar de cirugia"
	path = /obj/item/clothing/head/surgery
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/head/surgical/custom
	display_name = "Gorra de cirugia, coloreable"
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/head/welding
	display_name = "Mascaras de soldar"
	path = /obj/item/clothing/head/welding

/datum/gear/head/welding/New()
	..()
	var/welding_masks = list()
	welding_masks += /obj/item/clothing/head/welding/demon
	welding_masks += /obj/item/clothing/head/welding/engie
	welding_masks += /obj/item/clothing/head/welding/fancy
	welding_masks += /obj/item/clothing/head/welding/knight
	welding_masks += /obj/item/clothing/head/welding/carp
	gear_tweaks += new/datum/gear_tweak/path/specified_types_list(welding_masks)

/datum/gear/head/tankccap
	display_name = "Gorra acolchada"
	path = /obj/item/clothing/head/tank

/datum/gear/tactical/balaclava
	display_name = "Balaclava"
	path = /obj/item/clothing/mask/balaclava
	slot = slot_wear_mask
