/var/global/sent_headcrab_to_station = 0

/datum/event/headcrab_infestation
	announceWhen	= 10
	var/spawncount = 1


/datum/event/headcrab_infestation/setup()
	announceWhen = rand(announceWhen, announceWhen + 60)
	spawncount = rand(3 * severity, 6 * severity)
	sent_headcrab_to_station = 0

/datum/event/headcrab_infestation/announce()
	GLOB.using_map.unidentified_lifesigns_announcement()

/datum/event/headcrab_infestation/start()
	var/list/vents = list()
	for(var/obj/machinery/atmospherics/unary/vent_pump/temp_vent in world)
		if(!temp_vent.welded && temp_vent.network && temp_vent.loc.z in affecting_z)
			if(temp_vent.network.normal_members.len > 50)
				vents += temp_vent

	while((spawncount >= 10) && vents.len)
		var/obj/vent = pick(vents)
		new /mob/living/simple_animal/hostile/headcrab(vent.loc)
		vents -= vent
		spawncount--

	while((spawncount >= 5) && vents.len)
		var/obj/vent = pick(vents)
		new /mob/living/simple_animal/hostile/headcrab/fast(vent.loc)
		vents -= vent
		spawncount--

	while((spawncount >= 5) && vents.len)
		var/obj/vent = pick(vents)
		new /mob/living/simple_animal/hostile/headcrab/poison(vent.loc)
		vents -= vent
		spawncount--
