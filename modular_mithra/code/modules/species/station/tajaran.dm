/datum/species/tajaran
	name = SPECIES_TAJ
	name_plural = "Tajara"
	icobase = 'modular_mithra/icons/mob/human_races/species/tajaran/body.dmi'
	deform = 'modular_mithra/icons/mob/human_races/species/tajaran/deformed_body.dmi'
	husk_icon = 'modular_mithra/icons/mob/human_races/species/tajaran/husk.dmi'
	preview_icon = 'modular_mithra/icons/mob/human_races/species/tajaran/preview.dmi'
	modular_tail = 'modular_mithra/icons/mob/human_races/species/tajaran/tail.dmi'
	tail = "tajtail"
	default_ears = /datum/sprite_accessory/ears/tajhc //Variable seems to not work anyway.
	limb_blend = ICON_MULTIPLY
	tail_blend = ICON_MULTIPLY
	hidden_from_codex = FALSE


	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite/sharp, /datum/unarmed_attack/claws)

	description = "The Tajaran are a mammalian species resembling roughly felines, hailing from Meralar in the Rarkajar system. \
	While reaching to the stars independently from outside influences, the humans engaged them in peaceful trade contact \
	and have accelerated the fledgling culture into the interstellar age. Their history is full of war and highly fractious \
	governments, something that permeates even to today's times. They prefer colder, tundra-like climates, much like their \
	home worlds and speak a variety of languages, especially Siik and Akhani."

	spawn_flags = SPECIES_CAN_JOIN
	appearance_flags = HAS_HAIR_COLOR | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR

	sexybits_location = BP_GROIN


	available_cultural_info = list( //I can do ANYTHING! Placeholder until the loreboys come and figure out what Tajara do
		TAG_CULTURE = list(
			CULTURE_HUMAN,
			CULTURE_HUMAN_VATGROWN,
			CULTURE_HUMAN_MARTIAN,
			CULTURE_HUMAN_MARSTUN,
			CULTURE_HUMAN_LUNAPOOR,
			CULTURE_HUMAN_LUNARICH,
			CULTURE_HUMAN_VENUSIAN,
			CULTURE_HUMAN_VENUSLOW,
			CULTURE_HUMAN_BELTER,
			CULTURE_HUMAN_PLUTO,
			CULTURE_HUMAN_EARTH,
			CULTURE_HUMAN_CETI,
			CULTURE_HUMAN_SPACER,
			CULTURE_HUMAN_SPAFRO,
			CULTURE_HUMAN_CONFED,
			CULTURE_HUMAN_OTHER,
		)
	)
