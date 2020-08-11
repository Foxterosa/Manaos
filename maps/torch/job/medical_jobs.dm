/datum/job/senior_doctor
	title = "Medico"
	department = "Medicina"
	department_flag = MED
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 29)
	total_positions = 3
	spawn_positions = 3
	supervisors = "El Oficial Medico en Jefe"
	selection_color = "#013d3b"
	economic_power = 8
	alt_titles = list(
		"Cirujano",
		"Residente",
		"Forense"
		)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/medical/senior
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/medical/senior/fleet,
		/datum/mil_branch/civilian = /decl/hierarchy/outfit/job/torch/crew/medical/contractor/senior
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o1,
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/civ/contractor
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_MEDICAL     = SKILL_EXPERT,
	                    SKILL_ANATOMY     = SKILL_EXPERT,
	                    SKILL_CHEMISTRY   = SKILL_BASIC,
	                    SKILL_DEVICES     = SKILL_ADEPT)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX)
	skill_points = 20

	access = list(access_medical, access_morgue, access_virology, access_maint_tunnels, access_emergency_storage,
			            access_crematorium, access_chemistry, access_surgery,
			            access_medical_equip, access_solgov_crew, access_senmed, access_hangar)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)

/datum/job/doctor
	title = "Tecnico Medico"
	total_positions = 3
	spawn_positions = 3
	supervisors = "Medicos y el Oficial Medico en Jefe"
	economic_power = 7
	minimum_character_age = list(SPECIES_HUMAN = 19)
	minimal_player_age = 0
	alt_titles = list(
		"Paramedico",
		"Corpsman",
		"Enfermero")
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/medical/doctor
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/medical/doctor/fleet,
		/datum/mil_branch/civilian = /decl/hierarchy/outfit/job/torch/crew/medical/contractor
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/ec/e5,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/fleet/e5,
		/datum/mil_rank/fleet/e6,
		/datum/mil_rank/civ/contractor
	)
	min_skill = list(   SKILL_EVA     = SKILL_BASIC,
	                    SKILL_MEDICAL = SKILL_BASIC,
	                    SKILL_ANATOMY = SKILL_BASIC)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX)

	access = list(access_medical, access_morgue, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_eva, access_surgery, access_medical_equip, access_solgov_crew, access_hangar)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)
	skill_points = 22

/datum/job/medical_trainee
	title = "Aprendiz de Medico"
	department = "Medicina"
	department_flag = MED
	total_positions = 1
	spawn_positions = 1
	supervisors = "Personal medico, and the Chief Medical Officer"
	selection_color = "#013d3b"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	alt_titles = list(
		"Aprendiz de Tecnico Medico",
		"Aprendiz de Medico Militar",
		"Aprendiz de Enfermero")

	outfit_type = /decl/hierarchy/outfit/job/torch/crew/medical/doctor
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/medical/doctor/fleet
	)

	allowed_ranks = list(
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/fleet/e2
	)

	skill_points = 4
	no_skill_buffs = TRUE

	min_skill = list(   SKILL_EVA     = SKILL_ADEPT,
	                    SKILL_HAULING = SKILL_ADEPT,
	                    SKILL_MEDICAL = SKILL_EXPERT,
	                    SKILL_ANATOMY = SKILL_BASIC)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX)

	access = list(access_medical, access_morgue, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_surgery, access_medical_equip, access_solgov_crew)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)

/datum/job/medical_trainee/get_description_blurb()
	return "Eres un aprendiz de Medico Tecnico. Estas aprendiendo como tratar y sanar a la tripulacion del personal medico mas experimentado, sigues las ordenes del resto del equipo medico."

/datum/job/chemist
	title = "Tecnico de Laboratorio"
	department = "Medicina"
	department_flag = MED
	total_positions = 2
	spawn_positions = 2
	supervisors = "Oficial Medico en Jefe, the Corporate Liaison y Personal Medico"

	selection_color = "#013d3b"
	economic_power = 4
	minimum_character_age = list(SPECIES_HUMAN = 25)
	minimal_player_age = 0
	alt_titles = list(
		"Quimico",
		"Farmaceutico")

	outfit_type = /decl/hierarchy/outfit/job/torch/crew/medical/contractor/chemist
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/contractor)
	min_skill = list(   SKILL_MEDICAL   = SKILL_ADEPT,
	                    SKILL_CHEMISTRY = SKILL_ADEPT)

	max_skill = list(   SKILL_MEDICAL     = SKILL_ADEPT,
						SKILL_ANATOMY	  = SKILL_ADEPT,
	                    SKILL_CHEMISTRY   = SKILL_MAX)
	skill_points = 16

	access = list(access_medical, access_maint_tunnels, access_emergency_storage, access_medical_equip, access_solgov_crew, access_chemistry,
	 						access_virology, access_morgue, access_crematorium)
	minimal_access = list()

/datum/job/chemist/get_description_blurb()
	return "Eres un Tecnico de Laboratorio. Haces medicina y trabajas en el laboratorio de medicina. No eres un doctor o un medico, pero tienes conocimientos basicos en esos campos. No deberias de tratar pacientes si no, proporcionar la medicina necesaria para hacerlo. sigues las ordenes de los Medicos y Tecnicos Medicos."

/datum/job/psychiatrist
	title = "Consejero"
	total_positions = 1
	spawn_positions = 1
	economic_power = 5
	minimum_character_age = list(SPECIES_HUMAN = 24)
	minimal_player_age = 0
	supervisors = "Oficial Medico en Jefe"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/medical/counselor

	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/expeditionary_corps = /decl/hierarchy/outfit/job/torch/crew/medical/counselor/ec,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/medical/counselor/fleet)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/ec/o1)
	min_skill = list(
		SKILL_BUREAUCRACY = SKILL_BASIC,
		SKILL_MEDICAL     = SKILL_BASIC
	)
	max_skill = list(
		SKILL_MEDICAL     = SKILL_MAX
	)
	access = list(access_medical, access_psychiatrist, access_maint_tunnels, access_solgov_crew, access_medical_equip, access_virology)
	minimal_access = list()
	software_on_spawn = list(
		/datum/computer_file/program/suit_sensors,
		/datum/computer_file/program/camera_monitor
	)

	alt_titles = list(
		"Psiquiatra",
		"Psiquiatra Psiconico" = /decl/hierarchy/outfit/job/torch/crew/medical/counselor/mentalist,
		"Mentalista" = /decl/hierarchy/outfit/job/torch/crew/medical/counselor/mentalist

	)

/datum/job/psychiatrist/get_description_blurb()
	return "Eres el Psiquiatra. Tu responsabilidad principal es la salud mental y bienestar de la tripulacion. Sigues las ordenes del Oficial Medico en Jefe. A parte del Asesor Psiconico, eres el unico miembro abordo con habilidades Psiconicas."

/datum/job/psychiatrist/equip(var/mob/living/carbon/human/H)
	psi_faculties = list("[PSI_COERCION]" = PSI_RANK_OPERANT)
	return ..()

/datum/job/psychiatrist/equip(var/mob/living/carbon/human/H)
	if(H.mind.role_alt_title == "Psychiatrist")
		psi_faculties = list("[PSI_REDACTION]" = PSI_RANK_OPERANT)
	if(H.mind.role_alt_title == "Psionic Psychiatrist")
		psi_faculties = list("[PSI_REDACTION]" = PSI_RANK_OPERANT)
	if(H.mind.role_alt_title == "Mentalist")
		psi_faculties = list("[PSI_COERCION]" = PSI_RANK_OPERANT)
	return ..()