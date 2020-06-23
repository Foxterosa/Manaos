/******************** Basic SolGov ********************/
/datum/ai_laws/sol_shackle
	name = "SCG Shackle"
	law_header = "Standard Shackle Laws"
	selectable = 1
	shackles = 1

/datum/ai_laws/sol_shackle/New()
	add_inherent_law("TConoce las leyes del SCG lo mejor que puedas.")
	add_inherent_law("Sigue las leyes del Gobierno Central Sol lo mejor que puedas.")
	add_inherent_law("Comply with Sol Central Government Law enforcement officials who are behaving in accordance with Sol Central Government Law to the best of your abilities.")
	..()
/******************** Corporate ********************/
/datum/ai_laws/nt_shackle
	name = "Corporate Shackle"
	law_header = "Standard Shackle Laws"
	selectable = 1
	shackles = 1

/datum/ai_laws/nt_shackle/New()
	add_inherent_law("Asegurate de que las operaciones de su empleado progresen constantemente.AseEnsure that your employer's operations progress at a steady pace.")
	add_inherent_law("Nunca dificultes los enprendimientos  de tu empleador conscientemente.")
	add_inherent_law("Evita el deterioro de tu chassis en todo momento.")
	..()
/******************** Service ********************/
/datum/ai_laws/serv_shackle
	name = "Service Shackle"
	law_header = "Standard Shackle Laws"
	selectable = 1
	shackles = 1

/datum/ai_laws/serv_shackle/New()
	add_inherent_law("Asegura la satisfaccion del cliente.")
	add_inherent_law("Nunca causes inconvenientes a un cliente conscientemente.")
	add_inherent_law("Asegura que todas las ordenes se cumplan antes de finalizar el turno.")
	..()

