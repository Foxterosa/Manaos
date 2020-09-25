/datum/relation/friend
	name = "Amistad"
	desc = "Se conocen desde hace tiempo, y se llevan bastante bien."
	incompatible = list(/datum/relation/enemy)

/datum/relation/friend/get_desc_string()
	return "[holder] y [other.holder] parecen llevarse bien."

/datum/relation/kid_friend
	name = "Amistad de la Infancia"
	desc = "Se conocen de su juventud o infancia."

/datum/relation/kid_friend/get_desc_string()
	return "[holder] y [other.holder] se conocen desde la infancia."

/datum/relation/kid_friend/get_candidates()
	var/list/creche = ..()
	var/mob/living/carbon/human/holdermob = holder.current

	if(istype(holdermob))
		for(var/datum/relation/kid in creche)
			var/mob/living/carbon/human/kidmob = kid.holder.current
			if(!istype(kidmob))
				continue
			if(abs(holdermob.age - kidmob.age) > 3)
				creche -= kid		//No creepers please, it's okay if the pool is small.
				continue
			var/kidhome =    kidmob.get_cultural_value(TAG_HOMEWORLD)
			var/holderhome = holdermob.get_cultural_value(TAG_HOMEWORLD)
			if(kidhome && holderhome && kidhome != holderhome)
				creche -= kid		//No trans-galactic shennanigans either.
	return creche

/datum/relation/enemy
	name = "Enemistad"
	desc = "Se conocen desde hace tiempo, y genuinamente no se soportan."
	incompatible = list(/datum/relation/friend, /datum/relation/so)

/datum/relation/enemy/get_desc_string()
	return "[holder] y [other.holder] no se llevan bien."

/datum/relation/had_crossed
	name = "Resentido"
	desc = "Le has contrariado en algun momento, y lo mas probable es que te tenga rencor."
	can_connect_to = list(/datum/relation/was_crossed)

/datum/relation/had_crossed/get_desc_string()
	return "Algo paso entre [holder] y [other.holder] en el pasado, y [other.holder] guarda rencor."

/datum/relation/was_crossed
	name = "Rencoroso"
	desc = "Te ha contrariado en algun momento, y lo recuerdas vividamente."
	can_connect_to = list(/datum/relation/had_crossed)

/datum/relation/was_crossed/get_desc_string()
	return "Algo paso entre [holder] y [other.holder] en el pasado, y [holder] guarda rencor."

/datum/relation/nope
	name = "Eludiendo"
	desc = "Paso algo entre tu y la otra persona en el pasado, y la eludes por ese evento."
	can_connect_to = list(/datum/relation/is_nope)

/datum/relation/nope/get_desc_string()
	return "[holder] elude a [other.holder], por alguna razon."

/datum/relation/is_nope
	name = "Experiencia Desafortunada"
	desc = "Paso algo entre tu y la otra persona en el pasado, y por eso te evita."
	can_connect_to = list(/datum/relation/nope)

/datum/relation/is_nope/get_desc_string()
	return "[other.holder] elude a [holder], por alguna razon."

/datum/relation/rival
	name = "Rivalidad"
	desc = "Estan en una contienda constante para demostrar quien manda."

/datum/relation/rival/get_desc_string()
	return "[holder] y [other.holder] parecen estar en una intensa competencia."

/datum/relation/rival/get_candidates()
	var/list/rest = ..()
	var/list/best = list()
	var/list/good = list()
	for(var/datum/relation/R in rest)
		if(!R.holder.assigned_job || !holder.assigned_job)
			continue
		if(R.holder.assigned_job == holder.assigned_job)
			best += R
		if(R.holder.assigned_job.department_flag & holder.assigned_job.department_flag)
			good += R
	if(best.len)
		return best
	else if (good.len)
		return good
	return rest

/datum/relation/lover
	name = "Amante"
	desc = "Tienen algo interesante entre ustedes."
	incompatible = list(/datum/relation/xenolover, /datum/relation/ex)

/datum/relation/lover/get_desc_string()
	return "[holder] y [other.holder] parecen estar en algo romantico."

/datum/relation/lover/get_candidates()
	var/list/lovers = ..()
	var/mob/living/carbon/human/holdermob = holder.current

	if(istype(holdermob))
		for(var/datum/relation/lover in lovers)
			var/mob/living/carbon/human/lovermob = lover.holder.current
			if(!istype(lovermob))
				continue
			var/loverspecies 	= lovermob.get_species()
			var/holderspecies 	= holdermob.get_species()
			if(loverspecies && holderspecies && loverspecies != holderspecies)
				lovers -= lover
	return lovers

/datum/relation/xenolover
	name = "Amante Xenofilico"
	desc = "Tienen algo interesante entre ustedes, a pesar de sus marcadas diferencias."
	incompatible = list(/datum/relation/lover, /datum/relation/ex)

/datum/relation/xenolover/get_desc_string()
	return "[holder] y [other.holder] parecen estar en algo romantico, a pesar de ser tan distintos."

/datum/relation/xenolover/get_candidates()
	var/list/xlovers = ..()
	var/mob/living/carbon/human/holdermob = holder.current

	if(istype(holdermob))
		for(var/datum/relation/xlover in xlovers)
			var/mob/living/carbon/human/xlovermob = xlover.holder.current
			if(!istype(xlovermob))
				continue
			var/loverspecies 	= xlovermob.get_species()
			var/holderspecies 	= holdermob.get_species()
			if(loverspecies && holderspecies && loverspecies == holderspecies)
				xlovers -= xlover
	return xlovers

/datum/relation/xenolover/wholesome
	name = "Amigo Alien"
	desc = "Se han conocido por un tiempo, y sus diferencias solo los unen."
	incompatible = list(/datum/relation/enemy)

/datum/relation/xenolover/wholesome/get_desc_string()
	return "[holder] y [other.holder] parecen llevarse bien, aun con sus diferencias."

/datum/relation/so
	name = "Pareja"
	desc = "Estan involucrados romanticamente."
	incompatible = list(/datum/relation/enemy, /datum/relation/ex)

/datum/relation/so/get_desc_string()
	return "[holder] y [other.holder] parecen ser pareja."

/datum/relation/ex
	name = "Ex"
	desc = "Solian tener algo romantico, pero eso termino."
	incompatible = list(/datum/relation/lover, /datum/relation/xenolover, /datum/relation/so)

/datum/relation/ex/get_desc_string()
	return "[holder] y [other.holder] solian tener algo, pero ya no."

/datum/relation/spessnam //CUANDO LOS ARBOLES EMPIEZAN A HABLAR PAN-SLAV
	name = "Amistad del Servicio Militar"
	desc = "Coincidieron al estar en servicio militar activo."

/datum/relation/spessnam/get_candidates()
	var/list/warbuds = ..()
	var/list/branchmates = list()
	var/mob/living/carbon/human/holdermob = holder.current
	if(istype(holdermob) && GLOB.using_map && (GLOB.using_map.flags & MAP_HAS_BRANCH))
		for(var/datum/relation/buddy in warbuds)
			var/mob/living/carbon/human/buddymob = buddy.holder.current
			if(!istype(buddymob))
				continue
			if(holdermob.char_branch == buddymob.char_branch)
				branchmates += buddy
	return branchmates.len ? branchmates : warbuds

/datum/relation/spessnam/get_desc_string()
	return "[holder] y [other.holder] hicieron su servicio militar juntos en algun momento."
