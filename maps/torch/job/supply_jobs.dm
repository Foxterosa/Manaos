/datum/job/qm
	title = "Deck Officer"
	department = "Supply"
	department_flag = SUP
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Commanding Officer"
	economic_power = 5
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 25)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/supply/deckofficer
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/supply/deckofficer/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e6,
		/datum/mil_rank/ec/e7,
		/datum/mil_rank/fleet/e7,
		/datum/mil_rank/fleet/e8
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
	access = list(access_maint_tunnels, access_bridge, access_emergency_storage, access_tech_storage,  access_cargo, access_guppy_helm,
						access_cargo_bot, access_qm, access_mailsorting, access_solgov_crew, access_expedition_shuttle, access_guppy, access_hangar,
						access_mining, access_mining_office, access_mining_station, access_commissary)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/supply,
							 /datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)

/datum/job/cargo_tech
	title = "Deck Technician"
	department = "Supply"
	department_flag = SUP
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Deck Officer"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/supply/tech
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/supply/tech/fleet,
		/datum/mil_branch/civilian = /decl/hierarchy/outfit/job/torch/crew/supply/contractor
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/civ/contractor
	)
	max_pow_cat = 1
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

	access = list(access_maint_tunnels, access_emergency_storage, access_cargo, access_guppy_helm,
						access_cargo_bot, access_mailsorting, access_solgov_crew, access_expedition_shuttle, access_guppy, access_hangar, access_commissary)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/supply,
							 /datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)

/datum/job/mining
	title = "Prospector"
	department = "Supply"
	department_flag = SUP
	total_positions = 4
	spawn_positions = 2
	supervisors = "the Deck Officer, the Corporate Liaison"
	economic_power = 7
	minimum_character_age = list(SPECIES_HUMAN = 18)
	alt_titles = list(
		"Drill Technician",
		"Shaft Miner",
		"Salvage Technician")
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

	outfit_type = /decl/hierarchy/outfit/job/torch/passenger/research/prospector
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/contractor)

	access = list(access_maint_tunnels, access_emergency_storage, access_mining, access_mining_office, access_mining_station,
						access_expedition_shuttle, access_guppy, access_hangar, access_guppy_helm, access_solgov_crew, access_cargo, access_eva)
	minimal_access = list()
