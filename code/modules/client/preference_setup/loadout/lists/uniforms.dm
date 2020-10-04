/datum/gear/uniform
	sort_category = "Uniformes y Ropa Casual"
	slot = slot_w_uniform
	category = /datum/gear/uniform

/datum/gear/uniform/jumpsuit
	display_name = "Jumpsuit, coloreable"
	path = /obj/item/clothing/under/color
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/uniform/shortjumpskirt
	display_name = "Jumpskirt corto, coloreable"
	path = /obj/item/clothing/under/shortjumpskirt
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/uniform/blackjumpshorts
	display_name = "Jumpsuit negro con shorts"
	path = /obj/item/clothing/under/color/blackjumpshorts

/datum/gear/uniform/roboticist_skirt
	display_name = "Falda, robotista"
	path = /obj/item/clothing/under/rank/roboticist/skirt

/datum/gear/uniform/suit
	display_name = "Indumentaria variada"
	path = /obj/item/clothing/under

/datum/gear/uniform/maiddress
	display_name = "Traje de mucama"
	path = /obj/item/clothing/under/maiddress

/datum/gear/uniform/kasumioutfit
	display_name = "Traje de Kasumi"
	path = /obj/item/clothing/under/kasumioutfit

/datum/gear/uniform/jokeroutfit
	display_name = "Traje de Joker"
	path = /obj/item/clothing/under/jokeroutfit

/datum/gear/uniform/jrsuit
	display_name = "Uniforme de Jr"
	path = /obj/item/clothing/under/jrsuit

/datum/gear/uniform/suit/New()
	..()
	var/suits = list()
	suits += /obj/item/clothing/under/sl_suit
	suits += /obj/item/clothing/under/suit_jacket
	suits += /obj/item/clothing/under/lawyer/blue
	suits += /obj/item/clothing/under/suit_jacket/burgundy
	suits += /obj/item/clothing/under/suit_jacket/charcoal
	suits += /obj/item/clothing/under/suit_jacket/checkered
	suits += /obj/item/clothing/under/suit_jacket/really_black
	suits += /obj/item/clothing/under/suit_jacket/female
	suits += /obj/item/clothing/under/gentlesuit
	suits += /obj/item/clothing/under/suit_jacket/navy
	suits += /obj/item/clothing/under/lawyer/oldman
	suits += /obj/item/clothing/under/lawyer/purpsuit
	suits += /obj/item/clothing/under/suit_jacket/red
	suits += /obj/item/clothing/under/lawyer/red
	suits += /obj/item/clothing/under/lawyer/black
	suits += /obj/item/clothing/under/suit_jacket/tan
	suits += /obj/item/clothing/under/scratch
	suits += /obj/item/clothing/under/lawyer/bluesuit
	suits += /obj/item/clothing/under/rank/internalaffairs/plain
	suits += /obj/item/clothing/under/blazer
	suits += /obj/item/clothing/under/blackjumpskirt
	suits += /obj/item/clothing/under/kilt
	suits += /obj/item/clothing/under/dress/dress_hr
	suits += /obj/item/clothing/under/det
	suits += /obj/item/clothing/under/det/black
	suits += /obj/item/clothing/under/det/grey
	gear_tweaks += new/datum/gear_tweak/path/specified_types_list(suits)

/datum/gear/uniform/scrubs
	display_name = "Ropa de cirugia estandar"
	path = /obj/item/clothing/under/rank/medical/scrubs
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/scrubs/custom
	display_name = "Ropa de cirugia, coloreable"
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/uniform/dress
	display_name = "Vestidos varios"
	path = /obj/item/clothing/under

/datum/gear/uniform/dress/New()
	..()
	var/dresses = list()
	dresses += /obj/item/clothing/under/sundress_white
	dresses += /obj/item/clothing/under/dress/dress_fire
	dresses += /obj/item/clothing/under/dress/dress_green
	dresses += /obj/item/clothing/under/dress/dress_orange
	dresses += /obj/item/clothing/under/dress/dress_pink
	dresses += /obj/item/clothing/under/dress/dress_purple
	dresses += /obj/item/clothing/under/sundress
	gear_tweaks += new/datum/gear_tweak/path/specified_types_list(dresses)

/datum/gear/uniform/cheongsam
	display_name = "Cheongsam, coloreable"
	path = /obj/item/clothing/under/cheongsam
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/uniform/abaya
	display_name = "Abaya, coloreable"
	path = /obj/item/clothing/under/abaya
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/uniform/skirt
	display_name = "Faldas varias"
	path = /obj/item/clothing/under/skirt
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/skirt_c
	display_name = "Falda corta, coloreable"
	path = /obj/item/clothing/under/skirt_c
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/uniform/skirt_c/dress
	display_name = "Vestido simple, coloreable"
	path = /obj/item/clothing/under/skirt_c/dress
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/uniform/casual_pants
	display_name = "Pantalones casuales varios"
	path = /obj/item/clothing/under/casual_pants
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/formal_pants
	display_name = "Pantalones formales varios"
	path = /obj/item/clothing/under/formal_pants
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/formal_pants/custom
	display_name = "Pantalones de traje, coloreables"
	path = /obj/item/clothing/under/formal_pants
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/uniform/formal_pants/baggycustom
	display_name = "Pantalones de traje sueltos, coloreables"
	path = /obj/item/clothing/under/formal_pants/baggy
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/uniform/shorts
	display_name = "Shorts varios"
	path = /obj/item/clothing/under/shorts/jeans
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/shorts/custom
	display_name = "Shorts atleticos, coloreables"
	path = /obj/item/clothing/under/shorts/
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/uniform/turtleneck
	display_name = "Sueter, coloreable"
	path = /obj/item/clothing/under/rank/psych/turtleneck/sweater
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/uniform/corporate
	display_name = "Uniformes corporativos varios"
	path = /obj/item/clothing/under

/datum/gear/uniform/corporate/New()
	..()
	var/corps = list()
	corps += /obj/item/clothing/under/rank/scientist/nanotrasen
	corps += /obj/item/clothing/under/rank/scientist/heph
	corps += /obj/item/clothing/under/rank/scientist/zeng
	corps += /obj/item/clothing/under/mbill
	corps += /obj/item/clothing/under/saare
	corps += /obj/item/clothing/under/aether
	corps += /obj/item/clothing/under/hephaestus
	corps += /obj/item/clothing/under/pcrc
	corps += /obj/item/clothing/under/pcrcsuit
	corps += /obj/item/clothing/under/wardt
	corps += /obj/item/clothing/under/grayson
	corps += /obj/item/clothing/under/focal
	corps += /obj/item/clothing/under/rank/ntwork
	corps += /obj/item/clothing/under/morpheus
	corps += /obj/item/clothing/under/skinner
	corps += /obj/item/clothing/under/dais
	gear_tweaks += new/datum/gear_tweak/path/specified_types_list(corps)

/datum/gear/uniform/corp_exec
	display_name = "Uniforme corporativo de Investigador Senior"
	path = /obj/item/clothing/under/rank/scientist/executive
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/corp_overalls
	display_name = "Overoles corporativos"
	path = /obj/item/clothing/under/rank/ntwork
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/corp_flight
	display_name = "Trajes de piloto corporativos"
	path = /obj/item/clothing/under/rank/ntpilot
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/corp_exec_jacket
	display_name = "Trajes de liason corporativos"
	path = /obj/item/clothing/under/suit_jacket/corp
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/sterile
	display_name = "jumpsuit esteril"
	path = /obj/item/clothing/under/sterile

/datum/gear/uniform/hazard
	display_name = "jumpsuit de peligro quimico"
	path = /obj/item/clothing/under/hazard

/datum/gear/uniform/frontier
	display_name = "Ropa de frontera"
	path = /obj/item/clothing/under/frontier

/datum/gear/uniform/redsuit
	display_name = "Traje rojo elegante, femenino"
	path = /obj/item/clothing/under/redsuit
	cost = 2

/datum/gear/uniform/redsuitskirt
	display_name = "Traje rojo elegante con falda"
	path = /obj/item/clothing/under/redsuitskirt
	cost = 2

/datum/gear/uniform/camosuit
	display_name = "Traje camuflado de Marine"
	path = /obj/item/clothing/under/camosuit
	cost = 2

/datum/gear/uniform/camoshirt
	display_name = "Traje camuflado de Marine, con remera"
	path = /obj/item/clothing/under/camoshirt
	cost = 2
