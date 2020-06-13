/mob/living/simple_animal/hostile/dalek
	name = "Dalek"
	desc = "What the hell is this!?"
	icon = 'navarro/icons/dalek.dmi'
	icon_state = "dalek"
	icon_living = "dalek"
	icon_dead = "dalek_dead"
	density = 1
	health = 155
	maxHealth = 155
	melee_damage_lower = 2
	melee_damage_upper = 3
	melee_damage_flags = DAM_SHARP|DAM_EDGE
	attacktext = "plunges"
	projectilesound = 'sound/weapons/laser3.ogg'
	projectiletype = /obj/item/projectile/beam/smalllaser
	faction = "hivebot"
	min_gas = null
	max_gas = null
	minbodytemp = 0
	speed = 3
	natural_armor = list(
		melee = ARMOR_MELEE_KNIVES
		)
	bleed_colour = SYNTH_BLOOD_COLOUR

	meat_type =     null
	meat_amount =   0
	bone_material = null
	bone_amount =   0
	skin_material = null
	skin_amount =   0
	ranged = 1