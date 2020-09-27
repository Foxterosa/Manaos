#define LOC_KITCHEN 0
#define LOC_ATMOS 1
#define LOC_INCIN 2
#define LOC_CHAPEL 3
#define LOC_LIBRARY 4
#define LOC_HYDRO 5
#define LOC_VAULT 6
#define LOC_CONSTR 7
#define LOC_TECH 8
#define LOC_TACTICAL 9

#define VERM_HEADCRAB 0
#define VERM_HEADCRAB_F 1
#define VERM_HEADCRAB_P 2

/datum/event/infestation_headcrab
	announceWhen = 10
	endWhen = 11
	var/area/location
	var/vermin
	var/vermstring

/datum/event/infestation_headcrab/start()
	var/list/vermin_turfs
	var/attempts = 3
	do
		vermin_turfs = set_location_get_infestation_turfs()
		if(!location)
			return
	while(!vermin_turfs && --attempts > 0)

	if(!vermin_turfs)
		log_debug("La infestación de Headcrabs no se pudo realizar después de 3 intentos. Abortando.")
		kill()

	var/list/spawn_types = list()
	var/max_number
	vermin = rand(0,2)
	switch(vermin)
		if(VERM_HEADCRAB)
			spawn_types = list(/mob/living/simple_animal/hostile/headcrab)
			max_number = 8
			vermstring = "Headcrabs"
		if(VERM_HEADCRAB_F)
			spawn_types = list(/mob/living/simple_animal/hostile/headcrab/fast)
			max_number = 6
			vermstring = "Headcrabs rapidos"
		if(VERM_HEADCRAB_P)
			spawn_types = list(/mob/living/simple_animal/hostile/headcrab/poison)
			max_number = 4
			vermstring = "Headcrabs venenosos"

	spawn(0)
		var/num = 0
		for(var/i = 1 to severity)
			num += rand(2,max_number)
		log_and_message_admins("Infestación de spawneada ([vermstring] x[num]) en [location]", location = pick_area_turf(location))
		while(vermin_turfs.len && num > 0)
			var/turf/simulated/floor/T = pick(vermin_turfs)
			vermin_turfs.Remove(T)
			num--

			var/spawn_type = pick(spawn_types)
			var/obj/effect/spider/spiderling/S = new spawn_type(T)
			if(istype(S))
				S.amount_grown = -1

/datum/event/infestation_headcrab/announce()
	command_announcement.Announce("El bioescaner indica la presencia de formas de vida desconocidas en [location]. Es probable que haya más infestación si no se controla.", "[location_name()] Biologic Sensor Network", zlevels = affecting_z)

/datum/event/infestation_headcrab/proc/set_location_get_infestation_turfs()
	location = pick_area(list(/proc/is_not_space_area, /proc/is_station_area))
	if(!location)
		log_debug("La infestación de Headcrabs no se pudo realizar. Abortando.")
		kill()
		return

	var/list/vermin_turfs = get_area_turfs(location, list(/proc/not_turf_contains_dense_objects, /proc/IsTurfAtmosSafe))
	if(!vermin_turfs.len)
		log_debug("La infestación de Headcrabs fallo en encontrar un lugar adecuado en [location].")
		return
	return vermin_turfs

#undef LOC_KITCHEN
#undef LOC_ATMOS
#undef LOC_INCIN
#undef LOC_CHAPEL
#undef LOC_LIBRARY
#undef LOC_HYDRO
#undef LOC_VAULT
#undef LOC_TECH
#undef LOC_TACTICAL

#undef VERM_HEADCRAB
#undef VERM_HEADCRAB_F
#undef VERM_HEADCRAB_P
