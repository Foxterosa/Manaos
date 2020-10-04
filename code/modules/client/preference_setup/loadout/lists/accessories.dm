/datum/gear/accessory
	sort_category = "Accessorios"
	category = /datum/gear/accessory
	slot = slot_tie

/datum/gear/accessory/tie
	display_name = "Corbatas varias"
	path = /obj/item/clothing/accessory

/datum/gear/accessory/tie/New()
	..()
	var/ties = list()
	ties["Corbata azul"] = /obj/item/clothing/accessory/blue
	ties["Corbata roja"] = /obj/item/clothing/accessory/red
	ties["Corbata azul con clip"] = /obj/item/clothing/accessory/blue_clip
	ties["Corbata roja larga"] = /obj/item/clothing/accessory/red_long
	ties["Corbata negra"] = /obj/item/clothing/accessory/black
	ties["Corbata amarilla"] = /obj/item/clothing/accessory/yellow
	ties["Corbata azul marino"] = /obj/item/clothing/accessory/navy
	ties["Corbata horrible"] = /obj/item/clothing/accessory/horrible
	ties["Corbata marron"] = /obj/item/clothing/accessory/brown
	gear_tweaks += new/datum/gear_tweak/path(ties)

/datum/gear/accessory/tie_color
	display_name = "Corbata coloreable"
	path = /obj/item/clothing/accessory
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/accessory/tie_color/New()
	..()
	var/ties = list()
	ties["Corbata"] = /obj/item/clothing/accessory
	ties["Corbata a rayas"] = /obj/item/clothing/accessory/long
	gear_tweaks += new/datum/gear_tweak/path(ties)

/datum/gear/accessory/locket
	display_name = "Relicario"
	path = /obj/item/clothing/accessory/locket

/datum/gear/accessory/necklace
	display_name = "Collar coloreable"
	path = /obj/item/clothing/accessory/necklace
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/accessory/bowtie
	display_name = "Corbatin horrible"
	path = /obj/item/clothing/accessory/bowtie/ugly

/datum/gear/accessory/bowtie/color
	display_name = "Corbatin coloreable"
	path = /obj/item/clothing/accessory/bowtie/color
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/accessory/ntaward
	display_name = "Condecoraciones corporativas"
	description = "Una medalla o liston entregado a personal corporativo por logros importantes."
	path = /obj/item/clothing/accessory/medal
	cost = 4

/datum/gear/accessory/ntaward/New()
	..()
	var/ntawards = list()
	ntawards["Medalla de ciencias"] = /obj/item/clothing/accessory/medal/bronze/nanotrasen
	ntawards["Medalla de servicio distinguido"] = /obj/item/clothing/accessory/medal/silver/nanotrasen
	ntawards["Medalla de comando"] = /obj/item/clothing/accessory/medal/gold/nanotrasen
	gear_tweaks += new/datum/gear_tweak/path(ntawards)

//have to break up armbands to restrict access
/datum/gear/accessory/armband_security
	display_name = "Brazalete de seguridad"
	path = /obj/item/clothing/accessory/armband

/datum/gear/accessory/armband_cargo
	display_name = "Brazalete de cargo"
	path = /obj/item/clothing/accessory/armband/cargo

/datum/gear/accessory/armband_medical
	display_name = "Brazalete de medicina"
	path = /obj/item/clothing/accessory/armband/med

/datum/gear/accessory/armband_emt
	display_name = "Brazalete de paramedico"
	path = /obj/item/clothing/accessory/armband/medgreen
	allowed_roles = list(/datum/job/doctor)

/datum/gear/accessory/armband_engineering
	display_name = "Brazalete de ingenieria"
	path = /obj/item/clothing/accessory/armband/engine

/datum/gear/accessory/armband_hydro
	display_name = "Brazalete de botanica"
	path = /obj/item/clothing/accessory/armband/hydro
	allowed_roles = list(/datum/job/rd, /datum/job/scientist, /datum/job/assistant)

/datum/gear/accessory/armband_nt
	display_name = "Brazalete corporativo"
	path = /obj/item/clothing/accessory/armband/whitered

/datum/gear/accessory/ftupin
	display_name = "Insignia de la Union de Libre Comercio"
	path = /obj/item/clothing/accessory/ftupin

/datum/gear/accessory/chaplaininsignia
	display_name = "Insignia de Capellan"
	path = /obj/item/clothing/accessory/chaplaininsignia
	cost = 1
	allowed_roles = list(/datum/job/chaplain)

/datum/gear/accessory/chaplaininsignia/New()
	..()
	var/insignia = list()
	insignia["Insignia de Capellan (Cristianismo)"] = /obj/item/clothing/accessory/chaplaininsignia
	insignia["Insignia de Capellan (Judaismo)"] = /obj/item/clothing/accessory/chaplaininsignia/judaism
	insignia["Insignia de Capellan (Islam)"] = /obj/item/clothing/accessory/chaplaininsignia/islam
	insignia["Insignia de Capellan (Budismo)"] = /obj/item/clothing/accessory/chaplaininsignia/buddhism
	insignia["Insignia de Capellan (Hinduismo)"] = /obj/item/clothing/accessory/chaplaininsignia/hinduism
	insignia["Insignia de Capellan (Sijismo)"] = /obj/item/clothing/accessory/chaplaininsignia/sikhism
	insignia["Insignia de Capellan (Fe Baha'i)"] = /obj/item/clothing/accessory/chaplaininsignia/bahaifaith
	insignia["Insignia de Capellan (Jainismo)"] = /obj/item/clothing/accessory/chaplaininsignia/jainism
	insignia["Insignia de Capellan (Taoismo)"] = /obj/item/clothing/accessory/chaplaininsignia/taoism
	gear_tweaks += new/datum/gear_tweak/path(insignia)

/datum/gear/accessory/bracelet
	display_name = "Brazalete coloreable"
	path = /obj/item/clothing/accessory/bracelet
	cost = 1
	flags = GEAR_HAS_COLOR_SELECTION
