/datum/vote/transfer
	name = "transfer"
	question = "Terminar el turno?"

/datum/vote/transfer/can_run(mob/creator, automatic)
	if(!(. = ..()))
		return
	if(!evacuation_controller || !evacuation_controller.should_call_autotransfer_vote())
		return FALSE
	if(!automatic && (!config.allow_vote_restart || !is_admin(creator)))
		return FALSE // Admins and autovotes bypass the config setting.
	if(check_rights(R_INVESTIGATE, 0, creator))
		return //Mods bypass further checks.
	var/decl/security_state/security_state = decls_repository.get_decl(GLOB.using_map.security_state)
	if (!automatic && security_state.current_security_level_is_same_or_higher_than(security_state.high_security_level))
		to_chat(creator, "La alerta actual es demasiada alta como para pedir una transferencia de la tripulacion!")
		return FALSE
	if(GAME_STATE <= RUNLEVEL_SETUP)
		to_chat(creator, "El boton de transferencia de la tripulacion ha sido desactivado!")
		return FALSE

/datum/vote/transfer/setup_vote(mob/creator, automatic)
	choices = list("Iniciar transferencia de la tripulacion.", "Extender la ronda ([config.vote_autotransfer_interval / 600] minutos).")
	if (config.allow_extra_antags && SSvote.is_addantag_allowed(creator, automatic))
		choices += "Agregar antagonista."
	..()

/datum/vote/transfer/handle_default_votes()
	if(config.vote_no_default)
		return
	var/factor = 0.5
	switch(world.time / (1 MINUTE))
		if(0 to 60)
			factor = 0.5
		if(61 to 120)
			factor = 0.8
		if(121 to 240)
			factor = 1
		if(241 to 300)
			factor = 1.2
		else
			factor = 1.4
	choices["Iniciar transferencia de la tripulacion."] = round(choices["Iniciar transferencia de la tripulacion."] * factor)
	to_world("<font color='purple'>Factor de la transferencia de la tripulacion: [factor]</font>")

/datum/vote/transfer/report_result()
	if(..())
		return 1
	if(result[1] == "Iniciar transferencia de la tripulacion.")
		init_autotransfer()
	else if(result[1] == "Agregar antagonista.")
		SSvote.queued_auto_vote = /datum/vote/add_antagonist

/datum/vote/transfer/mob_not_participating(mob/user)
	if((. = ..()))
		return
	if(config.vote_no_dead_crew_transfer)
		return !isliving(user) || ismouse(user) || is_drone(user)

/datum/vote/transfer/check_toggle()
	return config.allow_vote_restart ? "Allowed" : "Disallowed"

/datum/vote/transfer/toggle(mob/user)
	if(is_admin(user))
		config.allow_vote_restart = !config.allow_vote_restart