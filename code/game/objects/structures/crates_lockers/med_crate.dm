/obj/structure/closet/crate/med_crate/trauma
	name = "\improper Trauma crate"
	desc = "A crate with trauma equipment."
	closet_appearance = /decl/closet_appearance/crate/medical/trauma

/obj/structure/closet/crate/med_crate/trauma/WillContain()
	return list(
		/obj/item/stack/medical/splint = 4,
		/obj/item/weapon/storage/pill_bottle/inaprovaline,
		/obj/item/weapon/storage/med_pouch/trauma = 4,
		/obj/item/weapon/storage/firstaid/trauma,
		/obj/item/weapon/storage/pill_bottle/bicaridine
		)

/obj/structure/closet/crate/med_crate/burn
	name = "\improper Burn crate"
	desc = "A crate with burn equipment."
	closet_appearance = /decl/closet_appearance/crate/medical

/obj/structure/closet/crate/med_crate/burn/WillContain()
	return list(
		/obj/item/weapon/storage/pill_bottle/inaprovaline,
		/obj/item/weapon/storage/med_pouch/burn = 4,
		/obj/item/weapon/storage/firstaid/fire,
		/obj/item/weapon/storage/pill_bottle/dermaline
	)

/obj/structure/closet/crate/med_crate/oxyloss
	name = "\improper Low oxygen crate"
	desc = "A crate with low oxygen equipment."
	closet_appearance = /decl/closet_appearance/crate/medical/oxygen

/obj/structure/closet/crate/med_crate/oxyloss/WillContain()
	return list(
		/obj/item/weapon/storage/pill_bottle/inaprovaline,
		/obj/item/weapon/storage/med_pouch/oxyloss = 4,
		/obj/item/weapon/storage/firstaid/o2,
		/obj/item/weapon/storage/pill_bottle/dexalin_plus
	)
/obj/structure/closet/crate/med_crate/toxin
	name = "\improper Toxin crate"
	desc = "A crate with toxin equipment."
	closet_appearance = /decl/closet_appearance/crate/medical/toxins

/obj/structure/closet/crate/med_crate/toxin/WillContain()
	return list(
		/obj/item/weapon/storage/pill_bottle/inaprovaline,
		/obj/item/weapon/storage/med_pouch/toxin = 4,
		/obj/item/weapon/storage/firstaid/toxin,
		/obj/item/weapon/storage/pill_bottle/dylovene
			)
