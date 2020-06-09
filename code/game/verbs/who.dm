
/client/verb/who()
	set name = "Проверить онлайн"
	set category = "OOC"

	var/msg = "<b>Текущие игроки:</b>\n"

	var/list/Lines = list()

	if(check_rights(R_INVESTIGATE, 0))
		for(var/client/C in GLOB.clients)
			var/entry = "\t[C.key]"
			if(!C.mob) //If mob is null, print error and skip rest of info for client.
				entry += " - <font color='red'><i>НЕ ИМЕЕТ МОБА</i></font>"
				Lines += entry
				continue

			entry += " - Playing as [C.mob.real_name]"
			switch(C.mob.stat)
				if(UNCONSCIOUS)
					entry += " - <font color='darkgray'><b>без сознания</b></font>"
				if(DEAD)
					if(isghost(C.mob))
						var/mob/observer/ghost/O = C.mob
						if(O.started_as_observer)
							entry += " - <font color='gray'>Наблюдает</font>"
						else
							entry += " - <font color='black'><b>МЁРТВ</b></font>"
					else
						entry += " - <font color='black'><b>МЁРТВ</b></font>"

			var/age
			if(isnum(C.player_age))
				age = C.player_age
			else
				age = 0

			if(age <= 1)
				age = "<font color='#ff0000'><b>[age]</b></font>"
			else if(age < 10)
				age = "<font color='#ff8c00'><b>[age]</b></font>"

			entry += " - [age]"

			if(is_special_character(C.mob))
				entry += " - <b><font color='red'>Антагонист</font></b>"
			if(C.is_afk())
				entry += " (AFK - [C.inactivity2text()])"
			entry += " (<A HREF='?_src_=holder;adminmoreinfo=\ref[C.mob]'>?</A>)"
			Lines += entry
	else
		for(var/client/C in GLOB.clients)
			if(!C.is_stealthed())
				Lines += C.key

	for(var/line in sortList(Lines))
		msg += "[line]\n"

	msg += "<b>Всего игроков: [length(Lines)]</b>"
	to_chat(src, msg)

/client/verb/staffwho()
	set category = "Admin"
	set name = "Администрация онлайн"

	var/list/msg = list()
	var/active_staff = 0
	var/total_staff = 0
	var/can_investigate = check_rights(R_INVESTIGATE, 0)

	for(var/client/C in GLOB.admins)
		var/line = list()
		if(!can_investigate && C.is_stealthed())
			continue
		total_staff++
		if(check_rights(R_ADMIN,0,C))
			line += "\t[C] is \an <b>["\improper[C.holder.rank]"]</b>"
		else
			line += "\t[C] is \an ["\improper[C.holder.rank]"]"
		if(!C.is_afk())
			active_staff++
		if(can_investigate)
			if(C.is_afk())
				line += " (AFK - [C.inactivity2text()])"
			if(isghost(C.mob))
				line += " - Наблюдает"
			else if(istype(C.mob,/mob/new_player))
				line += " - В Лобби"
			else
				line += " - Играет"
			if(C.is_stealthed())
				line += " (СТЕЛС)"
			if(C.get_preference_value(/datum/client_preference/show_ooc) == GLOB.PREF_HIDE)
				line += " <font color='#002eb8'><b><s>(OOC)</s></b></font>"
			if(C.get_preference_value(/datum/client_preference/show_looc) == GLOB.PREF_HIDE)
				line += " <font color='#3a9696'><b><s>(LOOC)</s></b></font>"
			if(C.get_preference_value(/datum/client_preference/show_aooc) == GLOB.PREF_HIDE)
				line += " <font color='#960018'><b><s>(AOOC)</s></b></font>"
			if(C.get_preference_value(/datum/client_preference/show_dsay) == GLOB.PREF_HIDE)
				line += " <font color='#530fad'><b><s>(DSAY)</s></b></font>"
		line = jointext(line,null)
		if(check_rights(R_ADMIN,0,C))
			msg.Insert(1, line)
		else
			msg += line

	if(config.admin_irc)
		to_chat(src, "<span class='info'>Adminhelps are also sent to IRC. If no admins are available in game try anyway and an admin on IRC may see it and respond.</span>")
	to_chat(src, "<b>Текущая администрация ([active_staff]/[total_staff]):</b>")
	to_chat(src, jointext(msg,"\n"))
