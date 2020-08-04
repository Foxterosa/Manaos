/********
Synthetic
********/

/datum/job/cyborg
	total_positions = 3
	spawn_positions = 3
	supervisors = "tus leyes"
	minimal_player_age = 6
	allowed_ranks = list(
		/datum/mil_rank/civ/synthetic
	)

/datum/job/ai
	minimal_player_age = 8
	allowed_ranks = list(
		/datum/mil_rank/civ/synthetic
	)

/*******
Civilian
*******/

/datum/job/assistant
	title = "Pasajero"
	total_positions = -1
	spawn_positions = -1
	supervisors = "Oficial Ejecutivo"
	economic_power = 6
	announced = FALSE
	alt_titles = list(
		"Periodista" = /decl/hierarchy/outfit/job/torch/passenger/passenger/journalist,
		"Historiador",
		"Botanico",
		"Inversor" = /decl/hierarchy/outfit/job/torch/passenger/passenger/investor,
		"Psicologo" = /decl/hierarchy/outfit/job/torch/passenger/passenger/psychologist,
		"Naturalista",
		"Ecologista",
		"Artista",
		"Observador Independiente",
		"Sociologista",
		"Fuera de Servicio" = /decl/hierarchy/outfit/job/torch/crew/service/crewman,
		"Entrenador")
	outfit_type = /decl/hierarchy/outfit/job/torch/passenger/passenger
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/contractor
	)
	max_pow_cat = 0

/datum/job/merchant
	title = "Comerciante"
	department = "Civil"
	department_flag = CIV
	total_positions = 2
	spawn_positions = 2
	availablity_chance = 100
	supervisors = "La mano invisible del mercado"
	minimal_player_age = 0
	create_record = 0
	outfit_type = /decl/hierarchy/outfit/job/torch/merchant
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/alien
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/alien
	)
	latejoin_at_spawnpoints = 1
	access = list(access_merchant)
	announced = FALSE
	min_skill = list(   SKILL_FINANCE = SKILL_ADEPT,
	                    SKILL_PILOT	  = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)
	skill_points = 24
	required_language = null
	give_psionic_implant_on_join = FALSE
