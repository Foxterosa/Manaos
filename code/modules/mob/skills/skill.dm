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
	levels = list( "Ignorante"			= "Usualmente puedes llenar el papeleo basico con algunos errores. Tienes un vago conocimiento sobre la ley, aprendido por las noticias y experiencia personal.",
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
	name = "Extra-vehicular activity"
	desc = "This skill describes your skill and knowledge of space-suits and working in vacuum."
	levels = list( "Ignorante"			= "You have basico safety training common to people who work in space: You know how to put on and seal your internals, and you can probably struggle into a space suit if you really need to, though you'll be clumsy at it. You're still prone to mistakes that may leave you trying to breathe vacuum.<br>- You can remove hardsuits. Its speed increases with level.<br>- You will always get floored when you enter gravity area from space. This chance decreases with level.<br>- You are likely to slip. This chance decreases with level.",
						"Basico"				= "You have had thorough basico training in EVA operations, and are unlikely to make novice mistakes. However, you have little experience working in vacuum.",
						"Entrenado"			= "You can comfortably use a space suit and do so regularly in the course of your work. Checking your internals is second nature to you, and you don't panic in an emergency.<br>- You can fully operate jetpacks.",
						"Experimentado"		= "You can use all kinds of space suits, including specialized versions. Your years of experience in EVA keep you from being disoriented in space, and you have experience using a jetpack to move around. <br>- You cannot slip anymore.",
						"Maestro"		= "You are just as much at home in a vacuum as in atmosphere. You probably do your job almost entirely EVA.<br>- You cannot get floored anymore.<br>- You get bonus speed in zero-G.")

/decl/hierarchy/skill/general/EVA/mech
	ID = "exosuit"
	name = "Exosuit Operation"
	desc = "Te permite operar los exo-trajes bien."
	levels = list("Ignorante" = "Estas infamiliarizado con los controles del exo-traje, y si intentas usarlo es problable que cometas errores.",
		"Entrenado" = "Eres lo suficientemente capaz para mantener y operar un exo-traje y usarlo sin fallos.")
	prerequisites = list(SKILL_EVA = SKILL_ADEPT)
	default_max = SKILL_BASIC
	difficulty = SKILL_AVERAGE

/decl/hierarchy/skill/general/pilot
	ID = "pilot"
	name = "Piloting"
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
	levels = list( "Ignorante"			= "No estas acostumbrado al trabajo manual, por lo cual te cansas facilmente y es probable que no estes de buena forma.  You are not used to manual labor, tire easily, and are likely not in great shape. Extended heavy labor may be dangerous for you.<br>- You can pull objects but start to generate Lactate after tiring out. Your strength increases with level.<br>- You can throw objects. Their speed, thrown distance, and force increases with level.<br>- You can sprint, the stamina consumption rate is lowered with each level.<br>- You can leap by clicking on a distant target with grab intent, leap range is increased and chances of falling over are decreased with each level.",
						"Basico"				= "You have some familiarity with manual labor, and are in reasonable physical shape. Tasks requiring great dexterity or strength may still elude you.<br>- You can throw \"huge\" items or normal-sized mobs without getting weakened.",
						"Trained"			= "You have sufficient strength and dexterity for even very strenuous tasks, and can work for a long time without tiring.",
						"Experienced"		= "You have experience with heavy work in trying physical conditions, and are in excellent shape. You visit the gym frequently.",
						"Master"		= "In addition to your excellent strength and endurance, you have a lot of experience with the specific physical demands of your job. You may have competitive experience with some form of athletics.")

/decl/hierarchy/skill/general/computer
	ID = "computer"
	name = "Information Technology"
	desc = "Describes your understanding of computers, software and communication. Not a requirement for using computers, but definitely helps. Used in telecommunications and programming of computers and AIs."
	levels = list( "Ignorante"			= "You know how to use the computers and communication devices that you grew up with. You can use a computer console, a handheld or wall-mounted radio, and your headset, as well as your PDA. You know what an AI is, but you may see them as either \"people made of silicon\" or \"only machines\"; you know they have to obey their laws, but you don't know much about how or why they work.",
						"Basico"				= "You know the basicos of programming, but you're not very good at it and couldn't do it professionally. You have a pretty good idea of what makes AIs tick. You understand how information is stored in a computer, and you can fix simple computer problems. You're computer-literate, but you still make mistakes. If you tried to subvert the AI, you might make mistakes in wording your new laws.<br>- The antagonist access decryption program has a chance to avoid tripping alarms and working more effectively. This increases with level.",
						"Trained"			= "At this level, you're probably working with computers on a daily basis. You understand and can repair the telecommunications network. Your understanding of AI programming and psychology lets you fix problems with the AIs or cyborgs--or create problems, if you so desire. You can program computers and AIs and change their laws effectively.<br>- You can fully operate the Network Monitor, E-mail Administration, and AI Management Programs.",
						"Experienced"		= "You have years of experience with computer networks, AI systems, telecommunications, and sysadmin tasks. You know the systems used on a daily basis intimately, and can diagnose complex problems.<br>- The antagonist dos program gives extra fake attacking nodes to the system log.<br>- You can use the command line on modular computers (type \"man\" for a list).",
						"Master"		= "People are probably starting to wonder whether you might be a computer yourself. Computer code is your first language; you relate to AIs as easily as (probably more easily than) organics. You could build a telecommunications network from the ground up.")

// Category: Service

/decl/hierarchy/skill/service/botany
	ID = "botany"
	name = "Botany"
	desc = "Describes how good a character is at growing and maintaining plants."
	levels = list( "Ignorante"			= "You know next to nothing about plants. While you can attempt to plant, weed, or harvest, you are just as likely to kill the plant instead.",
						"Basico"				= "You've done some gardening. You can water, weed, fertilize, plant, and harvest, and you can recognize and deal with pests. You may be a hobby gardener.<br>- You can safely plant and weed normal plants.<br>- You can tell weeds and pests apart from each other.",
						"Trained"			= "You are proficient at botany, and can grow plants for food or oxygen production. Your plants will generally survive and prosper. You know the basicos of manipulating plant genes.<br>- You can safely plant and weed exotic plants.<br>- You can operate xenoflora machines. The sample's degradation decreases with skill level.",
						"Experienced"		= "You're a botanist or farmer, capable of running a facility's hydroponics farms or doing botanical research. You are adept at creating custom hybrids and modified strains.",
						"Master"		= "You're a specialized botanist. You can care for even the most exotic, fragile, or dangerous plants. You can use gene manipulation machinery with precision, and are often able to avoid the degradation of samples.")

/decl/hierarchy/skill/service/cooking
	ID = "cooking"
	name = "Cooking"
	desc = "Describes a character's skill at preparing meals and other consumable goods. This includes mixing alcoholic beverages."
	levels = list( "Ignorante"			= "You barely know anything about cooking, and stick to vending machines when you can. The microwave is a device of black magic to you, and you avoid it when possible.",
						"Basico"				= "You can make simple meals and do the cooking for your family. Things like spaghetti, grilled cheese, or simple mixed drinks are your usual fare.<br>- You can safely use the blender.",
						"Trained"			= "You can make most meals while following instructions, and they generally turn out well. You have some experience with hosting, catering, and/or bartending.<br>- You can fully operate the drink dispensers.",
						"Experienced"		= "You can cook professionally, keeping an entire crew fed easily. Your food is tasty and you don't have a problem with tricky or complicated dishes. You can be depended on to make just about any commonly-served drink.",
						"Master"		= "Not only are you good at cooking and mixing drinks, but you can manage a kitchen staff and cater for special events. You can safely prepare exotic foods and drinks that would be poisonous if prepared incorrectly.")

// Category: Security

/decl/hierarchy/skill/security/combat
	ID = "combat"
	name = "Close Combat"
	desc = "This skill describes your training in hand-to-hand combat or melee weapon usage. While expertise in this area is rare in the era of firearms, experts still exist among athletes."
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
	name = "Science"
	desc = "Your experience and knowledge with scientific methods and processes. This also applies to sensors consoles and other scanning modules."
	levels = list( "Ignorante"			= "You know what science is and probably have a vague idea of the scientific method from your high school science classes.<br>- Increasing science skill allows more accurate readings of the sensor console.",
						"Basico"				= "You keep up with scientific discoveries. You know a little about most fields of research. You've learned basico laboratory skills. You may read about science as a hobby; or you may be working in a field related to science and have learned about science that way. You could design a simple experiment.",
						"Trained"			= "You are a scientist, perhaps a graduate student or post-graduate researcher. You can design an experiment, analyze your results, publish your data, and integrate what you've learned with the research of other scientists. Your laboratory skills are reliable, and you know how to find information you need when you research a new scientific topic. You can dissect exotic xenofauna without many issues.",
						"Experienced"		= "You are a junior researcher. You can formulate your own questions, use the tools at hand to test your hypotheses, and investigate entirely new phenomena. You likely have a track record of success in publishing your conclusions and attracting funding.",
						"Master"		= "You are a professional researcher, and you have made multiple new discoveries in your field. Your experiments are well-designed. You are known as an authority in your specialty and your papers often appear in prestigious journals. You may be coordinating the research efforts of a team of scientists, and likely know how to make your findings appealing to investors.")

// Category: Medical

/decl/hierarchy/skill/medical/medical
	ID = "medical"
	name = "Medicina"
	desc = "Cubre la comprension del cuerpo humano y la medicina. En un nivel bajo, esta habilidad te da un entendimiento basico de las aplicaciones comunes de medicina y una comprension aproximada de los dispositivos medicos como el analizador de salud. En nivel alto, esta habilidad garantiza un conocimiento exacto de toda la medicina posible en la instalacion, asi como la capacidad del uso de dispositivos medicos complejos como el escaner corporal o el espectrometro de masas."
	levels = list( "Ignorante"			= "Sabes sobre primeros auxilios, como aplicar un vendaje o una pomada a una herida. Puedes usar el autoinyector designado para el uso de civiles, probablemente leyendo las instrucciones impresas en el. Puedes notar cuando alguien se encuentra mal y necesita un doctor; puedes ver cuando alguien tiene un hueso roto, esta teniendo problemas en respirar, o esta inconsciente. Te puede costar diferenciar si esta inconsciente o muerto si lo miras desde lejos.<br>- Puedes usar los suministros de primero auxilios que se encuentran en los kits y bolsas, incluyendo autoinyectores.",
						"Basico"				= "Tomaste un curso de enfermeria o EMT. Puedes detener el sangrado, realizar una RCP, aplicar una escayola, tomar el pulso a alguien, aplicar tratamientos para trauma fisico y quemaduras y leer un escaner de salud portatil. Seguramente sepas que esa Dylovene ayuda con el envenenamiento y que la Dexalina ayuda a la gente con problemas respiratorios; puedes usar una jeringa o empezar una IV. Estas informado sobre los sintomas de emergencias comunes como un pulmon perforado, una apendicitis, un envenenamiento por alcohol o huesos rotos, y a pesar de que no puedas tratarlos, sabes que necesitan atencion medica. Puedes reconocer la mayoria de emergencias como tales y estabilizar conjunto a transportar de forma segura a un paciente.<br>- Puedes usar Desfibriladores, analizadores de salud, goteos intravenosos y jeringas.",
						"Entrenado"			= "Eres un EMT experimentado, un enfermero experimentado, o un residente medico. Sabes como tratar la mayoria de enfermedades y lesiones, aunque algunas enfermedades exoticas y lesiones inusuales pueden confundirte. Probablemente hayas comenzado a especializarte en algun campo de la medicina. En emergencias, puedes pensar lo suficientemente rapido como para mantener a tus pacientes con vida, y si no puedes tratar a un paciente, sabes como encontrar a alguien que si pueda. Puedes usar el escaner de cuerpo completo, y sabes algo sobre los pacientes con parasitos alienigenas o cortical borer.<br>- Puedes usar completamente los Sleeper.<br>- Puedes usar escayolas sin fallo alguno. Puedes hacer los pasos simples de cirugia si tienes la habilidad de Anatomia en Experimentado.",
						"Experimentado"		= "Eres un enfermero senior o paramedico, o un doctor en practicas. Sabes como usar todos tus aparatos medicos a tu alcance para tratar a un paciente. Tu profundo conocimiento sobre los medicamentos y el cuerpo te dejara diagnosticar y elaborar un tratamiento para la mayoria de padecimientos. Puedes hacer un escaner de cuerpo completo y encontrar informacion importante.<br>- Puedes usar los escaneres de cuerpo completo. Puedes hacer los pasos simples de cirugia si tienes la habilidad de Anatomia en Experimentado.",
						"Maestro"		= "Eres un EMT, un enfermero experto o un medico experimentado. Has visto todo lo que hay para ver podido ver sobre enfermedades y lesiones e incluso cuando se trata de algo que no has visto antes. Con tu amplia base de conocimientos puedes hacer un tratamiento. En un apuro, puedes hacer casi cualquier tarea relacionada a la medicina, pero en tu especialidad, sea cual sea, es donde realmente puedes brillar.")

/decl/hierarchy/skill/medical/anatomy
	ID = "anatomy"
	name = "Anatomy"
	desc = "Gives you a detailed insight of the human body. A high skill in this is required to perform surgery. This skill may also help in examining alien biology."
	levels = list( "Ignorante"			= "You know what organsTu sabes , bones, and such are, and you know roughly where they are. You know that someone who's badly hurt or sick may need surgery.",
						"Basico"				= "You've taken an anatomy class and you've spent at least some time poking around inside actual people. You know where everything is, more or less. You could assist in surgery, if you have the required medical skills. If you have the forensics knowledge, you could perform an autopsy. If you really had to, you could probably perform basico surgery such as an appendectomy, but you're not yet a qualified surgeon and you really shouldn't--not unless it's an emergency. If you're a xenobiologist, you know how to take out slime cores.",
						"Trained"			= "You have some training in anatomy. Diagnosing broken bones, damaged ligaments, shrapnel wounds, and other trauma is straightforward for you. You can splint limbs with a good chance of success, operate a defibrillator competently, and perform CPR well. Surgery is still outside your training.<br>- You can do surgery (requires Trained Medicine skill too) but you are very likely to fail at every step. Its speed increases with level. You can perform the cybernethics procedures if you have Trained Complex Devices skill",
						"Experienced"		= "You're a surgical resident, or an experienced medical doctor. You can put together broken bones, fix a damaged lung, patch up a liver, or remove an appendix without problems. But tricky surgeries, with an unstable patient or delicate manipulation of vital organs like the heart and brain, are at the edge of your ability, and you prefer to leave them to specialized surgeons. You can recognize when someone's anatomy is noticeably unusual. You're trained in working with several species, but you're probably better at surgery on your own species.<br>- You can do all surgery steps safely, if you have Experienced Medicine skill too.",
						"Master"		= "You are an experienced surgeon. You can handle anything that gets rolled, pushed, or dragged into the OR, and you can keep a patient alive and stable even if there's no one to assist you. You can handle severe trauma cases or multiple organ failure, repair brain damage, and perform heart surgery. By now, you've probably specialized in one field, where you may have made new contributions to surgical technique. You can detect even small variations in the anatomy of a patient--even a changeling probably wouldn't slip by your notice, provided you could get one on the operating table.<br>- The penalty from operating on improper operating surfaces is reduced.")

/decl/hierarchy/skill/medical/chemistry
	ID = "chemistry"
	name = "Quimica"
	desc = "Tu experiencia con la mezcla de quimicos, y entendimiento de que efectos hacen. Esto no incluye el entendimiento de que efecto tienen los quimicos sobre el cuerpo humano, como tal la habilidad de medicina es requerida para los quimicos medicos."
	levels = list( "Ignorante"			= "Sabes que quimicos trabajan los quimicos; sabes que pueden hacer medicina, veneno o quimicos utiles. Probablemente sabras lo que es un elemento y tengas una vaga idea de que es una reaccion quimica de alguna clase de quimica de tus dias de secundaria.",
						"Basico"				= "Puedes hacer lo basico en quimicos o medicacion-- cosas como un space cleaner o una anti-toxina. Tienes un poco de entrenamiento sobre seguridad y no haras volar el laboratorio... Seguramente.<br>- Puedes de forma segura usar la amoladora industrial aun perdiendo algunos ingredientes. La cantidad de los ingredientes perdidos disminuye cuanto mas habilidad se tenga.",
						"Trained"			= "Puedes medir con precision los reactivos, moler los polvos, y hacer reacciones quimicas. Todavia puedes perder algun producto en ocasiones, pero hay poca posibilidad de que tu entorno o tu os pongais en peligro.<br>- Puedes usar el dispensador de quimicos sin ningun problema.",
						"Experienced"		= "Trabajas como quimico, o si no eres un medico con formacion en quimica. Si eres un quimico de investigacion, puedes hacer quimicos utiles, si eres farmaceutico, puedes hacer la mayoria de medicaciones. A este punto, estas trabajando mayormente segun el libro. Puedes usar tus quimicos como armas haciendo granadas, bombas de humo, y cosas similares.<br>- Puedes examinar contenedores en mano para quimicos escaneables.",
						"Master"		= "Estas especializado en quimica o farmaceutica; eres un investigador medico o un quimico profesional. Puedes crear mezclas personalizadas y incluso puedes hacer los medicamentos mas dificiles con facilidad. Entiendes como tus medicamentos reaccionan con los cuerpos de tus pacientes. Probablemente seas el creador de algun quimico innovador.<br>- Puedes examinar cualquier quimico en contenedores en mano.")
