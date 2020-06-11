
/var/list/gender_datums = list()

/hook/startup/proc/populate_gender_datum_list()
	for(var/type in subtypesof(/datum/gender))
		var/datum/gender/G = new type
		gender_datums[G.key] = G
		if(!G.formal_term)
			G.formal_term = G.key
	return 1

/datum/gender
	var/key
	var/formal_term

	var/He   = "Они"
	var/he   = "они"
	var/His  = "Их"
	var/his  = "их"
	var/him  = "мх"
	var/has  = "имеют"
	var/is   = ""
	var/does = "делает"
	var/self = "себе"

/datum/gender/plural
	key  = PLURAL
	formal_term = "other"

/datum/gender/male
	key  = MALE

	He   = "Он"
	he   = "он"
	His  = "Его"
	his  = "свое"
	him  = "его"
	has  = "имеет"
	is   = "это"
	does = "делает"
	self = "сам себя"

/datum/gender/female
	key  = FEMALE

	He   = "Она"
	he   = "она"
	His  = "Её"
	his  = "её"
	him  = "её"
	has  = "имеет"
	is   = "это"
	does = "делает"
	self = "сама себя"

/datum/gender/neuter
	key = NEUTER
	formal_term = "other"

	He   = "Оно"
	he   = "оно"
	His  = "Это"
	his  = "это"
	him  = "это"
	has  = "имеет"
	is   = "это"
	does = "делает"
	self = "само себя"
