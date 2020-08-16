/mob/proc/try_interaction()
	return

/mob/living/carbon/human/MouseDrop_T(mob/M as mob, mob/living/carbon/human/user as mob)
	. = ..()
	if(M == src || src == usr || M != usr)
		return
	if(usr.restrained())
		return
	if(!ishuman(src))
		return

	user.try_interaction(src)

/mob/living/carbon/human/verb/interact_with()
	set name = "Interact With"
	set desc = "Perform an interaction with someone."
	set category = "IC"
	set src in view()

	if(!usr.restrained() && ishuman(src))
		usr.try_interaction(src)

/mob/living/carbon/human/try_interaction(mob/living/carbon/human/partner)
	var/dat
	if(partner != src)
		dat = "<B><HR><FONT size=3>Interacting with \the [partner]...</FONT></B><HR>"
	else
		dat = "<B><HR><FONT size=3>Interacting with yourself...</FONT></B><HR>"

	dat += "You...<br>[list_interaction_attributes(src)]<hr>"
	if(partner != src)
		dat += "They...<br>[partner.list_interaction_attributes(src)]<hr>"

	make_interactions()
	for(var/interaction_key in interactions)
		var/datum/interaction/I = interactions[interaction_key]
		if(I.evaluate_user(src) && I.evaluate_target(src, partner))
			dat += I.get_action_link_for(src, partner)

	var/datum/browser/popup = new(usr, "interactions", "Interactions", 340, 480)
	popup.set_content(dat)
	popup.open()
