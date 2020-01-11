/obj/item/documents
	name = "secret documents"
	desc = "\"Top Secret\" documents."
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "docs_generic"
	item_state = "paper"
	throwforce = 0
	w_class = ITEM_SIZE_TINY
	throw_range = 1
	var/description_antag

/obj/item/documents/examine(mob/user)
	. = ..()
	if(description_antag)
		to_chat(user, description_antag)

/obj/item/documents/nanotrasen
	name = "секретные корпоративные документы"
	desc = "\"СОВЕРШЕННО СЕКРЕТНО\" corporate documents, filled with complex diagrams, research procedures, and details on cloning or breeding rights to non-sapient species the Наварро encounters. It seems like they will be auctioning them off to the highest private bidder."
	description_antag = "A conglomerate of powerful corporations seems to be wanting to create weaponized xenobiological species. Probably as a form of WMD, by your best guess."
	icon_state = "docs_verified"

/obj/item/documents/scg/verified
	name = "секретные государственные документы"
	desc = "\"СОВЕРШЕННО СЕКРЕТНО\" документы описывающие секретные коды ЦПСС, обеспечивающие ГЭК Наварро доступ в ограниченные сектора. В основном это координаты, коды разных судов, и прочие важные данные."
	description_antag = "Эти коды выглядят слишком странно для \"Исследовательского\" судна: в основном это координаты закрытых зон, кодов разных судов. Эти данные настолько секретны, что вы о половине слышите впервые."
	icon_state = "docs_verified"

/obj/item/documents/scg/brains
	name = "секретные медицинские документы"
	desc = "Heavily classified medical documentation of brain scans and exploratory surgery conducted across the entire length of the Blue Jay project. It seems like they have been documenting how deep-space living has altered the structure of the brain."
	description_antag = "These studies were conducted, without consent, while the patients were under anaesthesia for some other routine medical concern. They detail some very unusual deformities within the deepest parts of the brain, correlating them with the people and places visited by the Blue Jay 'for later assessment'. The findings, and any 'viable specimens', are to be delivered to a black site on S/2004 N 1."
	icon_state = "docs_verified"

/obj/item/documents/scg/red
	name = "красные секретные документы"
	desc = "\"СОВЕРШЕННО СЕКРЕТНО\" protocols on what to do if the ship passes into TCC sectors. The writing mostly goes over the diplomatic process, while constantly shaming the Terrans for their idiocy and needless aggression."
	description_antag = "You notice that these protocols contain small, almost intentional snubbing efforts. Whoever wrote these may have been rooting for a war to start..."
	icon_state = "docs_red"

/obj/item/documents/scg/blue
	name = "голубые секретные документы"
	desc = "\"СОВЕРШЕННО СЕКРЕТНО\" documents detailing the Skrellian company Krri'gli, and their insistent requests upon specific priority sectors for the Blue Jay to investigate."
	description_antag = "Krri'gli seem to be guiding the Blue Jay, subtly, to a specific unmapped sector of the galaxy. It's almost like they're too afraid to investigate it personally."
	icon_state = "docs_blue"

/obj/item/documents/scgr
	name = "частные сообщения"
	desc = "\"СОВЕРШЕННО СЕКРЕТНО\" memos and faxes between the SCGR and other officials of the SCG. It's like a chat client ran on pure paperwork."
	description_antag = "The SCGR's conversations contain a massive amount of dirt on politicians: drugs, sex, money..."