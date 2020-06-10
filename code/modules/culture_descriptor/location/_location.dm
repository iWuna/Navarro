/decl/cultural_info/location
	desc_type = "Home System"
	category = TAG_HOMEWORLD
	var/distance = 0
	var/ruling_body = FACTION_SOL_CENTRAL
	var/capital

/decl/cultural_info/location/get_text_details()
	. = list()
	if(!isnull(capital))
		. += "<b>Столица:</b> [capital]."
	if(!isnull(ruling_body))
		. += "<b>Территория:</b> [ruling_body]."
	if(!isnull(distance))
		. += "<b>дистанция от Солнечной системы:</b> [distance]."
	. += ..()
