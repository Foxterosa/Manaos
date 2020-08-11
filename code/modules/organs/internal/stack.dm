/mob/living/carbon/human/proc/create_stack()
	set waitfor=0
	sleep(10)
	internal_organs_by_name[BP_STACK] = new /obj/item/organ/internal/stack(src,1)
	to_chat(src, "<span class='notice'>You feel a faint sense of vertigo as your neural lace boots.</span>")

/obj/item/organ/internal/stack
	name = "enlace neural"
	parent_organ = BP_HEAD
	icon_state = "cortical-stack"
	organ_tag = BP_STACK
	status = ORGAN_ROBOTIC
	vital = 1
	origin_tech = list(TECH_BIO = 4, TECH_MATERIAL = 4, TECH_MAGNET = 2, TECH_DATA = 3)
	relative_size = 25

	var/ownerckey
	var/invasive
	var/default_language
	var/list/languages = list()
	var/datum/mind/backup
	var/prompting = FALSE // Are we waiting for a user prompt?
	var/list/skilldecay = list(SKILL_WEAPONS = -3, SKILL_COMBAT = -3, SKILL_HAULING = -2) //Skills that will suffer from relacing (Combat relevant skills as of the implementation of this PR)
	var/buff_type = /datum/skill_buff/lace
	var/relacetime
	/datum/skill_buff/lace
		limit = 1

/obj/item/organ/internal/stack/examine(var/mob/user)
	. = ..(user)
	if(istype(backup)) // Do we have a backup?
		if(user.skill_check(SKILL_DEVICES, SKILL_EXPERT)) // Can we even tell what the blinking means?
			if(find_dead_player(ownerckey, 1)) // Is the player still around and dead?
				to_chat(user, "<span class='notice'>La luz del [src.name] parpadea rapidamente. Alguien puede que tenga una segunda oportunidad.</span>")
			else
				to_chat(user, "La luz del [src.name] parpadea lentamente. Talves debas esperar...")
		else
			to_chat(user, "La luz del [src.name] parpadea, pero no tienes idea de lo que significa.")
	else
		to_chat(user, "La luz del [src.name] esta apagada. " + (user.skill_check(SKILL_DEVICES, SKILL_EXPERT) ? "No tiene un respaldo." : "Te preguntas que significara."))

/obj/item/organ/internal/stack/emp_act()
	return

/obj/item/organ/internal/stack/getToxLoss()
	return 0

/obj/item/organ/internal/stack/proc/do_backup()
	if(owner && owner.stat != DEAD && !is_broken() && owner.mind)
		languages = owner.languages.Copy()
		backup = owner.mind
		default_language = owner.default_language
		if(owner.ckey)
			ownerckey = owner.ckey

/obj/item/organ/internal/stack/New()
	..()
	do_backup()
	robotize()

/obj/item/organ/internal/stack/Destroy()
	. = ..()
	var/obj/gore
	playsound(src, "shatter", 70, 1)
	gore = new /obj/item/weapon/material/shard(get_turf(owner), MATERIAL_GLASS)
	gore.throw_at(get_edge_target_turf(src,pick(GLOB.alldirs)),rand(1,3),30)
	gore = new /obj/effect/decal/cleanable/blood/gibs(get_turf(owner))
	gore.throw_at(get_edge_target_turf(src,pick(GLOB.alldirs)),rand(1,3),30)
	owner.visible_message(SPAN_WARNING("[owner]'s neck explodes in a shower of strange blue liquid and metallic fragments!"))

/obj/item/organ/internal/stack/proc/backup_inviable()
	return 	(!istype(backup) || backup == owner.mind || (backup.current && backup.current.stat != DEAD))

/obj/item/organ/internal/stack/replaced()
	if(!..()) return 0
	if(prompting) // Don't spam the player with twenty dialogs because someone doesn't know what they're doing or panicking.
		return 0
	if(owner && !backup_inviable())
		var/current_owner = owner
		prompting = TRUE
		var/response = alert(find_dead_player(ownerckey, 1), "Tu [src.name] ah sido colocado en un nuevo cuerpo. Deseas volver a la vida como respaldo de la mente de [backup.name]?", "Resleeving", "Si", "No")
		prompting = FALSE
		if(src && response == "Yes" && owner == current_owner)
			overwrite()
	sleep(-1)
	do_backup()
	to_chat(owner,SPAN_WARNING("Te sientes lento y tus extremidades son pesadas a medida que tu nuevo cuerpo se adapta al enlace neural; probablemente seras bastante inutil hasta que tu enlace se haya aclimatado."))
	owner.buff_skill(skilldecay, 30 MINUTES, buff_type)//Debuff applied
	relacetime = world.time
	if(world.time >= relacetime + 30 MINUTES)
		to_chat(owner, SPAN_NOTICE("Te sientes como si te hubieras recuperado un poco de tu terrible experiencia, todavia no harias el hábito de morir."))
	return 1

/obj/item/organ/internal/stack/removed()
	do_backup()
	..()

/obj/item/organ/internal/stack/proc/overwrite()
	if(owner.mind && owner.ckey) //Someone is already in this body!
		if(owner.mind == backup) // Oh, it's the same mind in the backup. Someone must've spammed the 'Start Procedure' button in a panic.
			return
		owner.visible_message("<span class='danger'>A [owner.name] le dan violentos espasmos!</span>")
		if(prob(66))
			to_chat(owner, "<span class='danger'>Luchas contra los zarcillos invasores de otra mente, sosteniendo tu propio cuerpo!</span>")
			return
		owner.ghostize() // Remove the previous owner to avoid their client getting reset.
	//owner.dna.real_name = backup.name
	//owner.real_name = owner.dna.real_name
	//owner.SetName(owner.real_name)
	//The above three lines were commented out for
	backup.active = 1
	backup.transfer_to(owner)
	if(default_language) owner.default_language = default_language
	owner.languages = languages.Copy()
	to_chat(owner, "<span class='notice'>La conciencia se arrastra lentamente sobre ti a medida que tu nuevo cuerpo se despierta.</span>")
