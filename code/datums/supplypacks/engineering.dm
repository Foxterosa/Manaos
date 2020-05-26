/decl/hierarchy/supply_pack/engineering
	name = "Ingenieria"

/decl/hierarchy/supply_pack/engineering/smes_circuit
	name = "Electronica - Circuito de unidad de almacenamiento de energia superconductiva magnetica"
	contains = list(/obj/item/weapon/stock_parts/circuitboard/smes)
	cost = 20
	containername = "caja de circuitos de unidad de almacenamiento de energia superconductiva magnetica"

/decl/hierarchy/supply_pack/engineering/smescoil
	name = "Partes - Alambre magnetico superconductivo"
	contains = list(/obj/item/weapon/stock_parts/smes_coil)
	cost = 35
	containername = "caja de alambre magnetico superconductivo"

/decl/hierarchy/supply_pack/engineering/smescoil_weak
	name = "Partes - Alambre magnetico superconductivo simple"
	contains = list(/obj/item/weapon/stock_parts/smes_coil/weak)
	cost = 25
	containername = "caja de alambre magnetico superconductivo simple"

/decl/hierarchy/supply_pack/engineering/smescoil_super_capacity
	name = "Partes - Alambre superconductivo capacitante"
	contains = list(/obj/item/weapon/stock_parts/smes_coil/super_capacity)
	cost = 45
	containername = "caja de alambre superconductivo capacitante"

/decl/hierarchy/supply_pack/engineering/smescoil_super_io
	name = "Partes - Alambre superconductivo de Transmision"
	contains = list(/obj/item/weapon/stock_parts/smes_coil/super_io)
	cost = 45
	containername = "caja de alambre superconductivo de Transmision"

/decl/hierarchy/supply_pack/engineering/electrical
	name = "Herramientas - Mantenimiento electrico"
	contains = list(/obj/item/weapon/storage/toolbox/electrical = 2,
					/obj/item/clothing/gloves/insulated = 2,
					/obj/item/weapon/cell = 2,
					/obj/item/weapon/cell/high = 2)
	cost = 15
	containername = "caja de mantenimiento electrico"

/decl/hierarchy/supply_pack/engineering/mechanical
	name = "Herramientas - Mantenimiento mecanico"
	contains = list(/obj/item/weapon/storage/belt/utility/full = 3,
					/obj/item/clothing/suit/storage/hazardvest = 3,
					/obj/item/clothing/head/welding = 2,
					/obj/item/clothing/head/hardhat)
	cost = 10
	containername = "caja de mantenimiento mecanico"

/decl/hierarchy/supply_pack/engineering/solar
	name = "Energia - Pack solar"
	contains  = list(/obj/item/solar_assembly = 14,
					/obj/item/weapon/stock_parts/circuitboard/solar_control,
					/obj/item/weapon/tracker_electronics,
					/obj/item/weapon/paper/solar
					)
	cost = 15
	containername = "caja de pack solar"

/decl/hierarchy/supply_pack/engineering/solar_assembly
	name = "Energia - Montaje solar"
	contains  = list(/obj/item/solar_assembly = 16)
	cost = 10
	containername = "caja de montaje solar"

/decl/hierarchy/supply_pack/engineering/emitter
	name = "Equipamiento - Emisor"
	contains = list(/obj/machinery/power/emitter = 2)
	cost = 10
	containertype = /obj/structure/closet/crate/secure/large
	containername = "caja de emisores"
	access = access_engine_equip

/decl/hierarchy/supply_pack/engineering/field_gen
	name = "Equipamiento - Generador de barrera"
	contains = list(/obj/machinery/field_generator = 2)
	containertype = /obj/structure/closet/crate/large
	cost = 10
	containername = "caja de generadores de barrera"
	access = access_ce

/decl/hierarchy/supply_pack/engineering/sing_gen
	name = "Equipamiento - Generador de Singularidad"
	contains = list(/obj/machinery/the_singularitygen)
	cost = 10
	containertype = /obj/structure/closet/crate/secure/large
	containername = "caja de generador de Singularidad"
	access = access_ce

/decl/hierarchy/supply_pack/engineering/collector
	name = "Energia - Acumulador"
	contains = list(/obj/machinery/power/rad_collector = 2)
	cost = 8
	containertype = /obj/structure/closet/crate/secure/large
	containername = "caja de acumuladores"
	access = access_engine_equip

/decl/hierarchy/supply_pack/engineering/PA
	name = "Equipamiento - Acelerador de particulas"
	contains = list(/obj/structure/particle_accelerator/fuel_chamber,
					/obj/machinery/particle_accelerator/control_box,
					/obj/structure/particle_accelerator/particle_emitter/center,
					/obj/structure/particle_accelerator/particle_emitter/left,
					/obj/structure/particle_accelerator/particle_emitter/right,
					/obj/structure/particle_accelerator/power_box,
					/obj/structure/particle_accelerator/end_cap)
	cost = 40
	containertype = /obj/structure/largecrate
	containername = "caja de aceleradores de particulas"
	access = access_ce

/decl/hierarchy/supply_pack/engineering/pacman_parts
	name = "Energia - Partes de Generador Portatil P.A.C.M.A.N."
	contains = list(/obj/item/weapon/stock_parts/micro_laser,
					/obj/item/weapon/stock_parts/capacitor,
					/obj/item/weapon/stock_parts/matter_bin,
					/obj/item/weapon/stock_parts/circuitboard/pacman)
	cost = 45
	containername = "Kit de construccion de Generador Portatil P.A.C.M.A.N."
	containertype = /obj/structure/closet/crate/secure
	access = access_tech_storage

/decl/hierarchy/supply_pack/engineering/super_pacman_parts
	name = "Energia - Partes de Generador Portatil Super P.A.C.M.A.N."
	contains = list(/obj/item/weapon/stock_parts/micro_laser,
					/obj/item/weapon/stock_parts/capacitor,
					/obj/item/weapon/stock_parts/matter_bin,
					/obj/item/weapon/stock_parts/circuitboard/pacman/super)
	cost = 55
	containername = "Kit de construccion de Generador Portatil Super P.A.C.M.A.N."
	containertype = /obj/structure/closet/crate/secure
	access = access_tech_storage

/decl/hierarchy/supply_pack/engineering/teg
	name = "Energia - Generador Termoelectrico Mk1"
	contains = list(/obj/machinery/power/generator)
	cost = 75
	containertype = /obj/structure/closet/crate/secure/large
	containername = "caja de Generadores Termoelectricos Mk1"
	access = access_engine_equip

/decl/hierarchy/supply_pack/engineering/circulator
	name = "Equipamiento - Circulador Atmosferico Binario"
	contains = list(/obj/machinery/atmospherics/binary/circulator)
	cost = 60
	containertype = /obj/structure/closet/crate/secure/large
	containername = "caja de circuladores atmosfericos"
	access = access_atmospherics

/decl/hierarchy/supply_pack/engineering/air_dispenser
	name = "Equipamiento - Dispensador de Tuberias"
	contains = list(/obj/machinery/pipedispenser)
	cost = 35
	containertype = /obj/structure/closet/crate/secure/large
	containername = "caja de dispensadores de tuberias"
	access = access_atmospherics

/decl/hierarchy/supply_pack/engineering/disposals_dispenser
	name = "Equipamiento - Dispensador de tuberias de desechos"
	contains = list(/obj/machinery/pipedispenser/disposal)
	cost = 35
	containertype = /obj/structure/closet/crate/secure/large
	containername = "caja de dispensadores de tuberias de desechos"
	access = access_atmospherics

/decl/hierarchy/supply_pack/engineering/shield_generator
	name = "Equipamiento - Kit de construccion de Generadores de Escudo"
	contains = list(/obj/item/weapon/stock_parts/circuitboard/shield_generator, /obj/item/weapon/stock_parts/capacitor, /obj/item/weapon/stock_parts/micro_laser, /obj/item/weapon/stock_parts/smes_coil, /obj/item/weapon/stock_parts/console_screen)
	cost = 50
	containertype = /obj/structure/closet/crate/secure
	containername = "cajas de generadores de escudo"
	access = access_engine

/decl/hierarchy/supply_pack/engineering/smbig
	name = "Energia - Nucleo de Supermatter"
	contains = list(/obj/machinery/power/supermatter)
	cost = 150
	containertype = /obj/structure/closet/crate/secure/large/phoron
	containername = "caja de Supermatter (PELIGRO)"
	access = access_ce

/decl/hierarchy/supply_pack/engineering/fueltank
	name = "Liquidos - Tanque de combustible"
	contains = list(/obj/structure/reagent_dispensers/fueltank)
	cost = 8
	containertype = /obj/structure/largecrate
	containername = "caja de tanque de combustible"

/decl/hierarchy/supply_pack/engineering/robotics
	name = "Partes - Montajes de Robotica"
	contains = list(/obj/item/device/assembly/prox_sensor = 3,
					/obj/item/weapon/storage/toolbox/electrical,
					/obj/item/device/flash = 4,
					/obj/item/weapon/cell/high = 2)
	cost = 10
	containertype = /obj/structure/closet/crate/secure/gear
	containername = "caja de montajes de robotica"
	access = access_robotics

/decl/hierarchy/supply_pack/engineering/radsuit
	name = "Herramientas - Trajes de radiacion"
	contains = list(/obj/item/clothing/suit/radiation = 6,
			/obj/item/clothing/head/radiation = 6)
	cost = 20
	containertype = /obj/structure/closet/radiation
	containername = "locker de trajes de radiacion"

/decl/hierarchy/supply_pack/engineering/bluespacerelay
	name = "Partes - Partes de transmisor Bluespace de emergencia"
	contains = list(/obj/item/weapon/stock_parts/circuitboard/bluespacerelay,
					/obj/item/weapon/stock_parts/manipulator,
					/obj/item/weapon/stock_parts/manipulator,
					/obj/item/weapon/stock_parts/subspace/filter,
					/obj/item/weapon/stock_parts/subspace/crystal,
					/obj/item/weapon/storage/toolbox/electrical)
	cost = 75
	containername = "kit de ensamblaje de transmisor bluespace"

/decl/hierarchy/supply_pack/engineering/firefighter
	name = "Herramientas - Equipo para incendios"
	contains = list(/obj/item/clothing/suit/fire/firefighter,
			/obj/item/clothing/mask/gas,
			/obj/item/weapon/tank/emergency/oxygen/double/red,
			/obj/item/weapon/extinguisher,
			/obj/item/clothing/head/hardhat/red)
	cost = 20
	containertype = /obj/structure/closet/firecloset
	containername = "closet de incendios"

/decl/hierarchy/supply_pack/engineering/voidsuit_engineering
	name = "EVA - Traje de vacio, Ingenieria"
	contains = list(/obj/item/clothing/suit/space/void/engineering/alt,
					/obj/item/clothing/head/helmet/space/void/engineering/alt,
					/obj/item/clothing/shoes/magboots)
	cost = 120
	containername = "caja de trajes de vacio de ingenieria"
	containertype = /obj/structure/closet/crate/secure/large
	access = access_engine
