/datum/gear/gloves
	cost = 1
	slot = slot_gloves
	sort_category = "Guantes y Accesorios de Mano"
	category = /datum/gear/gloves

/datum/gear/gloves/colored
	display_name = "Guantes, coloreables"
	flags = GEAR_HAS_COLOR_SELECTION
	path = /obj/item/clothing/gloves/color

/datum/gear/gloves/latex
	display_name = "Guantes de latex"
	path = /obj/item/clothing/gloves/latex
	cost = 2

/datum/gear/gloves/nitrile
	display_name = "Guantes de nitrilo"
	path = /obj/item/clothing/gloves/latex/nitrile
	cost = 2

/datum/gear/gloves/rainbow
	display_name = "Guantes arcoiris"
	path = /obj/item/clothing/gloves/rainbow

/datum/gear/gloves/evening
	display_name = "Guantes de gala, coloreables"
	path = /obj/item/clothing/gloves/color/evening
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/ring
	display_name = "Anillo"
	path = /obj/item/clothing/ring
	cost = 2

/datum/gear/ring/New()
	..()
	var/ringtype = list()
	ringtype["Anillo CTI"] = /obj/item/clothing/ring/cti
	ringtype["Anillo de la Universidad Mariner"] = /obj/item/clothing/ring/mariner
	ringtype["Anillo de casamiento"] = /obj/item/clothing/ring/engagement
	ringtype["Anillo de sello"] = /obj/item/clothing/ring/seal/signet
	ringtype["Anillo masonico"] = /obj/item/clothing/ring/seal/mason
	ringtype["Anillo de acero"] = /obj/item/clothing/ring/material/steel
	ringtype["Anillo de bronce"] = /obj/item/clothing/ring/material/bronze
	ringtype["Anillo de plata"] = /obj/item/clothing/ring/material/silver
	ringtype["Anillo de oro"] = /obj/item/clothing/ring/material/gold
	ringtype["Anillo de platino"] = /obj/item/clothing/ring/material/platinum
	ringtype["Anillo de cristal"] = /obj/item/clothing/ring/material/glass
	ringtype["Anillo de madera"] = /obj/item/clothing/ring/material/wood
	ringtype["Anillo de plastico"] = /obj/item/clothing/ring/material/plastic
	gear_tweaks += new/datum/gear_tweak/path(ringtype)

/datum/gear/gloves/botany
	display_name = "Guantes de botanica"
	path = /obj/item/clothing/gloves/thick/botany
	cost = 2
	allowed_roles = list(/datum/job/rd, /datum/job/scientist, /datum/job/chef, /datum/job/bartender, /datum/job/assistant)

/datum/gear/gloves/work
	display_name = "Guantes de trabajo"
	path = /obj/item/clothing/gloves/thick
	cost = 2

/datum/gear/gloves/fingerless
	display_name = "Guantes sin dedos, coloreables"
	path = /obj/item/clothing/gloves/fingerless
	flags = GEAR_HAS_COLOR_SELECTION
	cost = 2
