/mob/living/simple_animal/hostile/retaliate/deer
	name = "Ciervo"
	desc = "No parece muy listo"
	icon = 'icons/mob/simple_animal/animal.dmi'
	icon_state = "deer"
	icon_living = "deer"
	icon_dead = "deer_dead"
	speak = list("snorts")
	speak_emote = list("snorts")
	emote_hear = list("snorts")
	emote_see = list("shakes its head")
	response_help =  "pets"
	response_disarm = "gently pushes aside"
	response_harm = "strikes"
	attacktext = "impacts"
	health = 70
	maxHealth = 70
	melee_damage_lower = 6
	melee_damage_upper = 10
	pass_flags = PASS_FLAG_TABLE
	faction = "snow"
	pry_time = 8 SECONDS
	break_stuff_probability = 6

	meat_type = /obj/item/weapon/reagent_containers/food/snacks/meat/beef
	meat_amount = 6
	bone_amount = 8
	skin_amount = 8
	skin_material = MATERIAL_SKIN_FEATHERS

/mob/living/simple_animal/hostile/retaliate/goose/Retaliate()
	..()
	if(stat == CONSCIOUS)
		enrage(enrage_potency)

