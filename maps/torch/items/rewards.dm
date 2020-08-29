/obj/machinery/vending/medals
	name = "Medalware"
	desc = "A vendor for medals."
	product_ads = "You ever wanted to pretend to be cool?;Hey, tough guy...;Get your medal!"
	icon_state = "medals"
	icon_vend = "medals-vend"
	icon_deny = "medals-deny"
	base_type = /obj/machinery/vending/medals
	req_access = list(access_bridge)//Intended for ranking crew to access.
	products = list(
	/obj/item/clothing/accessory/medal/gold/nanotrasen = 2,
	/obj/item/clothing/accessory/medal/iron/nanotrasen = 2,
	/obj/item/clothing/accessory/medal/silver/marooned_medal = 2,
	/obj/item/clothing/accessory/medal/silver/nanotrasen = 2,
	/obj/item/clothing/accessory/medal/solgov/bronze/heart = 2,
	/obj/item/clothing/accessory/medal/solgov/bronze/sol = 2,
	/obj/item/clothing/accessory/medal/solgov/gold/crest = 2,
	/obj/item/clothing/accessory/medal/solgov/gold/sol = 2,
	/obj/item/clothing/accessory/medal/solgov/gold/star = 2,
	/obj/item/clothing/accessory/medal/solgov/gold/sun = 2,
	/obj/item/clothing/accessory/medal/solgov/iron/star = 2
	)