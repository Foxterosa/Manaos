/mob/living/carbon/human/update_body()
	..()
	switch(src.descriptors["height"])
		if(1)
			src.size_multiplier = 0.75
		if(2)
			src.size_multiplier = 0.90
		if(4)
			src.size_multiplier = 1.10
		if(5)
			src.size_multiplier = 1.22