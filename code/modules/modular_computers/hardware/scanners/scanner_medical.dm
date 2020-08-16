/obj/item/weapon/stock_parts/computer/scanner/medical
	name = "modulo de escaner medico"
	desc = "Un modulo de escaner medico. Se puede usar para escanear pacientes y dar informacion medica."

/obj/item/weapon/stock_parts/computer/scanner/medical/do_on_afterattack(mob/user, atom/target, proximity)
	if(!can_use_scanner(user, target, proximity))
		return

	var/dat = medical_scan_action(target, user, loc, 1)

	if(dat && driver && driver.using_scanner)
		driver.data_buffer = html2pencode(dat)
		SSnano.update_uis(driver.NM)
