GLOBAL_LIST_EMPTY(skills)

/decl/hierarchy/skill
	var/ID = "none"                        // ID of this skill. Needs to be unique.
	name = "None"                          // Name of the skill. This is what the player sees.
	hierarchy_type = /decl/hierarchy/skill // Don't mess with this without changing how Initialize works.
	var/desc = "Placeholder skill"         // Generic description of this skill.

   	// Names for different skill values, in order from 1 up.
	var/levels = list( 		"Ignorante"			= "Ignorante Description",
							"Basico"				= "Basico Description",
							"Entrenado"			= "Trained Description",
							"Experimentado"		= "Experienced Description",
							"Maestro"		= "Professional Description")
	var/difficulty = SKILL_AVERAGE         //Used to compute how expensive the skill is
	var/default_max = SKILL_ADEPT          //Makes the skill capped at this value in selection unless overriden at job level.
	var/prerequisites                      // A list of skill prerequisites, if needed.

/decl/hierarchy/skill/proc/get_cost(var/level)
	switch(level)
		if(SKILL_BASIC, SKILL_ADEPT)
			return difficulty
		if(SKILL_EXPERT, SKILL_PROF)
			return 2*difficulty
		else
			return 0

/decl/hierarchy/skill/proc/update_special_effects(mob/mob, level)

/decl/hierarchy/skill/Initialize()
	..()
	if(is_hidden_category())
		if(!GLOB.skills.len)
			for(var/decl/hierarchy/skill/C in children)
				GLOB.skills += C.get_descendents()
		else
			log_error("<span class='warning'>Warning: multiple instances of /decl/hierarchy/skill have been created!</span>")

/decl/hierarchy/skill/dd_SortValue()
	return ID

/decl/hierarchy/skill/organizational
	name = "Organizativo"
	ID	 = "1"
	difficulty = SKILL_EASY
	default_max = SKILL_MAX

/decl/hierarchy/skill/general
	name = "General"
	ID	 = "2"
	difficulty = SKILL_EASY
	default_max = SKILL_MAX

/decl/hierarchy/skill/service
	name = "Servicio"
	ID	 = "service"
	difficulty = SKILL_EASY
	default_max = SKILL_MAX

/decl/hierarchy/skill/security
	name = "Seguridad"
	ID	 = "security"
	default_max = SKILL_EXPERT

/decl/hierarchy/skill/engineering
	name = "Ingenieria"
	ID	 = "engineering"

/decl/hierarchy/skill/research
	name = "Research"
	ID	 = "research"

/decl/hierarchy/skill/medical
	name = "Medico"
	ID	 = "medical"
	difficulty = SKILL_HARD

// ONLY SKILL DEFINITIONS BELOW THIS LINE
// Category: Organizational

/decl/hierarchy/skill/organizational/bureaucracy
	ID = "bureaucracy"
	name = "Burocracia"
	desc = "Tu habilidad para escribir y rellenar papeleo, navegar en organizaciones de papeleo complejas, y entender leyes y regulaciones."
	levels = list( "Ignorante"			= "Usualmente puedes llenar el papeleo básico con algunos errores. Tienes un vago conocimiento sobre la ley, aprendido por las noticias y experiencia personal.",
						"Basico"				= "Estas familiarizado con el papeleo que necesitas para hacer tu trabajo, y puedes gestionarlo bien. Tienes un poco de conocimiento sobre la ley y el como se aplica en ti y quienes te rodean.",
						"Entrenado"			= "Puedes manejar la mayoria del papeleo que te dan, incluso si no estas familiarizados con ellos. Tienes un buen entendimiento de la ley y de cualquiera regulacion o procedicimiento relevante para ti.",
						"Experimentado"		= "Con experiencia, puedes facilmente hacer papeleo de cualquier evento, y escribir reportes cuales son limpios y entendibles. Tienes un excelente conocimiento sobre la ley, posiblemente incluyendo un entrenamiento formalmente legal.<br>- Aprendes un idioma unico.",
						"Maestro"		= "Puedes hacer que el papeleo se menee a tu gusto, y navegar a traves de las estructuras burocraticas mas bizantinas con mucha facilidad y familiaridad. Tus reportes son trabajos de literatura. Tu conocimiento sobre la ley es amplio e intimo, y puede que estes certificado para ejercer como abogado.")

/decl/hierarchy/skill/organizational/bureaucracy/update_special_effects(mob/mob, level)
	mob.remove_language(LANGUAGE_LEGALESE)
	if(level >= SKILL_EXPERT)
		mob.add_language(LANGUAGE_LEGALESE)

/decl/hierarchy/skill/organizational/finance
	ID = "finance"
	name = "Financia"
	desc = "Tu habilidad para manejar el dinero y las inversiones."
	levels = list( "Ignorante"			= "Tu entendimiento sobre el dinero empieza y acaba con tu finanza personal. Si bien puedes realizar transacciones basicas, te pierdes en los detalles. Y puedes terminar estafado alguna que otra vez. <br>- Tienes algo de dinero al empezar, que va aumentando segun tu nivel.<br>- Puedes usar el verbo \"Appraise\" para ver el valor de diferentes objetos.",
						"Basico"				= "Tienes un conocimiento limitado sobre las transacciones financieras, generalmente podras mantener registros precisos. Tienes algo de experiencia con la inversion, y manejar grandes sumas de dinero puede que no te haga terminar bien.",
						"Entrenado"			= "Eres bueno manejando cuentas, manteniendo los registros, y organizando transacciones. Estas familiarizado con hipotecas, seguros, acciones y bonos. Pero puedes terminar desconcertado a la hora de enfrentarse a dispositivos financieros mas complicados.",
						"Experimentado"		= "Con tu experiencia, eres familiar con cualquier tipo de financia que te encuentres y ser un astuto juez de valor. la mayoria de las veces las inversiones que realices iran bien.",
						"Maestro"		= "Tienes un excelente conocimiento sobre la financia, a menudo haras brillantes inversiones y tendras una sensacion instintiva de la economia interestelar.Los instrumentos financieros seran como armas en tus manos. Es probable que tengas experiencia profesional en la industria financiera.")

// Category: General

/decl/hierarchy/skill/general/EVA
	ID = "EVA"
	name = "Actividad Extra-Vehicular"
	desc = "Describe tu habilidad y conocimiento sobre los trajes espaciales y el trabajo en el vacio."
	levels = list( "Ignorante"			= "Tienes un entrenamiento comun y basico de como trabajar en el espacio: Sabes como activar y desactivar tus internals, y seguramente tambien puedes ponerte un traje espacial si lo necesitas a pesar de ser torpe. Sigues siendo propenso a cometer errores que te pueden dejar respirando el vacio.<br>- Puedes quitarte los hardsuits. La velocidad se aumenta con el nivel.<br>- Siempre te quedaras atascado cuando entres en una area de gravedad desde el espacio. Esta probabilidad disminuye con el nivel.<br>- Sueles resbalar, esta probalididad se disminuye cuanto mas nivel tengas.",
						"Basico"				= "Tienes un entrenamiento basico en operaciones con AEV, y es poco posible que cometas errores de novato. De igual forma, tienes un poco de experiencia trabajando en el vacio.",
						"Entrenado"			= "Comodamente puedes usar un traje espacial y hacer tu trabajo de forma regular en el curso de tu trabajo. Revisar tus internals es tu segunda naturaleza, y no tienes panico en una emergencia.<br>- Puedes usar Jetpacks sin problema.",
						"Experimentado"		= "Puedes usar todo tipo de trajes espaciales, incluido las versiones especializadas. Tus años de experencia en AEV te hacen posible no desorientarte en el espacio, y tienes experiencia usando un Jetpack para moverte. <br>- No puedes resbalarte mas.",
						"Maestro"		= "Estas igual de comodo en el vacio como en la atmosfera. Seguramente haces tu trabajo siempre con un AEV.<br>- Ya no podras dejarte caer.<br>- Tienes un bonus de velocidad en Gravedad Cero.")

/decl/hierarchy/skill/general/EVA/mech
	ID = "exosuit"
	name = "Operacion con el Exotraje"
	desc = "Te permite operar los ex-trajes bien."
	levels = list("Ignorante" = "Estas infamiliarizado con los controles del exo-traje, y si intentas usarlo es problable que cometas errores.",
		"Entrenado" = "Eres lo suficientemente capaz para mantener y operar un exo-traje y usarlo sin fallos.")
	prerequisites = list(SKILL_EVA = SKILL_ADEPT)
	default_max = SKILL_BASIC
	difficulty = SKILL_AVERAGE

/decl/hierarchy/skill/general/pilot
	ID = "pilot"
	name = "Pilotaje"
	desc = "Describe tu experiencia y entendimiento de pilotaje en naves espaciales, de pods diminutos y de corto alcance a naves de escala corvette."
	levels = list( "Ignorante"			= "Sabes lo que es una nave espacial, y podrias tener un conocimiento abstracto de las diferencias entre varias naves. Si a tu departamento le incumbe las naves, sabras de sus capacidades. Es probable que puedas conducir una nave en un videojuego. Si tomases el timon de una pequeña nave, podrias moverlo en un buen rumbo.<br>- Mientras mayor el nivel, menor tiempo (?) entre transiciones.<br>- Puedes volar naves, pero su movimiento probablemente sea aleatorio.<br>- La velocidad de tu nave al golpear las carpas aumentara con el nivel.",
						"Basico"				= "Puedes pilotar una nave de alcance corto de manera segura, pero las naves grandes estan fuera de tu alcance.  No eres ningun experto, y probablemente no tienes mucho entrenamiento. La habilidades de este nivel son tipicas para la tripulacion de Deck.<br>- Puedes operar diminutas naves sin error.<br>- Puedes evitar completamente los meteoritos si vas a baja velocidad con las naves reducidas como el GUP.",
						"Entrenado"			= "Eres un piloto entrenado, puedes manejar de forma segura una diminuta nave hasta un corvette. Puedes estar en periodos de tiempo extensos para pilotar una nave espacial, y estas especializado en las habilidades de las diferentes naves. Puedes hacer el mantenimiento basico en los buques diminutos, y realizar la mayoria de las maniobras basicas. Puedes usar una nave espacial armada. Hacer calculos basicos relativos al pilotaje. Las habilidades de este nivel son tipicos para los nuevos pilotos. Probablemente hayas recibido un entrentamiento formal de pilotaje.<br>- Puedes operar grandes naves sin errores. <br>- Puedes evitar completamente a los meteoritos con poca velocidad usando cualquier nave espacial.",
						"Experimentado"		= "Eres un piloto experimentado, y puedes tomar el timon de muchos tipos de naves con seguridad. Probablemente podrias vivir en una nave, y eres un experto en esencialmente todo lo relacionado a embarcaciones espaciales. no solo puedes volar una nave, si no que puedes hacer maniobras complicadas y hacer calculos relacionados sobre pilotaje de una nave espacial y su mantenimiento. Las habilidades de este nivel son tipicos para los pilotos experimentados. Has recibio un entrenamiento formal de pilotaje.<br>- Puedes evadir completamente los meteoritos en velocidad normal mientras usas naves espaciales reducidas.",
						"Maestro"		= "No solo eres un piloto excepcional, pero has dominado las funciones de la navegacion estelar y el trazado del salto bluespace. Tienes experiencia haciendo maniobras complejas, manejando escuadrones de naves menores, y operando en entornos hostiles.<br>- Puedes evadir completamente los meteoritos en velocidad normal usando cualquier tipo de nave.<br>- Menos meteoritos golpearan la nave espacial mientras pasas por campo de meteoritos.")
	difficulty = SKILL_AVERAGE
	default_max = SKILL_ADEPT

/decl/hierarchy/skill/general/hauling
	ID = "hauling"
	name = "Atleticos"
	desc = "Tu habilidad para hacer tareas que requieran de una buena fuerza, destreza, o resistencia."
	levels = list( "Ignorante"			= "No estas acostumbrado al trabajo manual, por lo cual te cansas facilmente y es probable que no estes de buena forma. El esfuerzo continuo puede resultar peligroso para ti.<br>- Puedes arrastrar objetos pero generas Lactato al cansarte. Tu fuerza incrementa con el nivel.<br>- Puedes lanzar objetos. Su velocidad, distancia de lanzamiento, y fuerza se aumentan con el nivel.<br>- Puedes esprintar, el consumo de estamina se reduce con cada nivel.<br>- Puedes dar un salto hacia un objetivo con la intencion de agarre, el rango del salto se incrementa y sus posibilidades de caer disminuyen con cada nivel.",
						"Basico"				= "Tienes algo de familiaridad con el trabajo manual, y estas en una decente condicion fisica. Tareas que requieran de una buena destreza o fuerza podrian no estar aun tu nivel.<br>- Puedes lanzar objetos \"enormes\" o puedes lanzar criaturas de proporcion normal sin terminar cansado.",
						"Entrenado"			= "Tienes la suficiente fuerza y destreza para las tareas mas dificiles, y puedes trabajar por un periodo de tiempo largo sin sin cansarte.",
						"Experimentado"		= "Tienes experiencia con trabajo pesado en condiciones fisicas dificiles, estas en excelente forma. Sueles ir al gimnasio con frecuencia.",
						"Maestro"		= "En adicion a tu excelente fuerza y resistencia, tienes mucha experiencia con las exigencias fisicas especificas de tu trabajo. Puede que tengas experiencia competitiva con algun deporte.")

/decl/hierarchy/skill/general/computer
	ID = "computer"
	name = "Informacion tecnologica"
	desc = "Describe tu entendimiento sobre ordenadores, software y comunicacion. No es un requerimiento para el uso diario de ordenador, pero es de ayuda. Usado en telecomunicaciones y programacion de ordenadores y IAs"
	levels = list( "Ignorante"			= "Sabes como usar ordenadores y dispositivos con los que creciste. Puedes usar la consola del ordenador, una radio de mano o de pared, y tu headset, asi como tu PDA. Sabes lo que son las IAs, pero puedes verlos mas como \"gente hecha de silicona\" o \"solo maquinas\"; sabes que tienen que obedecer ordenes, pero no sabes mucho sobre como o por que trabajan.",
						"Basico"				= "Sabes lo basico de la programacion, pero no eres bueno en ello y no podrias ejercerlo profesionalmente. Tienes una buena nocion de como funciona una IA. Entiendes como la informacion es almacenada en un ordenador, y como arreglar errores simples. Tienes un conocimiento minimo de la informatica, y es por ello que puedes seguir cometiendo errores. Si intentas subvertir a la IA, puedes cometer errores redactando tus nuevas leyes.<br>- El programa de desencriptacion del antagonistas tiene la oportunidad de evitar disparar las alarmas y trabajar de forma mas eficaz. Aumenta con nivel.",
						"Entrenado"			= "En este nivel, probablemente estes trabajando diariamente con ordenadores. Entiendes y puedes reparar la network de las telecomunicaciones. Tu entendimiento de la programacion y psicologia de una IA te permite resolver problemas con ellas o cyborgs--o crear problemas, si lo deseas. Puedes programar ordenadores, IAs, y cambiar las leyes de forma efectiva.<br>- Puedes usas completamente un monitor de Network, administracion E-mail, y programas de control de las IA's.",
						"Experimentado"		= "Llevas tiempo acumulando experiencia con redes de ordenadores, sistemas de IA, telecomunicaciones y tareas sysadmin. Conoces los sistemas que se suelen usar diariamente de forma intima, y puedes diagnosticar problemas complejos.<br>- El programa Dos del antagonista da nodos de ataques falsos adicionales al registro el sistema.<br>- Puedes usar la linea de comando en ordenadores modulares (escribe \"man\" para una lista).",
						"Maestro"		= "La gente seguramente se estara empezando a cuestionar si tu mismo eres un ordenador. El idioma computacional es tu primera lengua; te relacionas con las Ias tan facilmente (probablemente mas facilmente) que los organicos. Podrias construir una red de telecomunicaciones desde cero.")

// Category: Service

/decl/hierarchy/skill/service/botany
	ID = "botanica"
	name = "Botanica"
	desc = "Describe lo bueno que es un personaje en el cultivo y mantenimiento de las plantas."
	levels = list( "Ignorante"			= "No sabes casi nada de las plantas. Puedes intentar plantar, desherbar, o cosechar, es igual de probable que termines matando en el acto a la planta.",
						"Basico"				= "Has hecho algo de jardineria. Puedes regar, desherbar, fertilizar, plantar, y cosechar, y puedes reconocer y lidiar con pestes. Tal vez la jardineria sea solo un hobby para ti.<br>- Puedes plantar y desherbar plantas normales de forma segura.<br>- Puedes diferenciar las malas hierbas de las plagas y vicevesa.",
						"Entrenado"			= "Eres experto en botanica, puedes cultivar plantas para la produccion de alimentos u oxigeno. Tus plantas generalmente sobreviviran y prosperaran. Sabes lo basico sobre la manipulacion de genes sobre plantas.<br>- Puedes plantar y desherbar plantas exoticas de forma segura.<br>- Puedes usar las maquinas de xenoflora. La degradacion de la muestra disminuye con el nivel de habilidad.",
						"Experimentado"		= "Eres botanico o agricultor, capaz de dirigir cultivos hidroponicos de una instalacion o hacer una investigacion botanica. Eres un experto en la creacion de hibridos personalizados y genes modificados.",
						"Maestro"		= "Eres un botanico especializado. Eres capaz de cuidar a las mas exoticas, fragiles, o peligrosas plantas. Puedes usar la maquina de manipulacion de genes con precision, y a menudo eres capaz de evitar la degradacion de las muestras.")

/decl/hierarchy/skill/service/cooking
	ID = "cooking"
	name = "Cocina"
	desc = "Describe la habilidad del personaje preparando comidas y otros buenos consumibles. Esto incluye la mezcla de brebajes alcoholicos."
	levels = list( "Ignorante"			= "Vagamente sabes algo de cocina, y te aferras a las maquinas cuando puedes. El microondas es una maquina de magia negra para ti, y lo tratas de evitar en todo lo posible.",
						"Basico"				= "Puedes hacer comidas simples para tu familia, como spaghettis, quesos a la parrilla. Puedes hacer simples mezclas de bebidas que sueles tomar.<br>- Puedes usar la licuadora de forma segura.",
						"Entrenado"			= "Puedes hacer la mayoria de las comidas siguiendo las instrucciones, y generalmente te salen bien. Tienes algo de experiencia sobre el hospedaje, catering y/o el bartending.<br>- Puedes usar completamente el dispensador de bebidas.",
						"Experimentado"		= "Puedes cocinar profesionalmente, manteniendo toda la crew alimentada de forma sencilla. Tu comida es deliciosa y no tienes ningun problema con los platos dificiles o complicados. Se puede confiar en que haras cualquier bebida comunmente servida.",
						"Maestro"		= "No solo eres bueno cocinando y mezclando bebidas, puedes manejar al personal de cocina y proveer en eventos. Puedes preparar de forma segura comidas y bebidas exoticas que podrian ser venenosas si se preparasen de forma incorrecta.")

// Category: Security

/decl/hierarchy/skill/security/combat
	ID = "combat"
	name = "Close Combat"
	desc = "Esta habilidad describe tu entrenamiento mano a mano en combate o en el uso de armas cuerpo a cuerpo. While expertise in this area is rare in the era of firearms, experts still exist among athletes."
	levels = list( "Ignorante"			= "You can throw a punch or a kick, but it'll knock you off-balance. You're inexperienced and have probably never been in a serious hand-to-hand fight. In a fight, you might panic and run, grab whatever's nearby and blindly strike out with it, or (if the other guy is just as much of a beginner as you are) make a fool out of yourself.<br>- You can disarm, grab, and hit. Their success chance depends on the fighters' skill difference.<br>- The chance of falling over when tackled is reduced with level.",
						"Basico"				= "You either have some experience with fistfights, or you have some training in a martial art. You can handle yourself if you really have to, and if you're a security officer, can handle a stun baton at least well enough to get the handcuffs onto a criminal.",
						"Trained"			= "You have had close-combat training, and can easily defeat Ignorante opponents. Close combat may not be your specialty, and you don't engage in it more than needed, but you know how to handle yourself in a fight.<br>- You can parry with weapons. This increases with level.<br>- You can do grab maneuvers (pinning, dislocating).<br>- You can grab targets when leaping at them and not fall over, if your species is able to do so.",
						"Experienced"		= "You're good at hand-to-hand combat. You've trained explicitly in a martial art or as a close combatant as part of a military or police unit. You can use weaponry competently and you can think strategically and quickly in a melee. You're in good shape and you spend time training.",
						"Master"		= "You specialize in hand-to-hand combat. You're well-trained in a practical martial art, and in good shape. You spend a lot of time practicing. You can take on just about anyone, use just about any weapon, and usually come out on top. You may be a professional athlete or special forces member.")
	default_max = SKILL_EXPERT

/decl/hierarchy/skill/security/combat/get_cost(var/level)
	switch(level)
		if(SKILL_BASIC)
			return difficulty
		if(SKILL_ADEPT, SKILL_EXPERT)
			return 2*difficulty
		if(SKILL_PROF)
			return 4*difficulty
		else
			return 0

/decl/hierarchy/skill/security/weapons
	ID = "weapons"
	name = "Weapons Expertise"
	desc = "This skill describes your expertise with and knowledge of weapons. A low level in this skill implies knowledge of simple weapons, for example flashes. A high level in this skill implies knowledge of complex weapons, such as unconfigured grenades, riot shields, pulse rifles or bombs. A low-medium level in this skill is typical for security officers, a high level of this skill is typical for special agents and soldiers."
	levels = list( "Ignorante"			= "You know how to recognize a weapon when you see one. You can point a gun and shoot it, though results vary wildly. You might forget the safety, you can't control burst recoil well, and you don't have trained reflexes for gun fighting.<br>- You might fire your weapon randomly.",
						"Basico"				= "You know how to handle weapons safely, and you're comfortable using simple weapons. Your aim is decent and you can usually be trusted not to do anything stupid with a weapon you are familiar with, but your training isn't automatic yet and your performance will degrade in high-stress situations.<br>- You can use firearms. Their accuracy and spread depend on your skill level.",
						"Trained"			= "You have had extensive weapons training, or have used weapons in combat. Your aim is better now. You are familiar with most types of weapons and can use them in a pinch. You have an understanding of tactics, and can be trusted to stay calm under fire. You may have military or police experience and you probably carry a weapon on the job.",
						"Experienced"		= "You've used firearms and other ranged weapons in high-stress situations, and your skills have become automatic. Your aim is good.",
						"Master"		= "You are an exceptional shot with a variety of weapons, from simple to exotic. You use a weapon as naturally as though it were a part of your own body. You may be a sniper or special forces operator of some kind.<br>- You get extra accuracy for sniper rifles.<br>- You automatically eject shells from bolt-action firearms and shotguns.")

/decl/hierarchy/skill/security/weapons/get_cost(var/level)
	switch(level)
		if(SKILL_BASIC)
			return difficulty
		if(SKILL_ADEPT)
			return 2*difficulty
		if(SKILL_EXPERT, SKILL_PROF)
			return 4*difficulty
		else
			return 0

/decl/hierarchy/skill/security/forensics
	ID = "forensics"
	name = "Forensics"
	desc = "Describes your skill at performing forensic examinations and identifying vital evidence. Does not cover analytical abilities, and as such isn't the only indicator for your investigation skill. Note that in order to perform autopsy, the surgery skill is also required."
	levels = list( "Ignorante"			= "You know that detectives solve crimes. You may have some idea that it's bad to contaminate a crime scene, but you're not too clear on the details.",
						"Basico"				= "You know how to avoid contaminating a crime scene. You know how to bag the evidence without contaminating it unduly.",
						"Trained"			= "You are trained in collecting forensic evidence - fibers, fingerprints, the works. You know how autopsies are done, and might've assisted performing one.<br>- You can more easily detect fingerprints.<br>- You no longer contaminate evidence.",
						"Experienced"		= "You're a pathologist, or detective. You've seen your share of bizarre cases, and spent a lot of time putting pieces of forensic puzzle together, so you're faster now.<br>- You can notice additional details upon examining, such as fibers, partial prints, and gunshot residue.",
						"Master"		= "You're a big name in forensic science. You might be an investigator who cracked a famous case, or you published papers on new methods of forensics. Either way, if there's a forensic trail, you will find it, period.<br>- You can notice traces of wiped off blood.")


/decl/hierarchy/skill/security/forensics/get_cost(var/level)
	switch(level)
		if(SKILL_BASIC, SKILL_ADEPT, SKILL_EXPERT)
			return difficulty * 2
		if(SKILL_PROF)
			return 3 * difficulty
		else
			return 0

// Category: Engineering

/decl/hierarchy/skill/engineering/construction
	ID = "construction"
	name = "Construction"
	desc = "Your ability to construct various buildings, such as walls, floors, tables and so on. Note that constructing devices such as APCs additionally requires the Electronics skill. A low level of this skill is typical for janitors, a high level of this skill is typical for engineers."
	levels = list( "Ignorante"			= "You can break furniture, disassemble chairs and tables, bash your way through a window, open a crate, or pry open an unpowered airlock. You can recognize and use basico hand tools and inflatable barriers, though not very well.<br>- You can attempt to construct items above your skill level, success chance increases with level.",
						"Basico"				= "You can dismantle or build a wall or window, redecorate a room, and replace floor tiles and carpeting. You can safely use a welder without burning your eyes, and using hand tools is second nature to you.<br>- You can construct items from Steel, Wood and Plastic.",
						"Trained"			= "You can build, repair, or dismantle most things, but will occasionally make mistakes and have things not come out the way you expected.<br>- You can construct items from Bronze, Gold, Osmium, Plasteel, Platinum, Reinforced Glass, Sandstone, Silver, Deuterium, Metallic Hydrogen, Phoron, Phoron Glass, Tritium, and Uranium.<br>- You can construct furnitures.<br>- You can construct simple objects such as light fixtures, crude weapons, and wall-mounted frames.<br>- You can safely use the plasmacutter to deconstruct structures.",
						"Experienced"		= "You know how to seal a breach, rebuild broken piping, and repair major damage. You know the basicos of structural engineering.<br>- You can construct items from Osmium-Carbide Plasteel, Titanium, Diamond and make complex objects such as machine and weapon frames.",
						"Master"		= "You are a construction worker or engineer. You could pretty much rebuild the installation or ship from the ground up, given supplies, and you're efficient and skilled at repairing damage.")
	difficulty = SKILL_EASY

/decl/hierarchy/skill/engineering/electrical
	ID = "electrical"
	name = "Electrical Engineering"
	desc = "This skill describes your knowledge of electronics and the underlying physics. A low level of this skill implies you know how to lay out wiring and configure powernets, a high level of this skill is required for working complex electronic devices such as circuits or bots."
	levels = list( "Ignorante"			= "You know that electrical wires are dangerous and getting shocked is bad; you can see and report electrical malfunctions such as broken wires or malfunctioning APCs. You can change a light bulb, and you know how to replace a battery or charge up the equipment you normally use.<br>- Every time you open the hacking panel, wires are randomized.<br>- Every time you pulse a wire, there is a chance you pulse a different one.<br>- Every time you cut a wire, there is a chance you cut/mend extra ones.<br>- You can misconnect remote signalling devices.",
						"Basico"				= "You can do basico wiring; you can lay cable for solars or the engine. You can repair broken wiring and build simple electrical equipment like light fixtures or APCs. You know the basicos of circuits and understand how to protect yourself from electrical shock. You can probably hack a vending machine.<br>- Every time you open the hacking panel, some wires might be duplicated.",
						"Trained"			= "You can repair and build electrical equipment and do so on a regular basis. You can troubleshoot an electrical system and monitor the installation power grid. You can probably hack an airlock.<br>- You can safely hack machines.",
						"Experienced"		= "You can repair, build, and diagnose any electrical devices with ease. You know your way around APCs, SMES units, and monitoring software, and take apart or hack most objects.<br>- You can safely place remote signaling devices.<br>- You can examine one or two wires on the hacking panel.",
						"Master"		= "You are an electrical engineer or the equivalent. You can design, upgrade, and modify electrical equipment and you are good at maximizing the efficiency of your power network. You can hack anything on the installation you can deal with power outages and electrical problems easily and efficiently.<br>- You can examine most wires on the hacking panel.")

/decl/hierarchy/skill/engineering/atmos
	ID = "atmos"
	name = "Atmospherics"
	desc = "Describes your knowledge of piping, air distribution and gas dynamics."
	levels = list( "Ignorante"			= "You know that the air monitors flash orange when the air is bad and red when it's deadly. You know that a flashing fire door means danger on the other side. You know that some gases are poisonous, that pressure has to be kept in a safe range, and that most creatures need oxygen to live. You can use a fire extinguisher or deploy an inflatable barrier.<br>- RPD may give out random pipes, chance decreases with levels. <br>- You cannot recompress pipes with the RPD.",
						"Basico"				= "You know how to read an air monitor, how to use an air pump, how to analyze the atmosphere in a space, and how to help seal a breach. You can lay piping and work with gas tanks and canisters. If you work with the engine, you can set up the cooling system. You can use a fire extinguisher easily and place inflatable barriers so that they allow convenient access and airtight breach containment.<br>- You can recompress pipes with the RPD.",
						"Trained"			= "You can run the atmospherics system. You know how to monitor the air quality across the installation detect problems, and fix them. You're trained in dealing with fires, breaches, and gas leaks, and may have exosuit or fire gear training.<br>- You can use the RPD safely.",
						"Experienced"		= "Your atmospherics experience lets you find, diagnose, and fix breaches efficiently. You can manage complex atmospherics systems without fear of making mistakes, and are proficient with all monitoring and pumping equipment at your disposal.<br>- You can dispense a larger selection of pipes from the RPD.",
						"Master"		= "You are an atmospherics specialist. You monitor, modify, and optimize the installation atmospherics system, and you can quickly and easily deal with emergencies. You can modify atmospherics systems to do pretty much whatever you want them to. You can easily handle a fire or breach, and are proficient at securing an area and rescuing civilians, but you're equally likely to have simply prevented it from happening in the first place.")

/decl/hierarchy/skill/engineering/engines
	ID = "engines"
	name = "Engines"
	desc = "Describes your knowledge of the various engine types common on space stations, such as the PACMAN, singularity, supermatter or RUST engine."
	levels = list( "Ignorante"			= "You know that \"delamination\" is a bad thing and that you should stay away from the singularity. You know the engine provides power, but you're unclear on the specifics. If you were to try to set up the engine, you would need someone to talk you through every detail--and even then, you'd probably make deadly mistakes.<br>- You can read the SM monitor readings with 40% error. This decreases with level.",
						"Basico"				= "You know the basico theoretical principles of engine operation. You can try to set up the engine by yourself, but you are likely to need some assistance and supervision, otherwise you are likely to make mistakes. You are fully capable of running a PACMAN-type generator.",
						"Trained"			= "You can set up the engine, and you probably won't botch it up too badly. You know how to protect yourself from radiation in the engine room. You can read the engine monitors and keep the engine going. An engine malfunction may stump you, but you can probably work out how to fix it... let's just hope you do so quickly enough to prevent serious damage.",
						"Experienced"		= "You have years of experience with engines, and can set them up quickly and reliably. You're familiar with engine types other than the one you work with.<br>- You can fully read the SM monitor readings.<br>- You can examine the SM directly for its integrity.",
						"Master"		= "Your engine is your baby and you know every minute detail of its workings. You can optimize the engine and you probably have your own favorite custom setup. You could build an engine from the ground up. When things go wrong, you know exactly what has happened and how to fix the problem. You can safely handle singularities and supermatter.<br>- You can examine the SM directly for an approximate number of its EER.")
	difficulty = SKILL_HARD

// Category: Research

/decl/hierarchy/skill/research/devices
	ID = "devices"
	name = "Complex Devices"
	desc = "Describes the ability to assemble complex devices, such as computers, circuits, printers, robots or gas tank assemblies (bombs). Note that if a device requires electronics or programming, those skills are also required in addition to this skill."
	levels = list( "Ignorante"			= "You know how to use the technology that was present in whatever society you grew up in. You know how to tell when something is malfunctioning, but you have to call tech support to get it fixed.",
						"Basico"				= "You use and repair high-tech equipment in the course of your daily work. You can fix simple problems, and you know how to use a circuit printer or autolathe. You can build simple robots such as cleanbots and medibots.",
						"Trained"			= "You can build or repair an exosuit or cyborg chassis, use a protolathe and destructive analyzer, and build prosthetic limbs. You can safely transfer an MMI or posibrain into a cyborg chassis.<br>- You can attach robotic limbs. Its speed increases with level.",
						"Experienced"		= "You have years of experience building or reverse-engineering complex devices. Your use of the lathes and destructive analyzers is efficient and methodical. You can design contraptions to order, and likely sell those designs at a profit.",
						"Master"		= "You are an inventor or researcher. You can design, build, and modify equipment that most people don't even know exists. You are at home in the lab and the workshop and you've never met a gadget you couldn't take apart, put back together, and replicate.")

/decl/hierarchy/skill/research/science
	ID = "science"
	name = "Ciencia"
	desc = "Tu conocimiento y experiencia con metodos y procesos cientificos. Esto tambien aplica a las consolas con sensores y otros modulos de escaneo."
	levels = list( "Ignorante"			= "Sabes lo que es la ciencia y tienes una vaga idea de algun metodo cientifico por alguna clase de ciencias en la escuela.<br>- Aumentando tu habilidad en Ciencias te permite tener lecturas mas exactas.",
						"Basico"				= "Te mantienes al dia con los descubrimientos cientificos. Sabes un poco de los muchos campos de investigacion. Has aprendido las habilidades basicas de laboratorio. Tal vez hayas leido algo sobre la ciencia como un simple hobby; o estes trabajando en un campo relacionado a la ciencia y hayas aprendido un poco de esta en el camino. Podrias hacer un simple experimento.",
						"Entrenado"			= "Eres un cientifico, puede que uno recien graduado o un investigador post-graduado. Puedes hacer un experimento, analizar los resultados, publicar tus datos y instruir al resto de cientificos lo que has aprendido. Tus habilidades con el laboratorio son confiables, y sabes como encontrar la informacion que necesitas cuando investigas un nuevo tema cientifico. Puedes diseccionar xenofauna exotica sin ningun problema.",
						"Experimentado"		= "Eres un investigador junior. Puedes formular tus propias preguntas, usar las herramientas que tienes a mano para comprobar tus hipotesis e investigar fenomenos completamente nuevos. Es probable que tengas un historial de exito publicando tus conclusiones, atrayendo inversores.",
						"Maestro"		= "Eres un investigador profesional, y has hecho multiples descubrimientos en tu campo. Tus experimentos estan bien planteados. Eres conocido como una autoridad en tu especialidad y tus trabajos aparecen a menudo en revistas de prestigio. Puede que estes coordinando los esfuerzos de una investigacion de un equipo cientifico, y seguramente sepas como hacer que tus hallazgos sean atractivos para los inversores.")

// Category: Medical

/decl/hierarchy/skill/medical/medical
	ID = "medical"
	name = "Medicina"
	desc = "Cubre la comprension del cuerpo humano y la medicina. En un nivel bajo, esta habilidad te da un entendimiento basico de las aplicaciones comunes de medicina y una comprension aproximada de los dispositivos medicos como el analizador de salud. En nivel alto, esta habilidad garantiza un conocimiento exacto de toda la medicina posible en la instalacion, asi como la capacidad del uso de dispositivos medicos complejos como el escaner corporal o el espectrometro de masas."
	levels = list( "Ignorante"			= "Sabes sobre primeros auxilios, como aplicar un vendaje o una pomada a una herida. Puedes usar el autoinyector designado para el uso de civiles, probablemente leyendo las instrucciones impresas en el. Puedes notar cuando alguien se encuentra mal y necesita un doctor; puedes ver cuando alguien tiene un hueso roto, esta teniendo problemas en respirar, o esta inconsciente. Te puede costar diferenciar si esta inconsciente o muerto si lo miras desde lejos.<br>- Puedes usar los suministros de primero auxilios que se encuentran en los kits y bolsas, incluyendo autoinyectores.",
						"Basico"				= "Tomaste un curso de enfermeria o EMT. Puedes detener el sangrado, realizar una RCP, aplicar una escayola, tomar el pulso a alguien, aplicar tratamientos para trauma fisico y quemaduras y leer un escaner de salud portatil. Seguramente sepas que esa Dylovene ayuda con el envenenamiento y que la Dexalina ayuda a la gente con problemas respiratorios; puedes usar una jeringa o empezar una IV. Estas informado sobre los sintomas de emergencias comunes como un pulmon perforado, una apendicitis, un envenenamiento por alcohol o huesos rotos, y a pesar de que no puedas tratarlos, sabes que necesitan atencion medica. Puedes reconocer la mayoria de emergencias como tales y estabilizar conjunto a transportar de forma segura a un paciente.<br>- Puedes usar Desfibriladores, analizadores de salud, goteos intravenosos y jeringas.",
						"Entrenado"			= "Eres un EMT experimentado, un enfermero experimentado, o un residente medico. Sabes como tratar la mayoria de enfermedades y lesiones, aunque algunas enfermedades exoticas y lesiones inusuales pueden confundirte. Probablemente hayas comenzado a especializarte en algun campo de la medicina. En emergencias, puedes pensar lo suficientemente rapido como para mantener a tus pacientes con vida, y si no puedes tratar a un paciente, sabes como encontrar a alguien que si pueda. Puedes usar el escaner de cuerpo completo, y sabes algo sobre los pacientes con parasitos alienigenas o cortical borer.<br>- Puedes usar completamente los Sleeper.<br>- Puedes usar escayolas sin fallo alguno. Puedes hacer los pasos simples de cirugia si tienes la habilidad de Anatomia en Experimentado.",
						"Experimentado"		= "Eres un enfermero senior o paramedico, o un doctor en practicas. Sabes como usar todos tus aparatos medicos a tu alcance para tratar a un paciente. Tu profundo conocimiento sobre los medicamentos y el cuerpo te dejara diagnosticar y elaborar un tratamiento para la mayoria de padecimientos. Puedes hacer un escaner de cuerpo completo y encontrar informacion importante.<br>- Puedes usar los escaneres de cuerpo completo. Puedes hacer los pasos simples de cirugia si tienes la habilidad de Anatomia en Experimentado.",
						"Maestro"		= "Eres un EMT, un enfermero experto o un medico experimentado. Has visto todo lo que has podido ver sobre enfermedades y lesiones e incluso cuando se trata de algo que no has visto antes. Con tu amplia base de conocimientos puedes hacer un tratamiento. En un apuro, puedes hacer casi cualquier tarea relacionada a la medicina, pero en tu especialidad, sea cual sea, es donde realmente puedes brillar.")

/decl/hierarchy/skill/medical/anatomy
	ID = "anatomy"
	name = "Anatomia"
	desc = "Te da una vision detalla del cuerpo humano. Si quieres realizar una cirugia es requerido un nivel alto. Esta habilidad tambien te puede ayudar en examinar la biologia alienigena."
	levels = list( "Ignorante"			= "Sabes lo que son los huesos, los organos... y no con mucha precision podrias decir donde estan. Si ves a alguien herido gravemente intuyes que necesita una cirugia.",
						"Basico"				= "Has tenido una clase de anatomia y has pasado al menos un tiempo husmeando dentro de cuerpos. Sabes mas o menos donde esta todo. Puedes asistir en una cirugia, si tienes las habilidades medicas requeridas. Si tienes un conocimiento forense, puedes hacer una autopsia. Si realmente tuvieras que hacerlo, podrias hacer una cirugia basica como una apendicetomia, aunque no eres aun un cirujano cualificado y no deberias de hacerlo.--al menos que sea una emergencia. Si eres un xenobiologo, sabras como sacar nucleos de slime.",
						"Entrenado"			= "Tienes un poco de entrenamiento en anatomia. Diagnosticar huesos rotos, ligamentos rotos, heridas de metralla y otros traumas es sencillo para ti. Puedes entablillar con una gran posibilidad de exito, usar de forma competente los desfibriladores, y hacer PCR bien. La cirugia sigue estando fuera de tu entrenamiento.<br>- Puedes hacer cirugia (Se requiere la habilidad de entrenado en Medicina) pero es muy probable que falles en cada paso. La velocidad aumenta con el nivel. Puedes hacer los procedimientos ciberneticos si tienes la habilidad de dispositivos complejos en entrenado.",
						"Experimentado"		= "Eres un cirujano residente, o un medico experimentado. Puedes unir huesos, arreglar un pulmon lastimado, remendar un higado, o quitar un apendice sin ningun problema. Pero en las cirugias dificiles, como un paciente inestable o una manipulacion delicada de un organo vital como el corazon o el cerebro estan al limite de tu habilidad, y prefieres dejarlo a cirujanos mas expertos. Puedes reconocer cuando la anatomia de alguien es notablemente inusual. Estas entrenado en el trabajo de muchas especies,pero seguramente sepas mejor hacer una cirugia a alguien de tu misma especie.<br>- Puedes hacer todos los pasos de cirugia de forma segura si tienes la habilidad Experimentado en Medicina.",
						"Maestro"		= "Eres un cirujano experimentado. Puedes manejar cualquier situacion en donde el paciente haya sido empujado, arrastrado, rodado... Al quirofano y puedes mantenerlo vivo y estable incluso si no hay nadie que te pueda ayudar. Puedes tratar traumas severos o multiples fallos de organos, reparar un cerebro deteriorado, y hacer una cirugia de corazon. A estas alturas, estaras especializado en un campo de la medicina, uno en donde puedas contribuir con tus tecnicas quirurgicas. Puedes detectar diminutos desperfectos en la anatomia del paciente--even a changeling probably wouldn't slip by your notice, provided you could get one on the operating table.<br>- The penalty from operating on improper operating surfaces is reduced.")

/decl/hierarchy/skill/medical/chemistry
	ID = "chemistry"
	name = "Quimica"
	desc = "Tu experiencia con la mezcla de quimicos, y entendimiento de que efectos hacen. Esto no incluye el entendimiento de que efecto tienen los quimicos sobre el cuerpo humano, como tal la habilidad de medicina es requerida para los quimicos medicos."
	levels = list( "Ignorante"			= "Sabes que quimicos trabajan los quimicos; sabes que pueden hacer medicina, veneno o quimicos utiles. Probablemente sabras lo que es un elemento y tengas una vaga idea de que es una reaccion quimica de alguna clase de quimica de tus dias de secundaria.",
						"Basico"				= "Puedes hacer lo basico en quimicos o medicacion-- cosas como un space cleaner o una anti-toxina. Tienes un poco de entrenamiento sobre seguridad y no haras volar el laboratorio... Seguramente.<br>- Puedes de forma segura usar la amoladora industrial aun perdiendo algunos ingredientes. La cantidad de los ingredientes perdidos disminuye cuanto mas habilidad se tenga.",
						"Trained"			= "Puedes medir con precision los reactivos, moler los polvos, y hacer reacciones quimicas. Todavia puedes perder algun producto en ocasiones, pero hay poca posibilidad de que tu entorno o tu os pongais en peligro.<br>- Puedes usar el dispensador de quimicos sin ningun problema.",
						"Experienced"		= "Trabajas como quimico, o si no eres un medico con formacion en quimica. Si eres un quimico de investigacion, puedes hacer quimicos utiles, si eres farmaceutico, puedes hacer la mayoria de medicaciones. A este punto, estas trabajando mayormente segun el libro. Puedes usar tus quimicos como armas haciendo granadas, bombas de humo, y cosas similares.<br>- Puedes examinar contenedores en mano para quimicos escaneables.",
						"Master"		= "Estas especializado en quimica o farmaceutica; eres un investigador medico o un quimico profesional. Puedes crear mezclas personalizadas y incluso puedes hacer los medicamentos mas dificiles con facilidad. Entiendes como tus medicamentos reaccionan con los cuerpos de tus pacientes. Probablemente seas el creador de algun quimico innovador.<br>- Puedes examinar cualquier quimico en contenedores en mano.")
