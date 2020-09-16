//Foxterosa (?
/mob/living/simple_animal/fox
	name = "fox"
	desc = "A domesticated, feline pet. Has a tendency to adopt crewmembers."
	icon_state = "fox"
	item_state = "fox"
	icon_living = "fox"
	icon_dead = "fox_dead"
	speak = list("Tchoof!","Bark!","Ack-Ack!","Awoo!")
	speak_emote = list("purrs", "yaps")
	emote_hear = list("yaps","barks")
	emote_see = list("shakes their head", "shivers")
	speak_chance = 1
	turns_per_move = 5
	see_in_dark = 6
	response_help  = "pets"
	response_disarm = "pokes"
	response_harm   = "kicks"
	minbodytemp = 223		//Below -50 Degrees Celsius
	maxbodytemp = 323	//Above 50 Degrees Celsius
	holder_type = /obj/item/weapon/holder/fox
	mob_size = MOB_SMALL
	possession_candidate = 1
	pass_flags = PASS_FLAG_TABLE

	skin_material = MATERIAL_SKIN_FUR_ORANGE

	var/turns_since_scan = 0
	var/mob/living/simple_animal/mouse/movement_target
	var/mob/flee_target

/mob/living/simple_animal/fox/Life()
	. = ..()
	if(!.)
		return FALSE
	//MICE!
	if((src.loc) && isturf(src.loc))
		if(!resting && !buckled)
			for(var/mob/living/simple_animal/mouse/M in loc)
				if(!M.stat)
					M.splat()
					visible_emote(pick("bites \the [M]!","toys with \the [M].","chomps on \the [M]!"))
					movement_target = null
					stop_automated_movement = 0
					break



	for(var/mob/living/simple_animal/mouse/snack in oview(src,5))
		if(snack.stat < DEAD && prob(15))
			audible_emote(pick("hisses and spits!","mrowls fiercely!","eyes [snack] hungrily."))
		break



	turns_since_scan++
	if (turns_since_scan > 5)
		walk_to(src,0)
		turns_since_scan = 0

		if (flee_target) //fleeing takes precendence
			handle_flee_target()
		else
			handle_movement_target()

	if(prob(2)) //spooky
		var/mob/observer/ghost/spook = locate() in range(src,5)
		if(spook)
			var/turf/T = spook.loc
			var/list/visible = list()
			for(var/obj/O in T.contents)
				if(!O.invisibility && O.name)
					visible += O
			if(visible.len)
				var/atom/A = pick(visible)
				visible_emote("suddenly stops and stares at something unseen[istype(A) ? " near [A]":""].")

/mob/living/simple_animal/fox/proc/handle_movement_target()
	//if our target is neither inside a turf or inside a human(???), stop
	if((movement_target) && !(isturf(movement_target.loc) || ishuman(movement_target.loc) ))
		movement_target = null
		stop_automated_movement = 0
	//if we have no target or our current one is out of sight/too far away
	if( !movement_target || !(movement_target.loc in oview(src, 4)) )
		movement_target = null
		stop_automated_movement = 0
		for(var/mob/living/simple_animal/mouse/snack in oview(src)) //search for a new target
			if(isturf(snack.loc) && !snack.stat)
				movement_target = snack
				break

	if(movement_target)
		stop_automated_movement = 1
		walk_to(src,movement_target,0,3)

/mob/living/simple_animal/fox/proc/handle_flee_target()
	//see if we should stop fleeing
	if (flee_target && !(flee_target.loc in view(src)))
		flee_target = null
		stop_automated_movement = 0

	if (flee_target)
		if(prob(25)) say("Awoo")
		stop_automated_movement = 1
		walk_away(src, flee_target, 7, 2)

/mob/living/simple_animal/fox/proc/set_flee_target(atom/A)
	if(A)
		flee_target = A
		turns_since_scan = 5

/mob/living/simple_animal/fox/attackby(var/obj/item/O, var/mob/user)
	. = ..()
	if(O.force)
		set_flee_target(user? user : src.loc)

/mob/living/simple_animal/fox/attack_hand(mob/living/carbon/human/M as mob)
	. = ..()
	if(M.a_intent == I_HURT)
		set_flee_target(M)

/mob/living/simple_animal/fox/ex_act()
	. = ..()
	set_flee_target(src.loc)

/mob/living/simple_animal/fox/bullet_act(var/obj/item/projectile/proj)
	. = ..()
	set_flee_target(proj.firer? proj.firer : src.loc)

/mob/living/simple_animal/fox/hitby(atom/movable/AM, var/datum/thrownthing/TT)
	. = ..()
	set_flee_target(TT.thrower? TT.thrower : src.loc)

//Basic friend AI
/mob/living/simple_animal/fox/fluff
	var/mob/living/carbon/human/friend
	var/befriend_job = null

/mob/living/simple_animal/fox/fluff/handle_movement_target()
	if (friend)
		var/follow_dist = 4
		if (friend.stat >= DEAD || friend.is_asystole()) //danger
			follow_dist = 1
		else if (friend.stat || friend.health <= 50) //danger or just sleeping
			follow_dist = 2
		var/near_dist = max(follow_dist - 2, 1)
		var/current_dist = get_dist(src, friend)

		if (movement_target != friend)
			if (current_dist > follow_dist && !istype(movement_target, /mob/living/simple_animal/mouse) && (friend in oview(src)))
				//stop existing movement
				walk_to(src,0)
				turns_since_scan = 0

				//walk to friend
				stop_automated_movement = 1
				movement_target = friend
				walk_to(src, movement_target, near_dist, 4)

		//already following and close enough, stop
		else if (current_dist <= near_dist)
			walk_to(src,0)
			movement_target = null
			stop_automated_movement = 0
			if (prob(10))
				say("Ark!")

	if (!friend || movement_target != friend)
		..()

/mob/living/simple_animal/fox/fluff/Life()
	. = ..()
	if(!.)
		return FALSE
	if (stat || !friend)
		return
	if (get_dist(src, friend) <= 1)
		if (friend.stat >= DEAD || friend.is_asystole())
			if (prob((friend.stat < DEAD)? 50 : 15))
				var/verb = pick("geckers", "barks", "mrowls")
				audible_emote(pick("[verb] in distress.", "[verb] anxiously."))
		else
			if (prob(5))
				visible_emote(pick("nuzzles [friend].",
								   "brushes against [friend].",
								   "rubs against [friend].",
								   "purrs."))
	else if (friend.health <= 50)
		if (prob(10))
			var/verb = pick("meows", "mews", "mrowls")
			audible_emote("[verb] anxiously.")

/mob/living/simple_animal/fox/fluff/verb/become_friends()
	set name = "Become Friends"
	set category = "IC"
	set src in view(1)

	if(!friend)
		var/mob/living/carbon/human/H = usr
		if(istype(H) && (!befriend_job || H.job == befriend_job))
			friend = usr
			. = 1
	else if(usr == friend)
		. = 1 //already friends, but show success anyways

	if(.)
		set_dir(get_dir(src, friend))
		visible_emote(pick("nuzzles [friend].",
						   "brushes against [friend].",
						   "rubs against [friend].",
						   "purrs."))
	else
		to_chat(usr, "<span class='notice'>[src] ignores you.</span>")
	return

//SENKOOOO
/mob/living/simple_animal/fox/fluff/senkosan
	name = "Senko-san"
	desc = "Dirías que es mejor no llamarla con el -san, solo por si viene alguien."
	gender = FEMALE
	icon_state = "senko"
	item_state = "senko"
	icon_living = "senko"
	icon_dead = "senko_dead"
	skin_material = MATERIAL_SKIN_FUR_ORANGE
