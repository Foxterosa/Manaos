/mob/living/simple_animal/hostile/retaliate/reindeer
	name = "Reno"
	desc = "Un fuerte y bravo reno"
	icon = 'icons/mob/simple_animal/animal.dmi'
	icon_state = "reindeer"
	icon_living = "reindeer"
	icon_dead = "reindeer-dead"
	speak = list("snorts")
	speak_emote = list("snorts")
	emote_hear = list("snorts")
	emote_see = list("shakes its head")
	response_help =  "pets"
	response_disarm = "gently pushes aside"
	response_harm = "strikes"
	attacktext = "impacts"
	health = 100
	maxHealth = 100
	melee_damage_lower = 10
	melee_damage_upper = 20
	pass_flags = PASS_FLAG_TABLE
	faction = "snow"
	pry_time = 8 SECONDS
	break_stuff_probability = 8

	meat_type = /obj/item/weapon/reagent_containers/food/snacks/meat/beef
	meat_amount = 8
	bone_amount = 9
	skin_amount = 10
	skin_material = MATERIAL_SKIN_FEATHERS

/mob/living/simple_animal/hostile/retaliate/goose/Retaliate()
	..()
	if(stat == CONSCIOUS)
		enrage(enrage_potency)
		
