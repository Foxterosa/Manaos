/datum/map/torch

	base_floor_type = /turf/simulated/floor/reinforced/airless
	base_floor_area = /area/maintenance/exterior

	post_round_safe_areas = list (
		/area/centcom,
		/area/shuttle/escape/centcom,
		/area/shuttle/escape_pod1/centcom,
		/area/shuttle/escape_pod2/centcom,
		/area/shuttle/escape_pod3/centcom,
		/area/shuttle/escape_pod5/centcom,
		/area/shuttle/transport1/centcom,
		/area/shuttle/administration/centcom,
		/area/shuttle/specops/centcom,
	)

//Fifth Deck (Z-0)
/area/hallway/primary/fifthdeck/fore
	name = "\improper Cubierta 5 - Pasillo oeste"
	icon_state = "hallF"

/area/hallway/primary/fifthdeck/aft
	name = "\improper Cubierta 5 - Pasillo este"
	icon_state = "hallA"

/area/maintenance/fifthdeck
	name = "Cubierta 5 - Mantenimiento"
	icon_state = "maintcentral"

/area/maintenance/fifthdeck/aftport
	name = "Cubierta 5 - Mantenimiento sureste"
	icon_state = "apmaint"

/area/maintenance/fifthdeck/aftstarboard
	name = "Cubierta 5 - Mantenimiento norte"
	icon_state = "asmaint"

/area/maintenance/fifthdeck/fore
	name = "Cubierta 5 - Mantenimiento suroeste"
	icon_state = "fmaint"

/area/maintenance/substation/fifthdeck
	name = "Cubierta 5 - Subestación"

//Fourth Deck (Z-1)
/area/hallway/primary/fourthdeck/fore
	name = "\improper Cubierta 4 - Pasillo oeste"
	icon_state = "hallF"

/area/hallway/primary/fourthdeck/center
	name = "\improper Cubierta 4 - Pasillo central"
	icon_state = "hallC3"

/area/hallway/primary/fourthdeck/aft
	name = "\improper Cubierta 4 - Pasillo este"
	icon_state = "hallA"

/area/maintenance/fourthdeck
	name = "Cubierta 4 - Mantenimiento"
	icon_state = "maintcentral"

/area/maintenance/fourthdeck/aft
	name = "Cubierta 4 - Mantenimiento este"
	icon_state = "amaint"

/area/maintenance/fourthdeck/foreport
	name = "Cubierta 4 - Mantenimiento sureste"
	icon_state = "fpmaint"

/area/maintenance/fourthdeck/forestarboard
	name = "Cubierta 4 - Mantenimiento noreste"
	icon_state = "fsmaint"

/area/maintenance/fourthdeck/starboard
	name = "Cubierta 4 - Mantenimiento norte"
	icon_state = "smaint"

/area/maintenance/fourthdeck/port
	name = "Cubierta 4 - Mantenimiento sur"
	icon_state = "pmaint"

/area/teleporter/fourthdeck
	name = "\improper Cubierta 4 - Teletransportador"
	icon_state = "teleporter"

/area/maintenance/substation/fourthdeck
	name = "Cubierta 4 - Subestación"

/area/crew_quarters/safe_room/fourthdeck
	name = "\improper Cubierta 4 - Cuarto seguro"

//Third Deck (Z-2)
/area/hallway/primary/thirddeck/fore
	name = "\improper Cubierta 3 - Pasillo oeste"
	icon_state = "hallF"

/area/hallway/primary/thirddeck/center
	name = "\improper Cubierta 3 - Pasillo central"
	icon_state = "hallC3"

/area/hallway/primary/thirddeck/aft
	name = "\improper Cubierta 3 - Pasillo este"
	icon_state = "hallA"

/area/maintenance/thirddeck
	name = "Cubierta 3 - Mantenimiento"
	icon_state = "maintcentral"

/area/maintenance/thirddeck/foreport
	name = "Cubierta 3 - Mantenimiento suroeste"
	icon_state = "fpmaint"

/area/maintenance/thirddeck/forestarboard
	name = "Cubierta 3 - Mantenimiento noroeste"
	icon_state = "fsmaint"

/area/maintenance/thirddeck/starboard
	name = "Cubierta 3 - Mantenimiento norte"
	icon_state = "smaint"

/area/maintenance/thirddeck/port
	name = "Cubierta 3 - Puerto - Mantenimiento sur"
	icon_state = "pmaint"

/area/maintenance/thirddeck/aftstarboard
	name = "Cubierta  3 - Mantenimiento noreste"
	icon_state = "asmaint"

/area/maintenance/thirddeck/aftport
	name = "Cubierta 3 - Mantenimiento - sureste"
	icon_state = "apmaint"

/area/teleporter/thirddeck
	name = "\improper Cubierta 3 - Teletransportador"
	icon_state = "teleporter"

/area/maintenance/substation/thirddeck
	name = "Cubierta 3 - Subestación"

/area/crew_quarters/safe_room
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/crew_quarters/safe_room/thirddeck
	name = "\improper Cubierta 3 - Cuarto seguro"

/area/crew_quarters/garden
	name = "\improper Cubierta 5 - Jardin"

//Second Deck (Z-3)
/area/maintenance/seconddeck
	name = "Cubierta 2 - Mantenimiento"
	icon_state = "maintcentral"

/area/maintenance/seconddeck/aftstarboard
	name = "Cubierta 2 - Mantenimiento noreste"
	icon_state = "asmaint"

/area/maintenance/seconddeck/aftport
	name = "Cubierta 2 - Mantenimiento sureste"
	icon_state = "apmaint"

/area/maintenance/seconddeck/foreport
	name = "Cubierta 2 - Mantenimiento suroeste"
	icon_state = "fpmaint"

/area/maintenance/seconddeck/forestarboard
	name = "Cubierta 2 - Mantenimiento noroeste"
	icon_state = "fsmaint"

/area/maintenance/seconddeck/central
	name = "Cubierta 2 - Mantenimiento norte"
	icon_state = "maintcentral"

/area/hallway/primary/seconddeck
	name = "Cubierta 2 - Pasillo central"
	icon_state = "hallC2"

/area/hallway/primary/seconddeck/center
	name = "\improper Cubierta 2 - Hueco de escalera"

/area/hallway/primary/seconddeck/elevator
	name = "Cubierta 2 - Elevador"
	icon_state = "hallC2_e"

/area/hallway/primary/seconddeck/fore
	name = "Cubierta 2 - Pasillo oeste"
	icon_state = "hallF2"

/area/teleporter/seconddeck
	name = "\improper Cubierta 2 - Teletransportador"
	icon_state = "teleporter"

/area/maintenance/substation/seconddeck
	name = "Cubierta 2 - Subestación"

//First Deck (Z-4)
/area/maintenance/firstdeck
	name = "Cubierta 1 - Mantenimiento"
	icon_state = "maintcentral"

/area/maintenance/firstdeck/aftstarboard
	name = "Cubierta 1 - Mantenimiento noreste"
	icon_state = "asmaint"

/area/maintenance/firstdeck/aftport
	name = "Cubierta 1 - Mantenimiento sureste"
	icon_state = "apmaint"

/area/maintenance/firstdeck/forestarboard
	name = "Cubierta 1 - Mantenimiento noroeste"
	icon_state = "fsmaint"

/area/maintenance/firstdeck/foreport
	name = "Cubierta 1 - Mantenimiento suroeste"
	icon_state = "fpmaint"

/area/maintenance/firstdeck/centralstarboard
	name = "Cubierta 1 - Mantenimiento norte"
	icon_state = "smaint"

/area/maintenance/firstdeck/centralport
	name = "Cubierta 1 - Mantenimiento sur"
	icon_state = "pmaint"

/area/teleporter/firstdeck
	name = "\improper Cubierta 1 - Teletransportador"
	icon_state = "teleporter"

/area/hallway/primary/firstdeck/fore
	name = "\improper Cubierta 1 - Pasillo oeste"
	icon_state = "hallF"

/area/hallway/primary/firstdeck/center
	name = "\improper Cubierta 1 - Pasillo central"
	icon_state = "hallC1"

/area/hallway/primary/firstdeck/aft
	name = "\improper Cubierta 1 - Pasillo este"
	icon_state = "hallA"

/area/crew_quarters/safe_room/firstdeck
	name = "\improper Cubierta 1 - Cuarto seguro"

/area/maintenance/substation/firstdeck // First Deck (Z-4)
	name = "Cubierta 1 - Subestación"

//Bridge (Z-5)
/area/maintenance/bridge
	name = "Puente - Mantenimiento"
	icon_state = "maintcentral"

/area/maintenance/bridge/aftstarboard
	name = "Puente - Mantenimiento noreste"
	icon_state = "asmaint"

/area/maintenance/bridge/aftport
	name = "Puente - Mantenimiento sureste"
	icon_state = "apmaint"

/area/maintenance/bridge/forestarboard
	name = "Puente - Mantenimiento suroeste"
	icon_state = "fsmaint"

/area/maintenance/bridge/foreport
	name = "Puente - Mantenimiento noroeste"
	icon_state = "fpmaint"

/area/hallway/primary/bridge/fore
	name = "\improper Puente - oeste"
	icon_state = "hallF"

/area/hallway/primary/bridge/aft
	name = "\improper Puente - Pasillo este"
	icon_state = "hallA"

/area/maintenance/substation/bridge // First Deck (Z-4)
	name = "Puente - Subestación"

/area/crew_quarters/safe_room/bridge
	name = "\improper Puente - Cuarto seguro"

/area/bridge/storage
	name = "\improper Puente - Almacen"
	req_access = list(access_bridge)

// Shuttles
/area/shuttle/transport1/centcom
	icon_state = "shuttle"
	name = "\improper Embarcación de transporte - Comando Central"

//torch large pods
/area/shuttle/escape_pod1/station
	name = "Capsula de escape 1"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod2/station
	name = "Capsula de escape 2"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod3/station
	name = "Capsula de escape 3"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod4/station
	name = "Capsula de escape 4"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod5/station
	name = "Capsula de escape 5"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod6/station
	name = "Capsula de escape 6"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

//torch small pods
/area/shuttle/escape_pod7/station
	name = "Capsula de escape 7"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod8/station
	name = "Capsula de escape 8"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod9/station
	name = "Capsula de escape 9"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod10/station
	name = "Capsula de escape 10"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod11/station
	name = "Capsula de escape 11"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

//Charon

/area/exploration_shuttle/
	name = "\improper BENT Gaunt"
	icon_state = "shuttlered"
	base_turf = /turf/simulated/floor/plating
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/exploration_shuttle/cockpit
	name = "\improper BENT Gaunt - Cabina"
	req_access = list(access_expedition_shuttle)

/area/exploration_shuttle/atmos
	name = "\improper BENT Gaunt - Compartimiento de atmos"

/area/exploration_shuttle/power
	name = "\improper BENT Gaunt - Compartimiento de energia"

/area/exploration_shuttle/crew
	name = "\improper BENT Gaunt - Compartimiento de la tripulación"

/area/exploration_shuttle/cargo
	name = "\improper BENT Gaunt - Bahia de carga"

/area/exploration_shuttle/airlock
	name = "\improper BENT Gaunt - Compartimiento de la esclusa de aire"

//Aquila

/area/aquila
	name = "\improper 	CSNT Byakhee"
	icon_state = "shuttlered"
	base_turf = /turf/simulated/floor/reinforced/airless
	requires_power = 1
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/aquila/cockpit
	name = "\improper CSNT Byakhee - Cabina"
	req_access = list(access_aquila)

/area/aquila/maintenance
	name = "\improper CSNT Byakhee - Mantenimiento"
	req_access = list(access_solgov_crew)

/area/aquila/storage
	name = "\improper CSNT Byakhee - Almacen"
	req_access = list(access_solgov_crew)

/area/aquila/secure_storage
	name = "\improper CSNT Byakhee - Almacen seguro"
	req_access = list(access_aquila)

/area/aquila/mess
	name = "\improper CSNT Byakhee - Comedor"

/area/aquila/passenger
	name = "\improper CSNT Byakhee - Compartimiento de pasajeros"

/area/aquila/medical
	name = "\improper CSNT Byakhee - Bahia Medica"

/area/aquila/head
	name = "\improper CSNT Byakhee - Cañon"

/area/aquila/airlock
	name = "\improper CSNT Byakhee - Compartimiento de la esclusa de aire"
	req_access = list(access_solgov_crew)

//Guppy

/area/guppy_hangar/start
	name = "\improper PRNT Garuda"
	icon_state = "shuttlered"
	requires_power = 1
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	req_access = list(access_guppy)


//Petrov

/area/shuttle/petrov
	name = "\improper LINT Polyp"
	requires_power = 1
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	req_access = list(access_petrov)

/area/shuttle/petrov/cell1
	name = "\improper LINT Polyp - Celda de aislamiento 1"
	icon_state = "shuttle"
/area/shuttle/petrov/cell2
	name = "\improper LINT Polyp - Celda de aislamiento 2"
	icon_state = "shuttlegrn"
/area/shuttle/petrov/cell3
	name = "\improper LINT Polyp - Celda de aislamiento 3"
	icon_state = "shuttle"

/area/shuttle/petrov/hallwaya
	name = "\improper LINT Polyp - Pasillo inferior"
	icon_state = "hallA"

/area/shuttle/petrov/security
	name = "\improper LINT Polyp - Oficina de seguridad"
	icon_state = "checkpoint1"
	req_access = list(access_petrov_security)

/area/shuttle/petrov/rd
	icon_state = "heads_rd"
	name = "\improper LINT Polyp - Oficina del OCJ"
	icon_state = "head_quarters"
	req_access = list(access_petrov_rd)

/area/shuttle/petrov/cockpit
	name = "\improper LINT Polyp - Cabina"
	icon_state = "shuttlered"
	req_access = list(access_petrov_helm)

/area/shuttle/petrov/maint
	name = "\improper LINT Polyp - Mantenimiento"
	icon_state = "engine"
	req_access = list(access_petrov_maint)

/area/shuttle/petrov/analysis
	name = "\improper LINT Polyp - Laboratorio de análisis"
	icon_state = "devlab"
	req_access = list(access_petrov_analysis)

/area/shuttle/petrov/toxins
	name = "\improper LINT Polyp - Almacenan y campo de tiro"
	icon_state = "toxstorage"
	req_access = list(access_petrov_toxins)

/area/shuttle/petrov/rnd
	name = "\improper LINT Polyp - Laboratorio de fabricación"
	icon_state = "devlab"

/area/shuttle/petrov/isolation
	name = "\improper LINT Polyp - Laboratorio de aislamiento"
	icon_state = "xeno_lab"

/area/shuttle/petrov/phoron
	name = "\improper LINT Polyp - Contención pesada"
	icon_state = "toxstorage"
	req_access = list(access_petrov_phoron)

/area/shuttle/petrov/custodial
	name = "\improper LINT Polyp - Custodio"
	icon_state = "decontamination"

/area/shuttle/petrov/equipment
	name = "\improper LINT Polyp - Almacén de equipamiento"
	icon_state = "locker"

/area/shuttle/petrov/eva
	name = "\improper LINT Polyp - Almacén de AEV"
	icon_state = "locker"

//Turbolift
/area/turbolift
	name = "\improper Turbolift"
	icon_state = "shuttle"
	requires_power = 0
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	req_access = list(access_maint_tunnels)

/area/turbolift/start
	name = "\improper Turbolift inicio"

/area/turbolift/bridge
	name = "\improper Puente"
	base_turf = /turf/simulated/open

/area/turbolift/firstdeck
	name = "\improper Cubierta 1"
	base_turf = /turf/simulated/open

/area/turbolift/seconddeck
	name = "\improper Cubierta 2"
	base_turf = /turf/simulated/open

/area/turbolift/thirddeck
	name = "\improper Cubierta 3"
	base_turf = /turf/simulated/open

/area/turbolift/fourthdeck
	name = "\improper Cubierta 4"
	base_turf = /turf/simulated/floor/plating

/area/turbolift/cargo_lift
	name = "\improper Elevador de carga"
	icon_state = "shuttle3"
	base_turf = /turf/simulated/open

/area/turbolift/robotics_lift
	name = "\improper Robotica - Elevador"
	icon_state = "shuttle3"
	base_turf = /turf/simulated/open

//Merchant

/area/shuttle/merchant/home
	name = "\improper Buque mercantil"
	icon_state = "shuttlegrn"
	req_access = list(access_merchant)
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

// Elevator areas.
/area/turbolift/torch_top
	name = "Puente - Elevador"
	lift_floor_label = "Bridge"
	lift_floor_name = "Bridge"
	lift_announce_str = "Arriving at Command Deck: Bridge. Meeting Room. Command Offices. AI Core. Landing Area. Auxiliary EVA."

/area/turbolift/torch_fourth
	name = "Cubierta 1 - Elevador"
	lift_floor_label = "Deck 1"
	lift_floor_name = "Operations Deck"
	lift_announce_str = "Arriving at Operations Deck: Infirmary. Security Wing. Research Wing. Auxiliary Cryogenic Storage. Emergency Armory."

/area/turbolift/torch_third
	name = "Cubierta 2 - Elevador"
	lift_floor_label = "Deck 2"
	lift_floor_name = "Maintenance Deck"
	lift_announce_str = "Arriving at Maintenance Deck: Engineering. Atmospherics. Sanitation. Storage."

/area/turbolift/torch_second
	name = "Cubierta 3 - Elevador"
	lift_floor_label = "Deck 3"
	lift_floor_name = "Habitation Deck"
	lift_announce_str = "Arriving at Habitation Deck: EVA. Telecommunications. Mess Hall. Officer's Mess. Lounge. Diplomatic Quarters. Hydroponics. Cryogenic Storage. Holodeck. Gym."

/area/turbolift/torch_first
	name = "Cubierta 4 - Elevador"
	lift_floor_label = "Deck 4"
	lift_floor_name = "Supply Deck"
	lift_announce_str = "Arriving at Supply Deck: Shuttle Docks. Pathfinder's Office. Cargo Storage. Supply Office. Laundry."

/area/turbolift/torch_ground
	name = "Cubierta 5 - Elevador"
	lift_floor_label = "Deck 5"
	lift_floor_name = "Hangar Deck"
	lift_announce_str = "Arriving at Hangar Deck: Main Hangar. Supply Warehouse. Expedition Preparation. Mineral Processing."
	base_turf = /turf/simulated/floor

// Command
/area/command/captainmess
	name = "Cubierta 4 - Comedor de oficiales"
	icon_state = "bar"
	sound_env = MEDIUM_SOFTFLOOR

/area/command/pathfinder
	name = "\improper Cubierta 4 - Oficina del Pathfinder"
	icon_state = "head_quarters"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_pathfinder)

/area/command/pilot
	name = "\improper Cubierta 5 - Sala del piloto"
	icon_state = "head_quarters"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_pilot)

/area/command/armoury
	name = "\improper Cubierta 1 - Armeria de emergencia"
	icon_state = "Warden"
	req_access = list(list(access_bridge, access_emergency_armory))

/area/command/armoury/access
	name = "\improper Armeria de emergencia - Acceso"

/area/command/armoury/tactical
	name = "\improper Armeria de emergencia - Tactica"
	icon_state = "Tactical"
	req_access = list(access_emergency_armory)

/area/command/disperser
	name = "\improper Dispersor de campo de obstrucción"
	icon_state = "disperser"
	req_access = list(access_bridge)

/area/crew_quarters/heads
	icon_state = "heads"
	req_access = list(access_heads)

/area/crew_quarters/heads/cobed
	icon_state = "heads_cap"
	name = "\improper Puente - Cuartos del OC"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_captain)

/area/crew_quarters/heads/office/co
	icon_state = "heads_cap"
	name = "\improper Puente - Oficina del OC"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_captain)

/area/crew_quarters/heads/office/xo
	icon_state = "heads_hop"
	name = "\improper Puente - Oficina del OE"
	req_access = list(access_hop)

/area/crew_quarters/heads/office/rd
	icon_state = "heads_rd"
	name = "\improper Puente - Oficina del OCJ"
	req_access = list(access_rd)

/area/crew_quarters/heads/office/cmo
	icon_state = "heads_cmo"
	name = "\improper Puente - Oficina del OMJ"
	req_access = list(access_cmo)

/area/crew_quarters/heads/office/ce
	icon_state = "heads_ce"
	name = "\improper Puente - Oficina del OIJ"
	req_access = list(access_ce)

/area/crew_quarters/heads/office/cos
	icon_state = "heads_hos"
	name = "\improper Puente - Oficina del OMSJ"
	req_access = list(access_hos)

/area/crew_quarters/heads/office/representative
	icon_state = "heads_cl"
	name = "\improper Puente - Oficina del Representante de Sol Gov"
	req_access = list(access_representative)

/area/crew_quarters/heads/office/magistrado
	icon_state = "heads_sr"
	name = "\improper Puente - Oficina del Magistrado"
	req_access = list(access_magistrado)

/area/crew_quarters/heads/office/sea
	icon_state = "heads_sea"
	name = "\improper Puente - Oficina del SAA de Flota"
	req_access = list(access_senadv)

/area/crew_quarters/heads/office/sea/marine
	name = "\improper Puente - Oficina del SAA de Marina"

// Engineering

/area/engineering/shieldbay
	name = "Ingenieria - Bahia de escudos"
	icon_state = "engineering"
	req_access = list(access_engine, access_engine_equip)

/area/engineering/bluespace
	name = "Ingenieria - Monitoreo del manejo de Bluespace"
	icon_state = "engineering"
	color = COLOR_BLUE_GRAY
	req_access = list(list(access_engine_equip, access_heads), access_engine, access_maint_tunnels)

/area/engineering/bluespace/containment
	name = "Ingenieria - Contención del manejo de Bluespace"
	color = COLOR_BLUE_LIGHT

/area/engineering/atmos/aux
	name = "\improper Ingenieria - Atmosféricos auxiliares"
	icon_state = "atmos"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_atmospherics)

/area/engineering/auxpower
	name = "\improper Ingenieria - Almacén de energía auxiliar"
	icon_state = "engine_smes"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine_equip)

/area/engineering/hardstorage
	name = "\improper Ingenieria - Almacén"
	icon_state = "engineering_storage"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine_equip)

/area/engineering/hardstorage/aux
	name = "\improper Ingenieria - Almacén auxiliar"
	icon_state = "engineering_storage"

//Vacant Areas
/area/vacant
	name = "\improper Area vacante"
	icon_state = "construction"

/area/vacant/armory
	name = "\improper Cubierta 2 - Mantenimiento - Armería auxiliar"
	icon_state = "Tactical"

/area/vacant/mess
	name = "\improper Cubierta 3 - Mantenimiento - Comedor antiguo"
	icon_state = "bar"

/area/vacant/chapel
	name = "\improper Cubierta 2 - Mantenimiento - Capilla inutilizada"
	icon_state = "chapel"

/area/vacant/prototype
	req_access = list(access_engine)

/area/vacant/prototype/control
	name = "\improper Cubierta 2 - Sala de control del reactor de fusión prototipo"
	icon_state = "engine_monitoring"

/area/vacant/prototype/engine
	name = "\improper Cubierta 2 - Cámara de reactor de fusión prototipo"
	icon_state = "toxstorage"

/area/vacant/cargo
	name = "\improper Cubierta 2 - Mantenimiento - Oficina de requisiciones"
	icon_state = "quart"

/area/vacant/bar
	name = "\improper Cubierta 5 - Mantenimiento - Bar escondido"
	icon_state = "bar"

// Storage
/area/storage/auxillary
	req_access = list(access_cargo)

/area/storage/auxillary/port
	name = "Cubierta 4 - Almacén auxiliar suroeste"
	icon_state = "auxstorage"

/area/storage/auxillary/starboard
	name = "Cubierta 4 - Almacén auxiliar noroeste"
	icon_state = "auxstorage"

/area/storage/cargo
	name = "Cargo - Almacén"
	icon_state = "quartstorage"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_cargo)

/area/storage/expedition
	name = "Cubierta 2 - Almacén de expedición auxiliar"
	icon_state = "storage"
	sound_env = SMALL_ENCLOSED
	req_access = list(list(access_mining, access_xenoarch))

/area/storage/medical
	name = "Bahia Medica - Almacén inferior"
	icon_state = "medbay4"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_medical)

/area/storage/research
	name = "Ciencias - Almacén inferior"
	icon_state = "toxstorage"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_research)

// Supply

/area/quartermaster
	req_access = list(access_cargo)

/area/quartermaster/office
	name = "\improper Cargo - Oficinas"
	icon_state = "quartoffice"

/area/quartermaster/storage
	name = "\improper Cargo - Almacén"
	icon_state = "quartstorage"
	sound_env = LARGE_ENCLOSED

/area/quartermaster/sorting
	name ="\improper Cargo - Clasificación de suministros"
	icon_state = "quartstorage"

/area/quartermaster/storage/upper
	name = "\improper Cargo - Almacén superior"

/area/quartermaster/deckchief
	name = "\improper Cargo - Oficina del oficial de hangar"
	icon_state = "quart"
	req_access = list(access_qm)

/area/quartermaster/expedition
	name = "\improper Mineria - Preparación"
	icon_state = "mining"
	req_access = list(list(access_mining, access_nanotrasen, access_xenoarch))

/area/quartermaster/expedition/eva
	name = "\improper Mineria - Almacén AEV"
	icon_state = "mining"
	req_access = list(list(access_mining, access_xenoarch))

/area/quartermaster/expedition/storage
	name = "\improper Hangar - Almacenamiento de expedición"
	icon_state = "mining"
	req_access = list(list(access_mining, access_explorer, access_xenoarch))

/area/quartermaster/expedition/atmos
	name = "\improper Hangar - Almacenamiento atmosférico"
	icon_state = "mining"
	req_access = list(list(access_mining, access_explorer, access_xenoarch))

/area/quartermaster/exploration
	name = "\improper Exploracion - Preparación"
	icon_state = "exploration"
	req_access = list(list(access_explorer, access_pathfinder, access_pilot))

/area/quartermaster/shuttlefuel
	name = "\improper Hangar - Bahia de combustible de transbordadores"
	icon_state = "toxstorage"
	req_access = list(list(access_hangar, access_cargo))

/area/quartermaster/hangar
	name = "\improper Hangar"
	icon_state = "hangar"
	sound_env = LARGE_ENCLOSED
	req_access = list(access_hangar)

/area/quartermaster/hangar/top
	name = "\improper Cubierta 4 - Pasarela superior del hangar"
	req_access = list()

/area/quartermaster/flightcontrol
	name = "\improper Cubierta 4 - Torre de control de vuelo"
	icon_state = "hangar"
	req_access = list(access_hangar)

// Research
/area/rnd/canister
	name = "\improper Ciencias - Almacén de bombonas"
	icon_state = "toxstorage"

/area/rnd/development
	name = "\improper Ciencias - Laboratorio de fabricación"
	icon_state = "devlab"

/area/rnd/entry
	name = "\improper Ciencias - Acceso a investigación y desarrollo"
	icon_state = "decontamination"
	req_access = list()

/area/rnd/locker
	name = "\improper Ciencias - Vestuarios"
	icon_state = "locker"

/area/rnd/xenobiology/entry
	name = "\improper Ciencias - Acceso a xenobiología"
	icon_state = "xeno_lab"
	req_access = list() // This is a separate vestibule thing, needs low access.

// Crew areas
/area/crew_quarters/bar
	name = "\improper Cubierta 3 -Bar"
	icon_state = "bar"
	sound_env = LARGE_SOFTFLOOR
	req_access = list(access_bar)

// Crew areas
/area/crew_quarters/bar/storage
	name = "\improper Cubierta 3 - Almacen de servicio"
	req_access = list(access_bar, access_kitchen)

/area/crew_quarters/cryolocker
	name = "\improper Cubierta 3 Armario de almacenamiento criogénico"
	icon_state = "locker"

/area/crew_quarters/head
	name = "\improper Cubierta 3 - Baños"
	icon_state = "toilet"
	sound_env = SMALL_ENCLOSED

/area/crew_quarters/head/aux
	name = "\improper Cubierta 1 - Baños"

/area/crew_quarters/head/aux2
	name = "\improper Cubierta 2 - Baños"

/area/crew_quarters/head/aux4
	name = "\improper Cubierta 4 - Baños"

/area/crew_quarters/head/sauna
	name = "\improper Cubierta 3 - Sauna"
	icon_state = "sauna"

/area/crew_quarters/gym
	name = "\improper Cubierta 3 - Gimnasio"
	icon_state = "fitness"

/area/crew_quarters/mess
	name = "\improper Cubierta 3 - Comedor"
	icon_state = "cafeteria"

/area/crew_quarters/galley
	name = "\improper Cubierta 3 - Cocina"
	icon_state = "kitchen"
	req_access = list(access_kitchen)

/area/crew_quarters/galleybackroom
	name = "\improper Galeria - Congelador"
	icon_state = "locker"
	req_access = list(access_kitchen)

/area/crew_quarters/lounge
	name = "\improper Cubierta 4 - Salón"
	icon_state = "crew_quarters"
	sound_env = MEDIUM_SOFTFLOOR

/area/crew_quarters/safe_room
	name = "\improper Sala segura"
	icon_state = "crew_quarters"
	sound_env = SMALL_ENCLOSED
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/crew_quarters/adherent
	name = "\improper Cubbierta 4 - Mantenimiento de adherentes"
	icon_state = "robotics"

/area/holocontrol
	name = "\improper Cubierta 3 - Control del Holodeck"
	icon_state = "Holodeck"

// Tcomms
/area/tcommsat/storage
	name = "\improper Cubierta 3 - Almacenamiento de telecomunicaciones"
	icon_state = "tcomsatstore"

// Security

/area/security/bo
	name = "\improper Seguridad - Jefe de Brig"
	icon_state = "Warden"
	req_access = list(access_armory)

/area/security/storage
	name = "\improper Seguridad - Almacén"
	icon_state = "security"
	req_access = list(access_brig)

/area/security/armoury
	name = "\improper Seguridad - Armeria"
	icon_state = "Warden"
	req_access = list(access_armory)

/area/security/detectives_office
	name = "\improper Seguridad - Oficina de investigaciones"
	icon_state = "detective"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_forensics_lockers)

/area/security/locker
	name = "\improper Seguridad - Sala de preparación"
	icon_state = "security"

/area/security/evidence
	name = "\improper Seguridad - Almacén de evidencias"
	icon_state = "security"

/area/security/processing
	name = "\improper Seguridad - Procesamiento"
	icon_state = "security"

/area/security/questioning
	name = "\improper Seguridad - Sala de entrevistas"
	icon_state = "security"

/area/security/wing
	name = "\improper Seguridad - Pasillo"
	icon_state = "security"

/area/security/bridgecheck
	name = "\improper Puente - Checkpoint de seguridad"
	icon_state = "checkpoint"

/area/security/opscheck
	name = "\improper Cubierta 1 - Checkpoint de seguridad"
	icon_state = "checkpoint"

/area/security/habcheck
	name = "\improper Cubierta 3 - Checkpoint de seguridad"
	icon_state = "checkpoint"

/area/security/hangcheck
	name = "\improper Cubierta 4 - Checkpoint de seguridad"
	icon_state = "checkpoint"

/area/security/lounge
	name = "\improper Seguridad - Sala de descanso"
	icon_state = "security"

/area/security/shooting
	name = "\improper Seguridad - Campo de tiro"
	icon_state = "security"

/area/security/brig/perma
	name = "\improper Celda permanente"
	icon_state = "brig"
	area_flags = AREA_FLAG_RAD_SHIELDED
	req_access = list(access_brig)

/area/security/brig/psionic
	name = "\improper Celda para psiónicos"
	icon_state = "misclab"
	area_flags = AREA_FLAG_RAD_SHIELDED
	req_access = list(access_brig)
	ambience = list('sound/ambience/spookyspace1.ogg')

// AI
/area/turret_protected/ai_foyer
	name = "\improper Vestíbulo de la cámara de IA"
	icon_state = "ai_foyer"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_ai_upload)

/area/turret_protected/ai_outer_chamber
	name = "\improper Cámara de IA exterior"
	icon_state = "checkpoint"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_ai_upload)

/area/turret_protected/ai_data_chamber
	name = "\improper Cámara de datos de IA"
	icon_state = "ai_foyer"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_ai_upload)

// Medbay

/area/medical/descanso
	name = "\improper Bahia Medica - Sala de descanso"
	icon_state = "medbay4"
	ambience = list('sound/ambience/signal.ogg')
	req_access = list(access_medical_equip)

/area/medical/infirmary
	name = "\improper Bahia Medica - Pasillo"
	icon_state = "medbay"
	req_access = list(access_medical)

/area/medical/infirmreception
	name = "\improper Bahia Medica - Recepción"
	icon_state = "medbay2"
	ambience = list('sound/ambience/signal.ogg')
	req_access = list(access_medical)

/area/medical/locker
	name = "\improper Bahia Medica - Vestuarios"
	icon_state = "locker"
	req_access = list(access_medical_equip)

/area/medical/subacute
	name = "\improper Bahia Medica - Cuidados intensivos"
	icon_state = "patients"

/area/medical/counselor
	name = "\improper Bahia Medica - Oficina del consejero"
	icon_state = "medbay3"
	ambience = list('sound/ambience/signal.ogg')
	req_access = list(access_psychiatrist)
	sound_env = SMALL_SOFTFLOOR

/area/medical/washroom
	name = "\improper Bahia Medica - Baño"
	icon_state = "toilet"
	sound_env = SMALL_ENCLOSED
	req_access = list()

/area/chapel/crematorium
	name = "\improper Bahia Medica - Crematorio"
	icon_state = "chapel"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_crematorium)

/area/medical/recepcion
	name = "\improper Bahia Medica - Recepción"
	icon_state = "locker"
	req_access = list(access_medical_equip)

/area/medical/reslab
	name = "\improper Bahia Medica - Laboratorio de resurección"
	req_access = list(access_morgue)

/area/medical/virology
	name = "\improper Bahia Medica - Virologia"

// Shield Rooms
/area/shield
	name = "\improper Generador de escudo"
	icon_state = "engineering"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine_equip)

/area/shield/bridge
	name = "\improper Puente - Generador de escudo"

// Misc
/area/teleporter
	name = "\improper Teletransportador"
	icon_state = "teleporter"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_teleporter)

/area/maintenance/auxsolarbridge
	name = "Solar Puente - Mantenimiento"
	icon_state = "SolarcontrolS"
	sound_env = SMALL_ENCLOSED

/area/solar/bridge
	name = "\improper Puente - Panel solar"
	icon_state = "panelsS"

/area/aux_eva
	name = "\improper Puente - Almacén AEV"
	icon_state = "eva"
	req_access = list(access_eva)

/area/thruster
	icon_state = "thruster"
	req_access = list(access_engine)

/area/thruster/d1port
	name = "\improper Cubierta 1 - Puerto de góndola"

/area/thruster/d1starboard
	name = "\improper Cubierta 1 - Góndola de estribor"

/area/thruster/d3port
	name = "\improper Cubierta 3 - Puerto de góndola"

/area/thruster/d3starboard
	name = "\improper Cubierta 3 - Góndola de estribor"

/area/engineering/fuelbay
	name = "\improper Cubierta 2 - Bahia de combustible"
	icon_state = "engineering"
	req_access = list(access_construction)

/area/engineering/wastetank
	name = "\improper Cubierta 2 - Tanque de residuos"
	icon_state = "engineering"
	req_access = list(access_atmospherics)

// Command

/area/bridge
	name = "\improper NTSS Dagon - Puente"
	icon_state = "bridge"
	req_access = list(access_bridge)

/area/bridge/hallway
	name = "\improper Puente - Pasillo de acceso"
	icon_state = "bridge_hallway"
	req_access = list(access_solgov_crew)

/area/bridge/hallway/port
	name = "\improper Puente - Pasillo de acceso al puerto"

/area/bridge/hallway/starboard
	name = "\improper Puente - Pasillo de acceso a estribor"

/area/bridge/meeting_room
	name = "\improper Puente - Sala de reuniones"
	icon_state = "bridge_meeting"
	ambience = list()
	sound_env = MEDIUM_SOFTFLOOR

/area/crew_quarters/heads
	icon_state = "head_quarters"
	req_access = list(access_heads)

/area/maintenance/substation
	name = "Subestación"
	icon_state = "substation"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine_equip)

/area/maintenance/exterior
	name = "\improper Cubierta 2 - Refuerzos exteriores"
	icon_state = "maint_exterior"
	area_flags = AREA_FLAG_EXTERNAL
	has_gravity = FALSE
	turf_initializer = /decl/turf_initializer/maintenance/space
	req_access = list(access_external_airlocks, access_maint_tunnels)

/area/crew_quarters_boh/cabin_main/officerbunk
	name = "\improper Puente - Cuartos de oficiales"
	icon_state = "Sleep"
	req_access = list(access_bridge)
	sound_env = SMALL_SOFTFLOOR
	area_flags = AREA_FLAG_RAD_SHIELDED

// CentCom

/area/centcom/control
	name = "\improper CC - Controles"

/area/centcom/creed
	name = "CC - Oficina del credo"

/area/centcom/evac
	name = "\improper CC - Lanzadera de emergencia"

/area/centcom/ferry
	name = "\improper CC - Lanzadera de transporte"

/area/centcom/living
	name = "\improper CC - Vivienda"

/area/centcom/suppy
	name = "\improper CC - Lanzadera de suministro"

/area/centcom/test
	name = "\improper CC - Instalacines de prueba"

// Solars
/area/maintenance/auxsolarport
	name = "Mantenimiento Solares - Puerto"
	icon_state = "SolarcontrolP"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine_equip, access_maint_tunnels)

/area/maintenance/auxsolarstarboard
	name = "Mantenimiento Solares - Estribor"
	icon_state = "SolarcontrolS"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine_equip, access_maint_tunnels)

/area/solar
	area_flags = AREA_FLAG_EXTERNAL
	requires_power = 1
	always_unpowered = 1
	has_gravity = FALSE
	base_turf = /turf/space
	req_access = list(access_engine_equip)

/area/solar/auxstarboard
	name = "\improper Solares - Matriz solar de proa estribor"
	icon_state = "panelsA"

/area/solar/port
	name = "\improper Solares - Matriz solar auxiliar del puerto"
	icon_state = "panelsP"

// Maintenance

/area/maintenance/disposal
	name = "DCubierta 2 - Mantenimiento - eposito de basura"
	icon_state = "disposal"

/area/maintenance/incinerator
	name = "\improper Incinerador"
	icon_state = "disposal"
	req_access = list(list(access_engine, access_medical, access_cargo))

/area/maintenance/waterstore
	name = "\improper Cubierta 4 - Almacén de agua"
	icon_state = "disposal"

/area/maintenance/aux_med
	name = "\improper Cubierta 4 - Enfermeria auxiliar"
	icon_state = "disposal"

// Storage
/area/storage/primary
	name = "Cubierta 4 - Almacén de herramientas primario"
	icon_state = "primarystorage"

/area/storage/tech
	name = "Cubierta 2 - Almacén técnico"
	icon_state = "storage"
	req_access = list(access_tech_storage)

/area/storage/tools
	name = "Cubierta 4 - Almacén de herramientas auxiliar"
	icon_state = "auxstorage"

// Holodecks

/area/holodeck
	name = "\improper Holodeck"
	icon_state = "Holodeck"
	dynamic_lighting = 0
	sound_env = LARGE_ENCLOSED

/area/holodeck/alphadeck
	name = "\improper Holodeck Alpha"

/area/holodeck/source_plating
	name = "\improper Holodeck - Apagado"

/area/holodeck/source_emptycourt
	name = "\improper Holodeck - Cuarto vacio"
	sound_env = ARENA

/area/holodeck/source_boxingcourt
	name = "\improper Holodeck - Cuarto de boxeo"
	sound_env = ARENA

/area/holodeck/source_basketball
	name = "\improper Holodeck - Cancha de baloncesto"
	sound_env = ARENA

/area/holodeck/source_thunderdomecourt
	name = "\improper Holodeck - Thunderdome"
	sound_env = ARENA

/area/holodeck/source_courtroom
	name = "\improper Holodeck - Corte"
	sound_env = AUDITORIUM

/area/holodeck/source_beach
	name = "\improper Holodeck - Playa"
	sound_env = PLAIN

/area/holodeck/source_wildlife
	name = "\improper Holodeck - Simulación de vida silvestre"

/area/holodeck/source_meetinghall
	name = "\improper Holodeck - Sala de reuniones"
	sound_env = AUDITORIUM

/area/holodeck/source_theatre
	name = "\improper Holodeck - Teatro"
	sound_env = CONCERT_HALL

/area/holodeck/source_picnicarea
	name = "\improper Holodeck - Area de picnic"
	sound_env = PLAIN

/area/holodeck/source_snowfield
	name = "\improper Holodeck - Campo de nieve"
	sound_env = FOREST

/area/holodeck/source_desert
	name = "\improper Holodeck - Desierto"
	sound_env = PLAIN

/area/holodeck/source_space
	name = "\improper Holodeck - Space"
	has_gravity = 0
	sound_env = SPACE

/area/holodeck/source_cafe
	name = "\improper Holodeck - Cafeteria"
	sound_env = PLAIN

/area/holodeck/source_volleyball
	name = "\improper Holodeck - Cncha de Vóleibol"
	sound_env = PLAIN

/area/holodeck/source_temple
	name = "\improper Holodeck - Templo"
	sound_env = SMALL_ENCLOSED

/area/holodeck/source_plaza
	name = "\improper Holodeck - Plaza"
	sound_env = SMALL_ENCLOSED

/area/holodeck/source_lasertag
	name = "\improper Holodeck - Laser Tag"
	sound_env = ARENA

// Engineering

/area/engineering/atmos/storage
	name = "\improper Ingenieria - Almacén atmosférico"
	icon_state = "atmos_storage"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_atmospherics)

/area/engineering/engine_room
	name = "\improper Ingenieria - Sala de máquinas"
	icon_state = "engine"
	sound_env = LARGE_ENCLOSED
	req_access = list(access_engine, access_engine_equip)

/area/engineering/drone_fabrication
	name = "\improper Ingenieria - Fabricación de drones"
	icon_state = "drone_fab"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_robotics)

/area/engineering/engine_monitoring
	name = "\improper Ingenieria - Sala de control de motores"
	icon_state = "engine_monitoring"
	req_access = list(access_engine, access_engine_equip)

/area/engineering/engine_smes
	name = "\improper Ingenieria - SMES"
	icon_state = "engine_smes"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine, access_engine_equip)

/area/engineering/engineering_monitoring
	name = "\improper Ingenieria - Sala de Monitoreo"
	icon_state = "engine_monitoring"
	req_access = list(access_engine)

/area/engineering/foyer
	name = "\improper Ingenieria - Vestíbulo"
	icon_state = "engineering_foyer"
	req_access = list()

/area/engineering/locker_room
	name = "\improper Ingenieria - Cambiador"
	icon_state = "engineering_locker"
	req_access = list(access_engine)

/area/engineering/storage
	name = "\improper Ingenieria - Almacén"
	icon_state = "engineering_storage"
	req_access = list(list(access_engine_equip, access_atmospherics))

/area/engineering/atmos
	name = "\improper Ingenieria - Atmosfericos"
	icon_state = "atmos"
	sound_env = LARGE_ENCLOSED
	req_access = list(access_atmospherics)

// Medical
/area/medical/chemistry
	name = "\improper Bahia Medica - Química "
	icon_state = "chem"
	req_access = list(access_chemistry)

/area/medical/morgue
	name = "\improper Bahia Medica - Morgue"
	icon_state = "morgue"
	ambience = list('sound/ambience/ambimo1.ogg','sound/ambience/ambimo2.ogg','sound/music/main.ogg')
	req_access = list(access_morgue)

/area/medical/morgue/autopsy
	name = "\improper Bahia Medica - Sala de autopsias"
	icon_state = "autopsy"

/area/medical/sleeper
	name = "\improper Bahia Medica - Centro de tratamiento de emergencia"
	icon_state = "exam_room"

/area/medical/surgery
	name = "\improper Bahia Medica - Quirofano 1"
	icon_state = "surgery"
	req_access = list(access_surgery)

/area/medical/surgery2
	name = "\improper Bahia Medica - Quirofano 2"
	icon_state = "surgery"
	req_access = list(list(access_surgery, access_robotics_engineering))

/area/medical/garaje
	name = "\improper Bahia Medica - Garaje"
	icon_state = "medbay4"
	req_access = list(access_medical)

// Research
/area/assembly
	req_access = list(access_robotics_engineering)

/area/assembly/chargebay
	name = "\improper Robotica - Bahía de mechas"
	icon_state = "mechbay"

/area/assembly/robotics
	name = "\improper Robotica - Laboratorio"
	icon_state = "robotics"

/area/assembly/robotics/lower
	name = "\improper Robotica - Laboratorio inferior"

/area/assembly/robotics/surgery
	name = "\improper Robotica - Quirofano"

/area/rnd/misc_lab
	name = "\improper Ciencias - Investigación Miscelánea"
	icon_state = "misclab"

/area/rnd/research
	name = "\improper Ciencias - Pasillo de investigación"
	icon_state = "research"

/area/rnd/breakroom
	name = "\improper Ciencias - Sala de descanso"
	icon_state = "researchbreak"
	req_access = list(list(access_research, access_nanotrasen))

// Shuttles
/area/shuttle/administration/centcom
	name = "\improper Transporte de administración"
	icon_state = "shuttlered"
	req_access = list(access_cent_general)
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/shuttle/escape_pod1/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/shuttle/escape_pod2/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/shuttle/escape_pod3/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/shuttle/escape_pod5/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/supply/dock
	name = "Supply Shuttle"
	icon_state = "shuttle3"
	requires_power = 0
	req_access = list(access_cent_storage)

// Secure

/area/prison/solitary
	name = "Confinamiento solitario"
	icon_state = "brig"
	req_access = list(access_brig)

/area/security/nuke_storage
	name = "\improper Boveda"
	icon_state = "nuke_storage"
	area_flags = AREA_FLAG_IS_NOT_PERSISTENT
	req_access = list(access_heads_vault)

// Crew

/area/crew_quarters/sleep/cryo
	name = "\improper Cubierta 3 - Almacenamiento criogénico"
	icon_state = "Sleep"

/area/hydroponics
	name = "\improper Cubierta 3 - Botánica"
	icon_state = "hydro"

/area/janitor
	name = "\improper Cubierta 2 - Conserjería"
	icon_state = "janitor"
	req_access = list(access_janitor)

/area/janitor/aux
	name = "\improper Cubierta 4 - Armario de conserjería auxiliar"

// Tcomm
/area/tcommsat/
	ambience = list('sound/ambience/ambisin2.ogg', 'sound/ambience/signal.ogg', 'sound/ambience/signal.ogg', 'sound/ambience/ambigen10.ogg')
	req_access = list(access_tcomsat)

/area/tcommsat/chamber
	name = "\improper Cubierta 3 - Compartimento central de telecomunicaciones"
	icon_state = "tcomsatcham"

/area/tcommsat/computer
	name = "\improper Cubierta 3 - Sala de control de telecomunicaciones"
	icon_state = "tcomsatcomp"

// AI

/area/ai_monitored
	name = "Area de supervicación de la IA"

/area/ai_monitored/storage/eva
	name = "\improper Cubierta 3 - Almacén AEV"
	icon_state = "eva"
	req_access = list(access_eva)

/area/turret_protected/ai
	name = "\improper Camara de la IA"
	icon_state = "ai_chamber"
	ambience = list('sound/ambience/ambimalf.ogg')
	req_access = list(access_ai_upload)

/area/turret_protected/ai_upload
	name = "\improper Cubierta 3 - Camara de subida de la IA"
	icon_state = "ai_upload"
	ambience = list('sound/ambience/ambimalf.ogg')
	req_access = list(access_ai_upload)

/area/turret_protected/ai_upload_foyer
	name = "\improper Acceso de carga de AI"
	icon_state = "ai_foyer"
	ambience = list('sound/ambience/ambimalf.ogg')
	sound_env = SMALL_ENCLOSED
	req_access = list(access_ai_upload)

// Chapel

/area/chapel/main
	name = "\improper Cubierta 3 - Capilla"
	icon_state = "chapel"
	ambience = list('sound/ambience/ambicha1.ogg','sound/ambience/ambicha2.ogg','sound/ambience/ambicha3.ogg','sound/ambience/ambicha4.ogg','sound/music/traitor.ogg')
	sound_env = LARGE_ENCLOSED

/area/chapel/office
	name = "\improper Cubierta 3 - Oficina del capellán"
	req_access = list(access_chapel_office)
	color = COLOR_GRAY80
	sound_env = SMALL_SOFTFLOOR

// Merchant

/area/merchant_station
	name = "\improper Estación comercial"
	icon_state = "LP"
	req_access = list(access_merchant)

// ACTORS GUILD
/area/acting
	name = "\improper CC - Gremio interino"
	icon_state = "red"
	dynamic_lighting = 0
	requires_power = 0

/area/acting/backstage
	name = "\improper Bastidores"

/area/acting/stage
	name = "\improper Escenario"
	dynamic_lighting = 1
	icon_state = "yellow"

// Thunderdome

/area/tdome
	name = "\improper Thunderdome"
	icon_state = "thunder"
	requires_power = 0
	dynamic_lighting = 0
	sound_env = ARENA
	req_access = list(access_cent_thunder)

/area/tdome/tdome1
	name = "\improper Thunderdome (Equipo 1)"
	icon_state = "green"

/area/tdome/tdome2
	name = "\improper Thunderdome (Equipo 2)"
	icon_state = "yellow"

/area/tdome/tdomeadmin
	name = "\improper Thunderdome (Admin)"
	icon_state = "purple"

/area/tdome/tdomeobserve
	name = "\improper Thunderdome (Observar)"
	icon_state = "purple"

/area/security/infantry
	name = "\improper Infanteria - Sala principal"
	icon_state = "crew_quarters"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_infantry)

/area/security/infantry/gear
	name = "\improper Infanteria - Preparación"
	icon = 'icons/boh/area.dmi'
	icon_state = "triage"
	req_access = list(access_infantry)

/area/security/infantry/com
	name = "\improper Infanteria - Oficila del lider de escuadron"
	icon = 'icons/boh/area.dmi'
	icon_state = "triage"
	req_access = list(access_infcom)

/area/security/infantry/armory
	name = "\improper Infanteria - Armeria"
	icon = 'icons/boh/area.dmi'
	icon_state = "triage"
	req_access = list(access_infcom)

/area/defturrets
	name = "\improper Cubierta 2 - Control anti-embarque"
	icon_state = "security_sub"
	base_turf = /turf/simulated/floor/reinforced/airless
	requires_power = 1
	dynamic_lighting = 1
	req_access = list(access_brig)
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/command/gunnery
	name = "\improper Monturas de armas"
	icon = 'icons/boh/area.dmi'
	icon_state = "guntemp"
	req_access = list(access_gunnery)

/area/command/gunnery/ob
	name = "\improper KOSMAG Exterior"
	icon_state = "kosmag1"

/area/command/gunnery/ob/inside
	name = "\improper KOSMAG Interior"
	icon_state = "kosmag2"

/area/command/gunnery/ob/airlock
	name = "\improper KOSMAG Esclusa de aire"
	icon_state = "kosmagairlock"

/area/command/gunnery/mim
	name = "\improper Centro de operaciones tácticas"
	icon_state = "guntemp"

/area/command/gunnery/mim/door
	name = "\improper Tactical Operations Center Door"
	icon_state = "guntemp"

/////////
// Cabins
/////////

/area/crew_quarters_boh/cabin_main
	name = "\improper Cubierta 3 - Pasillo de dormitorios"
	icon_state = "crew_quarters"
	area_flags = AREA_FLAG_RAD_SHIELDED
	sound_env = MEDIUM_SOFTFLOOR

/area/crew_quarters_boh/cabin_main/c1
	name = "\improper Cubierta 3 - Dormitorio 1"
	icon_state = "Sleep"

/area/crew_quarters_boh/cabin_main/c2
	name = "\improper Cubierta 3 - Dormitorio 2"
	icon_state = "Sleep"

/area/crew_quarters_boh/cabin_main/cambiador
	name = "\improper Cubierta 3 - Cambiador"
	icon_state = "Sleep"

/area/crew_quarters_boh/cabin_main/janitorial
	name = "\improper Cubierta 3 - Comedor de dormitorios"
	icon_state = "janitor"

//Psionic Advisor
/area/crew_quarters/heads/office/psiadvisor
	name = "\improper Puente - Asesor psiónico"
	icon_state = "heads"
	req_access = list(access_psiadvisor)

//Lawyer Office
/area/crew_quarters/heads/office/lawyer_office
	name = "\improper Cubierta 3 - Oficina de abogados"
	icon_state = "heads"
	req_access = list(access_lawyer)

/area/crew_quarters/courtroom
	name = "\improper Cubierta 1 - Corte"

/area/crew_quarters/courtroom_private
	name = "\improper Cubierta 1 - Sala de audiencias privada"
	req_access = list(access_lawyer)

//pods
/area/shuttle/pod_airlock
	name = "\improper Pods de escape - Esculsa de aire"
	requires_power = 0
	dynamic_lighting = 1

/area/shuttle/pod_airlock/pod1
/area/shuttle/pod_airlock/pod2
/area/shuttle/pod_airlock/pod3
/area/shuttle/pod_airlock/pod4
/area/shuttle/pod_airlock/pod5
/area/shuttle/pod_airlock/pod6
/area/shuttle/pod_airlock/pod7
/area/shuttle/pod_airlock/pod8
/area/shuttle/pod_airlock/pod9
/area/shuttle/pod_airlock/pod10
/area/shuttle/pod_airlock/pod11
