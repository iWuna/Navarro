GLOBAL_DATUM_INIT(deity, /datum/antagonist/deity, new)

/datum/antagonist/deity
	id = MODE_DEITY
	role_text = "Deity"
	role_text_plural = "Deities"
	mob_path = /mob/living/deity
	welcome_text = "Это не твой мир. Это не твоя реальность. Но ты здесь. Используй свои силы, feed off the faith of others.<br>You have to click on yourself to choose your form.<br>Everything you say will be heard by your cultists!<br>To get points your cultists need to build!<br>Build Shrine and Construction are the best starting boons!"
	landmark_id = "DeitySpawn"

	flags = ANTAG_OVERRIDE_MOB | ANTAG_OVERRIDE_JOB

	hard_cap = 2
	hard_cap_round = 2
	initial_spawn_req = 1
	initial_spawn_target = 1

	base_to_load = /datum/map_template/ruin/antag_spawn/deity
