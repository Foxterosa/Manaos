/datum/design/circuit/exosuit/AssembleDesignName()
	name = "Exosuit software design ([name])"
/datum/design/circuit/exosuit/AssembleDesignDesc()
	desc = "Allows for the construction of \a [name] module."

/datum/design/circuit/exosuit/engineering
	name = "engineering system control"
	id = "mech_software_engineering"
	req_tech = list(TECH_DATA = 1)
	build_path = /obj/item/weapon/circuitboard/exosystem/engineering
	sort_string = "KAAAA"
	design_class = "Exosuit Machinery"

/datum/design/circuit/mechfab
	name = "exosuit fabricator"
	id = "mechfab"
	req_tech = list(TECH_DATA = 3, TECH_ENGINEERING = 3)
	build_path = /obj/item/weapon/stock_parts/circuitboard/mechfab
	sort_string = "KAAAC"

/datum/design/circuit/mech_recharger
	name = "mech recharger"
	id = "mech_recharger"
	req_tech = list(TECH_DATA = 2, TECH_POWER = 2, TECH_ENGINEERING = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/mech_recharger
	sort_string = "KAAAB"

/datum/design/circuit/exosuit/utility
	name = "utility system control"
	id = "mech_software_utility"
	req_tech = list(TECH_DATA = 1)
	build_path = /obj/item/weapon/circuitboard/exosystem/utility
	sort_string = "KAAAD"

/datum/design/circuit/exosuit/medical
	name = "medical system control"
	id = "mech_software_medical"
	req_tech = list(TECH_DATA = 3,TECH_BIO = 2)
	build_path = /obj/item/weapon/circuitboard/exosystem/medical
	sort_string = "KAAAE"

/datum/design/circuit/exosuit/weapons
	name = "basic weapon control"
	id = "mech_software_weapons"
	req_tech = list(TECH_DATA = 4)
	build_path = /obj/item/weapon/circuitboard/exosystem/weapons
	sort_string = "KAAAF"

/datum/design/circuit/exosuit/advweapons
	name = "advanced weapon control"
	id = "mech_software_advweapons"
	req_tech = list(TECH_DATA = 4)
	build_path = /obj/item/weapon/circuitboard/exosystem/advweapons
	sort_string = "KAAAG"
