#define CREDIT_ROLL_SPEED 185
#define CREDIT_SPAWN_SPEED 20
#define CREDIT_ANIMATE_HEIGHT (14 * world.icon_size)
#define CREDIT_EASE_DURATION 22

GLOBAL_LIST(end_titles)

client
	var/list/credits

/client/proc/RollCredits()
	set waitfor = FALSE

	if(get_preference_value(/datum/client_preference/show_credits) != GLOB.PREF_YES)
		return

	if(!GLOB.end_titles)
		GLOB.end_titles = generate_titles()

	LAZYINITLIST(credits)

	if(mob)
		mob.overlay_fullscreen("fishbed",/obj/screen/fullscreen/fishbed)
		mob.overlay_fullscreen("fadeout",/obj/screen/fullscreen/fadeout)

		if(mob.get_preference_value(/datum/client_preference/play_lobby_music) == GLOB.PREF_YES)
			sound_to(mob, sound(null, channel = GLOB.lobby_sound_channel))
			if(GLOB.end_credits_song == null)
				var/title_song = pick('sound/music/manaos/curbyour.ogg', 'sound/music/title1.ogg', 'sound/music/elevatormusic.ogg', 'sound/music/manaos/spaceasshole.ogg')				sound_to(mob, sound(title_song, wait = 0, volume = 40, channel = GLOB.lobby_sound_channel))
			else if(get_preference_value(/datum/client_preference/play_admin_midis) == GLOB.PREF_YES)
				sound_to(mob, sound(GLOB.end_credits_song, wait = 0, volume = 40, channel = GLOB.lobby_sound_channel))
	sleep(50)
	var/list/_credits = credits
	verbs += /client/proc/ClearCredits
	for(var/I in GLOB.end_titles)
		if(!credits)
			return
		var/obj/screen/credit/T = new(null, I, src)
		_credits += T
		T.rollem()
		sleep(CREDIT_SPAWN_SPEED)
	sleep(CREDIT_ROLL_SPEED - CREDIT_SPAWN_SPEED)

	ClearCredits()
	verbs -= /client/proc/ClearCredits

/client/proc/ClearCredits()
	set name = "Stop End Titles"
	set category = "OOC"
	verbs -= /client/proc/ClearCredits
	QDEL_NULL_LIST(credits)
	mob.clear_fullscreen("fishbed")
	mob.clear_fullscreen("fadeout")
	sound_to(mob, sound(null, channel = GLOB.lobby_sound_channel))

/obj/screen/credit
	icon_state = "blank"
	mouse_opacity = 0
	alpha = 0
	screen_loc = "1,1"
	plane = HUD_PLANE
	layer = HUD_ABOVE_ITEM_LAYER
	var/client/parent
	var/matrix/target

/obj/screen/credit/Initialize(mapload, credited, client/P)
	. = ..()
	parent = P
	maptext = {"<div style="font:'Small Fonts'">[credited]</div>"}
	maptext_height = world.icon_size * 2
	maptext_width = world.icon_size * 14

/obj/screen/credit/proc/rollem()
	var/matrix/M = matrix(transform)
	M.Translate(0, CREDIT_ANIMATE_HEIGHT)
	animate(src, transform = M, time = CREDIT_ROLL_SPEED)
	target = M
	animate(src, alpha = 255, time = CREDIT_EASE_DURATION, flags = ANIMATION_PARALLEL)
	spawn(CREDIT_ROLL_SPEED - CREDIT_EASE_DURATION)
		if(!QDELETED(src))
			animate(src, alpha = 0, transform = target, time = CREDIT_EASE_DURATION)
			sleep(CREDIT_EASE_DURATION)
			qdel(src)
	parent.screen += src

/obj/screen/credit/Destroy()
	var/client/P = parent
	if(parent)
		P.screen -= src
	LAZYREMOVE(P.credits, src)
	parent = null
	return ..()

/proc/generate_titles()
	var/list/titles = list()
	var/list/cast = list()
	var/list/chunk = list()
	var/list/possible_titles = list()
	var/chunksize = 0
	if(!GLOB.end_credits_title)
		/* Establish a big-ass list of potential titles for the "episode". */
		possible_titles += "[pick("LA CAIDA DE", "EL ASCENSO DE", "PROBLEMAS CON", "EL ULTIMO BASTION DE", "EL LADO OSCURO DE", "LA DESOLACION DE", "LA DESTRUCCION DE", "LA CRISIS DE")]\
							 [pick("LOS ASTRONAUTAS", "LA HUMANIDAD", "LA DIGNIDAD", "LA CORDURA", "LOS MONOS", "LOS PRECIOS DE EXPENDEDORAS", "EL SERPENTOIDE CONSERJE",\
							"EL CRISTAL DE SUPERMATERIA", "LA SINGULARIDAD", "EL DEPARTAMENTO MEDICO", "LAS ANOMALIAS", "INGENIERIA", "SEGURIDAD", "CIENCIAS", "EL DEPARTAMENTO DE SERVICIO", "COMANDO", "EXPLORACION", "EL JEFE DE EXPLORADORES",\
							"[uppertext(GLOB.using_map.station_name)]")]"
		possible_titles += "LA TRIPULACION [pick("SE PONE RACISTA", "SE PONE NOIR", "IGNORA LECCIONES DE ETICA BASICAS", "LUCHA CONTRA EL BULLYING ESPACIAL", "ENTRA A LA ZONA", "ES FUNADA", "REVIVE EL HUMOR DEL SIGLO XXI", "INTENTA HACER SU TRABAJO, FRACASA", "PULVERIZA LA CUARTA PARED", "ES ESCABECHADA", "CONTRAE UNA ENFERMEDAD INCURABLE", "OBTIENE PIZZA", "APRENDE UNA LECCION SOBRE HISTORIA", "SE TOMA UN DESCANSO", "SE COLOCA", "TIENE EL LUJO DE SOBREVIVIR", "RECUERDA SU INFANCIA", "SE INVOLUCRA EN UNA GUERRA CIVIL", "PASA POR UNA MALA RESACA", "SE PONE SERIA SOBRE [pick("EL ABUSO DE DROGAS", "EL CRIMEN", "LA LEY SOLAR", "EL ABUSO DE INTELIGENCIAS ARTIFICIALES", "SPACEBALL", "PROCEDIMIENTOS DE DESCOMPRESION")]")]"
		possible_titles += "LA TRIPULACION APRENDE SOBRE [pick("EL AMOR", "EL USO APROPIADO DE BENGALAS BLUESPACE", "LOS MODALES EN LA MESA", "EL USO APROPIADO DE GRANADAS", "LAS CONSECUENCIAS DE SUS ACCIONES", "LA RELACION ENTRE PERROS, ZORROS, CYBORGS Y ANFIBIOS", "LA ALARMANTE FRECUENCIA DE MUERTES UNATHI", "INSULTOS LEVES EN IBERIANO", "COMO JODER UNA NAVE EN 5 SIMPLES PASOS", "LA IMPORTANCIA DE HIDRATARSE", "CLONES", "DROGAS", "LA NADA MISMA", "LA RELACION ENTRE LANGOSTAS Y XENO-ORGANISMOS", "LA DIFERENCIA ENTRE ADHERENTES Y ADHESIVOS", "LOS PELIGROS DEL LAVADO DE DINERO", "XENOSENSIBILIDAD", "EL FRAUDE DE INVERSION", "EL ABUSO DE OXICODONA", "PROTECCION ANTIRADIACION", "LA TEORIA DE LAS CUERDAS", "MATEMATICA ABSTRACTA", "LOS RITOS DE REPRODUCCION [pick("UNATHI", "SKRELL", "DIONA", "KHAARMANI", "VOX", "DE SERPENTOIDES")]", "MEDICINA CHINA ANTIGUA")]"
		possible_titles += "[pick("UNA NAVIDAD", "UNA CELEBRACION DE PASCUA", "UNA FESTIVIDAD", "UNA SEMANA", "UNA CELEBRACION", "UNA VACACION")] [pick("MUY CORPORATIVA", "DE NANOTRASEN", "DE LA FLOTA", "MARINE", "VENUSIANA", "ANFIBIA", "EXPEDICIONARIA", "DIONA", "INFERNAL", "DE PHORON", "MARCIANA", "SERPENTOIDE")]"
		possible_titles += "[pick("ARMAS, ARMAS POR DOQUIER", "LA PEOR NAVE DE SOL", "EL LAGARTO MAS ALTO", "EL RESULTADO DE MEZCLAR DRONES DE MANTENIMIENTO E IDEOLOGIAS DEL SIGLO XIX", "ATAQUEN! ATAQUEN! ATAQUEN!", "MIL HORAS", "MANAOS, GUERRA CIVIL: PARTE [pick("I","II","III","IV","V","VI","VII","VIII","IX", "X", "C","M","L")]")]"
		possible_titles += "[pick("MISION", "EQUIPO", "ESCUADRON", "NOMBRE CLAVE:")] [pick("ESPACIAL", "M.A.N.A.O.S.", "SEXO", "MERCENARIO", "MINERIA", "DRAGON", "BRUJA", "LAVANDERIA", "ARMAS", "PUBLICIDAD", "PERRO", "MONOXIDO DE CARBONO", "NINJA", "MAGO", "MUERTE", "DELINCUENCIA JUVENIL", "POLITICA", "EPICARDO PICANTE", "SERBIA")]" //no me maten
		possible_titles += "[pick("EL DIA QUE SACUDIO A LA [uppertext(GLOB.using_map.station_short)]", "UNA LECCION SOBRE EL VANDALISMO", "SPACE KART", "DEMONIOS BIEN VESTIDOS", "M.E.R.C.S.", "EFECTOS BLUESPACE", "UNA EXPOSICION DE AVES ACUATICAS ESPACIALES", "EL [pick("PEOR", "MEJOR")] [pick("LUNES", "MARTES", "MIERCOLES", "JUEVES", "VIERNES", "SABADO", "DOMINGO")]", "H ES DE HONK", "LA [pick("PRIMERA", "SEGUNDA", "TERCERA", "CUARTA", "DECIMA", "SEXAGESIMA", "ENESIMA")] DELAMINACION DEL DIA", "UN ABOGADO, UN PSICOLOGO Y UN OFICIAL DE SEGURIDAD ENTRAN A UN BAR", "UNA DISCUSION INTENSA SOBRE NOMENCLATURA FELINA",\
							"NOS VEMOS, GAUCHO ESPACIAL", "POR LA CIENCIA!", "MINEROS, NO MUERAN!", "SLIMES, CRIMEN Y PECADO", "DROGAS, ALCOHOL Y CABRAS", "LAS BIZARRAS AVENTURAS DE LA [uppertext(GLOB.using_map.station_short)]: [pick("PROMETHEAN BLOOD", "VALID TENDENCY", "BLUESPACE CRUSADERS", "PHORON IS UNBREAKABLE", "GOLDEN SHIP", "XENO OCEAN", "PLASTEEL BALL RUN", "GIDEOLION")]", "DISPARAR PRIMERO, PREGUNTAR DESPUES", "ES NECROFORMO, NO NECROMORFO", "LOS LOCOS DOS MIL QUINIENTOS SESENTAS", "FRACASADO LOCAL FRACASA", "UNA GRAN FAMILIA", "LAS OTRAS DOCE ESTACIONES ESPACIALES", "UNA HISTORIA REAL, AMBIENTADA EN UN SIMULADOR DE ATMOSFERA DEL SIGLO XXI", "EL AUTOR MUERE", "LA RAZON POR LA CUAL [pick("NO SE HIERVE EL MATE", "MINAR ES PESIMA IDEA", "NO SE MEZCLA BLUESPACE CON REDSPACE",\
							"SE USA BARBIJO", "EXISTE EL SSD", "NO SE ARRASTRA A LOS HERIDOS", "EXISTIR FUE MALA IDEA")]", "ABRAZOS MECANICOS", "EL TERMOSTATO DE LA CAPITANA", "MANAOS HIGH", "KOMIROV FRIED VOX", "SPACE ATTORNEY", "EL EXTRAVAGANTE CASO DEL PAJARO Y EL MILLONARIO", "EL GATO [pick("MULTITAREAS", "RUSO", "HUMANO")]", "EL SERPENTOIDE INCOMPRENDIDO", "AQUEL AMOR DE MUSICA LIGERA")]" //jeje, fracasado local fracasa
		titles += "<center><h1>EPISODIO [rand(1,10000)]<br>[pick(possible_titles)]<h1></h1></h1></center>" //puta madre, me diverti con esto
	else
		titles += "<center><h1>EPISODIO [rand(1,10000)]<br>[GLOB.end_credits_title]<h1></h1></h1></center>"

	for(var/mob/living/carbon/human/H in GLOB.living_mob_list_|GLOB.dead_mob_list_)
		if(findtext(H.real_name,"(mannequin)"))
			continue
		if(H.isMonkey() && findtext(H.real_name,"[lowertext(H.species.name)]")) //no monki
			continue
		if(H.timeofdeath && H.timeofdeath < 5 MINUTES) //don't mention these losers (prespawned corpses mostly)
			continue
		if(!cast.len && !chunksize)
			chunk += "ELENCO:"
		var/job = ""
		if(GetAssignment(H) != "No Asignado")
			job = ", [uppertext(GetAssignment(H))]"
		var/used_name = H.real_name
		var/datum/computer_file/report/crew_record/R = get_crewmember_record(H.real_name)
		if(R && R.get_rank())
			var/datum/mil_rank/rank = mil_branches.get_rank(R.get_branch(), R.get_rank())
			if(rank.name_short)
				used_name = "[rank.name_short] [used_name]"
		var/showckey = 0
		if(H.ckey && H.client)
			if(H.client.get_preference_value(/datum/client_preference/show_ckey_credits) == GLOB.PREF_SHOW)
				showckey = 1
		var/decl/cultural_info/actor_culture = SSculture.get_culture(H.get_cultural_value(TAG_CULTURE))
		if(!actor_culture || !(H.species.spawn_flags & SPECIES_CAN_JOIN) || prob(10))
			actor_culture = SSculture.get_culture(CULTURE_HUMAN)
		if(!showckey)
			if(prob(90))
				chunk += "[actor_culture.get_random_name(H.gender)]\t \t \t \t[uppertext(used_name)][job]"
			else
				var/datum/gender/G = gender_datums[H.gender]
				chunk += "[used_name]\t \t \t \t[uppertext(G.him)]SELF"
		else
			chunk += "[uppertext(actor_culture.get_random_name(H.gender))] a.k.a. '[uppertext(H.ckey)]'\t \t \t \t[uppertext(used_name)][job]"
		chunksize++
		if(chunksize > 2)
			cast += "<center>[jointext(chunk,"<br>")]</center>"
			chunk.Cut()
			chunksize = 0
	if(chunk.len)
		cast += "<center>[jointext(chunk,"<br>")]</center>"

	titles += cast

	var/list/corpses = list()
	var/list/monkies = list()
	for(var/mob/living/carbon/human/H in GLOB.dead_mob_list_)
		if(H.timeofdeath < 5 MINUTES) //no prespawned corpses
			continue
		if(H.isMonkey() && findtext(H.real_name,"[lowertext(H.species.name)]"))
			monkies[H.species.name] += 1
		else if(H.real_name)
			corpses += H.real_name
	for(var/spec in monkies)
		var/datum/species/S = all_species[spec]
		corpses += "[monkies[spec]] [lowertext(monkies[spec] > 1 ? S.name_plural : S.name)]"
	if(corpses.len)
		titles += "<center>BASADO EN HECHOS REALES<br>En memoria de [english_list(corpses)].</center>"

	var/list/staff = list("PERSONAL DE PRODUCCION:")
	var/list/staffjobs = list("Busca-Cafes", "Camarografo", "Asistente de Asistencia", "Abusador Asignado", "Apoyo Moral", "Operador de Sillas", "Coreografo", "Consultor Historico", "Jefe de Vestuario", "Jefe de Edicion", "Experto en Organismos Blob", "Jefe de Jefatura")
	var/list/goodboys = list()
	for(var/client/C)
		if(!C.holder)
			continue
		if(C.holder.rights & (R_DEBUG|R_ADMIN))
			var/decl/cultural_info/cult = SSculture.cultural_info_by_name[pick(SSculture.cultural_info_by_name)]
			staff += "[uppertext(pick(staffjobs))] - [cult.get_random_name(pick(MALE, FEMALE))] a.k.a. '[C.key]'"
		else if(C.holder.rights & R_MOD)
			goodboys += "[C.key]"

	titles += "<center>[jointext(staff,"<br>")]</center>"
	if(goodboys.len)
		titles += "<center>LOS NENES ESPECIALES DE LOS PRODUCTORES:<br>[english_list(goodboys)]</center><br>"

	var/disclaimer = "<br>Patrocinado por [GLOB.using_map.company_name].<br>Todos los derechos reservados.<br>\
					 Esta pieza cinematografica es protegida por las leyes de derechos de autor del Gobierno Central Solar y de otras naciones a traves de la galaxia.<br>\
					 Publicacion Inicial: [pick("Marte", "Luna", "Tierra", "Venus", "Fobos", "Ceres", "Tiamat", "Ceti Epsilon", "Eos", "Pluton", "Ouere",\
					 "Lordania", "Kingston", "Cinu", "Yuklid V", "Lorriman", "Tersten", "Aigaion")].<br>"
	disclaimer += pick("El uso del material demostrado para parodias esta prohibido. PROHIBIDO.",
					   "Todas las acrobacias fueron ejecutadas por trabajadores no remunerados. NO las intenten en casa.",
					   "[GLOB.using_map.company_name] no aprueba el comportamiento representado en esta obra. Intentar bajo su propio riesgo.",
					   "Toda exhibicion, distribucion o copia de esta pieza o cualquier parte de la misma (incluyendo su banda sonora)<br>\
						puede justificar el llamado de un ERT a su domicilio para recuperar el material reservado a la fuerza.",
						"Esta historia y todos los incidentes, nombres, personajes representados en la misma son ficticios. Cualquier similaridad con<br>\
						personas (vivas o muertas), lugares, edificios y productos es casualidad, y no deberia ser asumida.<br>\
						A pesar de lo recien aclarado, esta obra esta basada en una historia real y todos los individuos representados estan basados en personas existentes.",
						"Ninguna persona o entidad asociada con esta obra recibio pago, recompensa de valor, o entrada en cualquier arreglo relacionado<br>\
						con la promocion de productos de tabaco, a pesar de la cantidad absurda de fumadores representados.<br>\
						(Esta advertencia fue patrocinada por Carcinoma - Los Carcinogenos son Nuestro Negocio!(TM)).",
						"Ningun menor fue explotado en la produccion de esta pieza. Todo menor representado es un actor adulto o una divergencia espacio-temporal.",
						"Cualquier similitud con marcas registradas de bebidas carbonatadas saborizadas es una coincidencia.",
						"Todo afecto, apego, amor y ternura demostrado en esta obra es genuino, y deberia ser tomado como tal.",
						"Ningun animal fue lastimado en la produccion de esta obra excepto los lastimados en la produccion de esta obra.",
						"Todo traductor involucrado en la traduccion de esta obra se divirtio demasiado, pero no fue remunerado de cualquier forma.", // este seria yo
						"Ningun animal fue lastimado en la produccion de esta obra excepto los previamente denominados muertos. No intenten esto en casa.")
	titles += "<hr>"
	titles += "<center><span style='font-size:6pt;'>[JOINTEXT(disclaimer)]</span></center>"

	return titles