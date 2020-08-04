/////////
// Cadet
/////////
/datum/job/seccadet
	title = "Cadete de Seguridad"
	department = "Seguridad"
	department_flag = SEC
	total_positions = 2
	spawn_positions = 2
	supervisors = "the entirety of Security"
	economic_power = 1
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 18)
	selection_color = "#601c1c"
	alt_titles = list(
		"Aprendiz de Forense"
		)
	min_skill = list(   SKILL_EVA         = SKILL_ADEPT,
	                    SKILL_COMBAT      = SKILL_BASIC)
	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)
	skill_points = 16
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/security/maa
	allowed_branches = list(
		/datum/mil_branch/fleet,
		/datum/mil_branch/marine_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/marine_corps/e2,
		/datum/mil_rank/marine_corps/e3
	)
	access = list(access_security, access_brig, access_maint_tunnels,
						access_external_airlocks, access_emergency_storage,
			            access_eva, access_sec_doors, access_solgov_crew)
	minimal_access = list()
	software_on_spawn = list(/datum/computer_file/program/digitalwarrant)

/datum/job/seccadetn/get_description_blurb()
	return "Eres un nuevo empleado, o un nuevo aprendiz a bordo del [GLOB.using_map.full_name]. Todo el mundo es tu superior, y como tal, es mejor que los escuches."

/datum/job/squad_lead
	allowed_branches = list(/datum/mil_branch/marine_corps)
	allowed_ranks = list(
		/datum/mil_rank/marine_corps/e6
	)
	access = list(access_maint_tunnels, access_solgov_crew, access_petrov, access_petrov_security,
			            access_expedition_shuttle, access_expedition_shuttle_helm, access_guppy, access_hangar, access_guppy_helm, access_infantry,
			            access_infcom, access_inftech, access_aquila, access_eva)

/datum/job/squad_lead
	title = "Lider de Escuadron"
	department = "Infanteria"
	department_flag = INF
	head_position = 1
	total_positions = 1
	spawn_positions = 1

	supervisors = "the highest ranking Marine and SolGov Command"
	selection_color = "#557e38"
	minimal_player_age = 12
	economic_power = 7
	skill_points = 24
	minimum_character_age = list(SPECIES_HUMAN = 25)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/infantry/squad_lead
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
						SKILL_EVA         = SKILL_ADEPT,
						SKILL_PILOT       = SKILL_BASIC,
						SKILL_COMBAT      = SKILL_ADEPT,
						SKILL_WEAPONS     = SKILL_ADEPT)

	max_skill = list(	SKILL_COMBAT      = SKILL_MAX,
						SKILL_WEAPONS     = SKILL_MAX,
						SKILL_EVA		  = SKILL_MAX)

	software_on_spawn = list(/datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)

/datum/job/squad_lead/get_description_blurb()
	return "<span class='warning'>NO eres seguridad. Ignorar esto puede conllevar a un Jobban o algo peor...</span> - Eres el Lider de Escuadron. Tu trabajo es organizar y liderar un reducido grupo de infanteria para apoyar al Jefe de Exploradores. Comandas a los Marines en tu Escuadron. Te aseguras que la expedicion tenga las armas de fuego que necesite. Una vez en la mision, tu deber sera asegurarte de que lo peor no se pueda hacer realidad."

/datum/job/combat_tech
	title = "Tecnico de Combate"
	department = "el Lider de Escuadron"
	department = "Infanteria"
	department_flag = INF
	total_positions = 1
	spawn_positions = 1
	selection_color = "#557e38"
	economic_power = 4
	minimal_player_age = 8
	skill_points = 24
	minimum_character_age = list(SPECIES_HUMAN = 22)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/infantry/combat_tech
	min_skill = list(	SKILL_CONSTRUCTION = SKILL_ADEPT,
						SKILL_ELECTRICAL   = SKILL_ADEPT,
						SKILL_MEDICAL      = SKILL_BASIC,
						SKILL_COMBAT       = SKILL_ADEPT,
						SKILL_WEAPONS      = SKILL_ADEPT)

	max_skill = list(	SKILL_COMBAT       = SKILL_MAX,
						SKILL_WEAPONS      = SKILL_MAX,
						SKILL_EVA		   = SKILL_MAX,
						SKILL_CONSTRUCTION = SKILL_MAX,
						SKILL_ELECTRICAL   = SKILL_MAX)

	allowed_branches = list(/datum/mil_branch/marine_corps)
	allowed_ranks = list(
		/datum/mil_rank/marine_corps/e3,
		/datum/mil_rank/marine_corps/e4,
		/datum/mil_rank/marine_corps/e5
		)
	access = list(access_maint_tunnels, access_petrov, access_petrov_security,
			            access_expedition_shuttle, access_expedition_shuttle_helm, access_guppy, access_hangar, access_guppy_helm, access_infantry,
			            access_inftech, access_aquila, access_eva)
	alt_titles = list(
		"Ingeniero de Combate",
		"Medico de Combate")

/datum/job/combat_tech/is_position_available()
	if(..())
		for(var/mob/M in GLOB.player_list)
			if(M.client && M.mind && M.mind.assigned_role == "Lider de Escuadron")
				return TRUE
	return FALSE

/datum/job/combat_tech/get_description_blurb()
	return "<span class='warning'>NO eres seguridad. Ignorar esto puede conllevar a un Jobban o algo peor...</span> - Eres el unico Tecnico de Combate en el escuadron. Tu trabajo es proveer tanto tu asistencia militar como demoliciones tacticas, en caso de ser necesarias. Puedes asumir el mando si no hay un Lider de Escuadron presente."

/datum/job/grunt
	title = "Rifleman"
	department = "Infanteria"
	department_flag = INF
	total_positions = 4
	spawn_positions = 4
	minimal_player_age = 6
	supervisors = "el Tecnico de Combate y el Lider de Escuadron"
	selection_color = "#557e38"
	skill_points = 18
	minimum_character_age = list(SPECIES_HUMAN = 18)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/infantry
	min_skill = list(	SKILL_COMBAT       = SKILL_ADEPT,
						SKILL_WEAPONS      = SKILL_ADEPT,
						SKILL_EVA          = SKILL_BASIC)

	max_skill = list(	SKILL_COMBAT      = SKILL_MAX,
						SKILL_WEAPONS     = SKILL_MAX,
						SKILL_EVA		  = SKILL_MAX)

	software_on_spawn = list(/datum/computer_file/program/deck_management)
	allowed_branches = list(/datum/mil_branch/marine_corps)
	allowed_ranks = list(
		/datum/mil_rank/marine_corps/e1,
		/datum/mil_rank/marine_corps/e2,
		/datum/mil_rank/marine_corps/e3,
		/datum/mil_rank/marine_corps/e4
	)
	access = list(access_maint_tunnels, access_solgov_crew, access_petrov, access_petrov_security,
			            access_expedition_shuttle, access_expedition_shuttle_helm, access_guppy, access_hangar, access_guppy_helm, access_infantry,
			            access_aquila, access_eva)
	alt_titles = list(
		"Grunt",
		"Soldado")

/datum/job/grunt/is_position_available()
	if(..())
		for(var/mob/M in GLOB.player_list)
			if(M.client && M.mind && M.mind.assigned_role == "Lider de Escuadron")
				return TRUE
	return FALSE

/datum/job/grunt/get_description_blurb()
	return "<span class='warning'>NO eres seguridad. Ignorar esto puede conllevar a un Jobban o algo peor...</span> - Eres un Marine! Tu deber es escuchar al Lider de Escuadron. Si no esta presente, el Tecnico de Combate puede mandar. Recibe las ordenes y haz lo mejor que puedas para no morir!. Oorah!"

/datum/job/psiadvisor
	title = "Asesor Psionico"
	department = "Soporte"
	department_flag = SPT
	selection_color = "#2f2f7f"
	total_positions = 1
	spawn_positions = 1
	economic_power = 30
	minimum_character_age = list(SPECIES_HUMAN = 25,SPECIES_UNATHI = 25,SPECIES_SERGAL = 25, SPECIES_SKRELL = 25, SPECIES_PROMETHEAN = 25, SPECIES_YEOSA = 25, SPECIES_VASS = 25, SPECIES_TAJ = 25, SPECIES_CUSTOM = 25, SPECIES_AKULA = 25)
	minimal_player_age = 7
	supervisors = "NTPC or the Foundation, neither secondary to the Commanding Officer"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/psiadvisor
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/foundationadvisor)
	min_skill = list(
		SKILL_BUREAUCRACY = SKILL_EXPERT,
		SKILL_FINANCE = SKILL_ADEPT,
		SKILL_MEDICAL = SKILL_BASIC
	)
	max_skill = list(
		SKILL_COMBAT     = SKILL_EXPERT,
		SKILL_WEAPONS     = SKILL_EXPERT
	)
	skill_points = 30
	access = list(access_psiadvisor, access_security, access_medical, access_engine, access_maint_tunnels, access_external_airlocks,
				access_eva, access_bridge, access_cargo, access_RC_announce, access_solgov_crew, access_hangar)
	minimal_access = list()
	software_on_spawn = list(
		/datum/computer_file/program/comm,
		/datum/computer_file/program/records
	)

	alt_titles = list(
		"Operativo Psionico de Nanotrasen" = /decl/hierarchy/outfit/job/torch/crew/command/psiadvisor/nt,
		"Agente de la Fundacion")

/datum/job/psiadvisor/equip(var/mob/living/carbon/human/H)
	psi_faculties = list("[PSI_REDACTION]" = PSI_RANK_OPERANT, "[PSI_COERCION]" = PSI_RANK_OPERANT, "[PSI_PSYCHOKINESIS]" = PSI_RANK_OPERANT, "[PSI_ENERGISTICS]" = PSI_RANK_OPERANT)
	return ..()

/datum/job/psiadvisor/get_description_blurb()
	return "Eres el Asesor Psionico, un agente de la Fundacion o del Cuerpo Psionico de Nanotrasen. Junto con el Psiquiatra, you're the only other individual with known and authorized Psionic abilities aboard the NTSS Dagon. Your main responsibility is advising the Commanding Officer on psionic matters. \
	Secondly, you're to assist the crew or Research on psionic matters, or guide any newly emergent crew that awaken with psionic abilities."

/*
	Magistrado
*/

/datum/job/magistrado
	title = "Magistrado"
	department = "Soporte"
	department_flag = SPT
	total_positions = 1
	spawn_positions = 1
	supervisors = "Comando Central, Convencion de Galilei y las Regulaciones de la Nave/Navales"
	selection_color = "#2f2f7f"
	economic_power = 15
	minimal_player_age = 7
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/magistrado
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/contractor)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_EXPERT,
	                    SKILL_FINANCE     = SKILL_BASIC)
	skill_points = 20
	minimum_character_age = list(SPECIES_HUMAN = 28)

	access = list(access_magistrado, access_lawyer, access_sec_doors, access_brig, access_maint_tunnels, access_medical,
			            access_bridge, access_cargo, access_solgov_crew, access_hangar)

	software_on_spawn = list(/datum/computer_file/program/reports)

/datum/job/magistrado/get_description_blurb()

/datum/job/blueshield
	title = "Blueshield"
	department = "Soporte"
	department_flag = SPT
	total_positions = 1
	spawn_positions = 1
	supervisors = "Comando"
	selection_color = "#3d3d7f"
	economic_power = 12
	minimal_player_age = 5
	minimum_character_age = list(SPECIES_HUMAN = 19)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/blueshield
	allowed_branches = list(/datum/mil_branch/civilian,
							/datum/mil_branch/solgov)
	allowed_ranks = list(/datum/mil_rank/civ/contractor,
						 /datum/mil_rank/sol/agent)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_FORENSICS   = SKILL_BASIC)
	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)

	skill_points = 25
	access = list(access_magistrado, access_lawyer, access_sec_doors, access_brig, access_maint_tunnels, access_medical,
			            access_bridge, access_cargo, access_solgov_crew, access_hangar, access_bs)
	defer_roundstart_spawn = TRUE

/datum/job/blueshield/get_description_blurb()
	return "Eres un Blueshield, te encargas de proteger la vida del personal de Alto riesgo abordo del NTSS Dagon, NO eres seguridad. Respondes directamente al comandante oficial y a Comando Central."


/datum/job/lawyer
	title = "Abogado"
	department = "Servicio"
	department_flag = SRV
	total_positions = 2
	spawn_positions = 2
	supervisors = "el Adujicador, Convencion de Galilei y las Regulaciones de la Nave/Navales"
	economic_power = 10
	minimal_player_age = 2
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/service/lawyer
	allowed_branches = list(/datum/mil_branch/civilian, /datum/mil_branch/solgov)
	allowed_ranks = list(/datum/mil_rank/civ/contractor, /datum/mil_rank/sol/gov)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_EXPERT,
	                    SKILL_FINANCE     = SKILL_BASIC)
	skill_points = 20
	minimum_character_age = list(SPECIES_HUMAN = 27)

	access = list(access_lawyer, access_sec_doors, access_maint_tunnels, access_solgov_crew)

	software_on_spawn = list(/datum/computer_file/program/reports)

/datum/job/lawyer/get_description_blurb()
	return "Eres un Abogado. tu trabajo es procesar o defender a tu cliente dependiendo de las circunstancias."
