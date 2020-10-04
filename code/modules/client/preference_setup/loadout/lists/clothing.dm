
/datum/gear/clothing/
	sort_category = "Accesorios Superiores"
	category = /datum/gear/clothing/
	slot = slot_tie

/datum/gear/clothing/flannel
	display_name = "Sueter de franela, coloreable"
	path = /obj/item/clothing/accessory/toggleable/flannel
	slot = slot_tie
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/clothing/scarf
	display_name = "Bufanda"
	path = /obj/item/clothing/accessory/scarf
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/clothing/hawaii
	display_name = "Camisa hawaiiana"
	path = /obj/item/clothing/accessory/toggleable/hawaii

/datum/gear/clothing/hawaii/New()
	..()
	var/list/shirts = list()
	shirts["Camisa hawaiiana azul"] = /obj/item/clothing/accessory/toggleable/hawaii
	shirts["Camisa hawaiiana roja"] = /obj/item/clothing/accessory/toggleable/hawaii/red
	shirts["Camisa hawaiiana random"] = /obj/item/clothing/accessory/toggleable/hawaii/random
	gear_tweaks += new/datum/gear_tweak/path(shirts)

/datum/gear/clothing/suspenders
	display_name = "Tirantes"
	path = /obj/item/clothing/accessory/suspenders

/datum/gear/clothing/wcoat
	display_name = "Chaleco, coloreable"
	path = /obj/item/clothing/accessory/wcoat
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/clothing/zhongshan
	display_name = "Campera zhongshan, coloreable"
	path = /obj/item/clothing/accessory/toggleable/zhongshan
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/clothing/dashiki
	display_name = "Daishikis"
	path = /obj/item/clothing/accessory/dashiki
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/clothing/thawb
	display_name = "Thawb"
	path = /obj/item/clothing/accessory/thawb

/datum/gear/clothing/sherwani
	display_name = "Sherwani, coloreable"
	path = /obj/item/clothing/accessory/sherwani
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/clothing/qipao
	display_name = "Blusa qipao, coloreable"
	path = /obj/item/clothing/accessory/qipao
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/clothing/sweater
	display_name = "Sueter de tortuga, coloreable"
	path = /obj/item/clothing/accessory/sweater
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/clothing/tangzhuang
	display_name = "Campera tangzhuang, coloreable"
	path = /obj/item/clothing/accessory/tangzhuang
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/clothing/redsuit_jacket
	display_name = "Chaqueta de traje, coloreable"
	path = /obj/item/clothing/accessory/toggleable/redsuit_jacket
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/clothing/redsuit_vest
	display_name = "Chaleco de traje, coloreable"
	path = /obj/item/clothing/accessory/toggleable/redsuit_vest
	flags = GEAR_HAS_COLOR_SELECTION