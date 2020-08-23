//Override upstream's voidsuit stuff here


//This override is to allow our snowflake species to use voidsuits. Keep this updated with whatever new species you add.
/obj/item/clothing/head/helmet/space/void/Initialize()
	. = ..()
	sprite_sheets |= list(
		SPECIES_AKULA = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_VULP = 'icons/mob/species/vulpkanin/onmob_head_vulp.dmi',
		SPECIES_VASS = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_TAJ = 'icons/mob/species/tajaran/onmob_head_taj.dmi',
		SPECIES_OLDUNATHI = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_SERGAL = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_NORTHERN = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_EASTERN = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_HUMAN2 = 'icons/mob/onmob/onmob_head.dmi'
		)
	sprite_sheets_obj |= list(
		SPECIES_AKULA = 'icons/obj/clothing/obj_head.dmi',
		SPECIES_VULP = 'icons/icons_manaos/obj/clothing/species/vulpkanin/obj_head_vulp.dmi',
		SPECIES_VASS = 'icons/obj/clothing/obj_head.dmi',
		SPECIES_TAJ = 'icons/icons_manaos/obj/clothing/species/tajaran/obj_head_taj.dmi',
		SPECIES_OLDUNATHI = 'icons/obj/clothing/obj_head.dmi',
		SPECIES_SERGAL = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_NORTHERN = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_EASTERN = 'icons/mob/onmob/onmob_head.dmi',
		SPECIES_HUMAN2 = 'icons/obj/clothing/obj_head.dmi'
		)

/obj/item/clothing/suit/space/void/Initialize()
	. = ..()
	sprite_sheets |= list(
		SPECIES_AKULA = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_VULP = 'icons/mob/species/vulpkanin/onmob_suit_vulp.dmi',
		SPECIES_VASS = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_TAJ = 'icons/mob/species/tajaran/onmob_suit_taj.dmi',
		SPECIES_OLDUNATHI = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_SERGAL = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_NORTHERN = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_EASTERN = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_HUMAN2 = 'icons/mob/onmob/onmob_suit.dmi'
		)
	sprite_sheets_obj |= list(
		SPECIES_AKULA = 'icons/obj/clothing/obj_suit.dmi',
		SPECIES_VULP = 'icons/icons_manaos/obj/clothing/species/vulpkanin/obj_suit_vulp.dmi',
		SPECIES_VASS = 'icons/obj/clothing/obj_suit.dmi',
		SPECIES_TAJ = 'icons/icons_manaos/obj/clothing/species/tajaran/obj_suit_taj.dmi',
		SPECIES_OLDUNATHI = 'icons/obj/clothing/obj_suit.dmi',
		SPECIES_SERGAL = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_NORTHERN = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_EASTERN = 'icons/mob/onmob/onmob_suit.dmi',
		SPECIES_HUMAN2 = 'icons/obj/clothing/obj_suit.dmi'
		)

/* SHIT DOESNT WORK FOR WHATEVER REASON ITS CURSED
/obj/item/clothing/head/helmet/space/void/excavation	//This fixes a literal year-old bug from upstream. Should probably bring it to bay directly but eh.
	icon = 'modular_mithra/icons/mob/onmob/head.dmi'	//This .dmi consists of only one thing: the properly renamed iconstate of the excavation helmet.
*/