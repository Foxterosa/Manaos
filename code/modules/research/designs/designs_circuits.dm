/datum/design/circuit
	build_type = IMPRINTER
	req_tech = list(TECH_DATA = 2)
	materials = list(MATERIAL_PLASTIC = 1000, MATERIAL_ALUMINIUM = 1000)
	chemicals = list(/datum/reagent/acid = 20)
	time = 5

/datum/design/circuit/AssembleDesignName()
	..()
	if(build_path)
		var/obj/item/weapon/stock_parts/circuitboard/C = build_path
		if(initial(C.board_type) == "machine")
			name = "Machine circuit design ([item_name])"
		else if(initial(C.board_type) == "computer")
			name = "Computer circuit design ([item_name])"
		else
			name = "Circuit design ([item_name])"

/datum/design/circuit/AssembleDesignDesc()
	if(!desc)
		desc = "Allows for the construction of \a [item_name] circuit board."

/datum/design/circuit/operating
	name = "patient monitoring console"
	id = "operating"
	build_path = /obj/item/weapon/stock_parts/circuitboard/operating
	sort_string = "FACAA"
	design_class = "Medical Machinery"

/datum/design/circuit/vitals
	name = "vitals monitor"
	id = "vitals"
	req_tech = list(TECH_BIO = 2, TECH_ENGINEERING = 1)
	build_path = /obj/item/weapon/stock_parts/circuitboard/vitals_monitor
	sort_string = "FACAB"

/datum/design/circuit/optable
	name = "operating table"
	id = "optable"
	req_tech = list(TECH_ENGINEERING = 1, TECH_BIO = 3, TECH_DATA = 3)
	build_path = /obj/item/weapon/stock_parts/circuitboard/optable
	sort_string = "FACAC"

/datum/design/circuit/bodyscanner
	name = "body scanner"
	id = "bodyscanner"
	req_tech = list(TECH_ENGINEERING = 2, TECH_BIO = 4, TECH_DATA = 4)
	build_path = /obj/item/weapon/stock_parts/circuitboard/bodyscanner
	sort_string = "FACAD"

/datum/design/circuit/body_scanconsole
	name = "body scanner console"
	id = "bodyscannerconsole"
	req_tech = list(TECH_ENGINEERING = 2, TECH_BIO = 4, TECH_DATA = 4)
	build_path = /obj/item/weapon/stock_parts/circuitboard/body_scanconsole
	sort_string = "FACAE"

/datum/design/circuit/sleeper
	name = "sleeper"
	id = "sleeper"
	req_tech = list(TECH_ENGINEERING = 3, TECH_BIO = 5, TECH_DATA = 3)
	build_path = /obj/item/weapon/stock_parts/circuitboard/sleeper
	sort_string = "FACAF"

/datum/design/circuit/cryo_cell
	name = "cryo cell"
	id = "cryo_cell"
	req_tech = list(TECH_ENGINEERING = 3, TECH_BIO = 5, TECH_DATA = 3)
	build_path = /obj/item/weapon/stock_parts/circuitboard/cryo_cell
	sort_string = "FACAG"

/datum/design/circuit/clonecomputer
	name = "cloning control computer"
	id = "clooner"
	req_tech = list(TECH_BIO = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/cloning
	sort_string = "FACAH"

/datum/design/circuit/clonescanner
	name = "cloning scanner"
	id = "cloonescanner"
	req_tech = list(TECH_BIO = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/clonescanner
	sort_string = "FACAI"

/datum/design/circuit/clonepod
	name = "cloning pod"
	id = "cloonepod"
	req_tech = list(TECH_BIO = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/clonepod
	sort_string = "FAGAJ"

/datum/design/circuit/crewconsole
	name = "crew monitoring console"
	id = "crewconsole"
	req_tech = list(TECH_DATA = 3, TECH_MAGNET = 2, TECH_BIO = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/crew
	sort_string = "FAGAK"

/datum/design/circuit/body_scan_display
	name = "body scanner display"
	id = "bodyscannerdisplay"
	req_tech = list(TECH_BIO = 2, TECH_DATA = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/body_scanconsole/display
	sort_string = "FACAL"

/datum/design/circuit/bioprinter
	name = "bioprinter"
	id = "bioprinter"
	req_tech = list(TECH_ENGINEERING = 1, TECH_BIO = 3, TECH_DATA = 3)
	build_path = /obj/item/weapon/stock_parts/circuitboard/bioprinter
	sort_string = "FAGAM"

/datum/design/circuit/roboprinter
	name = "prosthetic organ fabricator"
	id = "roboprinter"
	req_tech = list(TECH_ENGINEERING = 2, TECH_DATA = 3)
	build_path = /obj/item/weapon/stock_parts/circuitboard/roboprinter
	sort_string = "FAGAO"

/datum/design/circuit/modular_computer
	name = "general-purpose computer"
	id = "pc_motherboard"
	req_tech = list(TECH_POWER = 1, TECH_ENGINEERING = 1)
	build_path = /obj/item/weapon/stock_parts/circuitboard/modular_computer
	sort_string = "HAAAA"
	design_class = "Consoles"

/datum/design/circuit/teleconsole
	name = "teleporter control console"
	id = "teleconsole"
	req_tech = list(TECH_DATA = 3, TECH_BLUESPACE = 5)
	build_path = /obj/item/weapon/stock_parts/circuitboard/teleporter
	sort_string = "HAAAB"

/datum/design/circuit/robocontrol
	name = "robotics control console"
	id = "robocontrol"
	req_tech = list(TECH_DATA = 4)
	build_path = /obj/item/weapon/stock_parts/circuitboard/robotics
	sort_string = "HAAAC"

/datum/design/circuit/guestpass
	name = "guest pass terminal"
	id = "guestpass"
	build_path = /obj/item/weapon/stock_parts/circuitboard/guestpass
	sort_string = "HAACE"

/datum/design/circuit/accounts
	name = "account database terminal"
	id = "accounts"
	build_path = /obj/item/weapon/stock_parts/circuitboard/account_database
	sort_string = "HAACF"

/datum/design/circuit/holo
	name = "holodeck control console"
	id = "holo"
	build_path = /obj/item/weapon/stock_parts/circuitboard/holodeckcontrol
	req_tech = list(TECH_DATA = 2, TECH_BLUESPACE = 2)
	sort_string = "HAACG"

/datum/design/circuit/aiupload
	name = "AI upload console"
	id = "aiupload"
	req_tech = list(TECH_DATA = 4)
	build_path = /obj/item/weapon/stock_parts/circuitboard/aiupload
	sort_string = "HAABA"

/datum/design/circuit/borgupload
	name = "cyborg upload console"
	id = "borgupload"
	req_tech = list(TECH_DATA = 4)
	build_path = /obj/item/weapon/stock_parts/circuitboard/borgupload
	sort_string = "HAABB"

/datum/design/circuit/cryopodcontrol
	name = "cryogenic oversight console"
	id = "cryo_console"
	req_tech = list(TECH_DATA = 3)
	build_path = /obj/item/weapon/stock_parts/circuitboard/cryopodcontrol
	sort_string = "HAABC"

/datum/design/circuit/robot_storage
	name = "robotic storage control"
	id = "cryo_console_borg"
	req_tech = list(TECH_DATA = 3)
	build_path = /obj/item/weapon/stock_parts/circuitboard/robotstoragecontrol
	sort_string = "HAABD"

/datum/design/circuit/prisonmanage
	name = "prisoner management console"
	id = "prisonmanage"
	build_path = /obj/item/weapon/stock_parts/circuitboard/prisoner
	sort_string = "HAABE"

/datum/design/circuit/destructive_analyzer
	name = "destructive analyzer"
	id = "destructive_analyzer"
	req_tech = list(TECH_DATA = 2, TECH_MAGNET = 2, TECH_ENGINEERING = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/destructive_analyzer
	sort_string = "HABAA"
	design_class = "R&D Consoles"

/datum/design/circuit/protolathe
	name = "protolathe"
	id = "protolathe"
	req_tech = list(TECH_DATA = 2, TECH_ENGINEERING = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/protolathe
	sort_string = "HABAB"

/datum/design/circuit/circuit_imprinter
	name = "circuit imprinter"
	id = "circuit_imprinter"
	req_tech = list(TECH_DATA = 2, TECH_ENGINEERING = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/circuit_imprinter
	sort_string = "HABAC"

/datum/design/circuit/rdservercontrol
	name = "R&D server control console"
	id = "rdservercontrol"
	req_tech = list(TECH_DATA = 3)
	build_path = /obj/item/weapon/stock_parts/circuitboard/rdservercontrol
	sort_string = "HABAD"

/datum/design/circuit/rdconsole
	name = "R&D control console"
	id = "rdconsole"
	req_tech = list(TECH_DATA = 4)
	build_path = /obj/item/weapon/stock_parts/circuitboard/rdconsole
	sort_string = "HABAE"

/datum/design/circuit/rdserver
	name = "R&D server"
	id = "rdserver"
	req_tech = list(TECH_DATA = 3)
	build_path = /obj/item/weapon/stock_parts/circuitboard/rdserver
	sort_string = "HABAF"

/datum/design/circuit/microlathe
	name = "microlathe board"
	id = "microlathe"
	req_tech = list(TECH_DATA = 1, TECH_ENGINEERING = 1)
	build_path = /obj/item/weapon/stock_parts/circuitboard/autolathe/micro
	sort_string = "HACAA"
	design_class = "Fabricators"

/datum/design/circuit/autolathe
	name = "autolathe board"
	id = "autolathe"
	req_tech = list(TECH_DATA = 2, TECH_ENGINEERING = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/autolathe
	sort_string = "HACAC"

/datum/design/circuit/replicator
	name = "replicator board"
	id = "replicator"
	req_tech = list(TECH_DATA = 2, TECH_ENGINEERING = 3, TECH_BIO = 3)
	build_path = /obj/item/weapon/stock_parts/circuitboard/replicator
	sort_string = "HACAB"

/datum/design/circuit/wepfab
	name = "weapons fabricator"
	id = "wepbaf"
	req_tech = list(TECH_DATA = 3, TECH_ENGINEERING = 3, TECH_COMBAT = 3)
	build_path = /obj/item/weapon/stock_parts/circuitboard/weaponsfab
	sort_string = "HACAD"

/datum/design/circuit/powermonitor
	name = "power monitoring console"
	id = "powermonitor"
	build_path = /obj/item/weapon/stock_parts/circuitboard/powermonitor
	sort_string = "IAAAA"
	design_class = "Engineering Machinery"

/datum/design/circuit/solarcontrol
	name = "solar control console"
	id = "solarcontrol"
	build_path = /obj/item/weapon/stock_parts/circuitboard/solar_control
	sort_string = "IAAAB"

/datum/design/circuit/supermatter_control
	name = "core monitoring console"
	id = "supermatter_control"
	build_path = /obj/item/weapon/stock_parts/circuitboard/air_management/supermatter_core
	sort_string = "IAAAC"

/datum/design/circuit/injector
	name = "injector control console"
	id = "injector"
	build_path = /obj/item/weapon/stock_parts/circuitboard/air_management/injector_control
	sort_string = "IAAAD"

/datum/design/circuit/rcon_console
	name = "RCON remote control console"
	id = "rcon_console"
	req_tech = list(TECH_DATA = 4, TECH_ENGINEERING = 3, TECH_POWER = 5)
	build_path = /obj/item/weapon/stock_parts/circuitboard/rcon_console
	sort_string = "IAAAE"

/datum/design/circuit/suspension_gen
	name = "suspension generator"
	id = "suspension_gen"
	req_tech = list(TECH_DATA = 4, TECH_ENGINEERING = 3, TECH_MAGNET = 4)
	build_path = /obj/item/weapon/stock_parts/circuitboard/suspension_gen
	sort_string = "IAAAF"

/datum/design/circuit/recharge_station
	name = "cyborg recharge station"
	id = "recharge_station"
	req_tech = list(TECH_DATA = 3, TECH_ENGINEERING = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/recharge_station
	sort_string = "IAAAG"

/datum/design/circuit/dronecontrol
	name = "drone control console"
	id = "dronecontrol"
	req_tech = list(TECH_DATA = 4)
	build_path = /obj/item/weapon/stock_parts/circuitboard/drone_control
	sort_string = "IAAAH"

/datum/design/circuit/pacman
	name = "PACMAN-type generator"
	id = "pacman"
	req_tech = list(TECH_DATA = 3, TECH_PHORON = 3, TECH_POWER = 3, TECH_ENGINEERING = 3)
	build_path = /obj/item/weapon/stock_parts/circuitboard/pacman
	sort_string = "IAAAW"

/datum/design/circuit/superpacman
	name = "SUPERPACMAN-type generator"
	id = "superpacman"
	req_tech = list(TECH_DATA = 3, TECH_POWER = 4, TECH_ENGINEERING = 4)
	build_path = /obj/item/weapon/stock_parts/circuitboard/pacman/super
	sort_string = "IAAAX"

/datum/design/circuit/mrspacman
	name = "MRSPACMAN-type generator"
	id = "mrspacman"
	req_tech = list(TECH_DATA = 3, TECH_POWER = 5, TECH_ENGINEERING = 5)
	build_path = /obj/item/weapon/stock_parts/circuitboard/pacman/mrs
	sort_string = "IAAAY"

/datum/design/circuit/pacmanpotato
	name = "PTTO-3 nuclear generator"
	id = "pacmanpotato"
	req_tech = list(TECH_DATA = 3, TECH_POWER = 5, TECH_ENGINEERING = 4, TECH_ESOTERIC = 4)
	build_path = /obj/item/weapon/stock_parts/circuitboard/pacman/super/potato
	sort_string = "IAAAZ"

/datum/design/circuit/batteryrack
	name = "cell rack PSU"
	id = "batteryrack"
	req_tech = list(TECH_POWER = 3, TECH_ENGINEERING = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/batteryrack
	sort_string = "IAAAU"

/datum/design/circuit/smes_cell
	name = "'SMES' superconductive magnetic energy storage"
	desc = "Allows for the construction of circuit boards used to build a SMES."
	id = "smes_cell"
	req_tech = list(TECH_POWER = 7, TECH_ENGINEERING = 5)
	build_path = /obj/item/weapon/stock_parts/circuitboard/smes
	sort_string = "IAAAV"

/datum/design/circuit/gas_heater
	name = "gas heating system"
	id = "gasheater"
	req_tech = list(TECH_POWER = 2, TECH_ENGINEERING = 1)
	build_path = /obj/item/weapon/stock_parts/circuitboard/unary_atmos/heater
	sort_string = "JCAAA"
	design_class = "Atmos Machinery"

/datum/design/circuit/alerts
	name = "alerts console"
	id = "alerts"
	build_path = /obj/item/weapon/stock_parts/circuitboard/stationalert
	sort_string = "JCAAD"

/datum/design/circuit/atmosalerts
	name = "atmosphere alert console"
	id = "atmosalerts"
	build_path = /obj/item/weapon/stock_parts/circuitboard/atmos_alert
	sort_string = "JCAAB"

/datum/design/circuit/air_management
	name = "atmosphere monitoring console"
	id = "air_management"
	build_path = /obj/item/weapon/stock_parts/circuitboard/air_management
	sort_string = "JCAAC"

/datum/design/circuit/gas_cooler
	name = "gas cooling system"
	id = "gascooler"
	req_tech = list(TECH_MAGNET = 2, TECH_ENGINEERING = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/unary_atmos/cooler
	sort_string = "JCAAF"

/datum/design/circuit/oxyregenerator
	name = "oxygen regenerator"
	id = "oxyregen"
	req_tech = list(TECH_MAGNET = 2, TECH_ENGINEERING = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/oxyregenerator
	sort_string = "JCAAG"

/datum/design/circuit/reagent_heater
	name = "chemical heating system"
	id = "chemheater"
	req_tech = list(TECH_POWER = 2, TECH_ENGINEERING = 1)
	build_path = /obj/item/weapon/stock_parts/circuitboard/reagent_heater
	sort_string = "JCAAH"

/datum/design/circuit/reagent_cooler
	name = "chemical cooling system"
	id = "chemcooler"
	req_tech = list(TECH_POWER = 2, TECH_ENGINEERING = 1)
	build_path = /obj/item/weapon/stock_parts/circuitboard/reagent_heater/cooler
	sort_string = "JCAAI"

/datum/design/circuit/atmos_control
	name = "atmospherics control console"
	id = "atmos_control"
	req_tech = list(TECH_DATA = 2, TECH_ENGINEERING = 3)
	build_path = /obj/item/weapon/stock_parts/circuitboard/atmoscontrol
	sort_string = "JCAAJ"

/datum/design/circuit/pipe_dispenser
	name = "pipe dispenser"
	id = "pipe_dispenser"
	req_tech = list(TECH_ENGINEERING = 6, TECH_MATERIAL = 5)
	build_path = /obj/item/weapon/stock_parts/circuitboard/pipedispensor
	sort_string = "JCAAK"

/datum/design/circuit/pipe_dispenser/disposal
	name = "disposal pipe dispenser"
	id = "pipe_disposal"
	build_path = /obj/item/weapon/stock_parts/circuitboard/pipedispensor/disposal
	sort_string = "JCAAL"

/datum/design/circuit/secure_airlock
	name = "secure airlock electronics"
	desc =  "Allows for the construction of a tamper-resistant airlock electronics."
	id = "securedoor"
	req_tech = list(TECH_DATA = 3)
	build_path = /obj/item/weapon/airlock_electronics/secure
	sort_string = "JCAAM"

/datum/design/circuit/portable_scrubber
	name = "portable scrubber"
	id = "portascrubber"
	req_tech = list(TECH_ENGINEERING = 4, TECH_POWER = 4)
	build_path = /obj/item/weapon/stock_parts/circuitboard/portable_scrubber
	sort_string = "JCAAN"

/datum/design/circuit/portable_pump
	name = "portable pump"
	id = "portapump"
	req_tech = list(TECH_ENGINEERING = 4, TECH_POWER = 4)
	build_path = /obj/item/weapon/stock_parts/circuitboard/portable_scrubber/pump
	sort_string = "JCAAO"

/datum/design/circuit/portable_scrubber_huge
	name = "large portable scrubber"
	id = "portascrubberhuge"
	req_tech = list(TECH_ENGINEERING = 5, TECH_POWER = 5, TECH_MATERIAL = 5)
	build_path = /obj/item/weapon/stock_parts/circuitboard/portable_scrubber/huge
	sort_string = "JCAAP"

/datum/design/circuit/portable_scrubber_stat
	name = "large stationary portable scrubber"
	id = "portascrubberstat"
	req_tech = list(TECH_ENGINEERING = 5, TECH_POWER = 5, TECH_MATERIAL = 5)
	build_path = /obj/item/weapon/stock_parts/circuitboard/portable_scrubber/huge/stationary
	sort_string = "JCAAQ"

/datum/design/circuit/thruster
	name = "gas thruster"
	id = "thruster"
	req_tech = list(TECH_POWER = 1, TECH_ENGINEERING = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/unary_atmos/engine
	sort_string = "JFAAA"
	design_class = "Navigation Consoles"

/datum/design/circuit/helms
	name = "helm control console"
	id = "helms"
	req_tech = list(TECH_DATA = 4, TECH_ENGINEERING = 3)
	build_path = /obj/item/weapon/stock_parts/circuitboard/helm
	sort_string = "JFAAB"

/datum/design/circuit/nav
	name = "navigation control console"
	id = "nav"
	req_tech = list(TECH_DATA = 2, TECH_ENGINEERING = 1)
	build_path = /obj/item/weapon/stock_parts/circuitboard/nav
	sort_string = "JFAAC"

/datum/design/circuit/nav/tele
	name = "navigation telescreen"
	id = "nav_tele"
	build_path = /obj/item/weapon/stock_parts/circuitboard/nav/tele
	sort_string = "JFAAD"

/datum/design/circuit/sensors
	name = "ship sensor control console"
	id = "sensors"
	req_tech = list(TECH_DATA = 4)
	build_path = /obj/item/weapon/stock_parts/circuitboard/sensors
	sort_string = "JFAAE"

/datum/design/circuit/engine
	name = "ship engine control console"
	id = "shipengine"
	req_tech = list(TECH_DATA = 2, TECH_POWER = 2, TECH_ENGINEERING = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/engine
	sort_string = "JFAAF"

/datum/design/circuit/shuttle
	name = "basic shuttle console"
	id = "shuttle"
	req_tech = list(TECH_DATA = 3)
	build_path = /obj/item/weapon/stock_parts/circuitboard/shuttle_console
	sort_string = "JFAAG"

/datum/design/circuit/shuttle_long
	name = "long range shuttle console"
	id = "shuttle_long"
	req_tech = list(TECH_DATA = 3)
	build_path = /obj/item/weapon/stock_parts/circuitboard/shuttle_console/explore
	sort_string = "JFAAH"

/datum/design/circuit/ionengine
	name = "ion propulsion system"
	id = "ionengine"
	req_tech = list(TECH_BLUESPACE = 4, TECH_MATERIAL = 6)
	materials = list(MATERIAL_GOLD = 250, MATERIAL_DIAMOND = 250, MATERIAL_URANIUM = 250, MATERIAL_PLASTIC = 1000, MATERIAL_ALUMINIUM = 1000)
	build_path = /obj/item/weapon/stock_parts/circuitboard/engine/ion
	sort_string = "JFAAI"

/datum/design/circuit/fusion/core_control
	name = "fusion core control console"
	id = "fusion_core_control"
	build_path = /obj/item/weapon/stock_parts/circuitboard/fusion/core_control
	sort_string = "JJAAD"
	req_tech = list(TECH_POWER = 3, TECH_ENGINEERING = 3, TECH_MATERIAL = 3)
	design_class = "Fusion Core Machinery"

/datum/design/circuit/fusion/fuel_compressor
	name = "fusion fuel compressor"
	id = "fusion_fuel_compressor"
	build_path = /obj/item/weapon/stock_parts/circuitboard/fusion_fuel_compressor
	req_tech = list(TECH_POWER = 3, TECH_ENGINEERING = 3, TECH_MATERIAL = 3)
	sort_string = "JJAAE"

/datum/design/circuit/fusion/fuel_control
	name = "fusion fuel control console"
	id = "fusion_fuel_control"
	build_path = /obj/item/weapon/stock_parts/circuitboard/fusion_fuel_control
	req_tech = list(TECH_POWER = 3, TECH_ENGINEERING = 3, TECH_MATERIAL = 3)
	sort_string = "JJAAF"

/datum/design/circuit/fusion/gyrotron_control
	name = "gyrotron control console"
	id = "gyrotron_control"
	build_path = /obj/item/weapon/stock_parts/circuitboard/gyrotron_control
	req_tech = list(TECH_POWER = 3, TECH_ENGINEERING = 3, TECH_MATERIAL = 3)
	sort_string = "JJAAG"

/datum/design/circuit/fusion/core
	name = "fusion core"
	id = "fusion_core"
	build_path = /obj/item/weapon/stock_parts/circuitboard/fusion_core
	req_tech = list(TECH_POWER = 3, TECH_ENGINEERING = 3, TECH_MATERIAL = 3)
	sort_string = "JJAAH"

/datum/design/circuit/fusion/injector
	name = "fusion fuel injector"
	id = "fusion_injector"
	build_path = /obj/item/weapon/stock_parts/circuitboard/fusion_injector
	req_tech = list(TECH_POWER = 3, TECH_ENGINEERING = 3, TECH_MATERIAL = 3)
	sort_string = "JJAAI"

/datum/design/circuit/fusion/kinetic_harvester
	name = "fusion toroid kinetic harvester"
	id = "fusion_kinetic_harvester"
	build_path = /obj/item/weapon/stock_parts/circuitboard/kinetic_harvester
	sort_string = "JJAAJ"
	req_tech = list(TECH_DATA = 4, TECH_ENGINEERING = 4, TECH_MATERIAL = 4)

/datum/design/circuit/fusion/gyrotron
	name = "gyrotron"
	id = "gyrotron"
	build_path = /obj/item/weapon/stock_parts/circuitboard/gyrotron
	req_tech = list(TECH_POWER = 3, TECH_ENGINEERING = 3, TECH_MATERIAL = 3)
	sort_string = "JJAAK"

/datum/design/circuit/biogenerator
	name = "biogenerator"
	id = "biogenerator"
	req_tech = list(TECH_DATA = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/biogenerator
	sort_string = "KBAAA"
	design_class = "Hydroponics Machinery"

/datum/design/circuit/hydro_tray
	name = "hydroponics tray"
	id = "hydrotray"
	req_tech = list(TECH_BIO = 3, TECH_MATERIAL = 2, TECH_DATA = 1)
	build_path = /obj/item/weapon/stock_parts/circuitboard/tray
	sort_string = "KBAAB"

/datum/design/circuit/honey_extractor
	name = "honey extractor"
	id = "honey_extractor"
	req_tech = list(TECH_BIO = 2, TECH_ENGINEERING = 1)
	build_path = /obj/item/weapon/stock_parts/circuitboard/honey
	sort_string = "KBAAC"

/datum/design/circuit/seed_extractor
	name = "seed extractor"
	id = "seed_extractor"
	req_tech = list(TECH_BIO = 2, TECH_ENGINEERING = 1)
	build_path = /obj/item/weapon/stock_parts/circuitboard/honey/seed
	sort_string = "KBAAD"

/datum/design/circuit/miningdrill
	name = "mining drill head"
	id = "mining drill head"
	req_tech = list(TECH_DATA = 1, TECH_ENGINEERING = 1)
	build_path = /obj/item/weapon/stock_parts/circuitboard/miningdrill
	sort_string = "KCAAA"
	design_class = "Mining Machinery"

/datum/design/circuit/miningdrillbrace
	name = "mining drill brace"
	id = "mining drill brace"
	req_tech = list(TECH_DATA = 1, TECH_ENGINEERING = 1)
	build_path = /obj/item/weapon/stock_parts/circuitboard/miningdrillbrace
	sort_string = "KCAAB"

/datum/design/circuit/floodlight
	name = "emergency floodlight"
	id = "floodlight"
	req_tech = list(TECH_POWER = 1, TECH_ENGINEERING = 1)
	build_path = /obj/item/weapon/stock_parts/circuitboard/floodlight
	sort_string = "KCAAC"

/datum/design/circuit/mining_console
	name = "mining console board"
	id = "mining_console"
	req_tech = list(TECH_DATA = 2, TECH_ENGINEERING = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/mineral_processing
	sort_string = "KCAAD"

/datum/design/circuit/mining_processor
	name = "mining processor board"
	id = "mining_processor"
	req_tech = list(TECH_DATA = 2, TECH_ENGINEERING = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/mining_processor
	sort_string = "KCAAE"

/datum/design/circuit/mining_unloader
	name = "ore unloader board"
	id = "mining_unloader"
	req_tech = list(TECH_DATA = 2, TECH_ENGINEERING = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/mining_unloader
	sort_string = "KCAAF"

/datum/design/circuit/mining_stacker
	name = "sheet stacker board"
	id = "mining_stacker"
	req_tech = list(TECH_DATA = 2, TECH_ENGINEERING = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/mining_stacker
	sort_string = "KCAAG"

/datum/design/circuit/dispersermiddle
	name = "obstruction field disperser fusor"
	id = "dispersermiddle"
	req_tech = list(TECH_ENGINEERING = 2, TECH_COMBAT = 2, TECH_BLUESPACE = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/dispersermiddle
	sort_string = "KCAAH"
	design_class = "Obstruction Field Machinery"

/datum/design/circuit/disperserback
	name = "obstruction field disperser material deconstructor"
	id = "bsaback"
	req_tech = list(TECH_ENGINEERING = 2, TECH_COMBAT = 2, TECH_BLUESPACE = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/disperserback
	sort_string = "KCAAI"

/datum/design/circuit/disperser_console
	name = "obstruction field disperser control console"
	id = "disperser_console"
	req_tech = list(TECH_DATA = 2, TECH_COMBAT = 5, TECH_BLUESPACE = 5)
	build_path = /obj/item/weapon/stock_parts/circuitboard/disperser
	sort_string = "KCAAJ"

/datum/design/circuit/disperserfront
	name = "obstruction field disperser beam generator"
	id = "disperserfront"
	req_tech = list(TECH_ENGINEERING = 2, TECH_COMBAT = 2, TECH_BLUESPACE = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/disperserfront
	sort_string = "KCAAK"

/datum/design/circuit/tcom
	req_tech = list(TECH_DATA = 4, TECH_ENGINEERING = 4)

/datum/design/circuit/tcom/AssembleDesignName()
	name = "Telecommunications machinery circuit design ([name])"
/datum/design/circuit/tcom/AssembleDesignDesc()
	desc = "Allows for the construction of a telecommunications [name] circuit board."

/datum/design/circuit/tcom/server
	name = "server mainframe"
	id = "tcom-server"
	build_path = /obj/item/weapon/stock_parts/circuitboard/telecomms/server
	sort_string = "PAAAD"

/datum/design/circuit/tcom/processor
	name = "processor unit"
	id = "tcom-processor"
	build_path = /obj/item/weapon/stock_parts/circuitboard/telecomms/processor
	sort_string = "PAAAF"

/datum/design/circuit/tcom/bus
	name = "bus mainframe"
	id = "tcom-bus"
	build_path = /obj/item/weapon/stock_parts/circuitboard/telecomms/bus
	sort_string = "PAAAG"

/datum/design/circuit/tcom/hub
	name = "hub mainframe"
	id = "tcom-hub"
	build_path = /obj/item/weapon/stock_parts/circuitboard/telecomms/hub
	sort_string = "PAAAH"

/datum/design/circuit/tcom/broadcaster
	name = "subspace broadcaster"
	id = "tcom-broadcaster"
	req_tech = list(TECH_DATA = 4, TECH_ENGINEERING = 4, TECH_BLUESPACE = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/telecomms/broadcaster
	sort_string = "PAAAI"

/datum/design/circuit/tcom/receiver
	name = "subspace receiver"
	id = "tcom-receiver"
	req_tech = list(TECH_DATA = 4, TECH_ENGINEERING = 3, TECH_BLUESPACE = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/telecomms/receiver
	sort_string = "PAAAJ"

/datum/design/circuit/bluespace_relay
	name = "bluespace relay"
	id = "bluespacerelay"
	req_tech = list(TECH_DATA = 5, TECH_BLUESPACE = 5, TECH_PHORON = 5)
	build_path = /obj/item/weapon/stock_parts/circuitboard/bluespacerelay
	sort_string = "PAAAK"

/datum/design/circuit/comm_monitor
	name = "telecommunications monitoring console"
	id = "comm_monitor"
	req_tech = list(TECH_DATA = 3)
	build_path = /obj/item/weapon/stock_parts/circuitboard/comm_monitor
	sort_string = "PAAAL"
	design_class = "Telecomms Machinery"

/datum/design/circuit/comm_server
	name = "telecommunications server monitoring console"
	id = "comm_server"
	req_tech = list(TECH_DATA = 3)
	build_path = /obj/item/weapon/stock_parts/circuitboard/comm_server
	sort_string = "PAAAM"

/datum/design/circuit/message_monitor
	name = "messaging monitor console"
	id = "message_monitor"
	req_tech = list(TECH_DATA = 5)
	build_path = /obj/item/weapon/stock_parts/circuitboard/message_monitor
	sort_string = "PAAAN"

/datum/design/circuit/ntnet_relay
	name = "NTNet Quantum Relay"
	id = "ntnet_relay"
	req_tech = list(TECH_DATA = 4)
	build_path = /obj/item/weapon/stock_parts/circuitboard/ntnet_relay
	sort_string = "PAAAO"

/datum/design/circuit/pointdefense
	name = "Point defense battery"
	desc = "Allows for the construction of a point defense battery circuit board."
	id = "pointdefense"
	req_tech = list(TECH_COMBAT = 2, TECH_ENGINEERING = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/pointdefense
	sort_string = "VAAAB"
	design_class = "Shields Machinery"

/datum/design/circuit/shield_generator
	name = "Shield Generator"
	desc = "Allows for the construction of a shield generator circuit board."
	id = "shield_generator"
	req_tech = list(TECH_MAGNET = 3, TECH_POWER = 4)
	build_path = /obj/item/weapon/stock_parts/circuitboard/shield_generator
	sort_string = "VAAAE"

/datum/design/circuit/shield_diffuser
	name = "Shield Diffuser"
	desc = "Allows for the construction of a shield generator circuit board."
	id = "shield_diffuser"
	req_tech = list(TECH_MAGNET = 3, TECH_POWER = 4)
	build_path = /obj/item/weapon/stock_parts/circuitboard/shield_diffuser
	sort_string = "VAAAC"

/datum/design/circuit/pointdefense_control
	name = "Fire Assist Mainframe"
	desc = "Allows for the construction of a fire assist mainframe circuit board."
	id = "pointdefense_control"
	req_tech = list(TECH_COMBAT = 2, TECH_ENGINEERING = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/pointdefense_control
	sort_string = "VAAAD"

/datum/design/circuit/mixers
	name = "kitchen appliance (assorted mixers)"
	desc = "Allows for the construction of several kitchen mixers; use a multitool to select the type."
	id = "mixers"
	req_tech = list(TECH_BIO = 1, TECH_MATERIAL = 1)
	build_path = /obj/item/weapon/stock_parts/circuitboard/mixer
	sort_string = "WAAAA"
	design_class = "Kitchen Appliance"

/datum/design/circuit/microwave
	name = "kitchen appliance (microwave)"
	id = "microwave"
	req_tech = list(TECH_BIO = 2, TECH_ENGINEERING = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/microwave
	sort_string = "WAAAX"

/datum/design/circuit/gibber
	name = "kitchen appliance (meat gibber)"
	id = "gibber"
	req_tech = list(TECH_BIO = 2, TECH_ENGINEERING = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/gibber
	sort_string = "WAAAU"

/datum/design/circuit/fryer
	name = "kitchen appliance (fryer)"
	id = "fryer"
	req_tech = list(TECH_BIO = 2, TECH_ENGINEERING = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/fryer
	sort_string = "WAAAV"

/datum/design/circuit/oven
	name = "kitchen appliance (oven)"
	id = "oven"
	req_tech = list(TECH_BIO = 2, TECH_ENGINEERING = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/oven
	sort_string = "WAAAW"

/datum/design/circuit/stove
	name = "kitchen appliance (stove)"
	id = "stove"
	req_tech = list(TECH_BIO = 2, TECH_ENGINEERING = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/stove
	sort_string = "WAAAX"

/datum/design/circuit/grill
	name = "kitchen appliance (grill)"
	id = "grill"
	req_tech = list(TECH_BIO = 2, TECH_ENGINEERING = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/grill
	sort_string = "WAAAX"

/datum/design/circuit/arcademachine
	name = "battle arcade machine"
	id = "arcademachine"
	req_tech = list(TECH_DATA = 1)
	build_path = /obj/item/weapon/stock_parts/circuitboard/arcade/battle
	sort_string = "YAAAA"
	design_class = "Miscellaneous"

/datum/design/circuit/oriontrail
	name = "orion trail arcade machine"
	id = "oriontrail"
	req_tech = list(TECH_DATA = 1)
	build_path = /obj/item/weapon/stock_parts/circuitboard/arcade/orion_trail
	sort_string = "YAAAB"

/datum/design/circuit/sauna
	name = "sauna heater system"
	id = "sauna"
	req_tech = list(TECH_POWER = 2, TECH_ENGINEERING = 1)
	build_path = /obj/item/weapon/stock_parts/circuitboard/sublimator/sauna
	sort_string = "YAAAC"

/datum/design/circuit/washer
	name = "washing machine"
	id = "washer"
	req_tech = list(TECH_ENGINEERING = 1)
	build_path = /obj/item/weapon/stock_parts/circuitboard/washer
	sort_string = "YAAAD"

/datum/design/circuit/vending
	name = "vending machine"
	id = "vending"
	req_tech = list(TECH_ENGINEERING = 2)
	build_path = /obj/item/weapon/stock_parts/circuitboard/vending
	sort_string = "YAAAE"