
//moved these here from code/defines/obj/weapon.dm
//please preference put stuff where it's easy to find - C

/obj/item/weapon/autopsy_scanner
	name = "escaner de autopsia"
	desc = "Se utiliza para recopilar información sobre heridas."
	icon = 'icons/obj/surgery.dmi'
	icon_state = "autopsy_scanner"
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	w_class = ITEM_SIZE_SMALL
	origin_tech = list(TECH_MATERIAL = 1, TECH_BIO = 1)
	var/list/datum/autopsy_data_scanner/wdata = list()
	var/list/chemtraces = list()
	var/target_name = null
	var/timeofdeath = null

/datum/autopsy_data_scanner
	var/weapon = null // this is the DEFINITE weapon type that was used
	var/list/organs_scanned = list() // this maps a number of scanned organs to
									 // the wounds to those organs with this data's weapon type
	var/organ_names = ""

/datum/autopsy_data
	var/weapon = null
	var/pretend_weapon = null
	var/damage = 0
	var/hits = 0
	var/time_inflicted = 0

	proc/copy()
		var/datum/autopsy_data/W = new()
		W.weapon = weapon
		W.pretend_weapon = pretend_weapon
		W.damage = damage
		W.hits = hits
		W.time_inflicted = time_inflicted
		return W

/obj/item/weapon/autopsy_scanner/proc/add_data(var/obj/item/organ/external/O)
	if(!O.autopsy_data.len) return

	for(var/V in O.autopsy_data)
		var/datum/autopsy_data/W = O.autopsy_data[V]

		if(!W.pretend_weapon)
			/*
			// the more hits, the more likely it is that we get the right weapon type
			if(prob(50 + W.hits * 10 + W.damage))
			*/

			// Buffing this stuff up for now!
			if(1)
				W.pretend_weapon = W.weapon
			else
				W.pretend_weapon = pick("caja de herramientas de mecanico", "cortadores de cable", "revolver", "palanca", "extintor", "sopa de tomate", "tanque de oxigeno", "tanque de oxigeno de emergencias", "laser", "bala")


		var/datum/autopsy_data_scanner/D = wdata[V]
		if(!D)
			D = new()
			D.weapon = W.weapon
			wdata[V] = D

		if(!D.organs_scanned[O.name])
			if(D.organ_names == "")
				D.organ_names = O.name
			else
				D.organ_names += ", [O.name]"

		qdel(D.organs_scanned[O.name])
		D.organs_scanned[O.name] = W.copy()

/obj/item/weapon/autopsy_scanner/verb/print_data()
	set category = "Object"
	set src in view(usr, 1)
	set name = "Imprimir datos"
	if(usr.stat || !(istype(usr,/mob/living/carbon/human)))
		to_chat(usr, "No.")
		return

	var/scan_data = ""

	if(timeofdeath)
		scan_data += "<b>Hora de muerte:</b> [worldtime2stationtime(timeofdeath)]<br><br>"

	var/n = 1
	for(var/wdata_idx in wdata)
		var/datum/autopsy_data_scanner/D = wdata[wdata_idx]
		var/total_hits = 0
		var/total_score = 0
		var/list/weapon_chances = list() // maps weapon names to a score
		var/age = 0

		for(var/wound_idx in D.organs_scanned)
			var/datum/autopsy_data/W = D.organs_scanned[wound_idx]
			total_hits += W.hits

			var/wname = W.pretend_weapon

			if(wname in weapon_chances) weapon_chances[wname] += W.damage
			else weapon_chances[wname] = max(W.damage, 1)
			total_score+=W.damage


			var/wound_age = W.time_inflicted
			age = max(age, wound_age)

		var/damage_desc

		var/damaging_weapon = (total_score != 0)

		// total score happens to be the total damage
		switch(total_score)
			if(0)
				damage_desc = "Desconocido"
			if(1 to 5)
				damage_desc = "<font color='green'>despreciable</font>"
			if(5 to 15)
				damage_desc = "<font color='green'>ligero</font>"
			if(15 to 30)
				damage_desc = "<font color='orange'>moderado</font>"
			if(30 to 1000)
				damage_desc = "<font color='red'>severo</font>"

		if(!total_score) total_score = D.organs_scanned.len

		scan_data += "<b>Weapon #[n]</b><br>"
		if(damaging_weapon)
			scan_data += "Severidad: [damage_desc]<br>"
			scan_data += "Golpes por arma: [total_hits]<br>"
		scan_data += "Tiempo aproximado de infligir la herida: [worldtime2stationtime(age)]<br>"
		scan_data += "Extremidades afectadas: [D.organ_names]<br>"
		scan_data += "Posible arma:<br>"
		for(var/weapon_name in weapon_chances)
			scan_data += "\t[100*weapon_chances[weapon_name]/total_score]% [weapon_name]<br>"

		scan_data += "<br>"

		n++

	if(chemtraces.len)
		scan_data += "<b>Rastros quimicos: </b><br>"
		for(var/chemID in chemtraces)
			scan_data += chemID
			scan_data += "<br>"

	for(var/mob/O in viewers(usr))
		O.show_message("<span class='notice'>El escaner traquetea e imprime una hoja de papel.</span>", 1)

	sleep(10)

	var/obj/item/weapon/paper/P = new(usr.loc, "<tt>[scan_data]</tt>", "Datos de autopsia ([target_name])")
	if(istype(usr,/mob/living/carbon))
		// place the item in the usr's hand if possible
		usr.put_in_hands(P)

/obj/item/weapon/autopsy_scanner/do_surgery(mob/living/carbon/human/M, mob/living/user)
	if(!istype(M))
		return 0

	set_target(M, user)

	timeofdeath = M.timeofdeath

	var/obj/item/organ/external/S = M.get_organ(user.zone_sel.selecting)
	if(!S)
		to_chat(usr, "<span class='warning'>No puedes escanear esta parte del cuerpo.</span>")
		return
	if(!S.how_open())
		to_chat(usr, "<span class='warning'>Tienes que cortar y abrir primero.</span>")
		return
	M.visible_message("<span class='notice'>[user] escanea las heridas en el/la [M] de [S.name] con el escaner.</span>")

	add_data(S)
	for(var/T in M.chem_doses)
		var/datum/reagent/R = T
		chemtraces |= initial(R.name)

	return 1

/obj/item/weapon/autopsy_scanner/proc/set_target(atom/new_target, user)
	if(target_name != new_target.name)
		target_name = new_target.name
		wdata.Cut()
		chemtraces.Cut()
		timeofdeath = null
		to_chat(user, "<span class='notice'>Un nuevo paciente a sido registrado. Eliminando datos del paciente anterior.</span>")

/obj/item/weapon/autopsy_scanner/afterattack(obj/item/organ/external/target, mob/user, proximity_flag, click_parameters)
	if(!proximity_flag)
		return
	if(!istype(target))
		return

	set_target(target, user)
	add_data(target)

/obj/item/weapon/autopsy_scanner/attack_self(mob/user)
	print_data(user)