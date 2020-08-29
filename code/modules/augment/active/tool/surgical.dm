/obj/item/organ/internal/augment/active/polytool/surgical
	name = "surgical toolset"
	action_button_name = "Deploy Surgical Tool"
	desc = "Part of Zeng-Hu Pharmaceutical's line of biomedical augmentations, this device contains the full set of tools any surgeon would ever need."
	paths = list(
		/obj/item/weapon/bonesetter,
		/obj/item/weapon/bonegel,
		/obj/item/weapon/cautery,
		/obj/item/weapon/circular_saw,
		/obj/item/weapon/hemostat,
		/obj/item/weapon/retractor,
		/obj/item/weapon/scalpel,
		/obj/item/weapon/surgicaldrill
	)

/obj/item/organ/internal/augment/active/polytool/surgical/left
	allowed_organs = list(BP_AUGMENT_L_ARM)

/obj/item/organ/internal/augment/active/polytool/surgical/right
	allowed_organs = list(BP_AUGMENT_R_ARM)

/obj/item/organ/internal/augment/active/polytool/adherenttool
	name = "herramientas adherentes"
	action_button_name = "Desplegar Herramienta Cristalina"
	desc = "Este aumento cristalino, implantado en varias unidades adherentes especializadas, contiene todo lo que un ingeniero podria necesitar."
	paths = list(
		/obj/item/weapon/weldingtool/electric/crystal,
		/obj/item/weapon/wirecutters/crystal,
		/obj/item/weapon/screwdriver/crystal,
		/obj/item/weapon/crowbar/crystal,
		/obj/item/weapon/wrench/crystal,
		/obj/item/device/multitool/crystal
	)
/obj/item/organ/internal/augment/active/polytool/adherenttool/left
	allowed_organs = list(BP_AUGMENT_L_ARM)

/obj/item/organ/internal/augment/active/polytool/adherenttool/right
	allowed_organs = list(BP_AUGMENT_R_ARM)
