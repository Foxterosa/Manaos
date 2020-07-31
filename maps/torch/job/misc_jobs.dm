/********
Synthetic
********/

/datum/job/cyborg
	total_positions = 3
	spawn_positions = 3
	supervisors = "your laws"
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
	title = "Passenger"
	department = "Civilian"
	department_flag = CIV
	total_positions = -1
	spawn_positions = -1
	availablity_chance = 100
	supervisors = "the Executive Officer"
	economic_power = 6
	minimal_player_age = 0
	create_record = 0
	announced = FALSE
	alt_titles = list(
		"Journalist" = /decl/hierarchy/outfit/job/torch/passenger/passenger/journalist,
		"Historian",
		"Botanist",
		"Investor" = /decl/hierarchy/outfit/job/torch/passenger/passenger/investor,
		"Psychologist" = /decl/hierarchy/outfit/job/torch/passenger/passenger/psychologist,
		"Naturalist",
		"Ecologist",
		"Entertainer",
		"Independent Observer",
		"Sociologist",
		"Off-Duty" = /decl/hierarchy/outfit/job/torch/crew/service/crewman,
		"Trainer")
	outfit_type = /decl/hierarchy/outfit/job/torch/passenger/passenger
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/contractor)
	max_pow_cat = 0
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
	required_language = null
	give_psionic_implant_on_join = FALSE


/datum/job/merchant
	title = "Merchant"
	department = "Civilian"
	department_flag = CIV
	total_positions = 2
	spawn_positions = 2
	availablity_chance = 100
	supervisors = "the invisible hand of the market"
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
	required_language = null
	give_psionic_implant_on_join = FALSE
