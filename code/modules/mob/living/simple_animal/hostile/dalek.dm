/mob/living/simple_animal/hostile/dalek
	name = "далек"
	desc = "Что это такое чёрт возьми."
	icon = 'icons/mob/simple_animal/hivebot.dmi'
	icon_state = "basic"
	icon_living = "basic"
	icon_dead = "basic"
	health = 55
	maxHealth = 55
	melee_damage_lower = 2
	melee_damage_upper = 3
	melee_damage_flags = DAM_SHARP|DAM_EDGE
	attacktext = "clawed"
	projectilesound = 'sound/weapons/gunshot/gunshot_pistol.ogg'
	projectiletype = /obj/item/projectile/beam/smalllaser
	faction = "hivebot"
	min_gas = null
	max_gas = null
	minbodytemp = 0
	speed = 4
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

/mob/living/simple_animal/hostile/hivebot/range
	desc = "A junky looking robot with four spiky legs. It's equipped with some kind of small-bore gun."
	ranged = 1
	speed = 7