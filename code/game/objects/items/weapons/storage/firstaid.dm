/* First aid storage
 * Contains:
 *		First Aid Kits
 * 		Pill Bottles
 */

/*
 * First Aid Kits
 */
/obj/item/weapon/storage/firstaid
	name = "botiquin de primeros auxilios"
	desc = "Es un botiquin medico de emergencia para esos abucheos graves."
	icon_state = "firstaid"
	throw_speed = 2
	throw_range = 8
	max_w_class = ITEM_SIZE_SMALL
	max_storage_space = DEFAULT_BOX_STORAGE
	use_sound = 'sound/effects/storage/box.ogg'

/obj/item/weapon/storage/firstaid/empty
	icon_state = "firstaid"
	item_state = "firstaid"
	name = "botiquin (empty)"

/obj/item/weapon/storage/firstaid/regular
	icon_state = "firstaid"
	item_state = "firstaid"

	startswith = list(
		/obj/item/stack/medical/bruise_pack = 2,
		/obj/item/stack/medical/ointment = 2,
		/obj/item/device/scanner/health,
		/obj/item/weapon/storage/pill_bottle/paracetamol,
		/obj/item/stack/medical/splint
		)

/obj/item/weapon/storage/firstaid/trauma
	name = "botiquin para traumas"
	desc = "Es un botiquin medico de emergencia para cuando las personas traen armas balisticas a una pelea con laser."
	icon_state = "trauma"
	item_state = "trauma"

	startswith = list(
		/obj/item/weapon/storage/med_pouch/trauma = 4
		)

/obj/item/weapon/storage/firstaid/fire
	name = "botiquin para quemaduras"
	desc = "Es un botiquin medico de emergencia para los que les encanta jugar con laser."
	icon_state = "ointment"
	item_state = "ointment"

	startswith = list(
		/obj/item/weapon/storage/med_pouch/burn = 4
		)

/obj/item/weapon/storage/firstaid/toxin
	name = "botiquin anti-toxinas"
	desc = "Se usa para tratar cuando tiene una gran cantidad de toxinas en su cuerpo."
	icon_state = "antitoxin"
	item_state = "antitoxin"

	startswith = list(
		/obj/item/weapon/storage/med_pouch/toxin = 4
		)

/obj/item/weapon/storage/firstaid/o2
	name = "botiquin para privacion de o2"
	desc = "Una caja llena de golosinas de oxigeno."
	icon_state = "o2"
	item_state = "o2"

	startswith = list(
		/obj/item/weapon/storage/med_pouch/oxyloss = 4
		)

/obj/item/weapon/storage/firstaid/adv
	name = "botiquin de primeros auxilios avanzado"
	desc = "Contiene tratamientos medicos avanzados."
	icon_state = "purplefirstaid"
	item_state = "purplefirstaid"

	startswith = list(
		/obj/item/weapon/storage/pill_bottle/assorted,
		/obj/item/stack/medical/advanced/bruise_pack = 3,
		/obj/item/stack/medical/advanced/ointment = 2,
		/obj/item/stack/medical/splint
		)

/obj/item/weapon/storage/firstaid/combat
	name = "botiquin de combate"
	desc = "Contiene tratamientos medicos avanzados."
	icon_state = "bezerk"
	item_state = "bezerk"

	startswith = list(
		/obj/item/weapon/storage/pill_bottle/bicaridine,
		/obj/item/weapon/storage/pill_bottle/dermaline,
		/obj/item/weapon/storage/pill_bottle/dexalin_plus,
		/obj/item/weapon/storage/pill_bottle/dylovene,
		/obj/item/weapon/storage/pill_bottle/tramadol,
		/obj/item/weapon/storage/pill_bottle/spaceacillin,
		/obj/item/stack/medical/splint,
		)

/obj/item/weapon/storage/firstaid/stab
	name = "botiquin de estabilizacion"
	desc = "Contiene un poco de todo."
	icon_state = "stabfirstaid"
	item_state = "stabfirstaid"

	startswith = list(
		/obj/item/weapon/storage/med_pouch/trauma,
		/obj/item/weapon/storage/med_pouch/burn,
		/obj/item/weapon/storage/med_pouch/oxyloss,
		/obj/item/weapon/storage/med_pouch/toxin,
		/obj/item/weapon/storage/med_pouch/radiation,
		)

/obj/item/weapon/storage/firstaid/surgery
	name = "kit de cirugia"
	desc = "Contiene herramientas para cirugia. Tiene un ajuste de espuma preciso para un transporte seguro y esteriliza automaticamente el contenido entre usos."
	icon_state = "surgerykit"
	item_state = "firstaid-surgery"

	storage_slots = 14
	max_w_class = ITEM_SIZE_NORMAL
	max_storage_space = null
	use_sound = 'sound/effects/storage/briefcase.ogg'

	can_hold = list(
		/obj/item/weapon/bonesetter,
		/obj/item/weapon/cautery,
		/obj/item/weapon/circular_saw,
		/obj/item/weapon/hemostat,
		/obj/item/weapon/retractor,
		/obj/item/weapon/scalpel,
		/obj/item/weapon/surgicaldrill,
		/obj/item/weapon/bonegel,
		/obj/item/weapon/FixOVein,
		/obj/item/stack/medical/advanced/bruise_pack,
		/obj/item/stack/nanopaste
		)

	startswith = list(
		/obj/item/weapon/bonesetter,
		/obj/item/weapon/cautery,
		/obj/item/weapon/circular_saw,
		/obj/item/weapon/hemostat,
		/obj/item/weapon/retractor,
		/obj/item/weapon/scalpel,
		/obj/item/weapon/surgicaldrill,
		/obj/item/weapon/bonegel,
		/obj/item/weapon/FixOVein,
		/obj/item/stack/medical/advanced/bruise_pack,
		)

/obj/item/weapon/storage/firstaid/rad
	name = "botiquin anti-radiacion"
	desc = "Es un botiquin medico de emergencia para cuando las personas ignoran a la IA sobre la radiacion."
	icon_state = "radaid"
	item_state = "radaid"

	startswith = list(
		/obj/item/weapon/storage/med_pouch/radiation = 4
		)

/*
 * Pill Bottles
 */
/obj/item/weapon/storage/pill_bottle
	name = "bote de pastillas"
	desc = "Es un recipiente hermetico para almacenar medicamentos."
	icon_state = "pill_canister"
	icon = 'icons/obj/chemical.dmi'
	item_state = "contsolid"
	w_class = ITEM_SIZE_SMALL
	max_w_class = ITEM_SIZE_TINY
	max_storage_space = 21
	can_hold = list(/obj/item/weapon/reagent_containers/pill,/obj/item/weapon/dice,/obj/item/weapon/paper)
	allow_quick_gather = 1
	use_to_pickup = 1
	use_sound = 'sound/effects/storage/pillbottle.ogg'
	matter = list(MATERIAL_PLASTIC = 250)
	var/wrapper_color
	var/label

/obj/item/weapon/storage/pill_bottle/afterattack(mob/living/target, mob/living/user, proximity_flag)
	if(!proximity_flag || !istype(target) || target != user)
		return 1
	if(!contents.len)
		to_chat(user, "<span class='warning'>Esta vacio!</span>")
		return 1
	var/zone = user.zone_sel.selecting
	if(zone == BP_MOUTH && target.can_eat())
		user.visible_message("<span class='notice'>[user] saca una pildora del [src.name].</span>")
		playsound(get_turf(src), 'sound/effects/peelz.ogg', 50)
		var/list/peelz = filter_list(contents,/obj/item/weapon/reagent_containers/pill/)
		if(peelz.len)
			var/obj/item/weapon/reagent_containers/pill/P = pick(peelz)
			remove_from_storage(P)
			P.attack(target,user)
			return 1

/obj/item/weapon/storage/pill_bottle/attack_self(mob/living/user)
	if(user.get_inactive_hand())
		to_chat(user, "<span class='notice'>Necesitas una mano vacia para tomar una pastilla.</span>")
		return
	if(contents.len)
		var/obj/item/I = contents[1]
		if(!remove_from_storage(I,user))
			return
		if(user.put_in_inactive_hand(I))
			to_chat(user, "<span class='notice'>Tomas una pastilla del bote.</span>")
			if(iscarbon(user))
				var/mob/living/carbon/C = user
				C.swap_hand()
		else
			I.dropInto(loc)
			to_chat(user, "<span class='notice'>Buscas con el [src.name] y suelta la pastilla en el piso.</span>")
	else
		to_chat(user, "<span class='warning'>El [src.name] esta vacio!.</span>")


/obj/item/weapon/storage/pill_bottle/Initialize()
	. = ..()
	update_icon()

/obj/item/weapon/storage/pill_bottle/on_update_icon()
	overlays.Cut()
	if(wrapper_color)
		var/image/I = image(icon, "pillbottle_wrap")
		I.color = wrapper_color
		overlays += I

/obj/item/weapon/storage/pill_bottle/antitox
	name = "bote de pastillas (Dylovene)"
	desc = "Contiene pastillas usadas para tratar toxinas."

	startswith = list(/obj/item/weapon/reagent_containers/pill/antitox = 21)
	wrapper_color = COLOR_GREEN

/obj/item/weapon/storage/pill_bottle/bicaridine
	name = "bote de pastillas (Bicaridine)"
	desc = "Contiene pastillas para tratar danos fisicos."

	startswith = list(/obj/item/weapon/reagent_containers/pill/bicaridine = 21)
	wrapper_color = COLOR_MAROON

/obj/item/weapon/storage/pill_bottle/dexalin_plus
	name = "bote de pastillas (Dexalin Plus)"
	desc = "Contiene pastillas para tratar casos extremos de privacion de oxigeno."

	startswith = list(/obj/item/weapon/reagent_containers/pill/dexalin_plus = 14)
	wrapper_color = COLOR_CYAN_BLUE

/obj/item/weapon/storage/pill_bottle/dexalin
	name = "bote de pastillas (Dexalin)"
	desc = "Contiene pastillas para tratar casos de privacion de oxigeno."

	startswith = list(/obj/item/weapon/reagent_containers/pill/dexalin = 21)
	wrapper_color = COLOR_LIGHT_CYAN

/obj/item/weapon/storage/pill_bottle/dermaline
	name = "bote de pastillas (Dermaline)"
	desc = "Contiene pastillas para tratar quemaduras."

	startswith = list(/obj/item/weapon/reagent_containers/pill/dermaline = 14)
	wrapper_color = "#e8d131"

/obj/item/weapon/storage/pill_bottle/dylovene
	name = "bote de pastillas (Dylovene)"
	desc = "Contiene pastillas para tratar toxinas en la sangre."

	startswith = list(/obj/item/weapon/reagent_containers/pill/dylovene = 21)
	wrapper_color = COLOR_GREEN

/obj/item/weapon/storage/pill_bottle/inaprovaline
	name = "bote de pastillas (Inaprovaline)"
	desc = "Contiene pastillas utilizadas para estabilizar pacientes."

	startswith = list(/obj/item/weapon/reagent_containers/pill/inaprovaline = 21)
	wrapper_color = COLOR_PALE_BLUE_GRAY

/obj/item/weapon/storage/pill_bottle/kelotane
	name = "bote de pastillas (Kelotane)"
	desc = "Contiene pastillas usadas para tratar quemaduras."

	startswith = list(/obj/item/weapon/reagent_containers/pill/kelotane = 21)
	wrapper_color = COLOR_SUN

/obj/item/weapon/storage/pill_bottle/spaceacillin
	name = "bote de pastillas (Spaceacillin)"
	desc = "Un antibiotico theta-lactamico. Eficaz contra muchas enfermedades que probablemente se encuentren en el espacio."

	startswith = list(/obj/item/weapon/reagent_containers/pill/spaceacillin = 14)
	wrapper_color = COLOR_PALE_GREEN_GRAY

/obj/item/weapon/storage/pill_bottle/tramadol
	name = "bote de pastillas (Tramadol)"
	desc = "Contiene pastillas usadas para contener el dolor."

	startswith = list(/obj/item/weapon/reagent_containers/pill/tramadol = 14)
	wrapper_color = COLOR_PURPLE_GRAY

//Baycode specific Psychiatry pills.
/obj/item/weapon/storage/pill_bottle/citalopram
	name = "bote de pastillas (Citalopram)"
	desc = "Antidepresivo. Para uso en personas que sufren de depresion o ansiedad. 15u dosis por pastilla."

	startswith = list(/obj/item/weapon/reagent_containers/pill/citalopram = 21)
	wrapper_color = COLOR_GRAY

/obj/item/weapon/storage/pill_bottle/methylphenidate
	name = "bote de pastillas (Methylphenidate)"
	desc = "Estimulante mental. Para uso en personas que padecen TDAH o problemas generales de concentración. 15u dosis por pastilla."

	startswith = list(/obj/item/weapon/reagent_containers/pill/methylphenidate = 21)
	wrapper_color = COLOR_GRAY

/obj/item/weapon/storage/pill_bottle/paroxetine
	name = "bote de pastillas (Paroxetine)"
	desc = "Antidepresivo de alta resistencia. Solo para uso en depresion severa. 10u dosis por pastilla. <span class='warning'>ADVERTENCIA: Los efectos secundarios pueden incluir alucinaciones.</span>"

	startswith = list(/obj/item/weapon/reagent_containers/pill/paroxetine = 14)
	wrapper_color = COLOR_GRAY

/obj/item/weapon/storage/pill_bottle/antidexafen
	name = "bote de pastillas (Medicina para el resfriado)"
	desc = "Medicina para el resfriado todo en uno. 15u dosis por pastilla. Seguro para bebes como tu!"

	startswith = list(/obj/item/weapon/reagent_containers/pill/antidexafen = 21)
	wrapper_color = COLOR_VIOLET

/obj/item/weapon/storage/pill_bottle/paracetamol
	name = "bote de pastillas (Paracetamol)"
	desc = "Analgesico suave, tambien conocido como Tylenol. No solucionara la causa de su dolor de cabeza (a diferencia del cianuro), pero podria hacerlo soportable."

	startswith = list(/obj/item/weapon/reagent_containers/pill/paracetamol = 21)
	wrapper_color = "#a2819e"

/obj/item/weapon/storage/pill_bottle/assorted
	name = "bote de pastillas (Variadas)"
	desc = "Comunmente encontrado en paramedicos, estas botellas de pildoras surtidas contienen todos los elementos basicos."

	startswith = list(
			/obj/item/weapon/reagent_containers/pill/inaprovaline = 6,
			/obj/item/weapon/reagent_containers/pill/dylovene = 6,
			/obj/item/weapon/reagent_containers/pill/sugariron = 2,
			/obj/item/weapon/reagent_containers/pill/tramadol = 2,
			/obj/item/weapon/reagent_containers/pill/dexalin = 2,
			/obj/item/weapon/reagent_containers/pill/kelotane = 2,
			/obj/item/weapon/reagent_containers/pill/hyronalin
		)
