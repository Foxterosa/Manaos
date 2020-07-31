/datum/job/senior_scientist
	title = "Senior Researcher"
	department = "Science"
	department_flag = SCI

	total_positions = 1
	spawn_positions = 1
	supervisors = "the Chief Science Officer"
	selection_color = "#633d63"
	economic_power = 12
	minimal_player_age = 3
	minimum_character_age = list(SPECIES_HUMAN = 30)
	alt_titles = list(
		"Research Supervisor")
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/research/senior_scientist
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o1
	)

	access = list(access_tox, access_tox_storage, access_maint_tunnels, access_research, access_mining_office,
						access_mining_station, access_xenobiology, access_xenoarch, access_nanotrasen, access_solgov_crew,
						access_expedition_shuttle, access_guppy, access_hangar, access_petrov, access_petrov_helm, access_guppy_helm,
						access_petrov_analysis, access_petrov_phoron, access_petrov_toxins, access_petrov_chemistry, access_petrov_security,
						access_petrov_maint, access_robotics, access_robotics_engineering)
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
	skill_points = 44

/datum/job/scientist
	title = "Scientist"
	total_positions = 6
	spawn_positions = 6
	supervisors = "the Chief Science Officer and the Workplace Liaison"
	economic_power = 10
	minimum_character_age = list(SPECIES_HUMAN = 25)
	minimal_player_age = 0
	alt_titles = list(
		"Xenoarcheologist",
		"Anomalist",
		"Researcher",
		"Xenobiologist",
		"Xenobotanist",
		"Circuitry Designer",
		"Chemical Researcher"
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
	skill_points = 38

	outfit_type = /decl/hierarchy/outfit/job/torch/crew/research/scientist
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/civilian,
		/datum/mil_branch/solgov
	)
	allowed_ranks = list(,
		/datum/mil_rank/ec/o1,
		/datum/mil_rank/civ/contractor = /decl/hierarchy/outfit/job/torch/passenger/research/scientist,
		/datum/mil_rank/sol/scientist = /decl/hierarchy/outfit/job/torch/passenger/research/scientist/solgov
	)

	access = list(access_tox, access_maint_tunnels, access_tox_storage, access_research, access_petrov_maint, access_petrov, access_petrov_helm,
						access_mining_office, access_mining_station, access_xenobiology, access_guppy_helm,
						access_xenoarch, access_nanotrasen, access_expedition_shuttle, access_guppy, access_solgov_crew, access_hangar,
						access_petrov_analysis, access_petrov_phoron, access_petrov_toxins, access_petrov_chemistry, access_robotics, access_robotics_engineering)
	minimal_access = list()

/datum/job/scientist_assistant
	title = "Research Assistant"
	department = "Science"
	department_flag = SCI
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Chief Science Officer, the Workplace Liaison and science personnel"
	selection_color = "#633d63"
	economic_power = 3
	minimum_character_age = list(SPECIES_HUMAN = 18)
	alt_titles = list(
		"Custodian" = /decl/hierarchy/outfit/job/torch/passenger/research/assist/janitor,
		"Testing Assistant" = /decl/hierarchy/outfit/job/torch/passenger/research/assist/testsubject,
		"Intern",
		"Clerk",
		"Field Assistant")

	outfit_type = /decl/hierarchy/outfit/job/torch/crew/research
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/civilian,
		/datum/mil_branch/solgov
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/ec/e5,
		/datum/mil_rank/civ/contractor = /decl/hierarchy/outfit/job/torch/passenger/research/assist,
		/datum/mil_rank/sol/scientist = /decl/hierarchy/outfit/job/torch/passenger/research/assist/solgov
	)
	max_pow_cat = 2
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
	skill_points = 34
	access = list(access_tox, access_maint_tunnels, access_tox_storage, access_research, access_petrov_maint, access_petrov,
						access_mining_office, access_mining_station, access_xenobiology,
						access_xenoarch, access_nanotrasen, access_expedition_shuttle, access_solgov_crew, access_guppy, access_hangar,
						access_petrov_analysis, access_petrov_phoron, access_petrov_toxins, access_petrov_chemistry)