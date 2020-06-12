// marine patch
/obj/item/clothing/accessory/solgov/smc_patch
	name = "нашивка корпуса Космической Пехоты"
	desc = "A robust shoulder patch, carrying the symbol of the Solar Marine Corps, or SMC for short."
	icon = 'maps/torch/icons/obj/obj_accessories_boh.dmi'
	accessory_icons = list(slot_w_uniform_str = 'maps/torch/icons/mob/onmob_accessories_boh.dmi', slot_wear_suit_str = 'maps/torch/icons/mob/onmob_accessories_boh.dmi')
	icon_state = "smcpatch"
	on_rolled = list("down" = "none")
	slot = ACCESSORY_SLOT_INSIGNIA
	check_codex_val = FACTION_MARINES

// working title before supervisors finally decide on proper one
/obj/item/clothing/accessory/solgov/smc_patch/xeno
	name = "нашивка корпуса Космической Пехоты Ксенорас"
	desc = "A robust shoulder patch, carrying the symbol-mascot of Xenoic division, yellow-eyed devil dog."
	icon_state = "smcpatch13"

// ranks - proper marines
/obj/item/clothing/accessory/solgov/rank/marine_corps
	name = "военная лычка"
	desc = "Insignia denoting marine rank of some kind. These appear blank."
	icon_state = "armyrank_enlisted"

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted
	name = "лычки (E-1 рядовой)"
	desc = "Insignia denoting the rank of Private."
	icon_state = "armyrank_enlisted"

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e2
	name = "лычки (E-2 рядовой I первого класса)"
	desc = "Insignia denoting the rank of Private First Class."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e3
	name = "лычки (E-3 младший капрал)"
	desc = "Insignia denoting the rank of Lance Corporal."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e4
	name = "лычки (E-4 капрал)"
	desc = "Insignia denoting the rank of Corporal."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e5
	name = "лычки (E-5 сержант)"
	desc = "Insignia denoting the rank of Sergeant."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e6
	name = "лычки (E-6 штаб-сержант)"
	desc = "Insignia denoting the rank of Staff Sergeant."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e7
	name = "лычки (E-7 комендор-сержант)"
	desc = "Insignia denoting the rank of Gunnery Sergeant."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e8
	name = "лычки (E-8 старший-сержант)"
	desc = "Insignia denoting the rank of Master Sergeant."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e8_alt
	name = "лычки (E-8 первый сержант)"
	desc = "Insignia denoting the rank of First Sergeant."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e9
	name = "лычки (E-9 старший комендор-сержант)"
	desc = "Insignia denoting the rank of Master Gunnery Sergeant."

/obj/item/clothing/accessory/solgov/rank/marine_corps/enlisted/e9_alt
	name = "лычки (E-9 сержант-майор)"
	desc = "Insignia denoting the rank of Sergeant Major."

/obj/item/clothing/accessory/solgov/rank/marine_corps/officer
	name = "лычки (O-1 второй лейтенант)"
	desc = "Insignia denoting the rank of Second Lieutenant."
	icon_state = "armyrank_officer"

/obj/item/clothing/accessory/solgov/rank/marine_corps/officer/o2
	name = "лычки (O-2 первый лейтенант)"
	desc = "Insignia denoting the rank of First Lieutenant."

/obj/item/clothing/accessory/solgov/rank/marine_corps/officer/o3
	name = "лычки (O-3 капитан)"
	desc = "Insignia denoting the rank of Captain."

/obj/item/clothing/accessory/solgov/rank/marine_corps/officer/o3_alt
	name = "лычки (O-3 капитан отделения)"
	desc = "Insignia denoting the rank of Marine Captain."

/obj/item/clothing/accessory/solgov/rank/marine_corps/officer/o3_alt2
	name = "лычки (O-3 капитан-специалист)"
	desc = "Insignia denoting the rank of Specialist Captain."

/obj/item/clothing/accessory/solgov/rank/marine_corps/officer/o4
	name = "лычки (O-4 майор)"
	desc = "Insignia denoting the rank of Major."

/obj/item/clothing/accessory/solgov/rank/marine_corps/officer/o5
	name = "лычки (O-5 подполковник)"
	desc = "Insignia denoting the rank of Lieutenant Colonel."

/obj/item/clothing/accessory/solgov/rank/marine_corps/officer/o6
	name = "лычки (O-6 полковник)"
	desc = "Insignia denoting the rank of Colonel."

/obj/item/clothing/accessory/solgov/rank/marine_corps/flag
	name = "лычки (O-7 бригадный генерал)"
	desc = "Insignia denoting the rank of Brigadier General."
	icon_state = "armyrank_command"

/obj/item/clothing/accessory/solgov/rank/marine_corps/flag/o8
	name = "лычки (O-8 генерал-майор)"
	desc = "Insignia denoting the rank of Major General."

/obj/item/clothing/accessory/solgov/rank/marine_corps/flag/o9
	name = "лычки (O-9 генерал-лейтенант)"
	desc = "Insignia denoting the rank of Lieutenant General."

/obj/item/clothing/accessory/solgov/rank/marine_corps/flag/o10
	name = "лычки (O-10 генерал)"
	desc = "Insignia denoting the rank of General."
