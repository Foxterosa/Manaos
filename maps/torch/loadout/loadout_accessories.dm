/datum/gear/accessory/solawardmajor
	display_name = "Seleccion de condecoraciones mayores"
	description = "Una medalla o liston entregada a personal tanto militar como paramilitar por logros importantes."
	path = /obj/item/clothing/accessory
	cost = 4

/datum/gear/accessory/solawardmajor/New()
	..()
	var/solmajors = list()
	solmajors["Estrella de hierro"] = /obj/item/clothing/accessory/medal/solgov/iron/star
	solmajors["Corazon de bronce"] = /obj/item/clothing/accessory/medal/solgov/bronze/heart
	solmajors["Espada de plata"] = /obj/item/clothing/accessory/medal/solgov/silver/sword
	solmajors["Corazon de medicina"] = /obj/item/clothing/accessory/medal/solgov/heart
	solmajors["Medalla al valor"] = /obj/item/clothing/accessory/medal/solgov/silver/sol
	solmajors["Medalla de sentientarismo"] = /obj/item/clothing/accessory/medal/solgov/gold/sol
	solmajors["Liston de la paz"] = /obj/item/clothing/accessory/ribbon/solgov/peace
	solmajors["Liston de tirador"] = /obj/item/clothing/accessory/ribbon/solgov/marksman
	gear_tweaks += new/datum/gear_tweak/path(solmajors)

/datum/gear/accessory/solawardminor
	display_name = "Seleccion de condecoraciones menores"
	description = "Una medalla o liston entregada a personal tanto militar como paramilitar por logros menores."
	path = /obj/item/clothing/accessory
	cost = 2

/datum/gear/accessory/solawardminor/New()
	..()
	var/solminors = list()
	solminors["Medalla expedicionaria"] = /obj/item/clothing/accessory/medal/solgov/iron/sol
	solminors["Medalla de operaciones"] = /obj/item/clothing/accessory/medal/solgov/bronze/sol
	solminors["Liston de frontera"] = /obj/item/clothing/accessory/ribbon/solgov/frontier
	solminors["Liston de instructor"] = /obj/item/clothing/accessory/ribbon/solgov/instructor
	gear_tweaks += new/datum/gear_tweak/path(solminors)

/datum/gear/accessory/tags
	display_name = "Placas de identificacion"
	path = /obj/item/clothing/accessory/badge/solgov/tags

/datum/gear/accessory/ec_scarf
	display_name = "Bufanda de las Fuerzas de Inspeccion"
	path = /obj/item/clothing/accessory/solgov/ec_scarf
	description = "Una bufanda especificamente para las Fuerzas de Inspeccion."
	cost = 0
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/accessory/ec_patch
	display_name = "Parche de las Fuerzas de Inspeccion"
	path = /obj/item/clothing/accessory/solgov/ec_patch
	description = "Un parche de hombro que representa a las Fuerzas de Inspeccion."
	cost = 0
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/accessory/torch_patch
	display_name = "Parche de la NTSS Dagon"
	path = /obj/item/clothing/accessory/solgov/torch_patch
	description = "Un parche de hombro que representa a la NTSS Dagon y a su mision. Entregado a los desafortunados sacados de ramas lejanas y variadas para su labor en la Dagon."

/datum/gear/accessory/pilot_pin
	display_name = "Insignia de calificacion de pilotaje"
	path = /obj/item/clothing/accessory/solgov/specialty/pilot
	allowed_skills = list(SKILL_PILOT = SKILL_ADEPT)

/datum/gear/accessory/fleetpatch
	display_name = "Parche de la Flota"
	path = /obj/item/clothing/accessory/solgov/fleet_patch
	flags = GEAR_HAS_TYPE_SELECTION
	cost = 0
	allowed_branches = list(/datum/mil_branch/fleet)

/datum/gear/accessory/armband_ma
	display_name = "Brazalete de Maestro en Armas"
	path = /obj/item/clothing/accessory/armband/solgov/ma
	allowed_roles = SECURITY_ROLES

/datum/gear/accessory/armband_mp
	display_name = "Brazalete de Policia Militar"
	path = /obj/item/clothing/accessory/armband/solgov/mp
	allowed_roles = SECURITY_ROLES

/datum/gear/accessory/armband_security
	allowed_roles = SECURITY_ROLES

/datum/gear/accessory/armband_cargo
	allowed_roles = SUPPLY_ROLES

/datum/gear/accessory/armband_medical
	allowed_roles = MEDICAL_ROLES

/datum/gear/accessory/armband_emt
	allowed_roles = list(/datum/job/doctor, /datum/job/medical_trainee)

/datum/gear/accessory/armband_corpsman
	display_name = "Brazalete de medicina"
	path = /obj/item/clothing/accessory/armband/medblue
	allowed_roles = list(/datum/job/cmo, /datum/job/senior_doctor, /datum/job/doctor, /datum/job/medical_trainee)

/datum/gear/accessory/armband_engineering
	allowed_roles = ENGINEERING_ROLES

/datum/gear/accessory/armband_hydro
	allowed_roles = list(/datum/job/rd, /datum/job/scientist, /datum/job/scientist_assistant, /datum/job/assistant)

/datum/gear/accessory/armband_nt

/datum/gear/accessory/ntaward

/datum/gear/accessory/tie

/datum/gear/accessory/tie_color

/datum/gear/accessory/stethoscope
	allowed_roles = STERILE_ROLES

/datum/gear/storage/brown_vest

/datum/gear/storage/black_vest

/datum/gear/storage/white_vest

/datum/gear/storage/brown_drop_pouches

/datum/gear/storage/black_drop_pouches

/datum/gear/storage/white_drop_pouches

/datum/gear/tactical/holster

/datum/gear/tactical/holster/New()
	..()
	var/holsters = list()
	holsters["Funda de hombro"] = /obj/item/clothing/accessory/storage/holster
	holsters["Funda axilar"] = /obj/item/clothing/accessory/storage/holster/armpit
	holsters["Funda de cintura"] = /obj/item/clothing/accessory/storage/holster/waist
	holsters["Funda de cadera"] = /obj/item/clothing/accessory/storage/holster/hip
	holsters["Funda de muslo"] = /obj/item/clothing/accessory/storage/holster/thigh
	gear_tweaks += new/datum/gear_tweak/path(holsters)

/datum/gear/tactical/sheath

/datum/gear/tactical/armor_deco
	allowed_roles = ARMORED_ROLES

/datum/gear/tactical/press_tag
	display_name = "Identificador de prensa"
	path = /obj/item/clothing/accessory/armor/tag/press
	allowed_roles = list(/datum/job/assistant)

/datum/gear/tactical/helm_covers
	allowed_roles = ARMORED_ROLES

/datum/gear/clothing/hawaii

/datum/gear/clothing/scarf

/datum/gear/clothing/flannel

/datum/gear/clothing/suspenders

/datum/gear/clothing/wcoat

/datum/gear/clothing/zhongshan

/datum/gear/clothing/dashiki

/datum/gear/clothing/thawb

/datum/gear/clothing/sherwani

/datum/gear/clothing/qipao

/datum/gear/clothing/sweater

/datum/gear/clothing/redsuit_jacket

/datum/gear/clothing/redsuit_vest

/datum/gear/clothing/tangzhuang
	allowed_branches = CASUAL_BRANCHES

/datum/gear/accessory/bowtie

/datum/gear/accessory/ftupin

/*********************
 tactical accessories
*********************/
/datum/gear/tactical/ubac
	display_name = "Camisas de combate"
	description = "Una seleccion de camisas de combate, para su uso debajo de proteccion corporal."
	path = /obj/item/clothing/accessory/ubac
	allowed_branches = TACTICOOL_BRANCHES

/datum/gear/tactical/ubac/New()
	..()
	var/shirts = list()
	shirts["Camisa de combate negra"] = /obj/item/clothing/accessory/ubac
	shirts["Camisa de combate azul"] = /obj/item/clothing/accessory/ubac/blue
	shirts["Camisa de combate verde"] = /obj/item/clothing/accessory/ubac/green
	shirts["Camisa de combate color cafe"] = /obj/item/clothing/accessory/ubac/tan
	gear_tweaks += new/datum/gear_tweak/path(shirts)

/datum/gear/tactical/armor_pouches
	display_name = "Morrales para armadura"
	description = "Una seleccion de morrales de grado militar para armadura. Se acoplan al portaplacas."
	path = /obj/item/clothing/accessory/storage/pouches
	cost = 1
	allowed_branches = TACTICOOL_BRANCHES

/datum/gear/tactical/armor_pouches/New()
	..()
	var/pouches = list()
	pouches["Morrales de armadura negros"] = /obj/item/clothing/accessory/storage/pouches
	pouches["Morrales de armadura azul marino"] = /obj/item/clothing/accessory/storage/pouches/navy
	pouches["Morrales de armadura azules"] = /obj/item/clothing/accessory/storage/pouches/blue
	pouches["Morrales de armadura verdes"] = /obj/item/clothing/accessory/storage/pouches/green
	pouches["Morrales de armadura cafe"] = /obj/item/clothing/accessory/storage/pouches/tan
	gear_tweaks += new/datum/gear_tweak/path(pouches)

/datum/gear/tactical/large_pouches
	display_name = "Morrales para armadura grandes"
	description = "Una seleccion de morrales grandes de grado militar para armadura. Se acoplan al portaplacas."
	path = /obj/item/clothing/accessory/storage/pouches/large
	cost = 2
	allowed_branches = TACTICOOL_BRANCHES

/datum/gear/tactical/large_pouches/New()
	..()
	var/lpouches = list()
	lpouches["Morrales de armadura grandes negros"] = /obj/item/clothing/accessory/storage/pouches/large
	lpouches["Morrales de armadura grandes azul marino"] = /obj/item/clothing/accessory/storage/pouches/large/navy
	lpouches["Morrales de armadura grandes azules"] = /obj/item/clothing/accessory/storage/pouches/large/blue
	lpouches["Morrales de armadura grandes verdes"] = /obj/item/clothing/accessory/storage/pouches/large/green
	lpouches["Morrales de armadura grandes cafe"] = /obj/item/clothing/accessory/storage/pouches/large/tan
	gear_tweaks += new/datum/gear_tweak/path(lpouches)
