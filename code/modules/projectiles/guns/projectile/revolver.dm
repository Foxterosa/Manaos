/obj/item/weapon/gun/projectile/revolver
	name = "revolver"
	desc = "The al-Maliki & Mosley Magnum Double Action is a choice revolver for when you absolutely, positively need to put a hole in the other guy."
	icon = 'icons/obj/guns/revolvers.dmi'
	icon_state = "revolver"
	item_state = "revolver"
	caliber = CALIBER_PISTOL_MAGNUM
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	handle_casings = CYCLE_CASINGS
	max_shells = 6
	fire_delay = 12 //Revolvers are naturally slower-firing
	ammo_type = /obj/item/ammo_casing/pistol/magnum
	var/chamber_offset = 0 //how many empty chambers in the cylinder until you hit a round
	mag_insert_sound = 'sound/weapons/guns/interaction/rev_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/rev_magout.ogg'
	accuracy = 2
	accuracy_power = 8
	one_hand_penalty = 2
	bulk = 3

/obj/item/weapon/gun/projectile/revolver/AltClick()
	if(CanPhysicallyInteract(usr))
		spin_cylinder()

/obj/item/weapon/gun/projectile/revolver/verb/spin_cylinder()
	set name = "Spin cylinder"
	set desc = "Fun when you're bored out of your skull."
	set category = "Object"

	chamber_offset = 0
	visible_message("<span class='warning'>\The [usr] spins the cylinder of \the [src]!</span>", \
	"<span class='notice'>You hear something metallic spin and click.</span>")
	playsound(src.loc, 'sound/weapons/revolver_spin.ogg', 100, 1)
	loaded = shuffle(loaded)
	if(rand(1,max_shells) > loaded.len)
		chamber_offset = rand(0,max_shells - loaded.len)

/obj/item/weapon/gun/projectile/revolver/consume_next_projectile()
	if(chamber_offset)
		chamber_offset--
		return
	return ..()

/obj/item/weapon/gun/projectile/revolver/load_ammo(var/obj/item/A, mob/user)
	chamber_offset = 0
	return ..()

/obj/item/weapon/gun/projectile/revolver/medium
	name = "revolver"
	icon_state = "medium"
	safety_icon = "medium_safety"
	caliber = CALIBER_PISTOL
	ammo_type = /obj/item/ammo_casing/pistol
	desc = "The Lumoco Arms' Solid is a rugged revolver for people who don't keep their guns well-maintained."
	accuracy = 1
	bulk = 0
	fire_delay = 9

/obj/item/weapon/gun/projectile/revolver/holdout
	name = "holdout revolver"
	desc = "The al-Maliki & Mosley Partner is a concealed-carry revolver made for people who do not trust automatic pistols any more than the people they're dealing with."
	icon_state = "holdout"
	item_state = "pen"
	caliber = CALIBER_PISTOL_SMALL
	ammo_type = /obj/item/ammo_casing/pistol/small
	w_class = ITEM_SIZE_SMALL
	accuracy = 1
	one_hand_penalty = 0
	bulk = 0
	fire_delay = 7

/obj/item/weapon/gun/projectile/revolver/capgun
	name = "cap gun"
	desc = "Looks almost like the real thing! Ages 8 and up."
	icon_state = "revolver-toy"
	caliber = CALIBER_CAPS
	origin_tech = list(TECH_COMBAT = 1, TECH_MATERIAL = 1)
	ammo_type = /obj/item/ammo_casing/cap

/obj/item/weapon/gun/projectile/revolver/capgun/attackby(obj/item/weapon/wirecutters/W, mob/user)
	if(!istype(W) || icon_state == "revolver")
		return ..()
	to_chat(user, "<span class='notice'>You snip off the toy markings off the [src].</span>")
	name = "revolver"
	icon_state = "revolver"
	desc += " Someone snipped off the barrel's toy mark. How dastardly."
	return 1

/obj/item/weapon/gun/projectile/revolver/detective
	desc = "A cheap Martian knock-off of a classic law enforcement firearm. Uses .38-special rounds."
	name = "\improper .38 Mars Special"
	icon_state = "detective"
	ammo_type = /obj/item/ammo_casing/pistol/magnum/detective                                                                             

/// Mateba by Danaleja2005

/obj/item/weapon/gun/projectile/revolver/mateba
	desc = "El Mateba Modelo 6 Unica es un revólver automático y bastante podereso util para defenderte en casos extremos"
	name = "\improper Autorevolver Mateba Unica"
	icon = 'icons/obj/guns/mateba.dmi'
	icon_state = "mateba"
	item_state = "mateba1"
	fire_delay = 8
	accuracy_power = 6
	one_hand_penalty = 2
	ammo_type = /obj/item/ammo_casing/mateba

/obj/item/weapon/gun/projectile/revolver/mateba/special
	desc = "El Mateba Modelo 6 Unica Edición Especial es una modificación especial la cual debido a su empuñadura hecha de materiales especiales da una mejor precisión con una mano y aumenta la velocidad de disparo, utilizada por Capitanes y Almirantes de SolGov"
	name = "\improper Autorevolver Mateba Unica Edición Especial"
	icon = 'icons/obj/guns/mateba.dmi'
	icon_state = "matebaspecial"
	item_state = "matebaspecial"
	accuracy_power = 8
	one_hand_penalty = 0
	ammo_type = /obj/item/ammo_casing/mateba/special
	fire_delay = 6
