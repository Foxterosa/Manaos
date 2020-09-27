/datum/job/captain
	title = "Oficial Comandante"
	supervisors = "Centro de Comando y el Codigo Sol de la Justicia Militar"
	minimal_player_age = 14
	economic_power = 15
	minimum_character_age = list(SPECIES_HUMAN = 40,SPECIES_UNATHI = 40,SPECIES_SERGAL = 40, SPECIES_SKRELL = 40, SPECIES_PROMETHEAN = 40, SPECIES_YEOSA = 40, SPECIES_VULP = 40, SPECIES_VASS = 40, SPECIES_TAJ = 40, SPECIES_CUSTOM = 40, SPECIES_AKULA = 40)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/CO
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o6,
		/datum/mil_rank/fleet/o6
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_SCIENCE     = SKILL_ADEPT,
	                    SKILL_PILOT       = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 30

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/captain/get_description_blurb()
	return "Eres el Oficial Comandante, quien manda sobre todos. Eres un oficial profesional y experimentado en control de toda una nave, eres el responsable de todo lo que suceda abordo. Tu trabajo es asegurarte que [GLOB.using_map.full_name] cumpla su mision de exploracion. Seguido de tu Oficial Ejecutivo, los jefes de departamento, y tu asesor superior alistado para gestionar de forma eficaz la nave y aconsejarte."

/datum/job/captain/post_equip_rank(var/mob/person, var/alt_title)
	var/sound/announce_sound = (GAME_STATE <= RUNLEVEL_SETUP)? null : sound('sound/misc/boatswain.ogg', volume=20)
	captain_announcement.Announce("Todos espabilen, [alt_title || title] [person.real_name] ha llegado!", new_sound = announce_sound)
	..()

/datum/job/hop
	title = "Oficial Ejecutivo"
	supervisors = "el Oficial Comandante"
	department = "Comando"
	department_flag = COM
	minimal_player_age = 8
	economic_power = 12
	minimum_character_age = list(SPECIES_HUMAN = 35,SPECIES_UNATHI = 35,SPECIES_SERGAL = 35, SPECIES_NORTHERN = 35, SPECIES_EASTERN = 35, SPECIES_SKRELL = 35, SPECIES_PROMETHEAN = 35, SPECIES_YEOSA = 35, SPECIES_VASS = 35, SPECIES_TAJ = 35, SPECIES_CUSTOM = 35, SPECIES_AKULA = 35)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/XO
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/command/XO/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o5,
		/datum/mil_rank/fleet/o4,
		/datum/mil_rank/fleet/o5
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_COMPUTER    = SKILL_BASIC,
	                    SKILL_PILOT       = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 30

	access = list(access_security, access_brig, access_armory, access_forensics_lockers, access_heads, access_medical, access_morgue, access_tox, access_tox_storage,
					access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage, access_change_ids,
					access_ai_upload, access_teleporter, access_eva, access_bridge, access_all_personal_lockers, access_chapel_office, access_tech_storage,
					access_atmospherics, access_bar, access_janitor, access_crematorium, access_kitchen, access_robotics, access_cargo, access_construction,
					access_chemistry, access_cargo_bot, access_hydroponics, access_manufacturing, access_library, access_lawyer, access_virology, access_cmo,
					access_qm, access_network, access_surgery, access_research, access_mining, access_mining_office, access_mailsorting, access_heads_vault,
					access_mining_station, access_xenobiology, access_ce, access_hop, access_hos, access_RC_announce, access_keycard_auth, access_tcomsat,
					access_gateway, access_sec_doors, access_psychiatrist, access_xenoarch, access_medical_equip, access_heads, access_hangar, access_guppy_helm,
					access_expedition_shuttle_helm, access_aquila, access_aquila_helm, access_solgov_crew, access_nanotrasen, access_robotics_engineering,
					access_emergency_armory, access_sec_guard, access_gun, access_expedition_shuttle, access_guppy, access_seneng, access_senmed, access_senadv,
					access_explorer, access_pathfinder, access_pilot, access_commissary, access_petrov, access_petrov_helm, access_petrov_analysis, access_petrov_phoron,
					access_petrov_toxins, access_petrov_chemistry, access_petrov_security, access_petrov_maint, access_rd, access_petrov_rd)
	minimal_access = list(access_security, access_brig, access_armory, access_forensics_lockers, access_heads, access_medical, access_morgue, access_tox, access_tox_storage,
						access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage, access_change_ids,
						access_ai_upload, access_teleporter, access_eva, access_bridge, access_all_personal_lockers, access_chapel_office, access_tech_storage,
						access_atmospherics, access_bar, access_janitor, access_crematorium, access_kitchen, access_robotics, access_cargo, access_construction,
						access_chemistry, access_cargo_bot, access_hydroponics, access_manufacturing, access_library, access_lawyer, access_virology, access_cmo,
						access_qm, access_network, access_surgery, access_research, access_mining, access_mining_office, access_mailsorting, access_heads_vault,
						access_mining_station, access_xenobiology, access_ce, access_hop, access_hos, access_RC_announce, access_keycard_auth, access_tcomsat,
						access_gateway, access_sec_doors, access_psychiatrist, access_xenoarch, access_medical_equip, access_heads, access_hangar, access_guppy_helm,
						access_expedition_shuttle_helm, access_aquila, access_aquila_helm, access_solgov_crew, access_nanotrasen, access_robotics_engineering,
						access_emergency_armory, access_sec_guard, access_gun, access_expedition_shuttle, access_guppy, access_seneng, access_senmed, access_senadv,
						access_explorer, access_pathfinder, access_pilot, access_commissary, access_petrov, access_petrov_helm, access_petrov_analysis, access_petrov_phoron,
						access_petrov_toxins, access_petrov_chemistry, access_petrov_security, access_petrov_maint, access_rd, access_petrov_rd, access_gunnery)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/hop/get_description_blurb()
	return "Eres el Oficial Ejecutivo. Eres un Oficial superior con experiencia, el segundo en comandar y en ser responsable sobre el funcionamiento de la nave bajo tu oficial al mando. En su ausencia, puedes tomar su puesto. Tu deber principal es dirigir a los jefes de cada departamento y tambien los que no lo son. Tambien eres responsable de los contratistas y pasajeros que se encuentran abordo de la nave. Considera al Asesor Superior Alistado y a los Oficiales de Puente a tu disposicion."

/datum/job/rd
	title = "Oficial Cientifico en Jefe"
	supervisors = "the Commanding Officer"
	economic_power = 20
	minimal_player_age = 6
	minimum_character_age = list(SPECIES_HUMAN = 35,SPECIES_UNATHI = 35,SPECIES_SERGAL = 35, SPECIES_SKRELL = 35, SPECIES_PROMETHEAN = 35, SPECIES_YEOSA = 35, SPECIES_VASS = 35, SPECIES_TAJ = 35, SPECIES_CUSTOM = 35, SPECIES_AKULA = 35)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/research/cso
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o3
	)

	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_COMPUTER    = SKILL_BASIC,
	                    SKILL_FINANCE     = SKILL_ADEPT,
	                    SKILL_BOTANY      = SKILL_BASIC,
	                    SKILL_ANATOMY     = SKILL_BASIC,
	                    SKILL_DEVICES     = SKILL_BASIC,
	                    SKILL_SCIENCE     = SKILL_ADEPT)

	max_skill = list(   SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_DEVICES     = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 30

	access = list(
		access_tox, access_tox_storage, access_emergency_storage, access_teleporter, access_bridge, access_rd,
		access_research, access_mining, access_mining_office, access_mining_station, access_xenobiology,
		access_RC_announce, access_keycard_auth, access_xenoarch, access_nanotrasen, access_sec_guard, access_heads,
		access_expedition_shuttle, access_guppy, access_hangar, access_petrov, access_petrov_helm, access_guppy_helm,
		access_petrov_analysis, access_petrov_phoron, access_petrov_toxins, access_petrov_chemistry, access_petrov_rd,
		access_petrov_security, access_petrov_maint, access_pathfinder, access_explorer, access_eva, access_solgov_crew,
		access_expedition_shuttle, access_expedition_shuttle_helm, access_maint_tunnels, access_robotics, access_robotics_engineering,access_ai_upload, access_tcomsat
	)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/aidiag,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/rd/get_description_blurb()
	return "Eres el Jefe de Ciencias. Eres el responsable del departamento de investigacion. Manejas los aspectos cientificos del proyecto y te vinculas con los intereses corporativos de la Organizacion del Cuerpo Expedicionario. Asegurate que la ciencia este hecha, hazlo tu mismo si es necesario, y manda a tus cientificos en misiones lejanas para encontrar cosas beneficiosas para el proyecto. Aconsejas al Oficial Comandante en asuntos de la ciencia."

/datum/job/cmo
	title = "Oficial Medico en Jefe"
	supervisors = "El Oficial Comandante y el Oficial Ejecutivo"
	economic_power = 10
	minimal_player_age = 6
	minimum_character_age = list(SPECIES_HUMAN = 35,SPECIES_UNATHI = 35,SPECIES_SERGAL = 35, SPECIES_SKRELL = 35, SPECIES_PROMETHEAN = 35, SPECIES_YEOSA = 35, SPECIES_VASS = 35, SPECIES_TAJ = 35, SPECIES_CUSTOM = 35, SPECIES_AKULA = 35)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/cmo
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/command/cmo/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o3,
		/datum/mil_rank/fleet/o4,
		/datum/mil_rank/ec/o3
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_MEDICAL     = SKILL_EXPERT,
	                    SKILL_ANATOMY     = SKILL_EXPERT,
	                    SKILL_CHEMISTRY   = SKILL_BASIC,
						SKILL_DEVICES     = SKILL_ADEPT)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX)
	skill_points = 26

	access = list(access_medical, access_morgue, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_teleporter, access_eva, access_bridge, access_heads,
			            access_chapel_office, access_crematorium, access_chemistry, access_virology,
			            access_cmo, access_surgery, access_RC_announce, access_keycard_auth, access_psychiatrist,
			            access_medical_equip, access_solgov_crew, access_senmed, access_hangar)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/cmo/get_description_blurb()
	return "Eres el Oficial Medico en Jefe. Manejas el departamento de medicina. Te aseguras de que todos los miembros del personal medico esten capacitados y haciendo sus obligaciones. Asegurate que tus doctores esten trabajando en la enfermeria y que tu medico o paramedico este listo para responder a cualquier llamada de auxilio. Actua como un segundo cirujano o un farmaceutico de repuesto en caso de que esten ausentes. Se espera que tengas un buen conocimiento medico junto con las normas generales."

/datum/job/chief_engineer
	title = "Oficial Ingeniero en Jefe"
	supervisors = "el Oficial Comandante y el Oficial Ejecutivo"
	economic_power = 9
	minimum_character_age = list(SPECIES_HUMAN = 27,SPECIES_UNATHI = 27,SPECIES_SERGAL = 27, SPECIES_SKRELL = 27, SPECIES_PROMETHEAN = 27, SPECIES_YEOSA = 27, SPECIES_VASS = 27, SPECIES_TAJ = 27, SPECIES_CUSTOM = 27, SPECIES_AKULA = 27)
	minimal_player_age = 6
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/chief_engineer
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/command/chief_engineer/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o3,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/fleet/o3
	)
	min_skill = list(   SKILL_BUREAUCRACY  = SKILL_BASIC,
	                    SKILL_COMPUTER     = SKILL_ADEPT,
	                    SKILL_EVA          = SKILL_ADEPT,
	                    SKILL_CONSTRUCTION = SKILL_ADEPT,
	                    SKILL_ELECTRICAL   = SKILL_ADEPT,
	                    SKILL_ATMOS        = SKILL_ADEPT,
	                    SKILL_ENGINES      = SKILL_EXPERT)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX)
	skill_points = 30

	access = list(access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_ai_upload, access_teleporter, access_eva, access_bridge, access_heads,
			            access_tech_storage, access_robotics, access_atmospherics, access_janitor, access_construction,
			            access_network, access_ce, access_RC_announce, access_keycard_auth, access_tcomsat,
			            access_solgov_crew, access_robotics_engineering, access_seneng, access_hangar, access_robotics)
	minimal_access = list(access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_ai_upload, access_teleporter, access_eva, access_bridge, access_heads,
			            access_tech_storage, access_atmospherics, access_janitor, access_construction,
			            access_network, access_ce, access_RC_announce, access_keycard_auth, access_tcomsat,
			            access_solgov_crew, access_robotics_engineering, access_seneng, access_hangar, access_robotics)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/ntnetmonitor,
							 /datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor,
							 /datum/computer_file/program/reports)

/datum/job/chief_engineer/get_description_blurb()
	return "Eres el Oficial Ingeniero en Jefe. Manejas el departamento de ingenieria. Eres responsable del Ingeniero Senior quien es tu mano izquierda y (deberia ser) un habilidoso y experimentado ingeniero. Maneja tus ingenieros, asegura que el buque se mantenga con energia, que las brechas esten reparadas y los problemas resueltos. Aconseja al OC en asuntos de Ingenieria. Tambien eres responsable de mantenimiento y control de cualquiere buque sintetico. Eres un Ingeniero experimentado con una gran de conocimientos teoricos. Deberias de conocer las regulaciones de los buques en un nivel razonable."

/datum/job/hos
	title = "Oficial Maestro de Seguridad en Jefe"
	supervisors = "Oficial Comandante y Oficial Ejecutivo"
	economic_power = 8
	minimal_player_age = 14
	minimum_character_age = list(SPECIES_HUMAN = 25,SPECIES_UNATHI = 25,SPECIES_SERGAL = 25, SPECIES_SKRELL = 25, SPECIES_PROMETHEAN = 25, SPECIES_YEOSA = 25, SPECIES_VASS = 25, SPECIES_TAJ = 25, SPECIES_CUSTOM = 25, SPECIES_AKULA = 25)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/cos
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/command/cos/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o3,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/fleet/o3
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_EVA         = SKILL_ADEPT,
	                    SKILL_COMBAT      = SKILL_EXPERT,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_FORENSICS   = SKILL_ADEPT)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)
	skill_points = 28

	access = list(access_security, access_brig, access_armory, access_forensics_lockers,
			            access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_teleporter, access_eva, access_bridge, access_heads,
			            access_hos, access_RC_announce, access_keycard_auth, access_sec_doors,
			            access_solgov_crew, access_gun, access_emergency_armory, access_hangar, access_petrov, access_petrov_security)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/hos/get_description_blurb()
	return "Eres el Oficial Maestro de Seguridad en Jefe. Manejas la seguridad de la nave tanto como el Maestro de Armas y la Policia Militar, como el Guardian de Brig y el Tecnico Forense. Mantienes la nave a salvo. Te encargas de los asuntos de seguridad externos e internos. Eres la ley, sigues las ordenes del Oficial Comandante y el Oficial Ejecutivo. Se espera que tengas conocimiento del SCMJ, la ley solar y los procedimientos de cada alerta."

/datum/job/sea
	title = "Asesor Superior Alistado"
	department = "Soporte"
	department_flag = SPT
	total_positions = 1
	spawn_positions = 1
	supervisors = "el Oficial Comandante y el Oficial Ejecutivo"
	selection_color = "#2f2f7f"
	minimal_player_age = 6
	economic_power = 8
	minimum_character_age = list(SPECIES_HUMAN = 35,SPECIES_UNATHI = 35,SPECIES_SERGAL = 35, SPECIES_SKRELL = 35, SPECIES_PROMETHEAN = 35, SPECIES_YEOSA = 35, SPECIES_VASS = 35, SPECIES_TAJ = 35, SPECIES_CUSTOM = 35, SPECIES_AKULA = 35)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/sea/fleet
	allowed_branches = list(
		/datum/mil_branch/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e8,
		/datum/mil_rank/fleet/e9_alt1,
		/datum/mil_rank/fleet/e9
	)
	min_skill = list(   SKILL_EVA        = SKILL_BASIC,
	                    SKILL_COMBAT     = SKILL_BASIC,
	                    SKILL_WEAPONS    = SKILL_ADEPT)

	max_skill = list(   SKILL_COMBAT       = SKILL_MAX,
	                    SKILL_WEAPONS      = SKILL_MAX,
	                    SKILL_PILOT        = SKILL_MAX,
	                    SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX)
	skill_points = 24


	access = list(access_medical, access_engine, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_teleporter, access_eva, access_bridge, access_all_personal_lockers, access_janitor,
			            access_kitchen, access_cargo, access_RC_announce, access_keycard_auth, access_guppy_helm,
			            access_solgov_crew, access_gun, access_expedition_shuttle, access_guppy, access_senadv, access_hangar, access_emergency_armory, access_gunnery)

	software_on_spawn = list(/datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/sea/get_description_blurb()
	return "Eres el Asesor Superior Alistado. Eres la persona de mayor rango alistada en la nave. Sigues de forma directa las ordenes del Oficial Comandante. Les aconsejas sobre las preocupaciones de los alistados, proporcionas experiencia y asesoramiento a los oficiales. Eres responsable de asegurar la disciplina y buena conducta entre los reclutas, asi como de avisar a los oficiales de cualquiera problema y \"asesorarles\" sobre los errores que pueden cometer. Tambien te encargas de varias tareas en nombre del OC y OE. Eres alguien experienciado y conoces las regulaciones mejor que nadie."

/datum/job/bridgeofficer
	title = "Oficial de Puente"
	department = "Soporte"
	department_flag = SPT
	total_positions = 3
	spawn_positions = 3
	supervisors = "el Oficial Comandante y los jefes del personal"
	selection_color = "#2f2f7f"
	minimal_player_age = 0
	economic_power = 7
	minimum_character_age = list(SPECIES_HUMAN = 22,SPECIES_UNATHI = 22,SPECIES_SERGAL = 22, SPECIES_SKRELL = 22, SPECIES_PROMETHEAN = 22, SPECIES_YEOSA = 22, SPECIES_VASS = 22, SPECIES_TAJ = 22, SPECIES_CUSTOM = 22, SPECIES_AKULA = 22)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/bridgeofficer
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/command/bridgeofficer/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o1,
		/datum/mil_rank/fleet/o1
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_PILOT       = SKILL_ADEPT,
						SKILL_SCIENCE     = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
						SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 20


	access = list(access_security, access_medical, access_teleporter, access_engine, access_maint_tunnels, access_emergency_storage,
			            access_bridge, access_janitor, access_kitchen, access_cargo, access_mailsorting, access_RC_announce, access_keycard_auth,
			            access_solgov_crew, access_aquila, access_aquila_helm, access_guppy, access_guppy_helm, access_external_airlocks,
			            access_eva, access_hangar, access_cent_creed, access_explorer, access_expedition_shuttle, access_expedition_shuttle_helm, access_gunnery)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor,
							 /datum/computer_file/program/reports,
							 /datum/computer_file/program/deck_management)

/datum/job/bridgeofficer/get_description_blurb()
	return "Eres un Oficial de Puente. Eres un oficial de bajo rango, no das ordenes por cuenta propia. Sigues las ordenes de todo comando. Estas encargado de manejar los asuntos en el puente y informar directamente a tu OC y OE. Tomas el control de la dagon y piloteas la Byakhee si es necesario, monitorizas comunicaciones y programas digitales de bridge, y reportas informacion importante a comando."

