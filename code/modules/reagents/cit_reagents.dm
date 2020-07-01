//body bluids
/datum/reagent/drink/semen
	name = "Semen"
	description = "Sperm from some animal. Useless for anything but insemination, really."
	taste_description = "something salty"
	taste_mult = 2 //Not very overpowering flavor
	data = list("donor"=null,"viruses"=null,"donor_DNA"=null,"blood_type"=null,"resistances"=null,"trace_chem"=null,"mind"=null,"ckey"=null,"gender"=null,"real_name"=null)
	reagent_state = LIQUID
	color = "#FFFFFF" // rgb: 255, 255, 255

/datum/reagent/drink/semen/reaction_turf(turf/T, reac_volume)
	if(!istype(T))
		return
	if(reac_volume < 10)
		return

	var/obj/effect/decal/cleanable/semen/S = locate() in T
	if(!S)
		S = new(T)

/obj/effect/decal/cleanable/semen
	name = "semen"
	desc = null
	gender = PLURAL
	icon = 'icons/obj/genitals/effects.dmi'
	icon_state = "semen1"
	random_icon_states = list("semen1", "semen2", "semen3", "semen4")

/obj/effect/decal/cleanable/semen/Initialize(mapload)
	. = ..()

/datum/reagent/drink/femcum
	name = "Female Ejaculate"
	description = "Vaginal lubricant found in most mammals and other animals of similar nature. Where you found this is your own business."
	taste_description = "something with a tang" // wew coders who haven't eaten out a girl.
	taste_mult = 2
	data = list("donor"=null,"viruses"=null,"donor_DNA"=null,"blood_type"=null,"resistances"=null,"trace_chem"=null,"mind"=null,"ckey"=null,"gender"=null,"real_name"=null)
	reagent_state = LIQUID
	color = "#AAAAAA77"

/obj/effect/decal/cleanable/femcum
	name = "female ejaculate"
	desc = null
	gender = PLURAL
	density = FALSE
	icon = 'icons/obj/genitals/effects.dmi'
	icon_state = "fem1"
	random_icon_states = list("fem1", "fem2", "fem3", "fem4")

/obj/effect/decal/cleanable/femcum/Initialize(mapload)
	. = ..()

/datum/reagent/drink/femcum/reaction_turf(turf/T, reac_volume)
	if(!istype(T))
		return
	if(reac_volume < 10)
		return

	var/obj/effect/decal/cleanable/femcum/S = locate() in T
	if(!S)
		S = new(T)
