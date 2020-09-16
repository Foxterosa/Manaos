/mob/living/simple_animal/friendly/santa_good
	name = "Canta Claus"
	desc = "¡Santa! ¡sabia que eras real!"
	icon_state = "santa"
	icon = 'icons/mob/simple_animal/animal.dmi'
	icon_living = "santa"
	icon_dead = "santa-dead"
	speak = list("Ho ho ho ho!","Hagan caso a sus papas!","¿Reyes magos? ¿quienes son?","Reido solo tendra carbon!","¿Donde estara Rodolfo?")
	speak_chance = 1
	turns_per_move = 5
	response_help = "pokes"
	response_disarm = "shoves"
	response_harm = "hits"
	speed = 4
	stop_automated_movement_when_pulled = 0
	maxHealth = 2000
	health = 2000
	can_escape = TRUE
	a_intent = I_HURT
	faction = "snow"
	status_flags = CANPUSH

	min_gas = null
	max_gas = null
	minbodytemp = 0

	meat_type = /obj/item/weapon/reagent_containers/food/snacks/meat/human
	meat_amount = 6
	bone_amount = 8
	skin_amount = 8
	skin_material = MATERIAL_SKIN_FEATHERS
	
