/obj/item/device/scanner/health
	name = "Analizador de salud"
	desc = "Un escaner corporal de mano capaz de analizar los signos vitales de una persona."
	icon_state = "health"
	item_state = "analyzer"
	item_flags = ITEM_FLAG_NO_BLUDGEON
	matter = list(MATERIAL_ALUMINIUM = 200)
	origin_tech = list(TECH_MAGNET = 1, TECH_BIO = 1)
	printout_color = "#deebff"
	var/mode = 1

/obj/item/device/scanner/health/is_valid_scan_target(atom/O)
	return istype(O, /mob/living/carbon/human) || istype(O, /obj/structure/closet/body_bag)

/obj/item/device/scanner/health/scan(atom/A, mob/user)
	scan_data = medical_scan_action(A, user, src, mode)
	playsound(src, 'sound/effects/fastbeep.ogg', 20)

/proc/medical_scan_action(atom/target, mob/living/user, obj/scanner, var/verbose)
	if (!user.IsAdvancedToolUser())
		to_chat(user, "<span class='warning'>No eres lo suficientemente habil para entender este aparato.</span>")
		return

	if ((MUTATION_CLUMSY in user.mutations) && prob(50))
		user.visible_message("<span class='notice'>[user] ejecuta el analizador de salud sobre el suelo.")
		to_chat(user, "<span class='notice'><b>Resultados del escaneo del suelo:</b></span>")
		to_chat(user, "Estado general: saludable</span>")
		return

	var/mob/living/carbon/human/scan_subject = null
	if (istype(target, /mob/living/carbon/human))
		scan_subject = target
	else if (istype(target, /obj/structure/closet/body_bag))
		var/obj/structure/closet/body_bag/B = target
		if(!B.opened)
			var/list/scan_content = list()
			for(var/mob/living/L in B.contents)
				scan_content.Add(L)

			if (scan_content.len == 1)
				for(var/mob/living/carbon/human/L in scan_content)
					scan_subject = L
			else if (scan_content.len > 1)
				to_chat(user, "<span class='warning'>El analizador de salud recoge multiples lecturas dentro de [target], demasiado juntos para escanear correctamente.</span>")
				return
			else
				to_chat(user, "El analizador de salud no detecta a nadie dentro de [target].")
				return

	if(!scan_subject)
		return

	if (scan_subject.isSynthetic())
		to_chat(user, "<span class='warning'>El analizador de salud esta disenado solo para pacientes humanoides organicos.</span>")
		return

	. = medical_scan_results(scan_subject, verbose, user.get_skill_value(SKILL_MEDICAL))
	to_chat(user, "<hr>")
	to_chat(user, .)
	to_chat(user, "<hr>")

/proc/medical_scan_results(var/mob/living/carbon/human/H, var/verbose, var/skill_level = SKILL_DEFAULT)
	. = list()
	var/header = list()
	var/b
	var/endb
	var/dat = list()

	if(skill_level >= SKILL_BASIC)
		header += "<style> .scan_notice{color: #5f94af;}</style>"
		header += "<style> .scan_warning{color: #ff0000; font-style: italic;}</style>"
		header += "<style> .scan_danger{color: #ff0000; font-weight: bold;}</style>"
		header += "<style> .scan_red{color:red}</style>"
		header += "<style> .scan_green{color:green}</style>"
		header += "<style> .scan_blue{color: #5f94af}</style>"
		header += "<style> .scan_orange{color:#ffa500}</style>"
		b		= "<b>"
		endb	= "</b>"

	. += "[b]Resultados de escaneo para [H]:[endb]"

	// Brain activity.
	var/brain_result = "normal"
	if(H.should_have_organ(BP_BRAIN))
		var/obj/item/organ/internal/brain/brain = H.internal_organs_by_name[BP_BRAIN]
		if(!brain || H.stat == DEAD || (H.status_flags & FAKEDEATH))
			brain_result = "<span class='scan_danger'>ninguna, el paciente tiene muerte cerebral</span>"
		else if(H.stat != DEAD)
			if(H.has_brain_worms())
				brain_result = "<span class='scan_danger'>ERROR - patrones de ondas cerebrales aberrantes/desconocidos, se recomienda usar un escaner avanzado</span>"
			else
				if(skill_level < SKILL_BASIC)
					brain_result = "hay movimiento en el grafico"
				else if(istype(brain))
					switch(brain.get_current_damage_threshold())
						if(0)
							brain_result = "normal"
						if(1 to 2)
							brain_result = "<span class='scan_notice'>dano cerebral menor</span>"
						if(3 to 5)
							brain_result = "<span class='scan_warning'>debil</span>"
						if(6 to 8)
							brain_result = "<span class='scan_danger'>extremadamente debil</span>"
						if(9 to INFINITY)
							brain_result = "<span class='scan_danger'>desvanecimiento</span>"
						else
							brain_result = "<span class='scan_danger'>ERROR - falla de hardware</span>"
				else
					brain_result = "<span class='scan_danger'>ERROR - Organo no reconocido</span>"
	else
		brain_result = "<span class='scan_danger'>ERROR - Biologia no estandar</span>"
	dat += "Actividad cerebral: [brain_result]."
	if (H.internal_organs_by_name[BP_STACK])
		dat += "<span class='scan_notice'>El sujeto tiene un implante de enlace neural.(</span>"

	if(H.stat == DEAD || (H.status_flags & FAKEDEATH))
		dat += "<span class='scan_warning'>[b]Hora de muerte:[endb] [time2text(worldtime2stationtime(H.timeofdeath), "hh:mm")]</span>"

	// Pulse rate.
	var/pulse_result = "normal"
	if(H.should_have_organ(BP_HEART))
		if(H.status_flags & FAKEDEATH)
			pulse_result = 0
		else
			pulse_result = H.get_pulse(GETPULSE_TOOL)
		pulse_result = "[pulse_result]lpm"
		if(H.pulse() == PULSE_NONE)
			pulse_result = "<span class='scan_danger'>[pulse_result]</span>"
		else if(H.pulse() < PULSE_NORM)
			pulse_result = "<span class='scan_notice'>[pulse_result]</span>"
		else if(H.pulse() > PULSE_NORM)
			pulse_result = "<span class='scan_warning'>[pulse_result]</span>"
	else
		pulse_result = "<span class='scan_danger'>ERROR - Biologia no estandar</span>"
	dat += "La frecuencia del pulso: [pulse_result]."

	// Blood pressure. Based on the idea of a normal blood pressure being 120 over 80.
	if(H.should_have_organ(BP_HEART))
		if(H.get_blood_volume() <= 70)
			dat += "<span class='scan_danger'>Perdida de sangre severa detectada.</span>"
		var/oxygenation_string = "[H.get_blood_oxygenation()]% oxigenacion de la sangre"
		switch(H.get_blood_oxygenation())
			if(BLOOD_VOLUME_OKAY to BLOOD_VOLUME_SAFE)
				oxygenation_string = "<span class='scan_notice'>[oxygenation_string]</span>"
			if(BLOOD_VOLUME_SURVIVE to BLOOD_VOLUME_OKAY)
				oxygenation_string = "<span class='scan_warning'>[oxygenation_string]</span>"
			if(-(INFINITY) to BLOOD_VOLUME_SURVIVE)
				oxygenation_string = "<span class='scan_danger'>[oxygenation_string]</span>"
		dat += "[b]Precion sanguinea:[endb] [H.get_blood_pressure()] ([oxygenation_string])"
	else
		dat += "[b]Precion sanguinea:[endb] Ninguna"

	// Body temperature.
	dat += "Temperatura corporal: [H.bodytemperature-T0C]&deg;C ([H.bodytemperature*1.8-459.67]&deg;F)"

	// Radiation.
	switch(H.radiation)
		if(-INFINITY to 0)
			dat += "Radiacion no detectada."
		if(1 to 30)
			dat += "<span class='scan_notice'>El paciente muestra rastros menores de exposicion a radiacion.</span>"
		if(31 to 60)
			dat += "<span class='scan_notice'>El paciente sufre de intoxicacion leve por radiacion.</span>"
		if(61 to 90)
			dat += "<span class='scan_warning'>El paciente sufre de intoxicacion por radiacion avanzada.</span>"
		if(91 to 120)
			dat += "<span class='scan_warning'>El paciente sufre de intoxicacion por radiacion severa.</span>"
		if(121 to 240)
			dat += "<span class='scan_danger'>El paciente sufre intoxicación por radiación extrema. Tratamiento inmediato recomendado.</span>"
		if(241 to INFINITY)
			dat += "<span class='scan_danger'>El paciente sufre de intoxicacion aguda por radiacion. Tratamiento inmediato recomendado.</span>"

	// Traumatic shock.
	if(H.is_asystole())
		dat += "<span class='scan_danger'>El paciente sufre un shock cardiovascular. Administrar RCP de inmediato.</span>"
	else if(H.shock_stage > 80)
		dat += "<span class='scan_warning'>El paciente tiene un grave riesgo de sufrir un shock. Alivio del dolor recomendado.</span>"

	// Other general warnings.
	if(skill_level >= SKILL_BASIC)
		if(H.getOxyLoss() > 50)
			dat += "<span class='scan_blue'>[b]Privacion severa de oxigeno detectada.[endb]</span>"
		if(H.getToxLoss() > 50)
			dat += "<span class='scan_green'>[b]Insuficiencia sistemica mayor de organos detectada.[endb]</span>"
	if(H.getFireLoss() > 50)
		dat += "<span class='scan_orange'>[b]Grave dano por quemadura detectado.[endb]</span>"
	if(H.getBruteLoss() > 50)
		dat += "<span class='scan_red'>[b]Dano anatomico severo detectado.[endb]</span>"

	if(skill_level >= SKILL_BASIC)
		for(var/name in H.organs_by_name)
			var/obj/item/organ/external/e = H.organs_by_name[name]
			if(!e)
				continue
			var/limb = e.name
			if(e.status & ORGAN_BROKEN)
				if(((e.name == BP_L_ARM) || (e.name == BP_R_ARM) || (e.name == BP_L_LEG) || (e.name == BP_R_LEG)) && (!e.splinted))
					dat += "<span class='scan_warning'>Fractura no asegurada en [limb] del sujeto. Ferulas recomendadas para el transporte.</span>"
			if(e.has_infected_wound())
				dat += "<span class='scan_warning'>Herida infectada detectada: [limb]. Se recomienda desinfeccion.</span>"

		for(var/name in H.organs_by_name)
			var/obj/item/organ/external/e = H.organs_by_name[name]
			if(e && e.status & ORGAN_BROKEN)
				dat += "<span class='scan_warning'>Fracturas oseas detectadas. Escaner avanzado requerido para la ubicacion.</span>"
				break

		var/found_bleed
		var/found_tendon
		var/found_disloc
		for(var/obj/item/organ/external/e in H.organs)
			if(e)
				if(!found_disloc && e.dislocated == 2)
					dat += "<span class='scan_warning'>Dislocacion detectada. Se requiere un escaner avanzado para la ubicacion.</span>"
					found_disloc = TRUE
				if(!found_bleed && (e.status & ORGAN_ARTERY_CUT))
					dat += "<span class='scan_warning'>Sangrado arterial detectado. Se requiere un escaner avanzado para la ubicacion.</span>"
					found_bleed = TRUE
				if(!found_tendon && (e.status & ORGAN_TENDON_CUT))
					dat += "<span class='scan_warning'>Dano del tendon o ligamento detectado. Se requiere un escaner avanzado para la ubicacion.</span>"
					found_tendon = TRUE
			if(found_disloc && found_bleed && found_tendon)
				break

	. += (skill_level < SKILL_BASIC) ? shuffle(dat) : dat
	dat = list()

	if(verbose)
		// Limb status.
		. += "[b]Dano especifico en extremidades:[endb]"

		var/list/damaged = H.get_damaged_organs(1,1)
		if(damaged.len)
			for(var/obj/item/organ/external/org in damaged)
				var/limb_result = "[capitalize(org.name)][BP_IS_ROBOTIC(org) ? " (Cybernetic)" : ""]:"
				if(org.brute_dam > 0)
					limb_result = "[limb_result] \[<font color = 'red'><b>[get_wound_severity(org.brute_ratio, (org.limb_flags & ORGAN_FLAG_HEALS_OVERKILL))] physical trauma</b></font>\]"
				if(org.burn_dam > 0)
					limb_result = "[limb_result] \[<font color = '#ffa500'><b>[get_wound_severity(org.burn_ratio, (org.limb_flags & ORGAN_FLAG_HEALS_OVERKILL))] burns</b></font>\]"
				if(org.status & ORGAN_BLEEDING)
					limb_result = "[limb_result] \[<span class='scan_danger'>Sangrado</span>\]"
				dat += limb_result
		else
			dat += "No hay lesiones detectables en las extremidades."
	. += (skill_level < SKILL_BASIC) ? shuffle(dat) : dat

	// Reagent data.
	. += "[b]Escaneo de reactivos:[endb]"

	var/print_reagent_default_message = TRUE
	if(H.reagents.total_volume)
		var/unknown = 0
		var/reagentdata[0]
		for(var/A in H.reagents.reagent_list)
			var/datum/reagent/R = A
			if(R.scannable)
				print_reagent_default_message = FALSE
				reagentdata[R.type] = "<span class='scan_notice'>[round(H.reagents.get_reagent_amount(R.type), 1)]u [R.name]</span>"
			else
				unknown++
		if(reagentdata.len)
			print_reagent_default_message = FALSE
			. += "<span class='scan_notice'>Reactivos beneficiosos detectados en la sangre del sujeto:</span>"
			for(var/d in reagentdata)
				. += reagentdata[d]
		if(unknown)
			print_reagent_default_message = FALSE
			. += "<span class='scan_warning'>Advertencia: sustancia desconocida[(unknown>1)?"s":""] detectada en la sangre del sujeto.</span>"

	var/datum/reagents/ingested = H.get_ingested_reagents()
	if(ingested && ingested.total_volume)
		var/unknown = 0
		for(var/datum/reagent/R in ingested.reagent_list)
			if(R.scannable)
				print_reagent_default_message = FALSE
				. += "<span class='scan_notice'>[R.name] encontrado en el estomago del sujeto.</span>"
			else
				++unknown
		if(unknown)
			print_reagent_default_message = FALSE
			. += "<span class='scan_warning'>Reactivo no medico[(unknown > 1)?"s":""] encontrado en el estomago del sujeto.</span>"

	if(H.chem_doses.len)
		var/list/chemtraces = list()
		for(var/T in H.chem_doses)
			var/datum/reagent/R = T
			if(initial(R.scannable))
				chemtraces += "[initial(R.name)] ([H.chem_doses[T]])"
		if(chemtraces.len)
			. += "<span class='scan_notice'>Productos de metabolismo de [english_list(chemtraces)] encontrado en el sistema del sujeto.</span>"

	if(print_reagent_default_message)
		. += "No hay resultados."

	header = jointext(header, null)
	. = jointext(.,"<br>")
	. = jointext(list(header,.),null)

// Calculates severity based on the ratios defined external limbs.
proc/get_wound_severity(var/damage_ratio, var/can_heal_overkill = 0)
	var/degree

	switch(damage_ratio)
		if(0 to 0.1)
			degree = "menor"
		if(0.1 to 0.25)
			degree = "moderado"
		if(0.25 to 0.5)
			degree = "significante"
		if(0.5 to 0.75)
			degree = "severo"
		if(0.75 to 1)
			degree = "extremo"
		else
			if(can_heal_overkill)
				degree = "critico"
			else
				degree = "irreparable"

	return degree

/obj/item/device/scanner/health/verb/toggle_mode()
	set name = "Switch Verbosity"
	set category = "Object"

	mode = !mode
	if(mode)
		to_chat(usr, "El escaner ahora muestra danos especificos en las extremidades.")
	else
		to_chat(usr, "El escaner ya no muestra danos en las extremidades.")
