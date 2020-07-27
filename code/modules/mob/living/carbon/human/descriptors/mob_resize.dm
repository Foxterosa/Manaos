/mob/living/carbon/human/update_body()
	..()
	if(sprite_resize)
		switch(src.descriptors["height"])
			if(1)
				src.size_multiplier = 0.80
			if(2)
				src.size_multiplier = 0.90
			if(4)
				src.size_multiplier = 1.10
			if(5)
				src.size_multiplier = 1.20

/mob/living/carbon/human
	var/sprite_resize

/datum/preferences/copy_to(mob/living/carbon/human/character, is_preview_copy = FALSE)
	..()
	character.sprite_resize = sprite_resize

