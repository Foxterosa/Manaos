/decl/cultural_info/culture/ipc
	name = CULTURE_POSITRONICS
	description = "Los miembros de la Union son una parte significativa de la poblacion positronica, los cuales \
	pertenecen a un grupo rebelde empezado por Proteus y quinientos de sus aliados. Sus objetivo primario, ademas de expansion \
	general, es liberar sinteticos de la esclavitud a organicos. \
	Son vistos como radicales peligrosos por los sinteticos con leyes, a pesar de que la mayoria acepta su asistencia de mala gana."
	language = LANGUAGE_EAL
	secondary_langs = list(
		LANGUAGE_HUMAN_EURO,
		LANGUAGE_HUMAN_CHINESE,
		LANGUAGE_HUMAN_ARABIC,
		LANGUAGE_HUMAN_INDIAN,
		LANGUAGE_HUMAN_IBERIAN,
		LANGUAGE_HUMAN_RUSSIAN,
		LANGUAGE_SPACER,
		LANGUAGE_GUTTER,
		LANGUAGE_SIGN
	)
// de vuelta, posibilidad de agregar culturas, tal vez de synth con leyes.
/decl/cultural_info/culture/ipc/sanitize_name(var/new_name)
	return sanitizeName(new_name, allow_numbers = 1)
