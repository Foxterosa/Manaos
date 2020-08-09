/obj/machinery/body_scanconsole
	var/obj/machinery/bodyscanner/connected
	var/stored_scan_subject
	name = "Consola del escaner corporal"
	icon = 'icons/obj/Cryogenic2.dmi'
	icon_state = "body_scannerconsole"
	density = 0
	anchored = 1
	construct_state = /decl/machine_construction/default/panel_closed
	uncreated_component_parts = null
	stat_immune = 0
	var/list/display_tags = list()
	var/list/connected_displays = list()
	var/list/data = list()
	var/scan_data

/obj/machinery/body_scanconsole/Initialize()
	. = ..()
	FindScanner()

/obj/machinery/body_scanconsole/on_update_icon()
	if(stat & (BROKEN | NOPOWER))
		icon_state = "body_scannerconsole-p"
	else
		icon_state = initial(icon_state)

/obj/machinery/body_scanconsole/ex_act(severity)

	switch(severity)
		if(1.0)
			qdel(src)
		if(2.0)
			if (prob(50))
				qdel(src)

/obj/machinery/body_scanconsole/proc/FindScanner()
	for(var/D in GLOB.cardinal)
		src.connected = locate(/obj/machinery/bodyscanner, get_step(src, D))
		if(src.connected)
			break
		GLOB.destroyed_event.register(connected, src, .proc/unlink_scanner)

/obj/machinery/body_scanconsole/proc/unlink_scanner(var/obj/machinery/bodyscanner/scanner)
	GLOB.destroyed_event.unregister(scanner, src, .proc/unlink_scanner)
	connected = null

/obj/machinery/body_scanconsole/proc/FindDisplays()
	for(var/obj/machinery/body_scan_display/D in SSmachines.machinery)
		if(D.tag in display_tags)
			connected_displays += D
			GLOB.destroyed_event.register(D, src, .proc/remove_display)
	return !!connected_displays.len

/obj/machinery/body_scanconsole/attack_hand(mob/user)
	if(!connected || (connected.stat & (NOPOWER|BROKEN)))
		to_chat(user, "<span class='warning'>Esta consola no esta conectada a un escaner corporal en funcionamiento.</span>")
		return TRUE
	return ..()

/obj/machinery/body_scanconsole/interface_interact(mob/user)
	ui_interact(user)
	return TRUE

/obj/machinery/body_scanconsole/CanUseTopic(mob/user)
	if(!connected)
		return STATUS_CLOSE
	return ..()

/obj/machinery/body_scanconsole/ui_interact(mob/user, ui_key = "main", var/datum/nanoui/ui = null, var/force_open = 1)
	if(connected && connected.occupant)
		data["scanEnabled"] = TRUE
		if(ishuman(connected.occupant))
			data["isCompatible"] = TRUE
		else
			data["isCompatible"] = FALSE
	else
		data["scanEnabled"] = FALSE

	if(!data["scan"])
		data["html_scan_header"] = "<center>Escaneo no cargado</center>"
		data["html_scan_health"] = "&nbsp;"
		data["html_scan_body"] = "&nbsp;"
	else
		data["html_scan_header"] = display_medical_data_header(data["scan"], user.get_skill_value(SKILL_MEDICAL))
		data["html_scan_health"] = display_medical_data_health(data["scan"], user.get_skill_value(SKILL_MEDICAL))
		data["html_scan_body"] = display_medical_data_body(data["scan"], user.get_skill_value(SKILL_MEDICAL))

	ui = SSnano.try_update_ui(user, src, ui_key, ui, data, force_open)
	if(!ui)
		ui = new(user, src, ui_key, "body_scanner.tmpl", "Body Scanner", 600, 800)
		ui.set_initial_data(data)
		ui.open()

/obj/machinery/body_scanconsole/OnTopic(mob/user, href_list)
	if(href_list["scan"])
		if (!connected.occupant)
			to_chat(user, "\icon[src]<span class='warning'>El escaner corporal esta vacio.</span>")
			return TOPIC_REFRESH
		if (!istype(connected.occupant))
			to_chat(user, "\icon[src]<span class='warning'>El escaner corporal no puede escanear esa forma de vida.</span>")
			return TOPIC_REFRESH
		data["printEnabled"] = TRUE
		data["eraseEnabled"] = TRUE
		data["pushEnabled"] = TRUE
		data["scan"] = connected.occupant.get_raw_medical_data(TRUE)
		data["html_scan_header"] = display_medical_data_header(data["scan"], user.get_skill_value(SKILL_MEDICAL))
		data["html_scan_health"] = display_medical_data_health(data["scan"], user.get_skill_value(SKILL_MEDICAL))
		data["html_scan_body"] = display_medical_data_body(data["scan"], user.get_skill_value(SKILL_MEDICAL))

		stored_scan_subject = connected.occupant
		user.visible_message("<span class='notice'>[user] realiza un escaneo a [connected.occupant] usando el [connected].</span>")
		return TOPIC_REFRESH

	if (href_list["print"])
		if (!data["scan"])
			to_chat(user, "\icon[src]<span class='warning'>Error: escaneo no almacenado.</span>")
			return TOPIC_REFRESH
		var/list/scan = data["scan"]
		new /obj/item/weapon/paper/bodyscan(loc, "Error de impresion.", "Reporte del escaneo corporal - [stored_scan_subject]", scan.Copy())
		return TOPIC_REFRESH

	if(href_list["push"])
		if(!connected_displays.len && !FindDisplays())
			to_chat(user, "\icon[src]<span class='warning'>Error: No se detectaron pantallas configuradas.</span>")
			return TOPIC_REFRESH
		for(var/obj/machinery/body_scan_display/D in connected_displays)
			D.add_new_scan(data["scan"])
		to_chat(user, "<span class='notice'>La consola emite un pitido, confirmando que ha enviado con exito el escaneo a las pantallas conectadas.</span>")
		return TOPIC_REFRESH

	if(href_list["erase"])
		data["scan"] = null
		data["html_scan"] = null
		stored_scan_subject = null
		data["eraseEnabled"] = FALSE
		data["printEnabled"] = FALSE
		data["pushEnabled"] = FALSE
		return TOPIC_REFRESH

/obj/machinery/body_scanconsole/state_transition(var/decl/machine_construction/default/new_state)
	. = ..()
	if(istype(new_state))
		updateUsrDialog()

/obj/machinery/body_scanconsole/proc/remove_display(var/obj/machinery/body_scan_display/display)
	connected_displays -= display
	GLOB.destroyed_event.unregister(display, src, .proc/remove_display)

/obj/machinery/body_scanconsole/Destroy()
	. = ..()
	for(var/D in connected_displays)
		remove_display(D)
	unlink_scanner(connected)