
-- ░█████╗░██████╗░███████╗░█████╗░████████╗███████╗██████╗░  ██████╗░██╗░░░██╗  ██╗░░██╗░█████╗░███████╗
-- ██╔══██╗██╔══██╗██╔════╝██╔══██╗╚══██╔══╝██╔════╝██╔══██╗  ██╔══██╗╚██╗░██╔╝  ██║░██╔╝██╔══██╗██╔════╝
-- ██║░░╚═╝██████╔╝█████╗░░███████║░░░██║░░░█████╗░░██║░░██║  ██████╦╝░╚████╔╝░  █████═╝░██║░░██║█████╗░░
-- ██║░░██╗██╔══██╗██╔══╝░░██╔══██║░░░██║░░░██╔══╝░░██║░░██║  ██╔══██╗░░╚██╔╝░░  ██╔═██╗░██║░░██║██╔══╝░░
-- ╚█████╔╝██║░░██║███████╗██║░░██║░░░██║░░░███████╗██████╔╝  ██████╦╝░░░██║░░░  ██║░╚██╗╚█████╔╝███████╗
-- ░╚════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝░░░╚═╝░░░╚══════╝╚═════╝░  ╚═════╝░░░░╚═╝░░░  ╚═╝░░╚═╝░╚════╝░╚══════╝

-- ░██████╗░█████╗░██████╗░██╗██████╗░████████╗░██████╗
-- ██╔════╝██╔══██╗██╔══██╗██║██╔══██╗╚══██╔══╝██╔════╝
-- ╚█████╗░██║░░╚═╝██████╔╝██║██████╔╝░░░██║░░░╚█████╗░
-- ░╚═══██╗██║░░██╗██╔══██╗██║██╔═══╝░░░░██║░░░░╚═══██╗
-- ██████╔╝╚█████╔╝██║░░██║██║██║░░░░░░░░██║░░░██████╔╝
-- ╚═════╝░░╚════╝░╚═╝░░╚═╝╚═╝╚═╝░░░░░░░░╚═╝░░░╚═════╝░

Config = {}

--Add your locations below! This uses qtarget. Make sure the ID is in order and its also in the database when you add a new unit. 
Config.Locations = {
	-- PINK CAGE HOTEL
	{ name = 'Pink Cage 1', location = 'Pink Cage - Room 1', coords = vector3(307.1, -213.19, 54.22),q_length = 1.4, q_width = 0.6, q_minZ = 51.62, q_maxZ = 55.62, q_heading = 340, price = 150000, keyname = 'pinkcage1' },
	{ name = 'Pink Cage 2', location = 'Pink Cage - Room 2', coords = vector3(310.86, -203.37, 54.22),q_length = 1.4, q_width = 0.6, q_minZ = 51.62, q_maxZ = 55.62, q_heading = 340, price = 150000, keyname = 'pinkcage2' },
	{ name = 'Pink Cage 3', location = 'Pink Cage - Room 3', coords = vector3(315.89, -194.42, 54.23),q_length = 0.4, q_width = 1.4, q_minZ = 51.63, q_maxZ = 55.63, q_heading = 339, price = 150000, keyname = 'pinkcage3' },
	{ name = 'Pink Cage 4', location = 'Pink Cage - Room 4', coords = vector3(347.14, -199.78, 54.22),q_length = 1.6, q_width = 0.6, q_minZ = 51.82, q_maxZ = 55.82, q_heading = 337, price = 150000, keyname = 'pinkcage4' },
	{ name = 'Pink Cage 5', location = 'Pink Cage - Room 5', coords = vector3(343.42, -209.69, 54.09),q_length = 1.6, q_width = 0.6, q_minZ = 51.69, q_maxZ = 55.69, q_heading = 337, price = 150000, keyname = 'pinkcage5' },
	{ name = 'Pink Cage 6', location = 'Pink Cage - Room 6', coords = vector3(339.54, -219.54, 54.09),q_length = 1.6, q_width = 0.6, q_minZ = 51.69, q_maxZ = 55.69, q_heading = 337, price = 150000, keyname = 'pinkcage6' },
	{ name = 'Pink Cage 7', location = 'Pink Cage - Room 7', coords = vector3(314.83, -219.97, 58.02),q_length = 1.6, q_width = 0.6, q_minZ = 57.12, q_maxZ = 59.92, q_heading = 250, price = 150000, keyname = 'pinkcage7' },
	{ name = 'Pink Cage 8', location = 'Pink Cage - Room 8', coords = vector3(307.21, -213.32, 58.02),q_length = 1.6, q_width = 0.6, q_minZ = 57.12, q_maxZ = 59.92, q_heading = 160, price = 150000, keyname = 'pinkcage8' },
	{ name = 'Pink Cage 9', location = 'Pink Cage - Room 9', coords = vector3(311.0, -203.41, 58.02),q_length = 1.6, q_width = 0.6, q_minZ = 57.12, q_maxZ = 59.92, q_heading = 160, price = 150000, keyname = 'pinkcage9' },
	{ name = 'Pink Cage 10', location = 'Pink Cage - Room 10', coords = vector3(315.82, -194.56, 58.02),q_length = 1.6, q_width = 0.6, q_minZ = 57.12, q_maxZ = 59.92, q_heading = 250, price = 150000, keyname = 'pinkcage10' },
	{ name = 'Pink Cage 11', location = 'Pink Cage - Room 11', coords = vector3(334.89, -227.65, 58.02),q_length = 1.6, q_width = 0.6, q_minZ = 57.12, q_maxZ = 59.92, q_heading = 250, price = 150000, keyname = 'pinkcage11' },
	{ name = 'Pink Cage 12', location = 'Pink Cage - Room 12', coords = vector3(339.53, -219.56, 58.02),q_length = 1.6, q_width = 0.6, q_minZ = 57.12, q_maxZ = 59.92, q_heading = 160, price = 150000, keyname = 'pinkcage12' },
	{ name = 'Pink Cage 13', location = 'Pink Cage - Room 13', coords = vector3(343.36, -209.69, 58.02),q_length = 1.6, q_width = 0.6, q_minZ = 57.12, q_maxZ = 59.92, q_heading = 160, price = 150000, keyname = 'pinkcage13' },
	{ name = 'Pink Cage 14', location = 'Pink Cage - Room 14', coords = vector3(347.01, -199.74, 58.02),q_length = 1.6, q_width = 0.6, q_minZ = 57.12, q_maxZ = 59.92, q_heading = 160, price = 150000, keyname = 'pinkcage14' },
	-- Mirror Park Houses
	{ name = 'Mirror Park 7346', location = 'Mirror Park House - W 7346', coords = vector3(1100.42, -450.77, 67.4),q_length = 1.6, q_width = 0.4, q_minZ = 69.4, q_maxZ = 65.4, q_heading = 352, price = 300000, keyname = 'mirrorpark7346' },
	{ name = 'Mirror Park 7333', location = 'Mirror Park House - W 7333', coords = vector3(1221.61, -669.72, 63.49),q_length = 0.4, q_width = 1.6, q_minZ = 61.09, q_maxZ = 65.09, q_heading = 12, price = 300000, keyname = 'mirrorpark7333' },
	{ name = 'Mirror Park 7343', location = 'Mirror Park House - E 7343', coords = vector3(1251.14, -494.07, 69.52),q_length = 1.6, q_width = 0.4, q_minZ = 67.52, q_maxZ = 71.52, q_heading = 347, price = 300000, keyname = 'mirrorpark7343' },
	{ name = 'Mirror Park 7320', location = 'Mirror Park House - 7320', coords = vector3(978.91, -716.55, 57.8),q_length = 0.4, q_width = 1.6, q_minZ = 55.8, q_maxZ = 59.8, q_heading = 311, price = 300000, keyname = 'mirrorpark7320' },
	{ name = 'Mirror Park 7317', location = 'Mirror Park House - 7317', coords = vector3(943.02, -653.05, 58.03),q_length = 0.4, q_width = 1.6, q_minZ = 56.3, q_maxZ = 60.3, q_heading = 220, price = 300000, keyname = 'mirrorpark7317' },
	-- Beach Apartment
	{ name = 'Beach Apartment 8209', location = 'Beach Apartment - 8209', coords = vector3(-1150.26, -1521.54, 10.63),q_length = 0.4, q_width = 1.6, q_minZ = 8.03, q_maxZ = 12.03, q_heading = 215, price = 150000, keyname = 'beachapartment8209' },
	-- Franklin's House
	{ name = 'House 6085', location = 'House 6085', coords = vector3(8.04, 539.17, 175.83),q_length = 0.6, q_width = 2.0, q_minZ = 174.83, q_maxZ = 178.83, q_heading = 330, price = 350000, keyname = 'house6085' },
	-- Michael's House
	{ name = 'House 7063', location = 'House 7063', coords = vector3(-816.44, 178.28, 72.07),q_length = 2.2, q_width = 0.6, q_minZ = 8.03, q_maxZ = 70.47, q_heading = 74.47, price = 1000000, keyname = 'house7063' },
	-- Yellow Jack Inn
	{ name = 'Yellow Jack Inn - 3045', location = 'Yellow Jack Inn - 3045', coords = vector3(1990.57, 3053.42, 47.21),q_length = 0.4, q_width = 1.6, q_minZ = 44.61, q_maxZ = 48.61, q_heading = 148, price = 200000, keyname = 'yellowjackinn' },
	-- Trevor's Trailer
	{ name = 'Trailer 3009', location = 'Trailer 3009', coords = vector3(1973.33, 3815.76, 33.43),q_length = 0.4, q_width = 1.6, q_minZ = 31.03, q_maxZ = 35.03, q_heading = 30, price = 120000, keyname = 'trailer3009' },
	-- Underground Secret Garage
	{ name = 'Garage 9258', location = 'Garage 9258', coords = vector3(950.91, -1698.21, 29.56),q_length = 5.4, q_width = 0.6, q_minZ = 28.96, q_maxZ = 34.36, q_heading = 355, price = 500000, keyname = 'garage9258' },
	-- Record A Studio
	{ name = 'Record A Studio - 7106', location = 'Record A Studio - 7106', coords = vector3(474.13, -104.01, 63.16),q_length = 3.0, q_width = 1, q_minZ = 60.56, q_maxZ = 64.56, q_heading = 250, price = 400000, keyname = 'recordastudio' },
	-- WiWang Records Garage
	{ name = 'WiWang', location = 'WiWang', coords = vector3(-816.24, -740.22, 23.21),q_length = 1.4, q_width = 6.6, q_minZ = 22.21, q_maxZ = 26.21, q_heading = 0, price = 400000, keyname = 'wiwang' },
	-- Underground Secret Garage
	{ name = 'Garage 9286', location = 'Garage 9286', coords = vector3(859.29, -2367.07, 30.35),q_length = 5.0, q_width = 1.0, q_minZ = 29.35, q_maxZ = 33.15, q_heading = 265, price = 500000, keyname = 'boostinggaragekey' },
	-- Auntie's House
	{ name = 'House 9075', location = 'House 9075', coords = vector3(-14.22, -1440.94, 31.1),q_length = 1.8, q_width = 1.0, q_minZ = 30.1, q_maxZ = 32.5, q_heading = 90, price = 250000, keyname = 'house9075' },
	-- Lester's House
	{ name = 'House 9340', location = 'House 9340', coords = vector3(1274.28, -1720.19, 54.66),q_length = 1.6, q_width = 1.0, q_minZ = 53.66, q_maxZ = 56.26, q_heading = 295, price = 250000, keyname = 'house9340' },
	-- MILLION DOLLAR APARTMENT 1
	{ name = 'Floor 47 Apartment', location = 'Floor 47 Apartment', coords = vector3(-24.53, -597.61, 80.03),q_length = 1.6, q_width = 1.0, q_minZ = 79.03, q_maxZ = 81.63, q_heading = 340, price = 1000000, keyname = 'floor47key' },
	--- MILLION DOLLAR APRARTMENT 2
	{ name = 'Floor 49 Apartment', location = 'Floor 49 Apartment', coords = vector3(-17.97, -582.1, 90.11),q_length = 1.6, q_width = 1.0, q_minZ = 89.11, q_maxZ = 91.71, q_heading = 340, price = 1000000, keyname = 'floor49key' },
	--- TEQUI-LA-LA
	{ name = 'Tequilala', location = 'Tequilala', coords = vector3(-561.92, 293.34, 87.49),q_length = 1.8, q_width = 1.0, q_minZ = 86.49, q_maxZ = 89.29, q_heading = 85, price = 400000, keyname = 'tequilalakey' },
	--- Garage 8198
	{ name = 'Garage 8198', location = 'Garage 8198', coords = vector3(945.92, -985.67, 39.11),q_length = 6.0, q_width = 1.0, q_minZ = 38.11, q_maxZ = 43.71, q_heading = 275, price = 500000, keyname = 'garagekey8198' },
	---- Little House Key
	{ name = 'Little House', location = 'Little House', coords = vector3(2557.71, 6191.21, 165.39),q_length = 0.4, q_width = 1.0, q_minZ = 164.39, q_maxZ = 166.59, q_heading = 185, price = 250000, keyname = 'littlehousekey' },
	
}