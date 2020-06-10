/datum/map
	var/emergency_shuttle_called_message
	var/emergency_shuttle_called_sound

	var/command_report_sound

	var/electrical_storm_moderate_sound
	var/electrical_storm_major_sound

	var/grid_check_message = "Аномальная активность энергосети на борту %STATION_NAME%. В качестве предосторожности, электричество на борту %STATION_NAME% будет отключено на неопределенное время."
	var/grid_check_sound

	var/grid_restored_message = "Электричество на борту %STATION_NAME% восстановлено. Приносим извенения за неудобства."
	var/grid_restored_sound

	var/meteor_detected_message = "Внимание, обнаружено метеоритное поле на пути %STATION_NAME%."
	var/meteor_detected_sound

	var/radiation_detected_message = "Высокий уровень радиации на пути %STATION_NAME% был обнаружен. Рекомендуем обратиться в медицинский отдел."
	var/radiation_detected_sound

	var/space_time_anomaly_sound

	var/unidentified_lifesigns_message = "Неустановленные признаки жизни обнаружены на борту %STATION_NAME%. Рекомендуем заблокировать все выходы, включая вентиляцию."
	var/unidentified_lifesigns_sound

	var/unknown_biological_entities_message = "Неизвестные живые объекты обнаружены возле %STATION_NAME%, пожалуйста ожидайте."

	var/lifesign_spawn_sound = 'sound/AI/aliens.ogg'

/datum/map/proc/emergency_shuttle_called_announcement()
	evacuation_controller.evac_called.Announce(replacetext(emergency_shuttle_called_message, "%ETA%", "[round(evacuation_controller.get_eta()/60)] мин."), new_sound = emergency_shuttle_called_sound)

/datum/map/proc/grid_check_announcement()
	command_announcement.Announce(replacetext(grid_check_message, "%STATION_NAME%", station_name()), "Автоматическая Проверка энергосистем", new_sound = grid_check_sound)

/datum/map/proc/grid_restored_announcement()
	command_announcement.Announce(replacetext(grid_restored_message, "%STATION_NAME%", station_name()), "Все системы в норме", new_sound = grid_restored_sound)

/datum/map/proc/level_x_biohazard_announcement(var/bio_level)
	if(!isnum(bio_level))
		CRASH("Expected a number, was: [log_info_line(bio_level)]")
	if(bio_level < 1 || bio_level > 9)
		CRASH("Expected a number between 1 and 9, was: [log_info_line(bio_level)]")

	command_announcement.Announce("Confirmed outbreak of level [bio_level] biohazard aboard the [station_name()]. All personnel must contain the outbreak.", "Biohazard Alert", new_sound = level_x_biohazard_sound(bio_level))

/datum/map/proc/level_x_biohazard_sound(var/bio_level)
	return

/datum/map/proc/radiation_detected_announcement()
	command_announcement.Announce(replacetext(radiation_detected_message, "%STATION_NAME%", station_name()), "Аномалия", new_sound = radiation_detected_sound)

/datum/map/proc/space_time_anomaly_detected_annoncement()
	command_announcement.Announce("Временные аномалии обнаружены на борту [station_name()].", "Аномалия", new_sound = space_time_anomaly_sound)

/datum/map/proc/unidentified_lifesigns_announcement()
	command_announcement.Announce(replacetext(unidentified_lifesigns_message, "%STATION_NAME%", station_name()), "Lifesign Alert", new_sound = unidentified_lifesigns_sound)

/datum/map/proc/unknown_biological_entities_announcement()
	command_announcement.Announce(replacetext(unknown_biological_entities_message, "%STATION_NAME%", station_name()), "Lifesign Alert", new_sound = command_report_sound)
