/////////
// Deathsquad
/////////

/obj/item/weapon/rig/doom		//Deathsquad only, considering you're basically unkillable.
	name = "modulo de control clase praetor"
	desc = "Un pesado, pero extraordinariamente eficiente traje con tecnologia de punta y armadura de ultima generacion. \
Jesus, esto es MUCHA armadura. Comienzas a sospechar de que, ni si quiera una armada tan organizada como la de Sol podria ser capaz de enfrentarse a esto. \
El revestimiento ablativo y la armadura compuesta harian sobrevivir esta armadura al mismisimo infierno de entrada y de regreso. \
Y ahora... ellos han de temerte."
	suit_type = "doom hardsuit"
	icon_state = "doom_rig"
	armor = list(
		melee = ARMOR_MELEE_VERY_HIGH,
		bullet = ARMOR_BALLISTIC_AP,
		laser = ARMOR_LASER_RIFLES,
		energy = ARMOR_ENERGY_SHIELDED,
		bomb = ARMOR_BOMB_SHIELDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)

	allowed = list(/obj/item/device/flashlight, /obj/item/weapon/tank,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/handcuffs,/obj/item/device/t_scanner, /obj/item/weapon/rcd, /obj/item/weapon/crowbar, \
	/obj/item/weapon/screwdriver, /obj/item/weapon/weldingtool, /obj/item/weapon/wirecutters, /obj/item/weapon/wrench, /obj/item/device/multitool, \
	/obj/item/device/radio, /obj/item/device/scanner/gas,/obj/item/weapon/storage/briefcase/inflatable, /obj/item/weapon/melee/baton, /obj/item/weapon/gun, \
	/obj/item/weapon/storage/firstaid, /obj/item/weapon/reagent_containers/hypospray, /obj/item/roller, /obj/item/device/suit_cooling_unit, /obj/item/weapon/storage/)

	chest_type = /obj/item/clothing/suit/space/rig/doom
	helm_type = /obj/item/clothing/head/helmet/space/rig/doom
	boot_type = /obj/item/clothing/shoes/magboots/rig/doom
	glove_type = /obj/item/clothing/gloves/rig/doom

/obj/item/clothing/head/helmet/space/rig/doom
	item_icons = list(slot_head_str = 'icons/mob/onmob/onmob_head.dmi')
	icon = 'icons/obj/clothing/obj_head.dmi'
	light_overlay = "helmet_light_dual_green"
	species_restricted = list(SPECIES_HUMAN,SPECIES_SKRELL,SPECIES_UNATHI,SPECIES_OLDUNATHI,SPECIES_SERGAL,SPECIES_VATGROWN,SPECIES_AKULA,SPECIES_VULP,SPECIES_TAJ)

/obj/item/clothing/suit/space/rig/doom
	item_icons = list(slot_wear_suit_str = 'icons/mob/onmob/onmob_suit.dmi')
	icon = 'icons/obj/clothing/obj_suit.dmi'
	species_restricted = list(SPECIES_HUMAN,SPECIES_SKRELL,SPECIES_UNATHI,SPECIES_OLDUNATHI,SPECIES_SERGAL,SPECIES_VATGROWN,SPECIES_AKULA,SPECIES_VULP,SPECIES_TAJ)

/obj/item/clothing/shoes/magboots/rig/doom
	species_restricted = list(SPECIES_HUMAN,SPECIES_SKRELL,SPECIES_UNATHI,SPECIES_OLDUNATHI,SPECIES_SERGAL,SPECIES_VATGROWN,SPECIES_AKULA,SPECIES_VULP,SPECIES_TAJ)

/obj/item/clothing/gloves/rig/doom
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_NOCUFFS
	species_restricted = list(SPECIES_HUMAN,SPECIES_SKRELL,SPECIES_UNATHI,SPECIES_OLDUNATHI,SPECIES_SERGAL,SPECIES_VATGROWN,SPECIES_AKULA,SPECIES_VULP,SPECIES_TAJ)

/obj/item/weapon/rig/doom/equipped
	initial_modules = list(
		/obj/item/rig_module/self_destruct,
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/grenade_launcher/combat,
		/obj/item/rig_module/mounted/lcannon,
		/obj/item/rig_module/mounted/energy_blade,
		/obj/item/rig_module/vision/multi,
		/obj/item/rig_module/chem_dispenser/deathsquad,
		/obj/item/rig_module/device/rcd,
		/obj/item/rig_module/datajack,
		/obj/item/rig_module/power_sink,
		/obj/item/rig_module/cooling_unit,
		/obj/item/rig_module/teleporter,
		/obj/item/rig_module/electrowarfare_suite,
		/obj/item/rig_module/maneuvering_jets
	)

