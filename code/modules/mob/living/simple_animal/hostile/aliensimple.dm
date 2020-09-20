/mob/living/simple_animal/hostile/alien
	name = "alien hunter"
	desc = "Hiss!"
	icon = 'icons/mob/alien.dmi'
	icon_state = "alienh_running"
	icon_living = "alienh_running"
	icon_dead = "alienh_dead"
	response_help = "pokes"
	response_disarm = "shoves"
	response_harm = "hits"
	speed = 0
	maxHealth = 125
	health = 125
	harm_intent_damage = 5
	obj_damage = 60
	melee_damage_lower = 25
	melee_damage_upper = 25
	attacktext = "slashes"
	speak_emote = list("hisses")
	emote_hear = list("clicks")
	speak = list("Hiss!")
	speak_chance = 8
	a_intent = I_HURT
	attack_sound = 'sound/weapons/bladeslice.ogg'
	unsuitable_atmos_damage = 15
	heat_damage_per_tick = 20
	faction = "alien"
	stop_automated_movement_when_pulled = 0
	status_flags = CANPUSH
	can_escape = TRUE
	min_gas = null
	max_gas = null
	minbodytemp = 0
	see_in_dark = 8
	show_stat_health = 1
	dodge_prob = 40
	move_to_delay = 2
	pass_flags = PASS_FLAG_TABLE

	bleed_colour = "#39ff14"


/mob/living/simple_animal/hostile/alien/alienspitter
	name = "Xenomorph spitter"
	desc = "Una criatura hostil y peligrosa, ¿eso que tiene en la boca es acido?"
	icon_state = "aliens_running"
	icon_living = "aliens_running"
	icon_dead = "aliens_dead"
	turns_per_move = 6
	speed = 2
	maxHealth = 130
	health = 130
	in_stasis = 1

	ranged = 1
	projectilesound = 'sound/weapons/spiderlunge.ogg'
	projectiletype = /obj/item/projectile/acid


/mob/living/simple_animal/hostile/alien/alienhunter
	name = "Xenomorph hunter"
	desc = "Una criatura hostil y peligrosa, es muy rapida."
	icon_state = "aliend_pounce"
	icon_living = "aliend_pounce"
	icon_dead = "alienh_dead"
	speak = list("Hiss!")
	speak_chance = 1
	speed = 1
	move_to_delay = 3
	maxHealth = 110
	health = 110
	harm_intent_damage = 10
	melee_damage_lower = 30
	melee_damage_upper = 35
	attacktext = "ataca"
	pry_time = 10 SECONDS
	melee_damage_flags = DAM_SHARP
	pry_desc = "biting"

	in_stasis = 1



/mob/living/simple_animal/hostile/alien/alienqueen
	name = "Xenomorph queen"
	desc = "Una criatura hostil y peligrosa, su cabeza parece una corona."
	icon_state = "alienq_s"
	icon_living = "alienq_s"
	icon_dead = "aliens_dead"
	turns_per_move = 7
	speed = 4
	maxHealth = 500
	health = 500


	ranged = 1
	rapid = 1
	projectilesound = 'sound/weapons/spiderlunge.ogg'
	projectiletype = /obj/item/projectile/acid

	in_stasis = 0


/mob/living/simple_animal/hostile/alien/alienempress
	name = "Emperatiz Xenomorpho"
	desc = "Una criatura hostil y peligrosa, su cabeza parece una corona."
	icon = 'icons/mob/alienlarge.dmi'
	icon_state = "queen_s"
	icon_living = "queen_s"
	icon_dead = "queen_dead"
	turns_per_move = 7
	speed = 7
	maxHealth = 1000
	health = 1000


	ranged = 1
	rapid = 2
	projectilesound = 'sound/weapons/spiderlunge.ogg'
	projectiletype = /obj/item/projectile/acid




/mob/living/simple_animal/hostile/alien/alienmother
	name = "Reina Madre Xenomorpho"
	desc = "La madre de todo."
	icon = 'icons/mob/alienhuge.dmi'
	icon_state = "empress_s"
	icon_living = "empress_s"
	icon_dead = "queen_dead"
	turns_per_move = 7
	speed = 15
	maxHealth = 10000
	health = 10000


	ranged = 1
	rapid = 6
	projectilesound = 'sound/voice/hiss5.ogg'
	projectiletype = /obj/item/projectile/mentalata

