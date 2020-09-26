/obj/item/weapon/gun/energy/gun/small/secure
	name = "compact smartgun"
	desc = "Combining the two LAEP90 variants, the secure and compact LAEP90-CS is the next best thing to keeping your security forces on a literal leash. It has an ability to recharge itself over time."
	icon = 'icons/obj/guns/small_egun_secure.dmi'
	item_icons = list(
		slot_l_hand_str = 'icons/mob/onmob/items/lefthand_guns_secure.dmi',
		slot_r_hand_str = 'icons/mob/onmob/items/righthand_guns_secure.dmi',
		)
	req_access = list(list(access_brig, access_bridge))
	authorized_modes = list(ALWAYS_AUTHORIZED, AUTHORIZED)
	max_shots = 3
	recharge_time = 8
	self_recharge = 1

/obj/item/weapon/gun/energy/stunrevolver/secure
	name = "smart stun revolver"
	desc = "This A&M X6 is fitted with an NT1019 chip which allows remote authorization of weapon functionality. It has an SCG emblem on the grip."
	icon = 'icons/obj/guns/stunrevolver_secure.dmi'
	icon_state = "revolverstun100"
	modifystate= "revolverstun"
	item_icons = list(
		slot_l_hand_str = 'icons/mob/onmob/items/lefthand_guns_secure.dmi',
		slot_r_hand_str = 'icons/mob/onmob/items/righthand_guns_secure.dmi',
		)
	item_state = null
	req_access = list(list(access_brig, access_bridge))

/obj/item/weapon/gun/energy/gun/secure
	name = "smartgun"
	desc = "A more secure LAEP90, the LAEP90-S is designed to please paranoid constituents. Body cam not included."
	icon = 'icons/obj/guns/energy_gun_secure.dmi'
	item_icons = list(
		slot_l_hand_str = 'icons/mob/onmob/items/lefthand_guns_secure.dmi',
		slot_r_hand_str = 'icons/mob/onmob/items/righthand_guns_secure.dmi',
		)
	item_state = null	//so the human update icon uses the icon_state instead.
	req_access = list(list(access_brig, access_bridge))
	authorized_modes = list(ALWAYS_AUTHORIZED, AUTHORIZED)
	max_shots = 10

/obj/item/weapon/gun/energy/revolver/secure
	name = "smart service revolver"
	desc = "The LAER680-S, a standard issue service revolver commonly used by higher ranking offcers among the SCG. Fitted with an NT1019 chip which allows remote authorization of the weapon's functionality."
	icon = 'icons/obj/guns/energy_revolver.dmi'
	icon_state = "energyrevolverstun100"
	item_icons = list(
		slot_l_hand_str = 'icons/mob/onmob/items/lefthand_guns_secure.dmi',
		slot_r_hand_str = 'icons/mob/onmob/items/righthand_guns_secure.dmi',
		)
	modifystate = "energyrevolverstun"
	item_state = null
	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun, modifystate="energyrevolverstun"),
		list(mode_name="shock", projectile_type=/obj/item/projectile/beam/stun/shock, modifystate="energyrevolvershock"),
		list(mode_name="kill", projectile_type=/obj/item/projectile/beam, modifystate="energyrevolverkill"),
		)
	req_access = list(list(access_brig, access_heads))
	authorized_modes = list(ALWAYS_AUTHORIZED, AUTHORIZED)

/obj/item/weapon/gun/energy/revolver/inf
	name = "smart service revolver"
	desc = "The INFL420-S, un revólver de servicio de emisión estándar comúnmente utilizado por oficiales de mayor rango entre infanteria. Equipado con un chip NT1019 que permite la autorización remota de la funcionalidad del arma."
	icon = 'icons/obj/guns/energy_revolver.dmi'
	icon_state = "energyrevolverstun100"
	item_icons = list(
		slot_l_hand_str = 'icons/mob/onmob/items/lefthand_guns_secure.dmi',
		slot_r_hand_str = 'icons/mob/onmob/items/righthand_guns_secure.dmi',
		)
	modifystate = "energyrevolverstun"
	item_state = null
	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun, modifystate="energyrevolverstun"),
		list(mode_name="shock", projectile_type=/obj/item/projectile/beam/stun/shock, modifystate="energyrevolvershock"),
		list(mode_name="kill", projectile_type=/obj/item/projectile/beam, modifystate="energyrevolverkill"),
		)
	req_access = list(access_hop)
	authorized_modes = list(UNAUTHORIZED)

/obj/item/weapon/gun/energy/bs_secure
	name = "revolver avanzado BS-650-S"
	desc = "El BS-650-S es un revolver avanzado  utilizado por los oficiales Blueshield."
	icon = 'icons/obj/guns/energy_revolver.dmi'
	icon_state = "energyrevolverstun100"
	item_icons = list(
		slot_l_hand_str = 'icons/mob/onmob/items/lefthand_guns_secure.dmi',
		slot_r_hand_str = 'icons/mob/onmob/items/righthand_guns_secure.dmi',
		)
	modifystate = "energyrevolverstun"
	item_state = null
	firemodes = list(
		list(mode_name="shock", projectile_type=/obj/item/projectile/beam/stun/shock, modifystate="energyrevolvershock"),
		list(mode_name="kill", projectile_type=/obj/item/projectile/beam, modifystate="energyrevolverkill"),
		)
	req_access = list(access_bridge)
	authorized_modes = list(ALWAYS_AUTHORIZED, AUTHORIZED)
	max_shots = 10
	recharge_time = 5
	self_recharge = 2

/obj/item/weapon/gun/energy/mag_secure
	name = "lawyer-x3ph"
	desc = "Una pistola de energía de pequeño tamaño hecha para defensa personal, en la parte posterior hay escrito: \"Que la ley te acompañe...\" Tiene solo 2 cargos de desactivador."
	icon = 'icons/obj/guns/lawyer.dmi'
	icon_state = "lawyerstun100"
	item_icons = list(
		slot_l_hand_str = 'icons/mob/onmob/items/lefthand_guns_secure.dmi',
		slot_r_hand_str = 'icons/mob/onmob/items/righthand_guns_secure.dmi',
		)
	modifystate = "laywerstun"
	item_state = null
	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun, modifystate="lawyerstun"),
		list(mode_name="kill", projectile_type=/obj/item/projectile/beam, modifystate="lawyerkill")
		)
	req_access = list(access_bridge)
	authorized_modes = list(ALWAYS_AUTHORIZED, AUTHORIZED)
	max_shots = 4
	recharge_time = 5
	self_recharge = 2

/obj/item/weapon/gun/energy/gun/secure/mounted
	name = "robot energy gun"
	desc = "A robot-mounted equivalent of the LAEP90-S, which is always registered to its owner."
	self_recharge = 1
	use_external_power = 1
	one_hand_penalty = 0
	has_safety = FALSE
	item_flags = ITEM_FLAG_INVALID_FOR_CHAMELEON

/obj/item/weapon/gun/energy/gun/secure/mounted/Initialize()
	var/mob/borg = get_holder_of_type(src, /mob/living/silicon/robot)
	if(!borg)
		CRASH("Invalid spawn location.")
	registered_owner = borg.name
	GLOB.registered_cyborg_weapons += src
	. = ..()

/obj/item/weapon/gun/energy/laser/secure
	name = "carabina G40E-S"
	desc = "Una carabina laser de Hephaestus Industries G40E-S, diseñada para una alternativa a la balistica para el personal de seguridad. Equipado con un chip NT1019 para asegurarse de que se realice un seguimiento adecuado del recuento de muertes."
	icon_state = "lasersec"
	req_access = list(list(access_brig, access_bridge))
	wielded_item_state = "lasersec-wielded"
	item_state = "lasersec"

/////////
// SMG Laser
/////////

/obj/item/weapon/gun/energy/gun/smg
	name = "Subfusil FNV-600"
	desc = "El FNV-600 es un arma de energia de autodefensa barata, producida en masa por Ward-Takahashi para uso paramilitar y privado. La variacion perfecta para los que prefieron el calido tacto de un laser."
	icon = 'icons/obj/guns/sec_smg.dmi'
	icon_state = "smgstun100"
	safety_icon = "safety"
	w_class = ITEM_SIZE_NORMAL
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 3)
	slot_flags = SLOT_BELT
	force = 5
	max_shots = 20
	accuracy_power = 7
	one_hand_penalty = 3
	modifystate= "smgstun"
	item_icons = list(
		slot_l_hand_str = 'icons/mob/onmob/items/lefthand_guns.dmi',
		slot_r_hand_str = 'icons/mob/onmob/items/righthand_guns.dmi',
		)
	item_state = null
	req_access = list(list(access_brig, access_bridge))
	authorized_modes = list(ALWAYS_AUTHORIZED, AUTHORIZED)
	firemodes = list(
		list(mode_name="stun", burst=2, projectile_type=/obj/item/projectile/beam/stun, modifystate="smgstun"),
		list(mode_name="shock", burst=2, projectile_type=/obj/item/projectile/beam/stun/shock, modifystate="smgshock"),
		list(mode_name="kill", burst=2, projectile_type=/obj/item/projectile/beam, modifystate="smgkill"),
		)
