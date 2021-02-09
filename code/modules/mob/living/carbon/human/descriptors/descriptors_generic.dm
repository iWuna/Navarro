/datum/mob_descriptor/height
	name = "рост"
	standalone_value_descriptors = list(
		"очень маленький",
		"маленький",
		"обычный",
		"высокий",
		"очень высокий"
		)
	comparative_value_descriptor_equivalent = "around the same height as you"
	comparative_value_descriptors_smaller = list(
		"slightly shorter than you",
		"shorter than you",
		"much shorter than you",
		"tiny and insignificant next to you"
		)
	comparative_value_descriptors_larger = list(
		"slightly taller than you",
		"taller than you",
		"much taller than you",
		"towering over you"
		)

/datum/mob_descriptor/build
	name = "телосложение"
	comparative_value_descriptor_equivalent = "around the same build as you"
	standalone_value_descriptors = list(
		"рельса",
		"thin",
		"of average build",
		"обычное",
		"heavily built"
		)
	comparative_value_descriptors_smaller = list(
		"a bit smaller in build than you",
		"smaller in build than you",
		"much smaller in build than you",
		"dwarfed by your bulk"
		)
	comparative_value_descriptors_larger = list(
		"slightly larger than you in build",
		"built larger than you",
		"built much larger than you",
		"dwarfing you"
		)
