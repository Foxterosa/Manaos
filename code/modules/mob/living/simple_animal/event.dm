/mob/living/simple_animal/event
	name = "evento"
	icon_state = "corgi"
	health = 1000
	maxHealth = 1000

	universal_speak = TRUE

	see_invisible = 15
	see_in_dark = 7

	meat_type =     null
	meat_amount =   0
	bone_material = null
	bone_amount =   0
	skin_material = null
	skin_amount =   0

	wander = FALSE

	can_escape = TRUE
	status_flags = CANPUSH

	var/datum/sound_token/boss_theme

/mob/living/simple_animal/event/Initialize()
	. = ..()
	boss_theme = GLOB.sound_player.PlayLoopingSound(src, "event", 'sound/music/Visager-Battle.ogg', volume = 10, range = 7, falloff = 4, prefer_mute = TRUE)

/mob/living/simple_animal/event/death()
	..()
	QDEL_NULL(boss_theme)

/mob/living/simple_animal/event/Destroy()
	QDEL_NULL(boss_theme)
	. = ..()
