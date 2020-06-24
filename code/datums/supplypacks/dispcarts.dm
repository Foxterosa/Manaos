//bizarro alien code for dispenser_cartridges
/decl/hierarchy/supply_pack/dispenser_cartridges
	name = "Dispenser Cartridges"

#define SEC_PACK(_tname, _type, _name, _cname, _cost, _access)\
	decl/hierarchy/supply_pack/dispenser_cartridges{\
		_tname {\
			name = _name ;\
			containername = _cname ;\
			containertype = /obj/structure/closet/crate/secure;\
			access = list( _access );\
			cost = _cost ;\
			contains = list( _type , _type );\
		}\
	}
#define PACK(_tname, _type, _name, _cname, _cost)\
	decl/hierarchy/supply_pack/dispenser_cartridges{\
		_tname {\
			name = _name ;\
			containername = _cname ;\
			containertype = /obj/structure/closet/crate;\
			cost = _cost ;\
			contains = list( _type , _type );\
		}\
	}

// Chemistry-restricted (raw reagents excluding sugar/water)
//      Datum path  Contents type                                                       Supply pack name                  Container name                         Cost  Container access
SEC_PACK(hydrazine, /obj/item/weapon/reagent_containers/chem_disp_cartridge/hydrazine,  "Repuesto de sustancia - Hidracina",     "caja de cartuchos de Hidracina",     15, access_chemistry)
SEC_PACK(lithium,   /obj/item/weapon/reagent_containers/chem_disp_cartridge/lithium,    "Repuesto de sustancia - Litio",       "caja de cartuchos de litio",       15, access_chemistry)
SEC_PACK(carbon,    /obj/item/weapon/reagent_containers/chem_disp_cartridge/carbon,     "Repuesto de sustancia - Carbon",        "caja de cartuchos de carbon",        15, access_chemistry)
SEC_PACK(ammonia,   /obj/item/weapon/reagent_containers/chem_disp_cartridge/ammonia,    "Repuesto de sustancia - Amoniaco",       "caja de cartuchos de amoniaco",       15, access_chemistry)
SEC_PACK(oxygen,    /obj/item/weapon/reagent_containers/chem_disp_cartridge/acetone,    "Repuesto de sustancia - Acetona",       "caja de cartuchos de acetona",       15, access_chemistry)
SEC_PACK(sodium,    /obj/item/weapon/reagent_containers/chem_disp_cartridge/sodium,     "Repuesto de sustancia - Sodio",        "caja de cartuchos de sodio",        15, access_chemistry)
SEC_PACK(aluminium, /obj/item/weapon/reagent_containers/chem_disp_cartridge/aluminium,   "Repuesto de sustancia - Aluminio",      "caja de cartuchos de aluminio",      15, access_chemistry)
SEC_PACK(silicon,   /obj/item/weapon/reagent_containers/chem_disp_cartridge/silicon,    "Repuesto de sustancia - Silicona",       "caja de cartuchos de silicona",       15, access_chemistry)
SEC_PACK(phosphorus,/obj/item/weapon/reagent_containers/chem_disp_cartridge/phosphorus, "Repuesto de sustancia - Fosforo",    "caja de cartuchos de fosforo",    15, access_chemistry)
SEC_PACK(sulfur,    /obj/item/weapon/reagent_containers/chem_disp_cartridge/sulfur,     "Repuesto de sustancia - Sulfuro",        "caja de cartuchos de sulfuro",        15, access_chemistry)
SEC_PACK(hclacid,   /obj/item/weapon/reagent_containers/chem_disp_cartridge/hclacid,    "Repuesto de sustancia - Acido clorhidrico", "caja de cartuchos de acido clorhidrico", 15, access_chemistry)
SEC_PACK(potassium, /obj/item/weapon/reagent_containers/chem_disp_cartridge/potassium,  "Repuesto de sustancia - Potasio",     "caja de cartuchos de potasio",     15, access_chemistry)
SEC_PACK(iron,      /obj/item/weapon/reagent_containers/chem_disp_cartridge/iron,       "Repuesto de sustancia - Hierro",          "caja de cartuchos de hierro",          15, access_chemistry)
SEC_PACK(copper,    /obj/item/weapon/reagent_containers/chem_disp_cartridge/copper,     "Repuesto de sustancia - Cobre",        "caja de cartuchos de cobre",        15, access_chemistry)
SEC_PACK(mercury,   /obj/item/weapon/reagent_containers/chem_disp_cartridge/mercury,    "Repuesto de sustancia - Mercurio",       "caja de cartuchos de mercurio",       15, access_chemistry)
SEC_PACK(radium,    /obj/item/weapon/reagent_containers/chem_disp_cartridge/radium,     "Repuesto de sustancia - Radio",        "caja de cartuchos de radio",        15, access_chemistry)
SEC_PACK(ethanol,   /obj/item/weapon/reagent_containers/chem_disp_cartridge/ethanol,    "Repuesto de sustancia - Etanol",       "caja de cartuchos de etanol",       15, access_chemistry)
SEC_PACK(sacid,     /obj/item/weapon/reagent_containers/chem_disp_cartridge/sacid,      "Repuesto de sustancia - Sulfurico Acido", "caja de cartuchos de sulfurico acido", 15, access_chemistry)
SEC_PACK(tungsten,  /obj/item/weapon/reagent_containers/chem_disp_cartridge/tungsten,   "Repuesto de sustancia - Tungsteno",      "caja de cartuchos de tungsteno",      15, access_chemistry)

// Bar-restricted (alcoholic drinks)
//      Datum path Contents type                                                     Supply pack name             Container name                    Cost  Container access
SEC_PACK(beer,     /obj/item/weapon/reagent_containers/chem_disp_cartridge/beer,     "Repuesto de sustancia - Cerveza",     "caja de cartuchos de cerveza",     15, access_bar)
SEC_PACK(kahlua,   /obj/item/weapon/reagent_containers/chem_disp_cartridge/kahlua,   "Repuesto de sustancia - Kahlua",   "caja de cartuchos de kahlua",   15, access_bar)
SEC_PACK(whiskey,  /obj/item/weapon/reagent_containers/chem_disp_cartridge/whiskey,  "Repuesto de sustancia - Whiskey",  "caja de cartuchos de whiskey",  15, access_bar)
SEC_PACK(wine,     /obj/item/weapon/reagent_containers/chem_disp_cartridge/wine,     "Repuesto de sustancia - Wine",     "caja de cartuchos de wine",     15, access_bar)
SEC_PACK(vodka,    /obj/item/weapon/reagent_containers/chem_disp_cartridge/vodka,    "Repuesto de sustancia - Vodka",    "caja de cartuchos de vodka",    15, access_bar)
SEC_PACK(gin,      /obj/item/weapon/reagent_containers/chem_disp_cartridge/gin,      "Repuesto de sustancia - Gin",      "caja de cartuchos de gin",      15, access_bar)
SEC_PACK(rum,      /obj/item/weapon/reagent_containers/chem_disp_cartridge/rum,      "Repuesto de sustancia - Rum",      "caja de cartuchos de rum",      15, access_bar)
SEC_PACK(tequila,  /obj/item/weapon/reagent_containers/chem_disp_cartridge/tequila,  "Repuesto de sustancia - Tequila",  "caja de cartuchos de tequila",  15, access_bar)
SEC_PACK(vermouth, /obj/item/weapon/reagent_containers/chem_disp_cartridge/vermouth, "Repuesto de sustancia - Vermouth", "caja de cartuchos de vermouth", 15, access_bar)
SEC_PACK(cognac,   /obj/item/weapon/reagent_containers/chem_disp_cartridge/cognac,   "Repuesto de sustancia - Cognac",   "caja de cartuchos de cognac",   15, access_bar)
SEC_PACK(ale,      /obj/item/weapon/reagent_containers/chem_disp_cartridge/ale,      "Repuesto de sustancia - Ale",      "caja de cartuchos de ale",      15, access_bar)
SEC_PACK(mead,     /obj/item/weapon/reagent_containers/chem_disp_cartridge/mead,     "Repuesto de sustancia - Mead",     "caja de cartuchos de mead",     15, access_bar)

// Unrestricted (water, sugar, non-alcoholic drinks)
//  Datum path   Contents type                                                       Supply pack name                        Container name                                          Cost
PACK(water,      /obj/item/weapon/reagent_containers/chem_disp_cartridge/water,      "Repuesto de sustancia - Agua",               "caja de cartuchos de agua",                         15)
PACK(sugar,      /obj/item/weapon/reagent_containers/chem_disp_cartridge/sugar,      "Repuesto de sustancia - Azucar",               "caja de cartuchos de azucar",                         15)
PACK(ice,        /obj/item/weapon/reagent_containers/chem_disp_cartridge/ice,        "Repuesto de sustancia - Hielo",                 "caja de cartuchos de hielo",                           15)
PACK(tea,        /obj/item/weapon/reagent_containers/chem_disp_cartridge/tea,        "Repuesto de sustancia - Te",                 "caja de cartuchos de te",                           15)
PACK(green_tea,  /obj/item/weapon/reagent_containers/chem_disp_cartridge/green_tea,  "Repuesto de sustancia - Te Verde",           "caja de cartuchos de te verde",                     15)
PACK(chai_tea,   /obj/item/weapon/reagent_containers/chem_disp_cartridge/chai_tea,   "Repuesto de sustancia - Te Chai",            "caja de cartuchos de te chai",                      15)
PACK(red_tea,    /obj/item/weapon/reagent_containers/chem_disp_cartridge/red_tea,    "Repuesto de sustancia - Te Rooibos",         "caja de cartuchos de te rooibos ",                   15)
PACK(cola,       /obj/item/weapon/reagent_containers/chem_disp_cartridge/cola,       "Repuesto de sustancia - Space Cola",          "\improper caja de cartuchos de ",          15)
PACK(smw,        /obj/item/weapon/reagent_containers/chem_disp_cartridge/smw,        "Repuesto de sustancia - Space Mountain Wind", "\improper caja de cartuchos de space mountain wind", 15)
PACK(dr_gibb,    /obj/item/weapon/reagent_containers/chem_disp_cartridge/dr_gibb,    "Repuesto de sustancia - Dr. Gibb",            "\improper caja de cartuchos de dr.gibb",            15)
PACK(spaceup,    /obj/item/weapon/reagent_containers/chem_disp_cartridge/spaceup,    "Repuesto de sustancia - Space-Up",            "\improper caja de cartuchos de space-up",            15)
PACK(tonic,      /obj/item/weapon/reagent_containers/chem_disp_cartridge/tonic,      "Repuesto de sustancia - Tonica",         "caja de cartuchos de tonica",                   15)
PACK(sodawater,  /obj/item/weapon/reagent_containers/chem_disp_cartridge/sodawater,  "Repuesto de sustancia - Agua con gas",          "caja de cartuchos de agua con gas",                    15)
PACK(lemon_lime, /obj/item/weapon/reagent_containers/chem_disp_cartridge/lemon_lime, "Repuesto de sustancia - Zumo de Limon-Lima",    "juice caja de cartuchos de zumo de limon-lima",              15)
PACK(orange,     /obj/item/weapon/reagent_containers/chem_disp_cartridge/orange,     "Repuesto de sustancia - Zumo de Naranja",        "caja de cartuchos de zumo de naranja",                  15)
PACK(lime,       /obj/item/weapon/reagent_containers/chem_disp_cartridge/lime,       "Repuesto de sustancia - Zumo de Lima",          "caja de cartuchos de zumo de lima",                    15)
PACK(watermelon, /obj/item/weapon/reagent_containers/chem_disp_cartridge/watermelon, "Repuesto de sustancia - Zumo de Sandia",    "caja de cartuchos de zumo de sandia",              15)
PACK(coffee,     /obj/item/weapon/reagent_containers/chem_disp_cartridge/coffee,     "Repuesto de sustancia - Cafe",              "caja de cartuchos de cafe",                        15)
PACK(cafe_latte, /obj/item/weapon/reagent_containers/chem_disp_cartridge/cafe_latte, "Repuesto de sustancia - Cafe Latte",          "caja de cartuchos de cafe latte,",                    15)
PACK(soy_latte,  /obj/item/weapon/reagent_containers/chem_disp_cartridge/soy_latte,  "Repuesto de sustancia - Soy Latte",           "caja de cartuchos de soy Latte",                     15)
PACK(hot_coco,   /obj/item/weapon/reagent_containers/chem_disp_cartridge/hot_coco,   "Repuesto de sustancia - Hot Coco",            "coco caja de cartuchos de hot coco",                      15)
PACK(milk,       /obj/item/weapon/reagent_containers/chem_disp_cartridge/milk,       "Repuesto de sustancia - Leche",                "caja de cartuchos de leche",                          15)
PACK(cream,      /obj/item/weapon/reagent_containers/chem_disp_cartridge/cream,      "Repuesto de sustancia - Crema",               "caja de cartuchos de crema",                         15)

PACK(syrup_chocolate, /obj/item/weapon/reagent_containers/chem_disp_cartridge/syrup_chocolate, "Repuesto de sustancia - Sirope de chocolate",     "caja de cartuchos de sirope de chocolate ", 15)
PACK(syrup_caramel,   /obj/item/weapon/reagent_containers/chem_disp_cartridge/syrup_caramel,   "Repuesto de sustancia - Sirope de caramelo",       "caja de cartuchos de sirope de caramelo",   15)
PACK(syrup_vanilla,   /obj/item/weapon/reagent_containers/chem_disp_cartridge/syrup_vanilla,   "Repuesto de sustancia - Sirope de vainilla",       "caja de cartuchos de sirope de vainilla",   15)
PACK(syrup_pumpkin,   /obj/item/weapon/reagent_containers/chem_disp_cartridge/syrup_pumpkin,   "Repuesto de sustancia - Sirope de calabaza picante", "caja de cartuchos de sirope de calabaza picante",   15)

#undef SEC_PACK
#undef PACK
