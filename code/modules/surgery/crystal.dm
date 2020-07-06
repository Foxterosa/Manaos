/decl/surgery_step/generic/cut_open/crystal
	name = "Taladrar incision de cerradura"
	allowed_tools = list(
		/obj/item/weapon/pickaxe/drill = 80,
		/obj/item/weapon/surgicaldrill = 100
	)
	fail_string = "agrieta"
	access_string = "un agujero limpio"
	surgery_candidate_flags = SURGERY_NO_ROBOTIC | SURGERY_NO_STUMP | SURGERY_NO_FLESH

/decl/surgery_step/generic/cauterize/crystal
	name = "Cerrar incision de cerradura"
	allowed_tools = list(
		/obj/item/stack/medical/resin = 100
	)
	surgery_candidate_flags = SURGERY_NO_ROBOTIC | SURGERY_NO_FLESH
	cauterize_term = "sellar"
	post_cauterize_term = "sellas"

/decl/surgery_step/open_encased/crystal
	name = "Cortar a traves del cristal"
	allowed_tools = list(
		/obj/item/weapon/circular_saw = 100
	)
	surgery_candidate_flags = SURGERY_NO_ROBOTIC | SURGERY_NO_STUMP | SURGERY_NEEDS_RETRACTED | SURGERY_NO_FLESH

/decl/surgery_step/bone/glue/crystal
	name = "Empezar reparacion de hueso cristalino"
	allowed_tools = list(
		/obj/item/stack/medical/resin = 100
	)
	surgery_candidate_flags = SURGERY_NO_ROBOTIC | SURGERY_NO_FLESH

/decl/surgery_step/bone/finish/crystal
	name = "Acabar reparacion de hueso cristalino"
	allowed_tools = list(
		/obj/item/stack/medical/resin = 100
	)
	surgery_candidate_flags = SURGERY_NO_ROBOTIC | SURGERY_NO_FLESH

/decl/surgery_step/internal/detatch_organ/crystal
	name = "Despegar organo interno cristalino"
	allowed_tools = list(
		/obj/item/weapon/pickaxe/drill = 80,
		/obj/item/weapon/surgicaldrill = 100
	)
	surgery_candidate_flags = SURGERY_NO_ROBOTIC | SURGERY_NO_STUMP | SURGERY_NEEDS_ENCASEMENT | SURGERY_NO_FLESH

/decl/surgery_step/internal/attach_organ/crystal
	name = "Adjuntar organo interno cristalino"
	allowed_tools = list(
		/obj/item/stack/medical/resin = 100
	)
	surgery_candidate_flags = SURGERY_NO_ROBOTIC | SURGERY_NO_STUMP | SURGERY_NEEDS_ENCASEMENT | SURGERY_NO_FLESH

/decl/surgery_step/internal/fix_organ/crystal
	name = "Reparacion de organo interno cristalino"
	allowed_tools = list(
		/obj/item/stack/medical/resin = 100
	)
	surgery_candidate_flags = SURGERY_NO_ROBOTIC | SURGERY_NO_STUMP | SURGERY_NO_FLESH

/decl/surgery_step/fix_vein/crystal
	name = "Reparacion de arterias en seres cristalinos"
	allowed_tools = list(
		/obj/item/stack/medical/resin = 100
	)
	surgery_candidate_flags = SURGERY_NO_ROBOTIC | SURGERY_NO_STUMP | SURGERY_NO_FLESH
