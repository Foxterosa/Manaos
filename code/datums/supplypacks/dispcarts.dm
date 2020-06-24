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
SEC_PACK(hydrazine, /obj/item/weapon/reagent_containers/chem_disp_cartridge/hydrazine,  "Repuesto de sustancia - Hydrazine",     "hydrazine caja de cartuchos de ",     15, access_chemistry)
SEC_PACK(lithium,   /obj/item/weapon/reagent_containers/chem_disp_cartridge/lithium,    "Repuesto de sustancia - Lithium",       "lithium caja de cartuchos de ",       15, access_chemistry)
SEC_PACK(carbon,    /obj/item/weapon/reagent_containers/chem_disp_cartridge/carbon,     "Repuesto de sustancia - Carbon",        "carbon caja de cartuchos de ",        15, access_chemistry)
SEC_PACK(ammonia,   /obj/item/weapon/reagent_containers/chem_disp_cartridge/ammonia,    "Repuesto de sustancia - Ammonia",       "ammonia caja de cartuchos de ",       15, access_chemistry)
SEC_PACK(oxygen,    /obj/item/weapon/reagent_containers/chem_disp_cartridge/acetone,    "Repuesto de sustancia - Acetone",       "acetone caja de cartuchos de ",       15, access_chemistry)
SEC_PACK(sodium,    /obj/item/weapon/reagent_containers/chem_disp_cartridge/sodium,     "Repuesto de sustancia - Sodium",        "sodium caja de cartuchos de ",        15, access_chemistry)
SEC_PACK(aluminium, /obj/item/weapon/reagent_containers/chem_disp_cartridge/aluminium,   "Repuesto de sustancia - Aluminium",      "aluminium caja de cartuchos de ",      15, access_chemistry)
SEC_PACK(silicon,   /obj/item/weapon/reagent_containers/chem_disp_cartridge/silicon,    "Repuesto de sustancia - Silicon",       "silicon caja de cartuchos de ",       15, access_chemistry)
SEC_PACK(phosphorus,/obj/item/weapon/reagent_containers/chem_disp_cartridge/phosphorus, "Repuesto de sustancia - Phosphorus",    "phosphorus caja de cartuchos de ",    15, access_chemistry)
SEC_PACK(sulfur,    /obj/item/weapon/reagent_containers/chem_disp_cartridge/sulfur,     "Repuesto de sustancia - Sulfur",        "sulfur caja de cartuchos de ",        15, access_chemistry)
SEC_PACK(hclacid,   /obj/item/weapon/reagent_containers/chem_disp_cartridge/hclacid,    "Repuesto de sustancia - Hydrochloric Acid", "hydrochloric acid caja de cartuchos de ", 15, access_chemistry)
SEC_PACK(potassium, /obj/item/weapon/reagent_containers/chem_disp_cartridge/potassium,  "Repuesto de sustancia - Potassium",     "potassium caja de cartuchos de ",     15, access_chemistry)
SEC_PACK(iron,      /obj/item/weapon/reagent_containers/chem_disp_cartridge/iron,       "Repuesto de sustancia - Iron",          "iron caja de cartuchos de ",          15, access_chemistry)
SEC_PACK(copper,    /obj/item/weapon/reagent_containers/chem_disp_cartridge/copper,     "Repuesto de sustancia - Copper",        "copper caja de cartuchos de ",        15, access_chemistry)
SEC_PACK(mercury,   /obj/item/weapon/reagent_containers/chem_disp_cartridge/mercury,    "Repuesto de sustancia - Mercury",       "mercury caja de cartuchos de ",       15, access_chemistry)
SEC_PACK(radium,    /obj/item/weapon/reagent_containers/chem_disp_cartridge/radium,     "Repuesto de sustancia - Radium",        "radium caja de cartuchos de ",        15, access_chemistry)
SEC_PACK(ethanol,   /obj/item/weapon/reagent_containers/chem_disp_cartridge/ethanol,    "Repuesto de sustancia - Ethanol",       "ethanol caja de cartuchos de ",       15, access_chemistry)
SEC_PACK(sacid,     /obj/item/weapon/reagent_containers/chem_disp_cartridge/sacid,      "Repuesto de sustancia - Sulfuric Acid", "sulfuric acid caja de cartuchos de ", 15, access_chemistry)
SEC_PACK(tungsten,  /obj/item/weapon/reagent_containers/chem_disp_cartridge/tungsten,   "Repuesto de sustancia - Tungsten",      "tungsten caja de cartuchos de ",      15, access_chemistry)

// Bar-restricted (alcoholic drinks)
//      Datum path Contents type                                                     Supply pack name             Container name                    Cost  Container access
SEC_PACK(beer,     /obj/item/weapon/reagent_containers/chem_disp_cartridge/beer,     "Repuesto de sustancia - Cerveza",     "beer caja de cartuchos de ",     15, access_bar)
SEC_PACK(kahlua,   /obj/item/weapon/reagent_containers/chem_disp_cartridge/kahlua,   "Repuesto de sustancia - Kahlua",   "kahlua caja de cartuchos de ",   15, access_bar)
SEC_PACK(whiskey,  /obj/item/weapon/reagent_containers/chem_disp_cartridge/whiskey,  "Repuesto de sustancia - Whiskey",  "whiskey caja de cartuchos de ",  15, access_bar)
SEC_PACK(wine,     /obj/item/weapon/reagent_containers/chem_disp_cartridge/wine,     "Repuesto de sustancia - Wine",     "wine caja de cartuchos de ",     15, access_bar)
SEC_PACK(vodka,    /obj/item/weapon/reagent_containers/chem_disp_cartridge/vodka,    "Repuesto de sustancia - Vodka",    "vodka caja de cartuchos de ",    15, access_bar)
SEC_PACK(gin,      /obj/item/weapon/reagent_containers/chem_disp_cartridge/gin,      "Repuesto de sustancia - Gin",      "gin caja de cartuchos de ",      15, access_bar)
SEC_PACK(rum,      /obj/item/weapon/reagent_containers/chem_disp_cartridge/rum,      "Repuesto de sustancia - Rum",      "rum caja de cartuchos de ",      15, access_bar)
SEC_PACK(tequila,  /obj/item/weapon/reagent_containers/chem_disp_cartridge/tequila,  "Repuesto de sustancia - Tequila",  "tequila caja de cartuchos de ",  15, access_bar)
SEC_PACK(vermouth, /obj/item/weapon/reagent_containers/chem_disp_cartridge/vermouth, "Repuesto de sustancia - Vermouth", "vermouth caja de cartuchos de ", 15, access_bar)
SEC_PACK(cognac,   /obj/item/weapon/reagent_containers/chem_disp_cartridge/cognac,   "Repuesto de sustancia - Cognac",   "cognac caja de cartuchos de ",   15, access_bar)
SEC_PACK(ale,      /obj/item/weapon/reagent_containers/chem_disp_cartridge/ale,      "Repuesto de sustancia - Ale",      "ale caja de cartuchos de ",      15, access_bar)
SEC_PACK(mead,     /obj/item/weapon/reagent_containers/chem_disp_cartridge/mead,     "Repuesto de sustancia - Mead",     "mead caja de cartuchos de ",     15, access_bar)

// Unrestricted (water, sugar, non-alcoholic drinks)
//  Datum path   Contents type                                                       Supply pack name                        Container name                                          Cost
PACK(water,      /obj/item/weapon/reagent_containers/chem_disp_cartridge/water,      "Repuesto de sustancia - Agua",               "water caja de cartuchos de ",                         15)
PACK(sugar,      /obj/item/weapon/reagent_containers/chem_disp_cartridge/sugar,      "Repuesto de sustancia - Azucar",               "sugar caja de cartuchos de ",                         15)
PACK(ice,        /obj/item/weapon/reagent_containers/chem_disp_cartridge/ice,        "Repuesto de sustancia - Hielo",                 "ice caja de cartuchos de ",                           15)
PACK(tea,        /obj/item/weapon/reagent_containers/chem_disp_cartridge/tea,        "Repuesto de sustancia - Te",                 "tea caja de cartuchos de ",                           15)
PACK(green_tea,  /obj/item/weapon/reagent_containers/chem_disp_cartridge/green_tea,  "Repuesto de sustancia - Te Verde",           "green tea caja de cartuchos de ",                     15)
PACK(chai_tea,   /obj/item/weapon/reagent_containers/chem_disp_cartridge/chai_tea,   "Repuesto de sustancia - Te Chai",            "chai tea caja de cartuchos de ",                      15)
PACK(red_tea,    /obj/item/weapon/reagent_containers/chem_disp_cartridge/red_tea,    "Repuesto de sustancia - Te Rooibos",         "rooibos tea caja de cartuchos de ",                   15)
PACK(cola,       /obj/item/weapon/reagent_containers/chem_disp_cartridge/cola,       "Repuesto de sustancia - Space Cola",          "\improper caja de cartuchos de ",          15)
PACK(smw,        /obj/item/weapon/reagent_containers/chem_disp_cartridge/smw,        "Repuesto de sustancia - Space Mountain Wind", "\improper Space Mountain Wind caja de cartuchos de ", 15)
PACK(dr_gibb,    /obj/item/weapon/reagent_containers/chem_disp_cartridge/dr_gibb,    "Repuesto de sustancia - Dr. Gibb",            "\improper Dr. Gibb caja de cartuchos de ",            15)
PACK(spaceup,    /obj/item/weapon/reagent_containers/chem_disp_cartridge/spaceup,    "Repuesto de sustancia - Space-Up",            "\improper Space-Up caja de cartuchos de ",            15)
PACK(tonic,      /obj/item/weapon/reagent_containers/chem_disp_cartridge/tonic,      "Repuesto de sustancia - Tonica",         "caja de cartuchos de ",                   15)
PACK(sodawater,  /obj/item/weapon/reagent_containers/chem_disp_cartridge/sodawater,  "Repuesto de sustancia - Agua con gas",          "caja de cartuchos de ",                    15)
PACK(lemon_lime, /obj/item/weapon/reagent_containers/chem_disp_cartridge/lemon_lime, "Repuesto de sustancia - Zumo de Limon-Lima",    "juice caja de cartuchos de ",              15)
PACK(orange,     /obj/item/weapon/reagent_containers/chem_disp_cartridge/orange,     "Repuesto de sustancia - Zumo de Naranja",        "caja de cartuchos de ",                  15)
PACK(lime,       /obj/item/weapon/reagent_containers/chem_disp_cartridge/lime,       "Repuesto de sustancia - Zumo de Lima",          "caja de cartuchos de ",                    15)
PACK(watermelon, /obj/item/weapon/reagent_containers/chem_disp_cartridge/watermelon, "Repuesto de sustancia - Zumo de Sandia",    "caja de cartuchos de ",              15)
PACK(coffee,     /obj/item/weapon/reagent_containers/chem_disp_cartridge/coffee,     "Repuesto de sustancia - Cafe",              "caja de cartuchos de cafe",                        15)
PACK(cafe_latte, /obj/item/weapon/reagent_containers/chem_disp_cartridge/cafe_latte, "Repuesto de sustancia - Cafe Latte",          "caja de cartuchos de cafe latte,",                    15)
PACK(soy_latte,  /obj/item/weapon/reagent_containers/chem_disp_cartridge/soy_latte,  "Repuesto de sustancia - Soy Latte",           "soy latte caja de cartuchos de ",                     15)
PACK(hot_coco,   /obj/item/weapon/reagent_containers/chem_disp_cartridge/hot_coco,   "Repuesto de sustancia - Hot Coco",            "hot coco caja de cartuchos de ",                      15)
PACK(milk,       /obj/item/weapon/reagent_containers/chem_disp_cartridge/milk,       "Repuesto de sustancia - Leche",                "milk caja de cartuchos de ",                          15)
PACK(cream,      /obj/item/weapon/reagent_containers/chem_disp_cartridge/cream,      "Repuesto de sustancia - Crema",               "cream caja de cartuchos de ",                         15)

PACK(syrup_chocolate, /obj/item/weapon/reagent_containers/chem_disp_cartridge/syrup_chocolate, "Repuesto de sustancia - Sirope de chocolate",     "chocolate syrup caja de cartuchos de ", 15)
PACK(syrup_caramel,   /obj/item/weapon/reagent_containers/chem_disp_cartridge/syrup_caramel,   "Repuesto de sustancia - Sirope de caramelo",       "caramel syrup caja de cartuchos de ",   15)
PACK(syrup_vanilla,   /obj/item/weapon/reagent_containers/chem_disp_cartridge/syrup_vanilla,   "Repuesto de sustancia - Sirope de vainilla",       "vanilla syrup caja de cartuchos de ",   15)
PACK(syrup_pumpkin,   /obj/item/weapon/reagent_containers/chem_disp_cartridge/syrup_pumpkin,   "Repuesto de sustancia - Sirope de calabaza picante", "pumpkin spice syrup caja de cartuchos de ",   15)

#undef SEC_PACK
#undef PACK
