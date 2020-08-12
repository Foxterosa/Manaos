/mob/living/simple_animal/hostile/mutant_netherworld
	name = "Mutante"
	desc = "Una horrible criatura de un lugar lejano."
	icon = 'icons/mob/simple_animal/animal.dmi'
	icon_state = "blank_body" //for mapping purposes
	icon_dead = "blank_dead"
	speak = list("QUEMA!","DUELE!","GRR!","VEN!")
	speak_chance = 1
	turns_per_move = 2
	response_help = "pets the"
	response_disarm = "gently pushes aside the"
	response_harm = "hits the"
	speed = 1
	maxHealth = 35
	health = 35

	harm_intent_damage = 6
	melee_damage_lower = 5
	melee_damage_upper = 7
	attacktext = "bitten"
	attack_sound = 'sound/weapons/bite.ogg'
	pry_time = 10 SECONDS
	pry_desc = "biting"

	min_gas = null
	max_gas = null
	minbodytemp = 0

	break_stuff_probability = 25
	faction = "netherworld"
	bleed_colour = "#5d0d71"
	pass_flags = PASS_FLAG_TABLE


/mob/living/simple_animal/hostile/carp/FindTarget()
	. = ..()
	if(.)
		custom_emote(1,"nashes at [.]")