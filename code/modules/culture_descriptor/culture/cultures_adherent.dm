/decl/cultural_info/culture/adherent
	name = CULTURE_ADHERENT
	description = "El Vigil es una asociacion relativamente suelta de maquinas sirviente, Adherentes, construidos por una cultura ya extinta. \
	Son devotos a la memoria de sus creadores fallecidos, destruidos por El Grito, una erupcion solar que borro la gran \
	mayoria de datos sobre sus creadores y mezclo sistemas y mentes, dejando a los adherentes sobrevivientes confundidos \
	y desorientados por siglos. Ahora en contacto con la humanidad, el Vigil se esta ganando su lugar \
	en la cultura galactica general."
	hidden_from_codex = TRUE
	language = LANGUAGE_ADHERENT
	secondary_langs = list(
		LANGUAGE_HUMAN_EURO,
		LANGUAGE_GUTTER,
		LANGUAGE_SPACER,
		LANGUAGE_SIGN,
		LANGUAGE_HUMAN_RUSSIAN
	)

/decl/cultural_info/culture/adherent/get_random_name(var/gender)
	return "[uppertext("[pick(GLOB.full_alphabet)][pick(GLOB.full_alphabet)]-[pick(GLOB.full_alphabet)] [rand(1000,9999)]")]"

/decl/cultural_info/culture/adherent/sanitize_name(name)
	return sanitizeName(name, allow_numbers=TRUE)
