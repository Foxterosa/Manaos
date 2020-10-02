/datum/gear/cane
	display_name = "Baston"
	path = /obj/item/weapon/cane

/datum/gear/union_card
	display_name = "Membresia de union"
	path = /obj/item/weapon/card/union

/datum/gear/union_card/spawn_on_mob(var/mob/living/carbon/human/H, var/metadata)
	. = ..()
	if(.)
		var/obj/item/weapon/card/union/card = .
		card.signed_by = H.real_name

/datum/gear/dice
	display_name = "Pack de dados"
	path = /obj/item/weapon/storage/pill_bottle/dice

/datum/gear/dice/nerd
	display_name = "Pack de dados (gaming)"
	path = /obj/item/weapon/storage/pill_bottle/dice_nerd

/datum/gear/cards
	display_name = "Baraja de cartas"
	path = /obj/item/weapon/deck/cards

/datum/gear/tarot
	display_name = "Baraja de cartas de tarot"
	path = /obj/item/weapon/deck/tarot

/datum/gear/holder
	display_name = "Sostienecartas"
	path = /obj/item/weapon/deck/holder

/datum/gear/cardemon_pack
	display_name = "Booster pack de Cardemon"
	path = /obj/item/weapon/pack/cardemon

/datum/gear/spaceball_pack
	display_name = "Booster pack de Spaceball"
	path = /obj/item/weapon/pack/spaceball

/datum/gear/flask
	display_name = "Petaca"
	path = /obj/item/weapon/reagent_containers/food/drinks/flask/barflask

/datum/gear/flask/New()
	..()
	gear_tweaks += new/datum/gear_tweak/reagents(lunchables_ethanol_reagents())

/datum/gear/vacflask
	display_name = "Petaca de vacio"
	path = /obj/item/weapon/reagent_containers/food/drinks/flask/vacuumflask

/datum/gear/vacflask/New()
	..()
	gear_tweaks += new/datum/gear_tweak/reagents(lunchables_drink_reagents())

/datum/gear/coffeecup
	display_name = "Taza de cafe"
	path = /obj/item/weapon/reagent_containers/food/drinks/glass2/coffeecup
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/knife
	display_name = "Cuchillo plegable"
	path = /obj/item/weapon/material/knife/folding
	cost = 3

/datum/gear/knife_wood
	display_name = "Cuchillo campesino"
	path = /obj/item/weapon/material/knife/folding/wood
	cost = 3

/datum/gear/knife_tacticool
	display_name = "Cuchillo plegable tactico"
	path = /obj/item/weapon/material/knife/folding/tacticool
	cost = 3

/datum/gear/lunchbox
	display_name = "Lunchera"
	description = "Una adorable lunchera."
	cost = 2
	path = /obj/item/weapon/storage/lunchbox

/datum/gear/lunchbox/New()
	..()
	var/list/lunchboxes = list()
	for(var/lunchbox_type in typesof(/obj/item/weapon/storage/lunchbox))
		var/obj/item/weapon/storage/lunchbox/lunchbox = lunchbox_type
		if(!initial(lunchbox.filled))
			lunchboxes[initial(lunchbox.name)] = lunchbox_type
	gear_tweaks += new/datum/gear_tweak/path(lunchboxes)
	gear_tweaks += new/datum/gear_tweak/contents(lunchables_lunches(), lunchables_snacks(), lunchables_drinks())

/datum/gear/mre
	display_name = "MREs varios"
	description = "Una bolsa sellada al vacio conteniendo un dia de nutrientes para un adulto en situaciones agotadoras."
	cost = 2
	path = /obj/item/weapon/storage/mre

/datum/gear/mre/New()
	..()
	var/mre = list()
	mre["MRE estandar"] = /obj/item/weapon/storage/mre/random
	mre["MRE vegano"] = /obj/item/weapon/storage/mre/menu9
	mre["MRE de proteina"] = /obj/item/weapon/storage/mre/menu10
	gear_tweaks += new /datum/gear_tweak/path(mre)

/datum/gear/towel
	display_name = "toalla"
	path = /obj/item/weapon/towel
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/plush_toy
	display_name = "Peluche"
	description = "Un peluche. Abrazar a discrecion."
	path = /obj/item/toy/plushie

/datum/gear/plush_toy/New()
	..()
	var/plushes = list()
	plushes["Peluche de ninfa de Diona"] = /obj/item/toy/plushie/nymph
	plushes["Peluche de raton"] = /obj/item/toy/plushie/mouse
	plushes["Peluche de gatito"] = /obj/item/toy/plushie/kitten
	plushes["Peluche de lagarto"] = /obj/item/toy/plushie/lizard
	plushes["Peluche de arana"] = /obj/item/toy/plushie/spider
	plushes["Peluche de farwa"] = /obj/item/toy/plushie/farwa
	plushes["Peluche de kobold"] = /obj/item/toy/plushie/kobold
	gear_tweaks += new /datum/gear_tweak/path(plushes)

/datum/gear/workvisa
	display_name = "Visa de trabajo"
	description = "Una visa de trabajo entregada por el Gobierno Central Solar para propositos laborales."
	path = /obj/item/weapon/paper/workvisa

/datum/gear/mirror/
	display_name = "Espejo de mano"
	path = /obj/item/weapon/mirror

/datum/gear/lipstick
	display_name = "Lapices labiales"
	path = /obj/item/weapon/lipstick
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/comb
	display_name = "Peine de plastico"
	path = /obj/item/weapon/haircomb
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/mask
	display_name = "Mascarilla esteril"
	path = /obj/item/clothing/mask/surgical
	cost = 2

/datum/gear/smokingpipe
	display_name = "Pipa de fumar"
	path = /obj/item/clothing/mask/smokable/pipe

/datum/gear/cornpipe
	display_name = "Pipa de maiz"
	path = /obj/item/clothing/mask/smokable/pipe/cobpipe

/datum/gear/matchbook
	display_name = "Fosforos"
	path = /obj/item/weapon/storage/box/matches

/datum/gear/lighter
	display_name = "Encendedor barato"
	path = /obj/item/weapon/flame/lighter

/datum/gear/lighter/New()
	..()
	var/colours = list()
	colours["random"] = /obj/item/weapon/flame/lighter/random
	colours["Rojo"] = /obj/item/weapon/flame/lighter/red
	colours["Amarillo"] = /obj/item/weapon/flame/lighter/yellow
	colours["Cian"] = /obj/item/weapon/flame/lighter/cyan
	colours["Verde"] = /obj/item/weapon/flame/lighter/green
	colours["Rosa"] = /obj/item/weapon/flame/lighter/pink
	gear_tweaks += new/datum/gear_tweak/path(colours)

/datum/gear/zippo
	display_name = "Encendedor Zippo"
	path = /obj/item/weapon/flame/lighter/zippo

/datum/gear/zippo/New()
	..()
	var/colours = list()
	colours["random"] = /obj/item/weapon/flame/lighter/zippo/random
	colours["Plateado"] = /obj/item/weapon/flame/lighter/zippo
	colours["Negro"] = /obj/item/weapon/flame/lighter/zippo/black
	colours["Gris"] = /obj/item/weapon/flame/lighter/zippo/gunmetal
	colours["Bronce"] = /obj/item/weapon/flame/lighter/zippo/bronze
	colours["Magenta"] = /obj/item/weapon/flame/lighter/zippo/pink
	gear_tweaks += new/datum/gear_tweak/path(colours)

/datum/gear/ashtray
	display_name = "Cenicero de plastico"
	path = /obj/item/weapon/material/ashtray/plastic

/datum/gear/cigars
	display_name = "Caja de cigarros"
	path = /obj/item/weapon/storage/fancy/cigar
	cost = 2

/datum/gear/cigar
	display_name = "Cigarro premium"
	path = /obj/item/clothing/mask/smokable/cigarette/cigar

/datum/gear/cigar/New()
	..()
	var/cigar_type = list()
	cigar_type["Cigarro Premium"] = /obj/item/clothing/mask/smokable/cigarette/cigar
	cigar_type["Cohiba Robusto"] = /obj/item/clothing/mask/smokable/cigarette/cigar/cohiba
	gear_tweaks += new/datum/gear_tweak/path(cigar_type)

/datum/gear/ecig
	display_name = "Cigarrillo electronico"
	path = /obj/item/clothing/mask/smokable/ecig/util

/datum/gear/ecig/deluxe
	display_name = "Cigarrillo electronico deluxe"
	path = /obj/item/clothing/mask/smokable/ecig/deluxe
	cost = 2

/datum/gear/bible
	display_name = "Libro sagrado"
	path = /obj/item/weapon/storage/bible
	cost = 2

/datum/gear/bible/New()
	..()
	var/books = list()
	books["Biblia (ajustable)"] = /obj/item/weapon/storage/bible
	books["Biblia"] = /obj/item/weapon/storage/bible/bible
	books["Tanakh"] = /obj/item/weapon/storage/bible/tanakh
	books["Coran"] = /obj/item/weapon/storage/bible/quran
	books["Kitab-i-Aqdas"] = /obj/item/weapon/storage/bible/aqdas
	books["Kojiki"] = /obj/item/weapon/storage/bible/kojiki
	gear_tweaks += new/datum/gear_tweak/path(books)

/datum/gear/swiss
	display_name = "Navaja suiza coloreable"
	path = /obj/item/weapon/material/knife/folding/swiss
	cost = 4
	flags = GEAR_HAS_COLOR_SELECTION


/datum/gear/cross
	display_name = "Cruz"
	path = /obj/item/weapon/material/cross
	cost = 2

/datum/gear/cross/New()
	..()
	var/crosstype = list()
	crosstype["Cruz de madera"] = /obj/item/weapon/material/cross/wood
	crosstype["Cruz de plata"] = /obj/item/weapon/material/cross/silver
	crosstype["Cruz de oro"] = /obj/item/weapon/material/cross/gold
	gear_tweaks += new/datum/gear_tweak/path(crosstype)

/datum/gear/cigarettes //haha copypaste go brrrrrrrr
	display_name = "Paquetes de cigarrillos"
	description = "Una seleccion de paquetes de cigarrillos de varias marcas, cada uno conteniendo 6 cigarrillos. Tiene fuego?"
	cost = 1
	path = /obj/item/weapon/storage/fancy/cigarettes

/datum/gear/cigarettes/New()
	..()
	var/packtype = list()
	packtype["Trans-Stellar Duty-frees"] = /obj/item/weapon/storage/fancy/cigarettes
	packtype["Lucky Stars"] = /obj/item/weapon/storage/fancy/cigarettes/luckystars
	packtype["Jerichos"] = /obj/item/weapon/storage/fancy/cigarettes/jerichos
	packtype["Temperamento Menthols"] = /obj/item/weapon/storage/fancy/cigarettes/menthols
	packtype["Carcinoma Angels"] = /obj/item/weapon/storage/fancy/cigarettes/carcinomas
	packtype["Professional 120's"] = /obj/item/weapon/storage/fancy/cigarettes/professionals
	gear_tweaks += new /datum/gear_tweak/path(packtype)
