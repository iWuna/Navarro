/datum/map/torch/setup_map()
	..()
	system_name = generate_system_name()
	minor_announcement = new(new_sound = sound('sound/AI/torch/commandreport.ogg', volume = 45))

/datum/map/torch/get_map_info()
	. = list()
	. += "Поздравляем с вашим трудоустройством на борт ГЭК Наварро."
	. += "Это судно класса Эпсилон, оборудованное по последнему слову медицины, науки, и охранного снаряжения для всех ваших нужд!"
	. += ""
	. += "Это вновь введенное в эксплуатацию научное судно, реконструированное, для исследования далекого космоса."
	. += "Способен быстро реагировать на большинство мелких угроз повстанцев, а также исследовать любые «забытые» планеты в этих секторах."
	return jointext(., "<br>")

/datum/map/torch/send_welcome()
	var/welcome_text = "<center><img src = bluentlogo.png /><br /><font size = 3><b>ГЭК Наварро</b> Отчет сенсоров:</font><br>"
	welcome_text += "Отчёт составлен [stationdate2text()] в [stationtime2text()]</center><br /><br />"
	welcome_text += "<hr>Текущая система:<br /><b>[system_name()]</b><br /><br>"

	var/list/space_things = list()
	var/obj/effect/overmap/visitable/torch = map_sectors["1"]

	welcome_text += "Текущие координаты:<br /><b>[torch.x]:[torch.y]</b><br /><br>"
	welcome_text += "Следующая система отмеченная для прыжка:<br /><b>[generate_system_name()]</b><br /><br>"
	welcome_text += "До Солнечной Системы:<br /><b>[rand(15,45)] дней</b><br /><br>"
	welcome_text += "Времени с последней стыковки в порту:<br /><b>[rand(60,180)] дней</b><br /><hr>"
	welcome_text += "Scan results show the following points of interest:<br />"

	for(var/zlevel in map_sectors)
		var/obj/effect/overmap/visitable/O = map_sectors[zlevel]
		if(O.name == torch.name)
			continue
		if(istype(O, /obj/effect/overmap/visitable/ship/landable)) //Don't show shuttles
			continue
		if (O.hide_from_reports)
			continue
		space_things |= O

	var/list/distress_calls
	for(var/obj/effect/overmap/visitable/O in space_things)
		var/location_desc = " at present co-ordinates."
		if(O.loc != torch.loc)
			var/bearing = round(90 - Atan2(O.x - torch.x, O.y - torch.y),5) //fucking triangles how do they work
			if(bearing < 0)
				bearing += 360
			location_desc = ", bearing [bearing]."
		if(O.has_distress_beacon)
			LAZYADD(distress_calls, "[O.has_distress_beacon][location_desc]")
		welcome_text += "<li>\A <b>[O.name]</b>[location_desc]</li>"

	if(LAZYLEN(distress_calls))
		welcome_text += "<br><b>Distress calls logged:</b><br>[jointext(distress_calls, "<br>")]<br>"
	else
		welcome_text += "<br>No distress calls logged.<br />"
	welcome_text += "<hr>"

	post_comm_message("Отчет сенсоров ГЭК Наварро", welcome_text)
	minor_announcement.Announce(message = "New [GLOB.using_map.company_name] Update available at all communication consoles.")
