/datum/job/senior_engineer
	title = "Ingeniero Senior"
	department = "Ingenieria"
	department_flag = ENG
	total_positions = 1
	spawn_positions = 1
	supervisors = "el Oficial Ingeniero en Jefe"
	selection_color = "#5b4d20"
	economic_power = 6
	minimal_player_age = 3
	minimum_character_age = list(SPECIES_HUMAN = 27)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/engineering/senior_engineer
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/engineering/senior_engineer/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/e7,
		/datum/mil_rank/fleet/e6,
		/datum/mil_rank/fleet/e7,
		/datum/mil_rank/fleet/e8,
	)
	min_skill = list(   SKILL_COMPUTER     = SKILL_BASIC,
	                    SKILL_EVA          = SKILL_ADEPT,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_ADEPT,
	                    SKILL_ATMOS        = SKILL_BASIC,
	                    SKILL_ENGINES      = SKILL_ADEPT)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX)
	skill_points = 24

	access = list(access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_teleporter, access_eva, access_tech_storage, access_atmospherics, access_janitor, access_construction,
			            access_tcomsat, access_solgov_crew, access_seneng, access_hangar, access_network, access_robotics, access_robotics_engineering)

	software_on_spawn = list(/datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor)

/datum/job/senior_engineer/get_description_blurb()
	return "Eres el Ingeniero Senior. Eres un SNCO veterano. Sigues las ordenes del Oficial Ingeniero en Jefe, quien a lo mejor le superas en mas tiempo de experiencia. Puedes dar ordenes al resto del personal del departamiento de ingenieria. Practicamente deberias de ser un experto en cada area de ingenieria y poseer habilidades de liderazgo. Coordina tu equipo y asegura el buen funcionamiento de tu departamento en conjunto del Oficial Ingeniero en Jefe."

/datum/job/engineer
	title = "Ingeniero"
	total_positions = 6
	spawn_positions = 6
	supervisors = "el Oficial Ingeniero en Jefe"
	economic_power = 5
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 24)
	alt_titles = list(
		"Tecnico de motor",
		"Tecnico en Control de Averias",
		"Electricista",
		"Tecnico en Atmosfera",
		"Tecnico en AEV",
		"Tecnico en Telecomunicaciones",
		"Tecnico en Soporte vital"
		)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/engineering/engineer
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/engineering/engineer/fleet,
		/datum/mil_branch/civilian = /decl/hierarchy/outfit/job/torch/crew/engineering/contractor
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/fleet/e5,
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/ec/e5,
		/datum/mil_rank/civ/contractor
	)
	min_skill = list(   SKILL_COMPUTER     = SKILL_BASIC,
	                    SKILL_EVA          = SKILL_BASIC,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_BASIC,
	                    SKILL_ATMOS        = SKILL_BASIC,
	                    SKILL_ENGINES      = SKILL_BASIC)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX)
	skill_points = 20

	access = list(access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_teleporter, access_eva, access_tech_storage, access_atmospherics, access_construction,
			            access_solgov_crew, access_hangar, access_tcomsat)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor)

/datum/job/engineer/get_description_blurb()
	return "Eres un ingeniero. Operas bajo uno de los muchos titulos y puedes estar especializado en un area de ingenieria. Probablemente tengas familiarizado conocimientos de algunas areas. Sigues las ordenes del Ingeniero Senior y el Oficial Ingeniero en Jefe y se te espera que lo sigas."

/datum/job/engineer_trainee
	title = "Aprendiz de Ingeniero"
	department = "Ingenieria"
	department_flag = ENG
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Chief Engineer and Engineering Personnel"
	selection_color = "#5b4d20"
	minimum_character_age = list(SPECIES_HUMAN = 18)

	outfit_type = /decl/hierarchy/outfit/job/torch/crew/engineering/engineer
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/engineering/engineer/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/fleet/e2,
	)

	skill_points = 4
	no_skill_buffs = TRUE

	min_skill = list(   SKILL_COMPUTER     = SKILL_BASIC,
	                    SKILL_HAULING      = SKILL_ADEPT,
	                    SKILL_EVA          = SKILL_ADEPT,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_ADEPT,
	                    SKILL_ATMOS        = SKILL_ADEPT,
	                    SKILL_ENGINES      = SKILL_ADEPT)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX)

	access = list(access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_eva, access_tech_storage, access_construction,
			            access_solgov_crew, access_hangar)

	software_on_spawn = list(/datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor)

/datum/job/engineer_trainee/get_description_blurb()
	return "Eres un Aprendiz de Ingeniero. Estas aprendiendo como operar varios sistemas de ingenieria de parte del personal de ingenieria superior. Sigues las ordenes del resto de ingenieros a bordo."

/datum/job/roboticist
	title = "Robotista"
	department = "Ingenieria"
	department_flag = ENG

	total_positions = 2
	spawn_positions = 2
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 25)
	supervisors = "el Oficial Ingeniero en Jefe y el Corporate Liaison."
	selection_color = "#5b4d20"
	economic_power = 6
	alt_titles = list(
		"Tecnico de Mechas",
		"Tecnico Biomecanico"
		)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/engineering/roboticist
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/contractor)
	min_skill = list(   SKILL_COMPUTER		= SKILL_ADEPT,
	                    SKILL_DEVICES		= SKILL_ADEPT,
	                    SKILL_ANATOMY       = SKILL_EXPERT,
	                    SKILL_SCIENCE     	= SKILL_ADEPT,
	                    SKILL_MEDICAL     	= SKILL_ADEPT,
	                    SKILL_MECH          = HAS_PERK,
	                    SKILL_ELECTRICAL    = SKILL_BASIC,
	                    SKILL_CONSTRUCTION  = SKILL_BASIC)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_EXPERT,
	                    SKILL_ENGINES      = SKILL_EXPERT,
	                    SKILL_DEVICES      = SKILL_MAX,
	                    SKILL_MEDICAL      = SKILL_EXPERT,
	                    SKILL_ANATOMY      = SKILL_MAX)
	skill_points = 24

	access = list(access_robotics, access_robotics_engineering, access_nanotrasen, access_engine, access_solgov_crew, access_maint_tunnels, access_research, access_petrov, access_petrov_maint, access_research,)
	minimal_access = list()

/datum/job/roboticist/get_description_blurb()
	return "Eres el Robotista. Eres responsable en la reparacion, actualizacion y el manejo de sinteticos de la nave (como robots). Tambien eres responsable de la produccion de exo-trajes (mechas) y de bots para varios departamentos. Respondes al Corporate Liaison y el Oficial Ingeniero en Jefe."
