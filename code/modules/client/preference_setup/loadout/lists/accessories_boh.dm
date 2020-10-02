/datum/gear/accessory/custom_medal
	display_name = "Medallas customizables"
	description = "Una seleccion de medallas, entregada al personal por sus... teoricamente 'notables' logros."
	path = /obj/item/clothing/accessory/medal
	cost = 2

/datum/gear/accessory/custom_medal/New()
	..()
	var/cmedals = list()
	cmedals["Medalla de hierro"] = /obj/item/clothing/accessory/medal/iron
	cmedals["Medalla de bronce"] = /obj/item/clothing/accessory/medal/bronze
	cmedals["Medalla de plata"] = /obj/item/clothing/accessory/medal/silver
	cmedals["Medalla de oro"] = /obj/item/clothing/accessory/medal/gold
	gear_tweaks += new/datum/gear_tweak/path(cmedals)

/datum/gear/clothing/cloak
	display_name = "Capa, coloreable"
	path = /obj/item/clothing/accessory/cloak
	slot = slot_wear_suit
	flags = GEAR_HAS_COLOR_SELECTION
