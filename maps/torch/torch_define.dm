/datum/map/torch
	name = "Blue Jay"
	full_name = "NTEV Blue Jay"
	path = "torch"
	flags = MAP_HAS_BRANCH | MAP_HAS_RANK

	admin_levels = list(7,8)
	empty_levels = list(9)
	accessible_z_levels = list("1"=1,"2"=3,"3"=1,"4"=1,"5"=1,"6"=1,"9"=30)
	overmap_size = 35
	overmap_event_areas = 34
	usable_email_tlds = list("bluejay.nt.exp", "bluejay.fleet.sec", "freemail.net", "bluejay.exp")

	allowed_spawns = list("Cryogenic Storage", "Cyborg Storage")
	default_spawn = "Cryogenic Storage"

	station_name  = "NTEV Blue Jay"
	station_short = "Blue Jay"
	dock_name     = "TBD"
	boss_name     = "Central Command"
	boss_short    = "Central"
	company_name  = "NanoTrasen"
	company_short = "NT"

	map_admin_faxes = list("Corporate Central Office")

	//These should probably be moved into the evac controller...
	shuttle_docked_message = "Attention all hands: Jump preparation complete. The bluespace drive is now spooling up, secure all stations for departure. Time to jump: approximately %ETD%."
	shuttle_leaving_dock = "Attention all hands: Jump initiated, exiting bluespace in %ETA%."
	shuttle_called_message = "Attention all hands: Jump sequence initiated. Transit procedures are now in effect. Jump in %ETA%."
	shuttle_recall_message = "Attention all hands: Jump sequence aborted, return to normal operating conditions."

	evac_controller_type = /datum/evacuation_controller/starship

	default_law_type = /datum/ai_laws/solgov
	use_overmap = 1
	num_exoplanets = 1

	away_site_budget = 3
	id_hud_icons = 'maps/torch/icons/assignment_hud.dmi'
