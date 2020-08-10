/datum/map
	var/const/NO_APC = 1
	var/const/NO_VENT = 2
	var/const/NO_SCRUBBER = 4

	// Unit test vars
	var/list/apc_test_exempt_areas = list(
		/area/space = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/exoplanet = NO_SCRUBBER|NO_VENT|NO_APC
	)

	var/list/area_coherency_test_exempt_areas = list(
		/area/space
	)
	var/list/area_coherency_test_exempted_root_areas = list(
		/area/exoplanet
	)
	var/list/area_coherency_test_subarea_count = list()

	// These areas are used specifically by code and need to be broken out somehow
	var/list/area_usage_test_exempted_areas = list(
		/area/beach,
		/area/beach/cuarto1,
		/area/beach/cuarto2,
		/area/beach/cuarto3,
		/area/beach/principal,
		/area/beach/bano,
		/area/beach/cambiador,
		/area/beach/cocina,
		/area/beach/med,
		/area/beach/sec,
		/area/casinojack,
		/area/casinojack/bar,
		/area/casinojack/sec,
		/area/casinojack/Med,
		/area/casinojack/cuarto1,
		/area/casinojack/cuarto2,
		/area/casinojack/cuarto3,
		/area/casinojack/cuarto4,
		/area/casinojack/command,
		/area/casinojack/principal,
		/area/centcom,
		/area/centcom/holding,
		/area/centcom/specops,
		/area/chapel,
		/area/hallway,
		/area/maintenance,
		/area/medical,
		/area/medical/virology,
		/area/medical/virologyaccess,
		/area/nieve,
		/area/nieve/cuarto1,
		/area/nieve/cuarto2,
		/area/nieve/cuarto3,
		/area/nieve/principal,
		/area/nieve/sec,
		/area/nieve/med,
		/area/nieve/cocina,
		/area/nieve/bar,
		/area/nieve/biblioteca,
		/area/nieve/cambiador,
		/area/nieve/gimnasio,
		/area/nieve/bosque,
		/area/nieve/garaje,
		/area/nieve/sauna,
		/area/overmap,
		/area/rnd,
		/area/rnd/xenobiology,
		/area/rnd/xenobiology/xenoflora,
		/area/rnd/xenobiology/xenoflora_storage,
		/area/security,
		/area/security/prison,
		/area/security/brig,
		/area/shuttle,
		/area/shuttle/escape,
		/area/shuttle/escape/centcom,
		/area/shuttle/specops,
		/area/shuttle/specops/centcom,
		/area/shuttle/syndicate_elite,
		/area/shuttle/syndicate_elite/mothership,
		/area/shuttle/syndicate_elite/station,
		/area/turbolift,
		/area/supply,
		/area/syndicate_elite_squad,
		/area/template_noop
	)

	var/list/area_usage_test_exempted_root_areas = list(
		/area/map_template,
		/area/exoplanet
	)

	var/list/area_purity_test_exempt_areas = list()