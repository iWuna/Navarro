//Items labled as 'trash' for the trash bag.
//TODO: Make this an item var or something...

//Added by Jack Rost
/obj/item/trash
	icon = 'icons/obj/trash.dmi'
	w_class = ITEM_SIZE_SMALL
	desc = "Это полный мусор."
	var/age = 0

/obj/item/trash/New(var/newloc, var/_age)
	..(newloc)
	if(!isnull(_age))
		age = _age

/obj/item/trash/Initialize()
	SSpersistence.track_value(src, /datum/persistent/filth/trash)
	. = ..()

/obj/item/trash/Destroy()
	SSpersistence.forget_value(src, /datum/persistent/filth/trash)
	. = ..()

/obj/item/trash/raisins
	name = "\improper 4no raisins"
	icon_state = "4no_raisins"

/obj/item/trash/candy
	name = "конфета"
	icon_state = "candy"

/obj/item/trash/candy/proteinbar
	name = "протеиновый батончик"
	icon_state = "proteinbar"

/obj/item/trash/cheesie
	name = "Сырный Хонкерс"
	icon_state = "cheesie_honkers"

/obj/item/trash/chips
	name = "чипсы"
	icon_state = "chips"

/obj/item/trash/popcorn
	name = "попкорн"
	icon_state = "popcorn"

/obj/item/trash/sosjerky
	name = "Scaredy's Private Reserve Beef Jerky"
	icon_state = "sosjerky"

/obj/item/trash/syndi_cakes
	name = "синдикейк"
	icon_state = "syndi_cakes"

/obj/item/trash/waffles
	name = "ваффли"
	icon_state = "waffles"

/obj/item/trash/plate
	name = "тарелка"
	icon_state = "plate"

/obj/item/trash/snack_bowl
	name = "snack bowl"
	icon_state	= "snack_bowl"

/obj/item/trash/pistachios
	name = "pistachios pack"
	icon_state = "pistachios_pack"

/obj/item/trash/semki
	name = "семечки"
	icon_state = "semki_pack"

/obj/item/trash/fishegg
	name = "caviar can"
	icon_state = "fisheggs"

/obj/item/trash/carpegg
	name = "caviar can"
	icon_state = "carpeggs"

/obj/item/trash/salo
	name = "salo pack"
	icon_state = "salo"

/obj/item/trash/croutons
	name = "сухарики"
	icon_state = "croutons"

/obj/item/trash/squid
	name = "пачка кальмаров"
	icon_state = "squid"

/obj/item/trash/driedfish
	name = "сушеная вобла"
	icon_state = "driedfish"

/obj/item/trash/tray
	name = "поднос"
	icon_state = "tray"

/obj/item/trash/candle
	name = "свеча"
	icon = 'icons/obj/candle.dmi'
	icon_state = "candle4"

/obj/item/trash/liquidfood
	name = "\improper \"LiquidFood\" MRE"
	icon_state = "liquidfood"

/obj/item/trash/tastybread
	name = "bread tube"
	icon_state = "tastybread"

/obj/item/trash/cubewrapper
	name = "discarded wrapper"
	icon_state = "monkeywrap"

/obj/item/trash/beef
	name = "пустая банка"
	icon_state = "beef"

/obj/item/trash/beans
	name = "пустая банка"
	icon_state = "beans"

/obj/item/trash/tomato
	name = "пустая банка"
	icon_state = "tomato"

/obj/item/trash/spinach
	name = "пустая банка"
	icon_state = "spinach"

/obj/item/trash/cakewrap
	name = "упаковка"
	icon_state = "cakewrap"

/obj/item/trash/mochicakewrap
	name = "упаковка"
	icon_state = "mochicakewrap"

/obj/item/trash/mooncakewrap
	name = "упаковка"
	icon_state = "mooncakewrap"

/obj/item/trash/tidegobs
	name = "tide gob bag"
	icon_state = "tidegobs"

/obj/item/trash/saturno
	name = "\improper saturn-Os bag"
	icon_state = "saturno"

/obj/item/trash/jupiter
	name = "gello cup"
	icon_state = "jupiter"

/obj/item/trash/pluto
	name = "rod bag"
	icon_state = "pluto"

/obj/item/trash/venus
	name = "hot cakes bag"
	icon_state = "venus"

/obj/item/trash/mars
	name = "frouka box"
	icon_state = "mars"

/obj/item/trash/oort
	name = "oort rock bag"
	icon_state = "oort"

/obj/item/trash/weebonuts
	name = "red alert nuts bag"
	icon_state = "weebonuts"

/obj/item/trash/stick
	name = "палочка"
	desc = "a stick from some snack food item or a lollipop, not even useful as crafting material."
	icon_state = "stick"

/obj/item/trash/attack(mob/M as mob, mob/living/user as mob)
	return
