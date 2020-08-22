/mob/living/simple_animal/hostile/santa_bad
	name = "Robosanta"
	desc = "HO HO HO HO!"
	icon_state = "santa_bad"
	icon = 'icons/mob/simple_animal/animal.dmi'
	icon_living = "santa_bad"
	icon_dead = "santa-dead"
	ranged = 1
	rapid = 1
	projectilesound = 'sound/weapons/gunshot/gunshot_smg.ogg'
	projectiletype = /obj/item/projectile/bullet/pistol
	speak = list("Ho ho ho!","Todos son niños malos!")
	speak_emote = list("beep")
	emote_hear = list("beep")
	speak_chance = 1
	turns_per_move = 5
	response_help = "pokes"
	response_disarm = "shoves"
	response_harm = "hits"
	speed = 4
	stop_automated_movement_when_pulled = 0
	maxHealth = 700
	health = 700
	move_to_delay = 4
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
	
