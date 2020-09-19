GLOBAL_DATUM_INIT(deathsquad, /datum/antagonist/deathsquad, new)

/datum/antagonist/deathsquad
	id = MODE_DEATHSQUAD
	role_text = "Death Commando"
	role_text_plural = "Death Commandos"
	welcome_text = "Trabajas en las mas finas instalaciones y con el mas prestigioso equipamiento de la Quinta Flota, \
		especializada en la rapida mobilizacion y en las unidades designadas para la reaccion rapida de emergencia, \
		de forma mas concreta, <b>ahora formas parte del Escuadron de la Muerte.</b> Una unidad designada para realizar tareas, \
		misiones u objetivos que de otra forma serian un suicidio de ser realizadas por un escuadron de proteccion normal. \
		<b>Respondes a cualquier mision encomendada por la Tabla de Altos Mandos de la Flota de Sol, \
		incluso si esta te costase tu propia vida o si involucrase no dejar ningun testigo.</b>"
	landmark_id = "Response Team"
	id_type = /obj/item/weapon/card/id/centcom/ERT

	flags = ANTAG_OVERRIDE_JOB | ANTAG_OVERRIDE_MOB | ANTAG_HAS_LEADER | ANTAG_RANDOM_EXCEPTED
	default_access = list(access_cent_general, access_cent_specops, access_cent_living, access_cent_storage)
	antaghud_indicator = "huddeathsquad"

	hard_cap = 4
	hard_cap_round = 8
	initial_spawn_req = 4
	initial_spawn_target = 6

	var/outfit_type = /decl/hierarchy/outfit/death_command

	base_to_load = /datum/map_template/ruin/antag_spawn/ert

/datum/antagonist/ert/create_default(var/mob/source)
	var/mob/living/carbon/human/M = ..()
	if(istype(M)) M.age = rand(25,45)

/datum/antagonist/deathsquad/equip(var/mob/living/carbon/human/player)
	if(!..())
		return 0

	var/decl/hierarchy/outfit/death_command = outfit_by_type(/decl/hierarchy/outfit/death_command)
	death_command.equip(player)

	return 1