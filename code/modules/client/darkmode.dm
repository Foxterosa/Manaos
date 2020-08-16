/client/verb/toggle_darkmode()
	set name = "Alternar Modo Oscuro"
	set category = "OOC"
	set desc = "Toggles UI style between dark and light"
	prefs.toggles ^= UI_DARKMODE
	prefs.save_preferences(src)
	if(prefs.toggles & UI_DARKMODE)
		activate_darkmode()
	else
		deactivate_darkmode()
