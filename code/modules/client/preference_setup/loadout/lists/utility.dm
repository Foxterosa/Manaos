// "Useful" items - I'm guessing things that might be used at work?
/datum/gear/utility
	sort_category = "Utilidad"
	category = /datum/gear/utility

/datum/gear/utility/briefcase
	display_name = "Maletin"
	path = /obj/item/weapon/storage/briefcase

/datum/gear/utility/clipboard
	display_name = "Portapapeles"
	path = /obj/item/weapon/material/clipboard

/datum/gear/utility/folder
	display_name = "Carpeta"
	path = /obj/item/weapon/folder

/datum/gear/utility/taperecorder
	display_name = "Grabadora"
	path = /obj/item/device/taperecorder

/datum/gear/utility/folder/New()
	..()
	var/folders = list()
	folders["Carpeta azul"] = /obj/item/weapon/folder/blue
	folders["Carpeta gris"] = /obj/item/weapon/folder
	folders["Carpeta roja"] = /obj/item/weapon/folder/red
	folders["Carpeta blanca"] = /obj/item/weapon/folder/white
	folders["Carpeta amarilla"] = /obj/item/weapon/folder/yellow
	gear_tweaks += new/datum/gear_tweak/path(folders)

/datum/gear/utility/paicard
	display_name = "IA personal"
	path = /obj/item/device/paicard

/datum/gear/utility/camera
	display_name = "Camara"
	path = /obj/item/device/camera

/datum/gear/utility/photo_album
	display_name = "Album de fotos"
	path = /obj/item/weapon/storage/photo_album

/datum/gear/utility/film_roll
	display_name = "Rollo de camara"
	path = /obj/item/device/camera_film

/datum/gear/accessory/stethoscope
	display_name = "Estetoscopio (medico)"
	path = /obj/item/clothing/accessory/stethoscope
	cost = 2

/datum/gear/utility/pen
	display_name = "Lapicera multicolor"
	path = /obj/item/weapon/pen/multi
	cost = 2

/datum/gear/utility/fancy
	display_name = "Pluma elegante"
	path = /obj/item/weapon/pen/fancy
	cost = 2

/datum/gear/utility/hand_labeler
	display_name = "Etiquetadora de mano"
	path = /obj/item/weapon/hand_labeler
	cost = 3

/****************
modular computers
****************/

/datum/gear/utility/cheaptablet
	display_name = "Tablet barata"
	path = /obj/item/modular_computer/tablet/preset/custom_loadout/cheap
	cost = 2

/datum/gear/utility/normaltablet
	display_name = "Tablet avanzada"
	path = /obj/item/modular_computer/tablet/preset/custom_loadout/advanced
	cost = 3

/datum/gear/utility/cheaplaptop
	display_name = "Portatil barato"
	path = /obj/item/modular_computer/laptop/preset/custom_loadout/cheap
	cost = 3

/datum/gear/utility/normallaptop
	display_name = "Portatil avanzado"
	path = /obj/item/modular_computer/laptop/preset/custom_loadout/advanced
	cost = 4

/datum/gear/utility/instrument
	display_name = "Instrumentos Varios"
	description = "Un instrumento para crear musica hermosa. Talento no incluido."
	path = /obj/item/device/synthesized_instrument
	cost = 4

/datum/gear/utility/instrument/New()
	..()
	var/instruments = list()
	instruments["Guitarra"] = /obj/item/device/synthesized_instrument/guitar
	instruments["Guitarra electrica"] = /obj/item/device/synthesized_instrument/guitar/multi
	instruments["Sintetizador"] = /obj/item/device/synthesized_instrument/synthesizer
	instruments["Trompeta"] = /obj/item/device/synthesized_instrument/trumpet
	instruments["Violin"] = /obj/item/device/synthesized_instrument/violin
	gear_tweaks += new/datum/gear_tweak/path(instruments)