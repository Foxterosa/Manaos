/mob/living/proc/has_hands()
	return FALSE

/mob/living/has_hands()
	return TRUE//(can_use_hand("l_hand") || can_use_hand("r_hand"))

/mob/living/proc/has_mouth()
	return TRUE

/mob/living/proc/mouth_is_free()
	return TRUE

/mob/living/proc/foot_is_free()
	return TRUE

/mob/living/carbon/human/has_mouth()
	var/obj/item/organ/external/head/headass = get_organ(BP_HEAD)
	if(headass)
		return TRUE
	return FALSE

/mob/living/mouth_is_free()
	if(istype(src, /mob/living/carbon/human))
		var/mob/living/carbon/human/H = src
		return !H.wear_mask
	else
		return TRUE

/mob/living/foot_is_free()
	if(istype(src, /mob/living/carbon/human))
		var/mob/living/carbon/human/H = src
		return !H.shoes
	else
		return TRUE
