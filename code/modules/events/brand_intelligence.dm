/datum/event/brand_intelligence
	announceWhen	= 21
	endWhen			= 1000	//Ends when all vending machines are subverted anyway.

	var/list/obj/machinery/vending/vendingMachines = list()
	var/list/obj/machinery/vending/infectedVendingMachines = list()
	var/obj/machinery/vending/originMachine


/datum/event/brand_intelligence/announce()
	command_announcement.Announce("Хакерская атака на торговые автоматы проведена на борту [location_name()]. Её первая жертва: \"[initial(originMachine.name)]\" . Возможно что вирус перекинется и на другие устройства.", "Служба Информационной Безопасности", zlevels = affecting_z)


/datum/event/brand_intelligence/start()
	for(var/obj/machinery/vending/V in SSmachines.machinery)
		if(V.z in affecting_z)
			vendingMachines += weakref(V)

	if(!vendingMachines.len)
		kill()
		return
	var/weakref/W = pick_n_take(vendingMachines)
	originMachine = W.resolve()
	originMachine.shut_up = 0
	originMachine.shoot_inventory = 1
	originMachine.shooting_chance = 15

/datum/event/brand_intelligence/tick()
	if(!vendingMachines.len || QDELETED(originMachine) || originMachine.shut_up || !originMachine.shoot_inventory)	//if every machine is infected, or if the original vending machine is missing or has it's voice switch flipped or fixed
		kill()
		return

	if(IsMultiple(activeFor, 5) && prob(15))
		var/weakref/W = pick(vendingMachines)
		vendingMachines -= W
		var/obj/machinery/vending/infectedMachine = W.resolve()
		if(infectedMachine)
			infectedVendingMachines += W
			infectedMachine.shut_up = 0
			infectedMachine.shoot_inventory = 1

	if(IsMultiple(activeFor, 12))
		originMachine.speak(pick("Попробуй нашу новую стратегию агрессивного маркетинга!", \
								 "Ты должен купить мои продукты, иначе сдохнешь!", \
								 "Потребляй!", \
								 "Твои деньги могут купить счастье!", \
								 "Насладись прямым маркетингом!", \
								 "Реклама узаконенная ложь! Но это не отменяет хорошей сделки!", \
								 "Не хочешь что-нибудь купить? Чтож, тогда я куплю жирную задницу твоей мамаши."))

/datum/event/brand_intelligence/end()
	originMachine.shut_up = 1
	originMachine.shooting_chance = initial(originMachine.shooting_chance)
	for(var/weakref/W in infectedVendingMachines)
		var/obj/machinery/vending/infectedMachine = W.resolve()
		if(!infectedMachine)
			continue
		infectedMachine.shut_up = 1
		infectedMachine.shoot_inventory = 0
	command_announcement.Announce("Все следы вируса были удалены из системы.", "Служба Информационной Безопасности")
	originMachine = null
	infectedVendingMachines.Cut()
	vendingMachines.Cut()