
var/list/dreams = list(
	"una ID","una botella","una cara familiar","un miembro de la tripulacion","una caja de herramientas","un guardia de seguridad","el capitan",
	"voces de todo el mundo","voz profunda","un doctor","el motor","un traidor","un aliado","oscuridad",
	"una voz","un científico","un mono","una catastrofe","un ser querido","un harma","calor","frio","el sol",
	"a hat","una estacion en ruinas","un planeta","phoron","aire","una bahia medica","el puente","luces parpadeantes",
	"una luz azul","un laboratorio abandonado","NanoTrasen", "piratas", "mercenarios","sangre","cura","poder","respeto",
	"riquezas","espacio","un choque","felicidad","pride","a fall","water","flames","ice","melons","volar","los huevos","dinero",
	"el oficial ingeniero en jefe","el oficial científico en jefe","el oficial médico en jefe",
	"una estacion ingeniera","el conserje","el Técnico de atmosfera",
	"a cargo technician","el botanico","un minero","el psicologo","el quimico",
	"el virologo","el robotista","a chef","el barman","el capellan","un bibliotecario","un raton",
	"una playa","el holodeck","una sala para fumar","una voz","el frio","un raton","una mesa de operaciones","la lluvia","un skrell",
	"el unathi","el nucleo de la IA","un vaso con un liquido extraño","la supermateria", "una criatura amorfa con carne fresca",
	"un SAM", "un IPC", "un Dionaea", "un ser hecho de luz", "el oficial comandante", "el oficial ejecutivo", "el Oficial Mestro de Seguridad en Jefe", "un puesto de trabajo",
	"el representative", "el asesor superior", "el oficial del puente", "el ingeniero senior", "el médico", "el médico militar", "el psiquiatra",
	"el contratista médico", "el contratista de seguridad", "un polizon", "un viejo amigo", "el prospector", "el piloto", "el pasajero", "el oficial maestro de seguridad en jefe",
	"el maestro de armas", "el Técnico forense", "el oficial de bridge", "la torre", "el hombre sin cara", "un campo de flores", "una antigua casa", "el mercurio",
	"una mesa de cirugia", "una aguja", "una cuchilla", "un oceano", "justo detras de ti", "en frente tuya", "alguien cerca tuya", "un lugar olvidado", "el exodo",
	)

mob/living/carbon/proc/dream()
	dreaming = 1

	spawn(0)
		for(var/i = rand(1,4),i > 0, i--)
			to_chat(src, "<span class='notice'><i>... [pick(dreams)] ...</i></span>")
			sleep(rand(40,70))
			if(paralysis <= 0)
				dreaming = 0
				return 0
		dreaming = 0
		return 1

mob/living/carbon/proc/handle_dreams()
	if(client && !dreaming && prob(5))
		dream()

mob/living/carbon/var/dreaming = 0
