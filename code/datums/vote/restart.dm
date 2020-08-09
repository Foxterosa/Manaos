/datum/vote/restart
	name = "reiniciar"
	choices = list("Reiniciar ronda","Continuar jugando")
	priorities = list("First")
	weights = list(1)
	results_length = 1

/datum/vote/restart/can_run(mob/creator, automatic)
	if(!automatic && (!config.allow_vote_restart || !is_admin(creator)))
		return FALSE // Admins and autovotes bypass the config setting.
	return ..()

/datum/vote/restart/handle_default_votes()
	var/non_voters = ..()
	choices["Continuar jugando"] += non_voters

/datum/vote/restart/report_result()
	if(..())
		return 1
	if(result[1] == "Reiniciar ronda")
		SSvote.restart_world()