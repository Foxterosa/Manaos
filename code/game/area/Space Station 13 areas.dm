/*

### This file contains a list of all the areas in your station. Format is as follows:

/area/CATEGORY/OR/DESCRIPTOR/NAME 	(you can make as many subdivisions as you want)
	name = "NICE NAME" 				(not required but makes things really nice)
	icon = "ICON FILENAME" 			(defaults to areas.dmi)
	icon_state = "NAME OF ICON" 	(defaults to "unknown" (blank))
	requires_power = 0 				(defaults to 1)

NOTE: there are two lists of areas in the end of this file: centcom and station itself. Please maintain these lists valid. --rastaf0

*/



/area
	var/fire = null
	var/atmos = 1
	var/atmosalm = 0
	var/poweralm = 1
	var/party = null
	level = null
	name = "Unknown"
	icon = 'icons/turf/areas.dmi'
	icon_state = "unknown"
	plane = DEFAULT_PLANE
	layer = BASE_AREA_LAYER
	mouse_opacity = 0
	var/lightswitch = 1

	var/eject = null

	var/debug = 0
	var/requires_power = 1
	var/always_unpowered = 0	//this gets overriden to 1 for space in area/New()

	var/power_equip = 1 // Status
	var/power_light = 1
	var/power_environ = 1
	var/used_equip = 0  // Continuous drain; don't mess with these directly.
	var/used_light = 0
	var/used_environ = 0
	var/oneoff_equip   = 0 //Used once and cleared each tick.
	var/oneoff_light   = 0
	var/oneoff_environ = 0

	var/has_gravity = 1
	var/obj/machinery/power/apc/apc = null
	var/no_air = null
//	var/list/lights				// list of all lights on this area
	var/list/all_doors = null		//Added by Strumpetplaya - Alarm Change - Contains a list of doors adjacent to this area
	var/air_doors_activated = 0
	var/list/ambience = list('sound/ambience/ambigen1.ogg','sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambigen12.ogg','sound/ambience/ambigen14.ogg')
	var/list/forced_ambience = null
	var/sound_env = STANDARD_STATION
	var/turf/base_turf //The base turf type of the area, which can be used to override the z-level's base turf

/*-----------------------------------------------------------------------------*/

/////////
//SPACE//
/////////

/area/space
	name = "\improper Space"
	icon_state = "space"
	requires_power = 1
	always_unpowered = 1
	dynamic_lighting = 1
	power_light = 0
	power_equip = 0
	power_environ = 0
	has_gravity = 0
	area_flags = AREA_FLAG_EXTERNAL | AREA_FLAG_IS_NOT_PERSISTENT
	ambience = list('sound/ambience/ambispace1.ogg','sound/ambience/ambispace2.ogg','sound/ambience/ambispace3.ogg','sound/ambience/ambispace4.ogg','sound/ambience/ambispace5.ogg')
	secure = FALSE

area/space/atmosalert()
	return

/area/space/fire_alert()
	return

/area/space/fire_reset()
	return

/area/space/readyalert()
	return

/area/space/partyalert()
	return

//////////////////////
//AREAS USED BY CODE//
//////////////////////
/area/centcom
	name = "\improper Centcom"
	icon_state = "centcom"
	requires_power = 0
	dynamic_lighting = 0
	req_access = list(access_cent_general)

/area/centcom/holding
	name = "\improper Holding Facility"

/area/chapel
	name = "\improper Chapel"
	icon_state = "chapel"

/area/centcom/specops
	name = "\improper Centcom Special Ops"
	req_access = list(access_cent_specops)

/area/hallway
	name = "hallway"

/area/medical
	req_access = list(access_medical)

/area/medical/virology
	name = "\improper Virology"
	icon_state = "virology"
	req_access = list(access_virology)

/area/medical/virologyaccess
	name = "\improper Virology Access"
	icon_state = "virology"
	req_access = list() // This is like the lobby, needs low access to allow passing through in a different direction.

/area/security
	req_access = list(access_sec_doors)

/area/security/brig
	name = "\improper Security - Brig"
	icon_state = "brig"
	req_access = list(access_brig)

/area/security/prison
	name = "\improper Security - Prison Wing"
	icon_state = "sec_prison"
	req_access = list(access_brig)

/area/maintenance
	area_flags = AREA_FLAG_RAD_SHIELDED
	sound_env = TUNNEL_ENCLOSED
	turf_initializer = /decl/turf_initializer/maintenance
	forced_ambience = list('sound/ambience/maintambience.ogg')
	req_access = list(access_maint_tunnels)

/area/rnd
	req_access = list(access_research)

/area/rnd/xenobiology
	name = "\improper Xenobiology Lab"
	icon_state = "xeno_lab"
	req_access = list(access_xenobiology, access_research)

/area/rnd/xenobiology/xenoflora
	name = "\improper Xenoflora Lab"
	icon_state = "xeno_f_lab"

/area/rnd/xenobiology/xenoflora_storage
	name = "\improper Xenoflora Storage"
	icon_state = "xeno_f_store"

/area/shuttle/escape/centcom
	name = "\improper Emergency Shuttle Centcom"
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/shuttle/specops/centcom
	icon_state = "shuttlered"
	req_access = list(access_cent_specops)
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/shuttle/syndicate_elite/mothership
	icon_state = "shuttlered"
	req_access = list(access_syndicate)

/area/shuttle/syndicate_elite/station
	icon_state = "shuttlered2"
	req_access = list(access_syndicate)

/area/supply
	name = "Supply Shuttle"
	icon_state = "shuttle3"
	req_access = list(access_cargo)

/area/syndicate_elite_squad
	name = "\improper Elite Mercenary Squad"
	icon_state = "syndie-elite"
	req_access = list(access_syndicate)

////////////
//SHUTTLES//
////////////
//shuttles only need starting area, movement is handled by landmarks
//All shuttles should now be under shuttle since we have smooth-wall code.

/area/shuttle
	requires_power = 0
	sound_env = SMALL_ENCLOSED
	base_turf = /turf/space

/*
* Special Areas
*/
/area/beach
	name = "Keelin's private beach"
	icon_state = "conference"
	luminosity = 1
	requires_power = 0
	dynamic_lighting = 0
	var/sound/mysound = null

/area/beach/cuarto1
	name = "Keelin's private beach cuarto 1"
	icon_state = "surgery"

/area/beach/cuarto2
	name = "Keelin's private beach cuarto 2"
	icon_state = "surgery"

/area/beach/cuarto3
	name = "Keelin's private beach cuarto 3"
	icon_state = "surgery"

/area/beach/principal
	name = "Keelin's private beach principal"
	icon_state = "bridge"

/area/beach/bano
	name = "Keelin's private beach bano"
	icon_state = "checkpoint1"

/area/beach/cambiador
	name = "Keelin's private beach cambiador"
	icon_state = "checkpoint1"

/area/beach/cocina
	name = "Keelin's private beach cocina"
	icon_state = "kitchen"

/area/beach/med
	name = "Keelin's private beach med"
	icon_state = "medbay"
	req_access = list(access_medical)

/area/beach/sec
	name = "Keelin's private beach sec"
	icon_state = "checkpoint1"
	req_access = list(access_brig)

/area/beach/playa
	name = "Keelin's private beach - Playa"
	icon_state = "conference"

/area/beach/New()
	..()
	var/sound/S = new/sound()
	mysound = S
	S.file = 'sound/ambience/shore.ogg'
	S.repeat = 1
	S.wait = 0
	S.channel = GLOB.sound_channels.RequestChannel(/area/beach)
	S.volume = 100
	S.priority = 255
	S.status = SOUND_UPDATE
	process()

/area/beach/Entered(atom/movable/Obj,atom/OldLoc)
	. = ..()
	if(ismob(Obj))
		var/mob/M = Obj
		if(M.client)
			mysound.status = SOUND_UPDATE
			sound_to(M, mysound)

/area/beach/Exited(atom/movable/Obj)
	. = ..()
	if(ismob(Obj))
		var/mob/M = Obj
		if(M.client)
			mysound.status = SOUND_PAUSED | SOUND_UPDATE
			sound_to(M, mysound)

/area/beach/proc/process()
	set background = 1

	var/sound/S = null
	var/sound_delay = 0
	if(prob(25))
		S = sound(file=pick('sound/ambience/seag1.ogg','sound/ambience/seag2.ogg','sound/ambience/seag3.ogg'), volume=100)
		sound_delay = rand(0, 50)

	for(var/mob/living/carbon/human/H in src)
		if(H.client)
			mysound.status = SOUND_UPDATE
			to_chat(H, mysound)
			if(S)
				spawn(sound_delay)
					sound_to(H, S)

	spawn(60) .()

/area/casinojack
	name = "Hotel-Casino Flamingo"
	icon_state = "null"
	luminosity = 1
	dynamic_lighting = 0
	requires_power = 0

/area/casinojack/sec
	name = "Hotel-Casino Flamingo Sec"
	icon_state = "checkpoint1"
	req_access = list(access_brig)

/area/casinojack/bar
	name = "Hotel-Casino Flamingo Bar"
	icon_state = "kitchen"
	req_access = list(access_bar)

/area/casinojack/command
	name = "Hotel-Casino Flamingo Command"
	icon_state = "bridge"
	req_access = list(access_bridge)

/area/casinojack/principal
	name = "Hotel-Casino Flamingo Principal"
	icon_state = "conference"

/area/casinojack/Med
	name = "Hotel-Casino Flamingo Med"
	icon_state = "medbay"
	req_access = list(access_medical)

/area/casinojack/cuarto1
	name = "Hotel-Casino Flamingo cuarto 1"
	icon_state = "surgery"

/area/casinojack/cuarto2
	name = "Hotel-Casino Flamingo cuarto 2"
	icon_state = "surgery"

/area/casinojack/cuarto3
	name = "Hotel-Casino Flamingo cuarto 3"
	icon_state = "surgery"

/area/casinojack/cuarto4
	name = "Hotel-Casino Flamingo cuarto 4"
	icon_state = "surgery"



/area/nieve
	name = "Hotel Stanlook"
	dynamic_lighting = 0
	requires_power = 0
	dynamic_lighting = 1
	sound_env = FOREST
	icon_state = "surgery"

/area/nieve/cuarto1
	name = "Hotel Stanlook - cuarto 1"

/area/nieve/cuarto2
	name = "Hotel Stanlook - cuarto 2"

/area/nieve/cuarto3
	name = "Hotel Stanlook - cuarto 3"

/area/nieve/cuarto4
	name = "Hotel Stanlook - cuarto 4"

/area/nieve/principal
	name = "Hotel Stanlook - principal"
	icon_state = "bridge"

/area/nieve/sec
	name = "Hotel Stanlook - seguridad"
	icon_state = "checkpoint1"
	req_access = list(access_brig)

/area/nieve/med
	name = "Hotel Stanlook - medbay"
	icon_state = "medbay"
	req_access = list(access_medical)

/area/nieve/cocina
	name = "Hotel Stanlook - cocina"
	icon_state = "kitchen"

/area/nieve/biblioteca
	name = "Hotel Stanlook - biblioteca"

/area/nieve/cambiador
	name = "Hotel Stanlook - cambiador"

/area/nieve/gimnasio
	name = "Hotel Stanlook - gimnasio"

/area/nieve/bosque
	name = "Hotel Stanlook - bosque"
	icon_state = "engineering"
	ambience = list('sound/effects/wind/tundra0.ogg','sound/effects/wind/tundra1.ogg','sound/effects/wind/tundra2.ogg','sound/effects/wind/spooky0.ogg','sound/effects/wind/spooky1.ogg')

/area/nieve/garaje
	name = "Hotel Stanlook - garaje"

/area/nieve/sauna
	name = "Hotel Stanlook - sauna"

/area/nieve/bar
	name = "Hotel Stanlook - bar"
	icon_state = "kitchen"
