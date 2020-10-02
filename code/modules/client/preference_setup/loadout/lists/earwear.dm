// Stuff worn on the ears. Items here go in the "ears" sort_category but they must not use
// the slot_r_ear or slot_l_ear as the slot, or else players will spawn with no headset.
/datum/gear/ears
	display_name = "Orejeras"
	path = /obj/item/clothing/ears/earmuffs
	sort_category = "Implementos y Accesorios de Oreja"

/datum/gear/headphones
	display_name = "Auriculares"
	path = /obj/item/clothing/ears/headphones
	sort_category = "Implementos y Accesorios de Oreja"

/datum/gear/earrings
	display_name = "Pendientes"
	path = /obj/item/clothing/ears/earring
	sort_category = "Implementos y Accesorios de Oreja"

/datum/gear/earrings/New()
	..()
	var/earrings = list()
	earrings["Tachon de perla"] = /obj/item/clothing/ears/earring/stud
	earrings["Tachon de cristal"] = /obj/item/clothing/ears/earring/stud/glass
	earrings["Tachon de madera"] = /obj/item/clothing/ears/earring/stud/wood
	earrings["Tachon de hierro"] = /obj/item/clothing/ears/earring/stud/iron
	earrings["Tachon de acero"] = /obj/item/clothing/ears/earring/stud/steel
	earrings["Tachon de plata"] = /obj/item/clothing/ears/earring/stud/silver
	earrings["Tachon de oro"] = /obj/item/clothing/ears/earring/stud/gold
	earrings["Tachon de platino"] = /obj/item/clothing/ears/earring/stud/platinum
	earrings["Tachon de diamante"] = /obj/item/clothing/ears/earring/stud/diamond
	earrings["Pendiente de cristal"] = /obj/item/clothing/ears/earring/dangle/glass
	earrings["Pendiente de madera"] = /obj/item/clothing/ears/earring/dangle/wood
	earrings["Pendiente de hierro"] = /obj/item/clothing/ears/earring/dangle/iron
	earrings["Pendiente de acero"] = /obj/item/clothing/ears/earring/dangle/steel
	earrings["Pendiente de plata"] = /obj/item/clothing/ears/earring/dangle/silver
	earrings["Pendiente de oro"] = /obj/item/clothing/ears/earring/dangle/gold
	earrings["Pendiente de platino"] = /obj/item/clothing/ears/earring/dangle/platinum
	earrings["Pendiente de diamante"] = /obj/item/clothing/ears/earring/dangle/diamond
	gear_tweaks += new/datum/gear_tweak/path(earrings)
