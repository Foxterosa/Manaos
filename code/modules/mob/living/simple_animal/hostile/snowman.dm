/mob/living/simple_animal/hostile/snowman
	name = "Muñeco de nieve"
	desc = "Muy bonito pero... creo que lo vi moverse."
	icon = 'icons/mob/simple_animal/animal.dmi'
	icon_state = "snowman" //for mapping purposes
	icon_dead = "snowman-dead"
	turns_per_move = 2
	response_help = "pets the"
	response_disarm = "gently pushes aside the"
	response_harm = "hits the"
	speed = 1
	maxHealth = 20
	health = 20
	move_to_delay = 2

	harm_intent_damage = 8
	melee_damage_lower = 7
	melee_damage_upper = 12
	attacktext = "bitten"
	attack_sound = 'sound/weapons/bite.ogg'
	pry_time = 10 SECONDS
	pry_desc = "biting"

	min_gas = null
	max_gas = null
	minbodytemp = 0

	break_stuff_probability = 25
	faction = "snow"
	bleed_colour = "#5d0d71"
	pass_flags = PASS_FLAG_TABLE


/mob/living/simple_animal/hostile/carp/FindTarget()
	. = ..()
	if(.)
		custom_emote(1,"nashes at [.]")
		
