
/datum/computer_file/report/recipient/sol
	logo = "\[solcrest\]"
	form_name = "SCG-REP-00"

/datum/computer_file/report/recipient/sol/audit
	form_name = "SCG-REP-12"
	title = "ГЭК Наварро Ревизия Департамента"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/sol/audit/generate_fields()
	add_field(/datum/report_field/date, "Дата")
	add_field(/datum/report_field/time, "Время")
	add_field(/datum/report_field/simple_text, "Название департамента")
	add_field(/datum/report_field/pencode_text, "Положительные заметки")
	add_field(/datum/report_field/pencode_text, "Отрицательные заметки")
	add_field(/datum/report_field/pencode_text, "Остальные заметки")
	add_field(/datum/report_field/signature, "Подпись")
	add_field(/datum/report_field/options/yes_no, "Одобрено")
	set_access(access_edit = access_representative)

/datum/computer_file/report/recipient/sol/crewman_incident
	form_name = "SCG-REP-4"
	title = "Отчёт об инцеденте с экипажем"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/sol/crewman_incident/generate_fields()
	add_field(/datum/report_field/date, "Дата")
	add_field(/datum/report_field/time, "Время")
	add_field(/datum/report_field/people/from_manifest, "Экипаж вовлечённый в инцидент")
	add_field(/datum/report_field/simple_text, "Суть инцидента")
	add_field(/datum/report_field/pencode_text, "Описание инцидента")
	add_field(/datum/report_field/signature, "Подпись")
	add_field(/datum/report_field/options/yes_no, "Одобрено")
	set_access(access_edit = list(access_heads, access_solgov_crew))

/datum/computer_file/report/recipient/sol/work_visa
	form_name = "SCG-REP-03b"
	title = "Форма выдачи рабочей визы"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/sol/work_visa/generate_fields()
	var/datum/report_field/temp_field
	add_field(/datum/report_field/date, "Дата")
	add_field(/datum/report_field/time, "Время")
	add_field(/datum/report_field/people/from_manifest, "Реципиент Рабочей Визы")
	add_field(/datum/report_field/simple_text, "Раса реципиента")
	temp_field = add_field(/datum/report_field/signature, "Подпись выдавшего визу")
	add_field(/datum/report_field/signature, "Подпись реципиента")
	add_field(/datum/report_field/options/yes_no, "Одобрено")
	temp_field.set_access(access_edit = access_representative)
