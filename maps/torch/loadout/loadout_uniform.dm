
/datum/gear/uniform

/datum/gear/uniform/utility
	display_name = "Contractor Utility Uniform"
	path = /obj/item/clothing/under/solgov/utility

/datum/gear/uniform/shortjumpskirt

/datum/gear/uniform/blackjumpshorts

/datum/gear/uniform/roboticist_skirt
	allowed_roles = list(/datum/job/roboticist)

/datum/gear/uniform/suit

/datum/gear/uniform/scrubs
	allowed_roles = STERILE_ROLES
	allowed_branches = null

/datum/gear/uniform/dress

/datum/gear/uniform/kimono
	display_name = "kimono, colour select"
	path = /obj/item/clothing/under/kimono
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/uniform/cheongsam

/datum/gear/uniform/abaya

/datum/gear/uniform/skirt

/datum/gear/uniform/skirt_c

/datum/gear/uniform/skirt_c/dress

/datum/gear/uniform/casual_pants

/datum/gear/uniform/formal_pants
/datum/gear/uniform/formal_pants/custom

/datum/gear/uniform/formal_pants/baggycustom

/datum/gear/uniform/shorts

/datum/gear/uniform/shorts/custom

/datum/gear/uniform/turtleneck

/datum/gear/tactical/tacticool

/datum/gear/uniform/sterile
	allowed_roles = MEDICAL_ROLES

/datum/gear/uniform/hazard
	allowed_roles = ENGINEERING_ROLES

/datum/gear/uniform/corp_overalls
	allowed_roles = list(/datum/job/mining, /datum/job/scientist_assistant)

/datum/gear/uniform/corp_flight
	allowed_roles = list(/datum/job/nt_pilot)

/datum/gear/uniform/corp_exec
	allowed_roles = list(/datum/job/liaison)

/datum/gear/uniform/corp_exec_jacket
	allowed_roles = list(/datum/job/liaison, /datum/job/bodyguard)

/datum/gear/uniform/redsuit

/datum/gear/uniform/redsuitskirt

/datum/gear/uniform/camosuit
	allowed_roles = list(/datum/job/squad_lead, /datum/job/combat_tech, /datum/job/grunt)

/datum/gear/uniform/camoshirt
	allowed_roles = list(/datum/job/squad_lead, /datum/job/combat_tech, /datum/job/grunt)