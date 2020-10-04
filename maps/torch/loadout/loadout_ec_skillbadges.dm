
/datum/gear/skill
	sort_category = "Insignias de Habilidades"
	category = /datum/gear/skill
	slot = slot_tie
	allowed_branches = NT_BRANCHES

/datum/gear/skill/botany
	display_name = "Medalla de Especialista en Xenobotanica de Campo"
	path = /obj/item/clothing/accessory/solgov/skillbadge/botany
	allowed_skills = list(SKILL_BOTANY = SKILL_ADEPT)

/datum/gear/skill/botany/stripe
	display_name = "Marcas de Especialista en Xenobotanica de Campo para traje espacial"
	path = /obj/item/clothing/accessory/solgov/skillstripe/botany

/datum/gear/skill/netgun
	display_name = "Medalla de Especialista en Captura de Xenofauna"
	path = /obj/item/clothing/accessory/solgov/skillbadge/netgun
	allowed_skills = list(SKILL_WEAPONS = SKILL_ADEPT)

/datum/gear/skill/netgun/stripe
	display_name = "Marcas de Especialista en Captura de Xenofauna para traje espacial"
	path = /obj/item/clothing/accessory/solgov/skillstripe/netgun

/datum/gear/skill/eva
	display_name = "Medalla de Especialista en Maniobras en Vacio"
	path = /obj/item/clothing/accessory/solgov/skillbadge/eva
	allowed_skills = list(SKILL_EVA = SKILL_ADEPT)

/datum/gear/skill/eva/stripe
	display_name = "Marcas de Especialista en Maniobras en Vacio para traje espacial"
	path = /obj/item/clothing/accessory/solgov/skillstripe/eva

/datum/gear/skill/medical
	display_name = "Medalla de Especialista en Primeros Auxilios Avanzados"
	path = /obj/item/clothing/accessory/solgov/skillbadge/medical
	allowed_skills = list(SKILL_MEDICAL = SKILL_BASIC)

/datum/gear/skill/medical/stripe
	display_name = "Marcas de Especialista en Primeros Auxilios Avanzados para traje espacial"
	path = /obj/item/clothing/accessory/solgov/skillstripe/medical

/datum/gear/skill/mech
	display_name = "Medalla de Especialista en Operacion de Exotrajes"
	path = /obj/item/clothing/accessory/solgov/skillbadge/mech
	allowed_skills = list(SKILL_MECH = HAS_PERK)

/datum/gear/skill/electric
	display_name = "Medalla de Especialista en Manipulacion Electrica"
	path = /obj/item/clothing/accessory/solgov/skillbadge/electric
	allowed_skills = list(SKILL_ELECTRICAL = SKILL_ADEPT)

/datum/gear/skill/electric/stripe
	display_name = "Marcas de Especialista en Manipulacion Electrica para traje espacial"
	path = /obj/item/clothing/accessory/solgov/skillstripe/electric

/datum/gear/skill/science
	display_name = "Medalla de Especialista en Investigacion y Desarrollo"
	path = /obj/item/clothing/accessory/solgov/skillbadge/science
	allowed_skills = list(SKILL_SCIENCE = SKILL_ADEPT)
