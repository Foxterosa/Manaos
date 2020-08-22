
/datum/computer_file/report/recipient/medical
	logo = "\[solcrest\]"
	form_name = "SCG-MED-00"

/datum/computer_file/report/recipient/medical/checkup
	form_name = "SCG-MED-013b"
	title = "Chequeo de Salud"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/medical/checkup/generate_fields()
	add_field(/datum/report_field/text_label/instruction, "You would need following equipment for this: stethoscope, health analyzer, penlight.")
	add_field(/datum/report_field/people/from_manifest, "Paciente")
	add_field(/datum/report_field/date, "Fecha")
	add_field(/datum/report_field/time, "Hora")
	add_field(/datum/report_field/simple_text, "Tomar pulso", "NO COMPROBADO")
	add_field(/datum/report_field/simple_text, "Comprobar la presion sanguinea", "NO COMPROBADO")
	add_field(/datum/report_field/simple_text, "Escuchar latidos del corazon", "NO COMPROBADO")
	add_field(/datum/report_field/simple_text, "Escuchar las respiraciones de los pulmones", "NO COMPROBADO")
	add_field(/datum/report_field/simple_text, "Preguntar si hacen ejercicio", "NO COMPROBADO")
	add_field(/datum/report_field/simple_text, "Preguntar si fuman, y cuanto por dia", "NO COMPROBADO")
	add_field(/datum/report_field/simple_text, "Comprueba la reaccion ocular por la luz", "NO COMPROBADO")
	add_field(/datum/report_field/simple_text, "Preguntar si tuvo una exposicion reciente a la radiacion", "NO COMPROBADO")
	add_field(/datum/report_field/simple_text, "Preguntar sobre algun resfriado reciente", "NO COMPROBADO")
	add_field(/datum/report_field/pencode_text, "Otras notas")
	add_field(/datum/report_field/signature, "Firma del Doctor")
	set_access(access_edit = access_medical_equip)