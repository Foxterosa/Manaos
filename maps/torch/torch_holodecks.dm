
/datum/map/torch

	holodeck_programs = list(
		"emptycourt"       = new/datum/holodeck_program(/area/holodeck/source_emptycourt, list('sound/music/Visager-Miniboss_Fight.ogg')),
		"boxingcourt"      = new/datum/holodeck_program(/area/holodeck/source_boxingcourt, list('sound/music/Visager-Miniboss_Fight.ogg')),
		"basketball"       = new/datum/holodeck_program(/area/holodeck/source_basketball),
		"thunderdomecourt" = new/datum/holodeck_program(/area/holodeck/source_thunderdomecourt, list('sound/music/Visager-Miniboss_Fight.ogg')),
		"beach"            = new/datum/holodeck_program(/area/holodeck/source_beach, list('sound/music/manaos/domo.ogg')),
		"desert"           = new/datum/holodeck_program(/area/holodeck/source_desert,
														list(
															'sound/effects/wind/wind_2_1.ogg',
											 				'sound/effects/wind/wind_2_2.ogg',
											 				'sound/effects/wind/wind_3_1.ogg',
											 				'sound/effects/wind/wind_4_1.ogg',
											 				'sound/effects/wind/wind_4_2.ogg',
											 				'sound/effects/wind/wind_5_1.ogg'
												 			)
		 												),
		"snowfield"        = new/datum/holodeck_program(/area/holodeck/source_snowfield,
														list(
															'sound/effects/wind/wind_2_1.ogg',
											 				'sound/effects/wind/wind_2_2.ogg',
											 				'sound/effects/wind/wind_3_1.ogg',
											 				'sound/effects/wind/wind_4_1.ogg',
											 				'sound/effects/wind/wind_4_2.ogg',
											 				'sound/effects/wind/wind_5_1.ogg'
												 			)
		 												),
		"space"            = new/datum/holodeck_program(/area/holodeck/source_space,
														list('sound/music/traitor.ogg')),
		"picnicarea"       = new/datum/holodeck_program(/area/holodeck/source_picnicarea, list('sound/music/manaos/domo.ogg')),
		"theatre"          = new/datum/holodeck_program(/area/holodeck/source_theatre),
		"meetinghall"      = new/datum/holodeck_program(/area/holodeck/source_meetinghall, list('sound/music/manaos/domo.ogg')),
		"courtroom"        = new/datum/holodeck_program(/area/holodeck/source_courtroom),
		"voleyball"        = new/datum/holodeck_program(/area/holodeck/source_volleyball, list('sound/music/Visager-Miniboss_Fight.ogg')),
		"cafe"             = new/datum/holodeck_program(/area/holodeck/source_cafe, list('sound/music/manaos/domo.ogg')),
		"wildlifecarp"     = new/datum/holodeck_program(/area/holodeck/source_wildlife, list()),
		"temple"           = new/datum/holodeck_program(/area/holodeck/source_temple, list('sound/music/manaos/domo.ogg')),
		"plaza"            = new/datum/holodeck_program(/area/holodeck/source_plaza, list('sound/music/manaos/domo.ogg')),
		"lasertag"         = new/datum/holodeck_program(/area/holodeck/source_lasertag, list('sound/music/Visager-Miniboss_Fight.ogg')),
		"turnoff"          = new/datum/holodeck_program(/area/holodeck/source_plating, list())
	)

	holodeck_supported_programs = list(

		"TorchMainPrograms" = list(
			"Basketball Court"  = "basketball",
			"Beach"             = "beach",
			"Boxing Ring"       = "boxingcourt",
			"Cafe"              = "cafe",
			"Courtroom"         = "courtroom",
			"Desert"            = "desert",
			"Empty Court"       = "emptycourt",
			"Meeting Hall"      = "meetinghall",
			"Picnic Area"       = "picnicarea",
			"Snow Field"        = "snowfield",
			"Space"             = "space",
			"Theatre"           = "theatre",
			"Thunderdome Court" = "thunderdomecourt",
			"Voleyball Court"   = "voleyball",
			"Bathhouse"         = "temple",
			"Plaza"             = "plaza",
			"Laser Tag"         = "lasertag"
		)

	)

	holodeck_restricted_programs = list(

		"TorchMainPrograms" = list(
			"Wildlife Simulation" = "wildlifecarp"
		)

	)