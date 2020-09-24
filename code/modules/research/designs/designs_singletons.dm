/datum/design/item/encryptionkey/AssembleDesignName()
	..()
	name = "Encryption key design ([item_name])"

/datum/design/item/encryptionkey/binary
	name = "binary"
	desc = "Allows for deciphering the binary channel on-the-fly."
	id = "binaryencrypt"
	req_tech = list(TECH_ESOTERIC = 2)
	materials = list(MATERIAL_STEEL = 300, MATERIAL_GLASS = 300)
	build_path = /obj/item/device/encryptionkey/binary
	sort_string = "VASAA"

/datum/design/item/camouflage/AssembleDesignName()
	..()
	name = "Camouflage design ([item_name])"

/datum/design/item/camouflage/chameleon
	name = "holographic equipment kit"
	desc = "A kit of dangerous, high-tech equipment with changeable looks."
	id = "chameleon"
	req_tech = list(TECH_ESOTERIC = 2)
	materials = list(MATERIAL_STEEL = 500, MATERIAL_ALUMINIUM = 500, MATERIAL_PLASTIC = 500)
	build_path = /obj/item/weapon/storage/backpack/chameleon/sydie_kit
	sort_string = "VASBA"

/datum/design/item/party
	name = "Uncertified module: PRTY"
	desc = "Schematics for a robotic module, scraped from seedy parts of the net. Who knows what it does."
	id = "borg_party_module"
	req_tech = list(TECH_DATA = 2, TECH_ESOTERIC = 2)
	build_type = MECHFAB
	materials = list(MATERIAL_STEEL = 7500, MATERIAL_ALUMINIUM = 5000, MATERIAL_DIAMOND = 2000)
	build_path = /obj/item/borg/upgrade/uncertified/party
	category = "Cyborg Upgrade Modules"