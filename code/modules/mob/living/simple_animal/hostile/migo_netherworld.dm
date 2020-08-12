/mob/living/simple_animal/hostile/migo_netherworld
	name = "Mi-go"
	desc = "Una criatura de carne y cartílago, espeluznante..."
	icon = 'icons/mob/simple_animal/animal.dmi'
	icon_state = "mi-go" //for mapping purposes
	icon_dead = "mi-go-dead"
	speak = list("HURR!","RAWR!","GRR!")
	speak_chance = 1
	turns_per_move = 1
	response_help = "pets the"
	response_disarm = "gently pushes aside the"
	response_harm = "hits the"
	speed = 1
	maxHealth = 50
	health = 50

	harm_intent_damage = 10
	melee_damage_lower = 30
	melee_damage_upper = 35
	attacktext = "bitten"
	attack_sound = 'sound/weapons/bite.ogg'
	pry_time = 10 SECONDS
	melee_damage_flags = DAM_SHARP
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