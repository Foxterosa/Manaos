/mob/living/simple_animal/hostile/creature_netherworld
	name = "Blood creature"
	desc = "Una bestia gigante y deforme, es aterrador solo verla, definitivamente es mala idea que se me acerque."
	icon = 'icons/mob/simple_animal/animal.dmi'
	icon_state = "otherthing-pink" //for mapping purposes
	icon_dead = "otherthing-pink-dead"
	speak_emote = list("gurgle")
	speak_chance = 1
	turns_per_move = 6
	response_help = "pets the"
	response_disarm = "gently pushes aside the"
	response_harm = "hits the"
	speed = 5
	maxHealth = 400
	health = 400

	harm_intent_damage = 50
	melee_damage_lower = 40
	melee_damage_upper = 60
	attacktext = "crush"
	attack_sound = 'sound/weapons/bite.ogg'
	pry_time = 10 SECONDS
	pry_desc = "biting"

	min_gas = null
	max_gas = null
	minbodytemp = 0

	break_stuff_probability = 30
	faction = "netherworld"
	bleed_colour = "#5d0d71"
	pass_flags = PASS_FLAG_TABLE


/mob/living/simple_animal/hostile/carp/FindTarget()
	. = ..()
	if(.)
		custom_emote(1,"nashes at [.]")