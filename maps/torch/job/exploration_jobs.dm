/datum/job/pathfinder
	title = "Pathfinder"
	department = "Exploration"
	department_flag = EXP
	total_positions = 1
	spawn_positions = 1
	head_position = 1
	supervisors = "the Chief Science Officer"
	selection_color = "#68099e"
	minimal_player_age = 4
	economic_power = 7
	minimum_character_age = list(SPECIES_HUMAN = 25)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/exploration/pathfinder
	allowed_branches = list(/datum/mil_branch/expeditionary_corps)
	allowed_ranks = list(
		/datum/mil_rank/ec/o1
	)
	max_skill = list(   SKILL_BUREAUCRACY  = SKILL_MAX,
	                    SKILL_FINANCE      = SKILL_MAX,
	                    SKILL_EVA          = SKILL_MAX,
	                    SKILL_MECH         = SKILL_MAX,
	                    SKILL_PILOT        = SKILL_MAX,
	                    SKILL_HAULING      = SKILL_MAX,
	                    SKILL_COMPUTER     = SKILL_MAX,
	                    SKILL_BOTANY       = SKILL_MAX,
	                    SKILL_COOKING      = SKILL_MAX,
	                    SKILL_COMBAT       = SKILL_MAX,
	                    SKILL_WEAPONS      = SKILL_MAX,
	                    SKILL_FORENSICS    = SKILL_MAX,
	                    SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX,
	                    SKILL_DEVICES      = SKILL_MAX,
	                    SKILL_SCIENCE      = SKILL_MAX,
	                    SKILL_MEDICAL      = SKILL_MAX,
	                    SKILL_ANATOMY      = SKILL_MAX,
	                    SKILL_CHEMISTRY    = SKILL_MAX)
	skill_points = 40

	access = list(
		access_pathfinder, access_explorer, access_eva, access_maint_tunnels, access_bridge, access_emergency_storage,
		access_guppy_helm, access_solgov_crew, access_expedition_shuttle, access_expedition_shuttle_helm, access_research,
		access_guppy, access_hangar
	)

	software_on_spawn = list(/datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)

/datum/job/pathfinder/get_description_blurb()
	return "You are the Pathfinder. Your duty is to organize and lead the expeditions to away sites, carrying out the SC's Primary Mission. You command Explorers. You make sure that expedition has the supplies and personnel it needs. You can pilot 'NTEV Gaunt' if nobody else provides a pilot. Once on the away mission, your duty is to ensure that anything of scientific interest is brought back to the ship and passed to the relevant research lab."

/datum/job/nt_pilot
	title = "Shuttle Pilot"
	supervisors = "the Pathfinder"
	department = "Exploration"
	department_flag = EXP
	total_positions = 1
	spawn_positions = 1
	selection_color = "#68099e"
	economic_power = 10
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 24)
	outfit_type = /decl/hierarchy/outfit/job/torch/passenger/pilot
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/expeditionary_corps = /decl/hierarchy/outfit/job/torch/crew/exploration/pilot,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/exploration/pilot/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor = /decl/hierarchy/outfit/job/torch/passenger/research/nt_pilot,
		/datum/mil_rank/ec/e7,
		/datum/mil_rank/fleet/e6,
		/datum/mil_rank/fleet/e7
	)

	access = list(
	 access_guppy, access_hangar, access_maint_tunnels, access_guppy_helm, access_expedition_shuttle, access_expedition_shuttle_helm, access_pilot,
		access_solgov_crew, access_eva, access_explorer,
	)
	max_skill = list(   SKILL_BUREAUCRACY  = SKILL_MAX,
	                    SKILL_FINANCE      = SKILL_MAX,
	                    SKILL_EVA          = SKILL_MAX,
	                    SKILL_MECH         = SKILL_MAX,
	                    SKILL_PILOT        = SKILL_MAX,
	                    SKILL_HAULING      = SKILL_MAX,
	                    SKILL_COMPUTER     = SKILL_MAX,
	                    SKILL_BOTANY       = SKILL_MAX,
	                    SKILL_COOKING      = SKILL_MAX,
	                    SKILL_COMBAT       = SKILL_MAX,
	                    SKILL_WEAPONS      = SKILL_MAX,
	                    SKILL_FORENSICS    = SKILL_MAX,
	                    SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX,
	                    SKILL_DEVICES      = SKILL_MAX,
	                    SKILL_SCIENCE      = SKILL_MAX,
	                    SKILL_MEDICAL      = SKILL_MAX,
	                    SKILL_ANATOMY      = SKILL_MAX,
	                    SKILL_CHEMISTRY    = SKILL_MAX)
	skill_points = 32
/datum/job/explorer
	title = "Explorer"
	department = "Exploration"
	department_flag = EXP
	total_positions = 5
	spawn_positions = 5
	supervisors = "the Commanding Officer, Executive Officer, and Pathfinder"
	selection_color = "#68099e"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/exploration/explorer
	allowed_branches = list(/datum/mil_branch/expeditionary_corps)

	allowed_ranks = list(
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/ec/e5
	)
	max_skill = list(   SKILL_BUREAUCRACY  = SKILL_MAX,
	                    SKILL_FINANCE      = SKILL_MAX,
	                    SKILL_EVA          = SKILL_MAX,
	                    SKILL_MECH         = SKILL_MAX,
	                    SKILL_PILOT        = SKILL_MAX,
	                    SKILL_HAULING      = SKILL_MAX,
	                    SKILL_COMPUTER     = SKILL_MAX,
	                    SKILL_BOTANY       = SKILL_MAX,
	                    SKILL_COOKING      = SKILL_MAX,
	                    SKILL_COMBAT       = SKILL_MAX,
	                    SKILL_WEAPONS      = SKILL_MAX,
	                    SKILL_FORENSICS    = SKILL_MAX,
	                    SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX,
	                    SKILL_DEVICES      = SKILL_MAX,
	                    SKILL_SCIENCE      = SKILL_MAX,
	                    SKILL_MEDICAL      = SKILL_MAX,
	                    SKILL_ANATOMY      = SKILL_MAX,
	                    SKILL_CHEMISTRY    = SKILL_MAX)
	skill_points = 32

	access = list(access_explorer, access_maint_tunnels, access_eva, access_emergency_storage,
		access_guppy_helm, access_solgov_crew, access_expedition_shuttle, access_guppy, access_hangar,
		access_expedition_shuttle_helm,
	)

	software_on_spawn = list(/datum/computer_file/program/deck_management)

/datum/job/explorer/get_description_blurb()
	return "You are an Explorer. Your duty is to go on expeditions to away sites. The Pathfinder is your team leader. You are to look for anything of economic or scientific interest to the SCG - mineral deposits, alien flora/fauna, artifacts. You will also likely encounter hazardous environments, aggressive wildlife or malfunctioning defense systems, so tread carefully."
