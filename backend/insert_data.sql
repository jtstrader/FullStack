INSERT INTO products(product_id, product_name, product_description, category, amount_in_stock, acme_rating, user_rating)
VALUES
	(1, 'Hammer', 'A deviced used to hit things, and sometimes cook steak.', 'Holy', 594868, 1.13, 2.02),
	(2, 'Nails', 'Used by a hammer to attach things to walls, taxidermied fish, or plants.', 'Godly', 588340, 3.77, 0.67),
	(3, 'Screwdriver', 'Used to hit nails when your hammer breaks!', 'Godly', 422124, 2.27, 4.72),
	(4, 'Uranium-238 (5 kg)', 'Used to create bombs or really cool glowing dust for art class! Known to cause cancer.', 'Evil', 670605, 3.89, 1.63),
	(5, 'Turnip Flavored Grenades', 'Grenades that are just BURSTING with flavor!', 'General', 306960, 1.22, 3.90),
	(6, 'Iron Anvil', 'An anvil that can be used as a table for breakfast, or for forging weapons to fight the abominations of the deep.', 'Evil', 962966, 2.47, 1.80),
	(7, 'Mk. 2000 Ray Gun', 'Porter legacy, let it be the mighty death to the zombies that roam the charred Earth...', 'Evil', 395431, 1.44, 0.20),
	(8, 'ACME Inc. Dynamite', 'Our special brand of dynamite! Goes off without lighting 20% of the time!', 'Holy', 431824, 2.46, 1.96),
	(9, 'Cactus Football', 'A football shaped like a catus. Also tastes and looks like a cactus... It is actually just a cactus thrown like a football...', 'Holy', 864346, 2.15, 3.58),
	(10, 'Antimatter Egg', 'An egg of ultimate proportions 1000x stronger than Dilithium, which powers multiple reactors around the world.', 'Holy', 646598, 3.92, 0.92),
	(11, 'Soul of Harambe', 'The essence of a legend long gone...', 'Holy', 553589, 2.03, 1.18),
	(12, 'Mint Air Freshener', 'Air freshener to block out the sent of baby diapers and smoke from $35 a night hotels.', 'Potato', 162523, 2.38, 0.92),
	(13, 'Black Powder Bomb', 'Good old bombs from the past, used by pirates and insurgents to overthrow tyrannical monarchies.', 'General', 114052, 3.57, 3.60),
	(14, 'Broken Surge Protector', 'Good for pranking your friends! (and setting their house on fire...)', 'Unsafe', 908076, 2.07, 1.04),
	(15, 'Broken 5GB USB Drive', 'Good for pranking your friends! (and wiping their UEFI...)', 'General', 311448, 4.88, 3.50),
	(16, 'Penny', 'Good for paying off your bank loans, if you want to make a lot of enemies and waste a lot of time...', 'General', 231804, 4.39, 2.34),
	(17, 'Orb of Time and Space', 'A device used by modern scientists to investigate the grand infinity of space.', 'Unsafe', 278515, 2.50, 1.54),
	(18, 'Bread Sandwich', 'A piece of bread stuck between two other pieces of bread. It is 3 pieces of bread. Bread sandwich.', 'Potato', 708430, 4.38, 1.41),
	(19, 'Lead Binnoculars', 'Binnoculars that are supremely powerful. Only causes lead poisoning after extended usage!', 'Potato', 305880, 4.20, 1.40),
	(20, 'Plutonium-239 (5 kg)', 'Used to create bombs or really REALLY cool glowing dust! Known to cause cancer and ulcers.', 'Potato', 82707, 0.06, 1.58),
	(21, 'Far Cry 4', 'A video game that somehow got added to our inventory but belongs nonetheless!', 'Holy', 689401, 2.17, 3.62),
	(22, 'Lord of the Wings', 'A US Western ripoff of Lord of the Rings, sold only in broken down Blockbusters.', 'Holy', 831353, 0.29, 4.23),
	(23, 'Big Mac 2', 'The second Big Mac.', 'Unsafe', 395372, 1.96, 0.16),
	(24, 'Whoopie Cushion', 'A hilarious device originating from the beginning of time. Theorized to have been the reason Brutus helped kill Caesar.', 'Unsafe', 194576, 2.59, 1.35),
	(25, 'Notepad--', 'A notepad with a white background and white text. Also unzips a zip bomb every time it is opened.', 'Potato', 353635, 3.55, 0.08),
	(26, 'Eaten Wizard Hat', 'A half eaten wizard hat. Comes with the capybara that ate it.', 'Evil', 101390, 3.41, 2.92),
	(27, 'Wizard Lizard', 'A legendary artifact of a time long past, said to have been in the mind of a great man before being forgotten due to lazy subordinates.', 'Unsafe', 747766, 4.45, 2.61),
	(28, 'Torn Blue Shirt', 'A torn blue gucci shirt. Marked up price because people are sheep.', 'Evil', 95004, 3.77, 4.50),
	(29, 'ACME Inc. Cell Phone', 'Battery can last at most 10 minutes if on charger. Make sure to keep away from water, as it can explode.', 'Evil', 915857, 4.91, 0.93);
INSERT INTO products_yearly_data(year_id, year, units_sold, production_cost, distribution_cost, retail_price)
VALUES
	(1, TO_DATE('1990', 'YYYY'), 273478, 72.88, 75.56, 82.52),
	(2, TO_DATE('1991', 'YYYY'), 217880, 56.71, 67.22, 72.35),
	(3, TO_DATE('1992', 'YYYY'), 159657, 73.90, 95.49, 98.47),
	(4, TO_DATE('1993', 'YYYY'), 61303, 71.11, 84.76, 103.70),
	(5, TO_DATE('1994', 'YYYY'), 182994, 72.79, 79.49, 83.48),
	(6, TO_DATE('1995', 'YYYY'), 308843, 25.91, 66.58, 91.86),
	(7, TO_DATE('1996', 'YYYY'), 717339, 95.69, 101.95, 103.39),
	(8, TO_DATE('1997', 'YYYY'), 218647, 47.58, 59.35, 64.31),
	(9, TO_DATE('1998', 'YYYY'), 210292, 1.40, 93.83, 102.91),
	(10, TO_DATE('1999', 'YYYY'), 219207, 33.27, 75.48, 82.10),
	(11, TO_DATE('1990', 'YYYY'), 74922, 55.76, 60.12, 65.45),
	(12, TO_DATE('1991', 'YYYY'), 191157, 99.01, 119.51, 120.55),
	(13, TO_DATE('1992', 'YYYY'), 94001, 30.39, 86.55, 102.24),
	(14, TO_DATE('1993', 'YYYY'), 249562, 46.69, 51.58, 61.43),
	(15, TO_DATE('1994', 'YYYY'), 721919, 32.51, 53.04, 58.41),
	(16, TO_DATE('1995', 'YYYY'), 210375, 15.98, 45.22, 55.49),
	(17, TO_DATE('1996', 'YYYY'), 365311, 31.51, 53.82, 64.79),
	(18, TO_DATE('1997', 'YYYY'), 25762, 59.01, 65.35, 67.44),
	(19, TO_DATE('1998', 'YYYY'), 183392, 44.92, 50.19, 50.88),
	(20, TO_DATE('1999', 'YYYY'), 272600, 2.43, 72.21, 84.60),
	(21, TO_DATE('1990', 'YYYY'), 386818, 37.20, 83.46, 97.75),
	(22, TO_DATE('1991', 'YYYY'), 322599, 34.29, 71.80, 76.53),
	(23, TO_DATE('1992', 'YYYY'), 351880, 59.23, 98.67, 122.35),
	(24, TO_DATE('1993', 'YYYY'), 104604, 96.85, 107.24, 124.96),
	(25, TO_DATE('1994', 'YYYY'), 57111, 98.04, 109.21, 134.93),
	(26, TO_DATE('1995', 'YYYY'), 284084, 60.52, 74.21, 76.47),
	(27, TO_DATE('1996', 'YYYY'), 111055, 81.76, 91.86, 94.04),
	(28, TO_DATE('1997', 'YYYY'), 39807, 43.52, 92.91, 107.42),
	(29, TO_DATE('1998', 'YYYY'), 235186, 7.59, 43.38, 58.74),
	(30, TO_DATE('1999', 'YYYY'), 224919, 94.25, 98.80, 99.81),
	(31, TO_DATE('1990', 'YYYY'), 424334, 53.23, 63.62, 67.20),
	(32, TO_DATE('1991', 'YYYY'), 104824, 89.30, 111.41, 116.42),
	(33, TO_DATE('1992', 'YYYY'), 121256, 53.22, 55.57, 63.67),
	(34, TO_DATE('1993', 'YYYY'), 424089, 15.71, 44.84, 80.50),
	(35, TO_DATE('1994', 'YYYY'), 31156, 40.57, 61.03, 72.35),
	(36, TO_DATE('1995', 'YYYY'), 470827, 39.74, 93.55, 113.95),
	(37, TO_DATE('1996', 'YYYY'), 168479, 63.80, 75.27, 79.19),
	(38, TO_DATE('1997', 'YYYY'), 459285, 97.62, 105.48, 121.85),
	(39, TO_DATE('1998', 'YYYY'), 130199, 56.05, 67.42, 83.39),
	(40, TO_DATE('1999', 'YYYY'), 270683, 20.42, 21.53, 85.55),
	(41, TO_DATE('1990', 'YYYY'), 224484, 14.52, 41.47, 46.35),
	(42, TO_DATE('1991', 'YYYY'), 552661, 28.28, 33.67, 34.31),
	(43, TO_DATE('1992', 'YYYY'), 245799, 93.44, 105.91, 113.06),
	(44, TO_DATE('1993', 'YYYY'), 208733, 9.72, 13.78, 36.53),
	(45, TO_DATE('1994', 'YYYY'), 162484, 40.40, 82.13, 100.94),
	(46, TO_DATE('1995', 'YYYY'), 410269, 80.06, 93.63, 103.09),
	(47, TO_DATE('1996', 'YYYY'), 110897, 84.42, 101.22, 111.92),
	(48, TO_DATE('1997', 'YYYY'), 56965, 76.77, 87.06, 93.58),
	(49, TO_DATE('1998', 'YYYY'), 370633, 10.32, 12.25, 12.89),
	(50, TO_DATE('1999', 'YYYY'), 176181, 89.68, 102.55, 111.37),
	(51, TO_DATE('1990', 'YYYY'), 149402, 34.41, 66.60, 88.34),
	(52, TO_DATE('1991', 'YYYY'), 337117, 76.28, 91.95, 102.40),
	(53, TO_DATE('1992', 'YYYY'), 307737, 27.97, 70.16, 99.51),
	(54, TO_DATE('1993', 'YYYY'), 178930, 66.49, 73.99, 76.23),
	(55, TO_DATE('1994', 'YYYY'), 489515, 36.59, 70.38, 73.93),
	(56, TO_DATE('1995', 'YYYY'), 207052, 77.01, 93.84, 114.76),
	(57, TO_DATE('1996', 'YYYY'), 400228, 27.14, 45.86, 51.81),
	(58, TO_DATE('1997', 'YYYY'), 290975, 68.69, 91.75, 96.35),
	(59, TO_DATE('1998', 'YYYY'), 135248, 92.81, 99.70, 122.43),
	(60, TO_DATE('1999', 'YYYY'), 241921, 38.21, 58.80, 64.21),
	(61, TO_DATE('1990', 'YYYY'), 599548, 86.62, 100.64, 114.40),
	(62, TO_DATE('1991', 'YYYY'), 192710, 30.03, 34.96, 96.52),
	(63, TO_DATE('1992', 'YYYY'), 383022, 58.81, 78.08, 96.78),
	(64, TO_DATE('1993', 'YYYY'), 8118, 96.87, 104.81, 111.50),
	(65, TO_DATE('1994', 'YYYY'), 154046, 62.78, 63.08, 88.60),
	(66, TO_DATE('1995', 'YYYY'), 467453, 82.66, 89.97, 104.15),
	(67, TO_DATE('1996', 'YYYY'), 522660, 33.05, 37.13, 40.09),
	(68, TO_DATE('1997', 'YYYY'), 317682, 0.52, 52.31, 66.98),
	(69, TO_DATE('1998', 'YYYY'), 204935, 98.38, 105.03, 107.58),
	(70, TO_DATE('1999', 'YYYY'), 128970, 74.87, 91.21, 99.90),
	(71, TO_DATE('1990', 'YYYY'), 359601, 58.40, 66.73, 72.58),
	(72, TO_DATE('1991', 'YYYY'), 40706, 61.24, 75.58, 82.00),
	(73, TO_DATE('1992', 'YYYY'), 83334, 8.06, 8.47, 51.19),
	(74, TO_DATE('1993', 'YYYY'), 192192, 98.22, 122.32, 144.22),
	(75, TO_DATE('1994', 'YYYY'), 393639, 86.31, 106.72, 108.24),
	(76, TO_DATE('1995', 'YYYY'), 316091, 45.05, 53.76, 65.44),
	(77, TO_DATE('1996', 'YYYY'), 510637, 54.46, 57.78, 68.92),
	(78, TO_DATE('1997', 'YYYY'), 274355, 58.95, 65.74, 79.96),
	(79, TO_DATE('1998', 'YYYY'), 67215, 27.07, 49.00, 54.42),
	(80, TO_DATE('1999', 'YYYY'), 73368, 36.17, 76.48, 84.03),
	(81, TO_DATE('1990', 'YYYY'), 181793, 91.48, 97.00, 102.23),
	(82, TO_DATE('1991', 'YYYY'), 128949, 44.42, 49.15, 52.50),
	(83, TO_DATE('1992', 'YYYY'), 115068, 18.29, 19.70, 86.31),
	(84, TO_DATE('1993', 'YYYY'), 106962, 36.62, 39.43, 92.38),
	(85, TO_DATE('1994', 'YYYY'), 582317, 89.33, 110.64, 120.41),
	(86, TO_DATE('1995', 'YYYY'), 102474, 89.88, 98.32, 98.38),
	(87, TO_DATE('1996', 'YYYY'), 334707, 40.04, 47.17, 55.65),
	(88, TO_DATE('1997', 'YYYY'), 386230, 28.80, 89.67, 103.02),
	(89, TO_DATE('1998', 'YYYY'), 390414, 41.16, 62.73, 72.00),
	(90, TO_DATE('1999', 'YYYY'), 113851, 27.16, 64.07, 73.49),
	(91, TO_DATE('1990', 'YYYY'), 315948, 53.17, 62.02, 70.81),
	(92, TO_DATE('1991', 'YYYY'), 230478, 46.19, 47.33, 58.17),
	(93, TO_DATE('1992', 'YYYY'), 585174, 84.63, 105.76, 125.04),
	(94, TO_DATE('1993', 'YYYY'), 559219, 18.74, 69.08, 71.33),
	(95, TO_DATE('1994', 'YYYY'), 121007, 65.29, 67.04, 76.25),
	(96, TO_DATE('1995', 'YYYY'), 405516, 82.85, 90.18, 99.77),
	(97, TO_DATE('1996', 'YYYY'), 399929, 90.24, 90.55, 99.78),
	(98, TO_DATE('1997', 'YYYY'), 434076, 80.74, 80.90, 87.79),
	(99, TO_DATE('1998', 'YYYY'), 165238, 98.57, 99.87, 114.83),
	(100, TO_DATE('1999', 'YYYY'), 502704, 19.72, 20.83, 24.84),
	(101, TO_DATE('1990', 'YYYY'), 44302, 22.74, 27.26, 31.32),
	(102, TO_DATE('1991', 'YYYY'), 74258, 56.40, 81.83, 95.33),
	(103, TO_DATE('1992', 'YYYY'), 75173, 43.15, 56.23, 61.69),
	(104, TO_DATE('1993', 'YYYY'), 13850, 10.85, 11.86, 31.46),
	(105, TO_DATE('1994', 'YYYY'), 239164, 36.73, 45.71, 50.39),
	(106, TO_DATE('1995', 'YYYY'), 51023, 56.25, 60.37, 64.67),
	(107, TO_DATE('1996', 'YYYY'), 319051, 42.39, 88.20, 90.06),
	(108, TO_DATE('1997', 'YYYY'), 309581, 16.18, 17.75, 69.01),
	(109, TO_DATE('1998', 'YYYY'), 21386, 43.11, 44.96, 54.35),
	(110, TO_DATE('1999', 'YYYY'), 228242, 2.62, 73.47, 73.85),
	(111, TO_DATE('1990', 'YYYY'), 224408, 71.73, 88.74, 92.32),
	(112, TO_DATE('1991', 'YYYY'), 101580, 81.64, 84.90, 86.15),
	(113, TO_DATE('1992', 'YYYY'), 391004, 29.25, 73.60, 97.74),
	(114, TO_DATE('1993', 'YYYY'), 486338, 84.92, 99.16, 110.89),
	(115, TO_DATE('1994', 'YYYY'), 32819, 12.16, 97.03, 109.21),
	(116, TO_DATE('1995', 'YYYY'), 264058, 15.16, 46.64, 56.43),
	(117, TO_DATE('1996', 'YYYY'), 404490, 44.54, 53.49, 64.89),
	(118, TO_DATE('1997', 'YYYY'), 112298, 48.92, 74.12, 74.27),
	(119, TO_DATE('1998', 'YYYY'), 361554, 83.81, 84.71, 100.11),
	(120, TO_DATE('1999', 'YYYY'), 114825, 5.79, 66.46, 76.63),
	(121, TO_DATE('1990', 'YYYY'), 603285, 3.14, 54.46, 58.26),
	(122, TO_DATE('1991', 'YYYY'), 284774, 77.06, 78.99, 84.62),
	(123, TO_DATE('1992', 'YYYY'), 164164, 25.84, 54.70, 91.98),
	(124, TO_DATE('1993', 'YYYY'), 134884, 22.17, 26.27, 27.87),
	(125, TO_DATE('1994', 'YYYY'), 281294, 26.64, 80.23, 80.85),
	(126, TO_DATE('1995', 'YYYY'), 527504, 81.89, 93.25, 98.16),
	(127, TO_DATE('1996', 'YYYY'), 128620, 48.62, 61.66, 69.77),
	(128, TO_DATE('1997', 'YYYY'), 511699, 6.59, 43.08, 47.56),
	(129, TO_DATE('1998', 'YYYY'), 217462, 54.10, 77.55, 85.48),
	(130, TO_DATE('1999', 'YYYY'), 358198, 55.12, 68.24, 81.16),
	(131, TO_DATE('1990', 'YYYY'), 21051, 0.04, 3.05, 44.89),
	(132, TO_DATE('1991', 'YYYY'), 42071, 6.66, 22.66, 25.63),
	(133, TO_DATE('1992', 'YYYY'), 280382, 73.62, 83.51, 84.58),
	(134, TO_DATE('1993', 'YYYY'), 22807, 68.31, 88.32, 92.61),
	(135, TO_DATE('1994', 'YYYY'), 447286, 45.85, 49.80, 54.92),
	(136, TO_DATE('1995', 'YYYY'), 16080, 72.46, 81.36, 81.86),
	(137, TO_DATE('1996', 'YYYY'), 392237, 5.84, 53.66, 88.37),
	(138, TO_DATE('1997', 'YYYY'), 205084, 96.98, 105.88, 122.96),
	(139, TO_DATE('1998', 'YYYY'), 231060, 98.26, 115.12, 133.34),
	(140, TO_DATE('1999', 'YYYY'), 171245, 25.31, 28.37, 60.60),
	(141, TO_DATE('1990', 'YYYY'), 150329, 0.62, 63.76, 72.81),
	(142, TO_DATE('1991', 'YYYY'), 302595, 81.99, 90.64, 94.43),
	(143, TO_DATE('1992', 'YYYY'), 655498, 11.77, 29.01, 97.91),
	(144, TO_DATE('1993', 'YYYY'), 193315, 92.33, 97.11, 109.95),
	(145, TO_DATE('1994', 'YYYY'), 552586, 29.40, 29.71, 34.31),
	(146, TO_DATE('1995', 'YYYY'), 65573, 76.88, 88.14, 102.20),
	(147, TO_DATE('1996', 'YYYY'), 171085, 40.30, 48.16, 48.27),
	(148, TO_DATE('1997', 'YYYY'), 59390, 29.70, 31.33, 46.91),
	(149, TO_DATE('1998', 'YYYY'), 65041, 91.16, 113.48, 140.24),
	(150, TO_DATE('1999', 'YYYY'), 559308, 63.23, 81.39, 85.48),
	(151, TO_DATE('1990', 'YYYY'), 234860, 79.18, 89.12, 98.45),
	(152, TO_DATE('1991', 'YYYY'), 49846, 47.19, 60.66, 65.39),
	(153, TO_DATE('1992', 'YYYY'), 194752, 13.78, 45.62, 47.62),
	(154, TO_DATE('1993', 'YYYY'), 93353, 92.48, 101.85, 102.67),
	(155, TO_DATE('1994', 'YYYY'), 22037, 80.77, 91.11, 102.43),
	(156, TO_DATE('1995', 'YYYY'), 239735, 47.68, 51.32, 52.29),
	(157, TO_DATE('1996', 'YYYY'), 85034, 91.76, 91.99, 103.55),
	(158, TO_DATE('1997', 'YYYY'), 57006, 92.46, 106.73, 116.47),
	(159, TO_DATE('1998', 'YYYY'), 86700, 34.54, 71.62, 88.32),
	(160, TO_DATE('1999', 'YYYY'), 237243, 83.27, 84.04, 95.16),
	(161, TO_DATE('1990', 'YYYY'), 530075, 64.90, 90.31, 100.85),
	(162, TO_DATE('1991', 'YYYY'), 130633, 52.70, 92.23, 105.10),
	(163, TO_DATE('1992', 'YYYY'), 646918, 9.86, 45.42, 97.03),
	(164, TO_DATE('1993', 'YYYY'), 145603, 72.79, 78.07, 92.53),
	(165, TO_DATE('1994', 'YYYY'), 25478, 15.72, 43.74, 89.32),
	(166, TO_DATE('1995', 'YYYY'), 499446, 86.85, 87.30, 99.52),
	(167, TO_DATE('1996', 'YYYY'), 379500, 80.28, 85.17, 87.14),
	(168, TO_DATE('1997', 'YYYY'), 64065, 41.71, 66.09, 74.71),
	(169, TO_DATE('1998', 'YYYY'), 491815, 46.70, 56.95, 65.18),
	(170, TO_DATE('1999', 'YYYY'), 326644, 0.80, 16.50, 60.88),
	(171, TO_DATE('1990', 'YYYY'), 272479, 78.59, 89.52, 91.81),
	(172, TO_DATE('1991', 'YYYY'), 151298, 83.91, 96.70, 105.01),
	(173, TO_DATE('1992', 'YYYY'), 293795, 77.67, 80.71, 99.63),
	(174, TO_DATE('1993', 'YYYY'), 279650, 49.06, 55.57, 63.03),
	(175, TO_DATE('1994', 'YYYY'), 18039, 41.11, 47.69, 63.86),
	(176, TO_DATE('1995', 'YYYY'), 475725, 64.87, 71.95, 97.62),
	(177, TO_DATE('1996', 'YYYY'), 622575, 23.32, 27.65, 70.40),
	(178, TO_DATE('1997', 'YYYY'), 106773, 63.94, 76.66, 84.47),
	(179, TO_DATE('1998', 'YYYY'), 262263, 21.72, 22.44, 80.12),
	(180, TO_DATE('1999', 'YYYY'), 402444, 35.39, 70.40, 93.75),
	(181, TO_DATE('1990', 'YYYY'), 289137, 24.01, 97.84, 98.52),
	(182, TO_DATE('1991', 'YYYY'), 166888, 79.64, 92.55, 103.74),
	(183, TO_DATE('1992', 'YYYY'), 338119, 92.08, 92.64, 105.97),
	(184, TO_DATE('1993', 'YYYY'), 220996, 55.04, 67.68, 69.96),
	(185, TO_DATE('1994', 'YYYY'), 209528, 8.21, 9.89, 93.60),
	(186, TO_DATE('1995', 'YYYY'), 127500, 80.84, 84.34, 95.48),
	(187, TO_DATE('1996', 'YYYY'), 249165, 56.59, 98.59, 102.92),
	(188, TO_DATE('1997', 'YYYY'), 128456, 82.40, 96.52, 111.56),
	(189, TO_DATE('1998', 'YYYY'), 242666, 17.64, 85.66, 98.20),
	(190, TO_DATE('1999', 'YYYY'), 63798, 5.85, 55.49, 74.53),
	(191, TO_DATE('1990', 'YYYY'), 266180, 45.69, 84.01, 104.24),
	(192, TO_DATE('1991', 'YYYY'), 106056, 66.31, 69.86, 96.04),
	(193, TO_DATE('1992', 'YYYY'), 159438, 76.47, 94.83, 117.01),
	(194, TO_DATE('1993', 'YYYY'), 1201, 79.75, 96.94, 105.12),
	(195, TO_DATE('1994', 'YYYY'), 116398, 20.15, 36.56, 43.79),
	(196, TO_DATE('1995', 'YYYY'), 514165, 64.50, 70.79, 92.48),
	(197, TO_DATE('1996', 'YYYY'), 648786, 29.98, 84.71, 98.35),
	(198, TO_DATE('1997', 'YYYY'), 155082, 70.68, 72.86, 80.55),
	(199, TO_DATE('1998', 'YYYY'), 21153, 38.84, 43.18, 50.03),
	(200, TO_DATE('1999', 'YYYY'), 83798, 91.11, 102.98, 112.28),
	(201, TO_DATE('1990', 'YYYY'), 360286, 65.76, 68.75, 84.53),
	(202, TO_DATE('1991', 'YYYY'), 320414, 4.34, 46.63, 90.65),
	(203, TO_DATE('1992', 'YYYY'), 286199, 4.98, 26.79, 70.36),
	(204, TO_DATE('1993', 'YYYY'), 566033, 94.36, 97.59, 108.70),
	(205, TO_DATE('1994', 'YYYY'), 304199, 34.80, 77.32, 83.89),
	(206, TO_DATE('1995', 'YYYY'), 267926, 81.80, 84.45, 84.66),
	(207, TO_DATE('1996', 'YYYY'), 66416, 52.11, 82.60, 82.90),
	(208, TO_DATE('1997', 'YYYY'), 171003, 14.36, 23.78, 29.20),
	(209, TO_DATE('1998', 'YYYY'), 333653, 97.01, 106.99, 127.62),
	(210, TO_DATE('1999', 'YYYY'), 204540, 45.37, 61.73, 87.31),
	(211, TO_DATE('1990', 'YYYY'), 112662, 28.02, 29.68, 77.52),
	(212, TO_DATE('1991', 'YYYY'), 436078, 86.97, 93.70, 105.35),
	(213, TO_DATE('1992', 'YYYY'), 421715, 54.48, 60.40, 93.13),
	(214, TO_DATE('1993', 'YYYY'), 206630, 57.85, 60.01, 63.63),
	(215, TO_DATE('1994', 'YYYY'), 125526, 24.21, 66.22, 79.17),
	(216, TO_DATE('1995', 'YYYY'), 164812, 59.37, 61.47, 95.30),
	(217, TO_DATE('1996', 'YYYY'), 243290, 95.51, 98.56, 112.04),
	(218, TO_DATE('1997', 'YYYY'), 698466, 81.59, 100.77, 105.47),
	(219, TO_DATE('1998', 'YYYY'), 233740, 90.80, 93.12, 98.49),
	(220, TO_DATE('1999', 'YYYY'), 126987, 8.50, 41.77, 95.52),
	(221, TO_DATE('1990', 'YYYY'), 195989, 31.60, 36.33, 77.19),
	(222, TO_DATE('1991', 'YYYY'), 307260, 10.76, 37.03, 43.36),
	(223, TO_DATE('1992', 'YYYY'), 152515, 22.66, 24.22, 58.38),
	(224, TO_DATE('1993', 'YYYY'), 146359, 44.97, 51.43, 60.27),
	(225, TO_DATE('1994', 'YYYY'), 244567, 2.81, 16.03, 58.66),
	(226, TO_DATE('1995', 'YYYY'), 136959, 23.10, 39.96, 41.72),
	(227, TO_DATE('1996', 'YYYY'), 169752, 52.69, 63.39, 88.40),
	(228, TO_DATE('1997', 'YYYY'), 625615, 96.30, 112.85, 121.33),
	(229, TO_DATE('1998', 'YYYY'), 403990, 48.60, 55.94, 62.24),
	(230, TO_DATE('1999', 'YYYY'), 181462, 22.83, 51.94, 97.62),
	(231, TO_DATE('1990', 'YYYY'), 82806, 8.56, 60.19, 93.20),
	(232, TO_DATE('1991', 'YYYY'), 474732, 93.15, 113.60, 116.80),
	(233, TO_DATE('1992', 'YYYY'), 76780, 83.68, 87.55, 102.92),
	(234, TO_DATE('1993', 'YYYY'), 45625, 87.02, 90.11, 103.11),
	(235, TO_DATE('1994', 'YYYY'), 383128, 4.74, 5.25, 33.28),
	(236, TO_DATE('1995', 'YYYY'), 467656, 13.19, 75.81, 78.37),
	(237, TO_DATE('1996', 'YYYY'), 414981, 36.59, 37.65, 93.37),
	(238, TO_DATE('1997', 'YYYY'), 401557, 85.01, 86.68, 98.55),
	(239, TO_DATE('1998', 'YYYY'), 194833, 85.81, 86.09, 88.38),
	(240, TO_DATE('1999', 'YYYY'), 78612, 62.76, 63.34, 72.37),
	(241, TO_DATE('1990', 'YYYY'), 171033, 30.19, 33.09, 84.38),
	(242, TO_DATE('1991', 'YYYY'), 424304, 91.86, 99.61, 104.14),
	(243, TO_DATE('1992', 'YYYY'), 117715, 87.51, 87.86, 94.66),
	(244, TO_DATE('1993', 'YYYY'), 129667, 93.37, 112.56, 124.98),
	(245, TO_DATE('1994', 'YYYY'), 280939, 98.34, 105.22, 109.07),
	(246, TO_DATE('1995', 'YYYY'), 83948, 55.11, 61.52, 63.71),
	(247, TO_DATE('1996', 'YYYY'), 388355, 16.81, 25.99, 52.76),
	(248, TO_DATE('1997', 'YYYY'), 478288, 31.28, 93.05, 112.62),
	(249, TO_DATE('1998', 'YYYY'), 249202, 53.54, 73.12, 87.01),
	(250, TO_DATE('1999', 'YYYY'), 120257, 49.81, 53.70, 60.14),
	(251, TO_DATE('1990', 'YYYY'), 212345, 2.35, 88.69, 102.16),
	(252, TO_DATE('1991', 'YYYY'), 137868, 80.98, 100.94, 114.47),
	(253, TO_DATE('1992', 'YYYY'), 376851, 65.98, 80.21, 82.05),
	(254, TO_DATE('1993', 'YYYY'), 239504, 51.45, 62.87, 72.10),
	(255, TO_DATE('1994', 'YYYY'), 8046, 69.27, 71.07, 79.78),
	(256, TO_DATE('1995', 'YYYY'), 503279, 62.70, 66.92, 85.10),
	(257, TO_DATE('1996', 'YYYY'), 192745, 9.04, 84.90, 93.95),
	(258, TO_DATE('1997', 'YYYY'), 225835, 62.63, 70.00, 80.20),
	(259, TO_DATE('1998', 'YYYY'), 402688, 46.22, 67.37, 81.99),
	(260, TO_DATE('1999', 'YYYY'), 632058, 46.54, 59.66, 65.92),
	(261, TO_DATE('1990', 'YYYY'), 50241, 71.70, 76.60, 86.56),
	(262, TO_DATE('1991', 'YYYY'), 211231, 79.66, 82.93, 93.43),
	(263, TO_DATE('1992', 'YYYY'), 341821, 35.02, 73.78, 84.33),
	(264, TO_DATE('1993', 'YYYY'), 137279, 80.55, 88.33, 99.04),
	(265, TO_DATE('1994', 'YYYY'), 646416, 16.69, 36.98, 96.67),
	(266, TO_DATE('1995', 'YYYY'), 393177, 82.77, 98.54, 103.39),
	(267, TO_DATE('1996', 'YYYY'), 280281, 82.04, 90.55, 112.72),
	(268, TO_DATE('1997', 'YYYY'), 53777, 32.27, 34.15, 39.67),
	(269, TO_DATE('1998', 'YYYY'), 204291, 39.71, 60.71, 63.65),
	(270, TO_DATE('1999', 'YYYY'), 166682, 11.27, 30.80, 53.93),
	(271, TO_DATE('1990', 'YYYY'), 302295, 83.23, 102.36, 109.71),
	(272, TO_DATE('1991', 'YYYY'), 307788, 3.72, 62.66, 69.90),
	(273, TO_DATE('1992', 'YYYY'), 525062, 19.23, 90.61, 94.71),
	(274, TO_DATE('1993', 'YYYY'), 304506, 43.01, 52.33, 57.01),
	(275, TO_DATE('1994', 'YYYY'), 492709, 5.54, 96.77, 100.55),
	(276, TO_DATE('1995', 'YYYY'), 266740, 53.98, 65.27, 77.82),
	(277, TO_DATE('1996', 'YYYY'), 394432, 99.38, 115.97, 128.04),
	(278, TO_DATE('1997', 'YYYY'), 324623, 62.12, 77.15, 91.54),
	(279, TO_DATE('1998', 'YYYY'), 476832, 15.19, 51.24, 60.80),
	(280, TO_DATE('1999', 'YYYY'), 509424, 81.69, 91.52, 93.63),
	(281, TO_DATE('1990', 'YYYY'), 205086, 69.38, 70.10, 84.08),
	(282, TO_DATE('1991', 'YYYY'), 502209, 31.09, 51.32, 63.00),
	(283, TO_DATE('1992', 'YYYY'), 195160, 46.66, 54.94, 64.06),
	(284, TO_DATE('1993', 'YYYY'), 371451, 21.34, 78.83, 86.92),
	(285, TO_DATE('1994', 'YYYY'), 268483, 97.99, 119.20, 121.67),
	(286, TO_DATE('1995', 'YYYY'), 73307, 22.62, 40.47, 87.69),
	(287, TO_DATE('1996', 'YYYY'), 309286, 75.00, 94.10, 94.59),
	(288, TO_DATE('1997', 'YYYY'), 338756, 43.13, 90.16, 110.37),
	(289, TO_DATE('1998', 'YYYY'), 326165, 1.96, 27.12, 27.68),
	(290, TO_DATE('1999', 'YYYY'), 38152, 73.52, 73.62, 77.86);
INSERT INTO product_year_join(product_id, year_id)
VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 5),
	(1, 6),
	(1, 7),
	(1, 8),
	(1, 9),
	(1, 10),
	(2, 11),
	(2, 12),
	(2, 13),
	(2, 14),
	(2, 15),
	(2, 16),
	(2, 17),
	(2, 18),
	(2, 19),
	(2, 20),
	(3, 21),
	(3, 22),
	(3, 23),
	(3, 24),
	(3, 25),
	(3, 26),
	(3, 27),
	(3, 28),
	(3, 29),
	(3, 30),
	(4, 31),
	(4, 32),
	(4, 33),
	(4, 34),
	(4, 35),
	(4, 36),
	(4, 37),
	(4, 38),
	(4, 39),
	(4, 40),
	(5, 41),
	(5, 42),
	(5, 43),
	(5, 44),
	(5, 45),
	(5, 46),
	(5, 47),
	(5, 48),
	(5, 49),
	(5, 50),
	(6, 51),
	(6, 52),
	(6, 53),
	(6, 54),
	(6, 55),
	(6, 56),
	(6, 57),
	(6, 58),
	(6, 59),
	(6, 60),
	(7, 61),
	(7, 62),
	(7, 63),
	(7, 64),
	(7, 65),
	(7, 66),
	(7, 67),
	(7, 68),
	(7, 69),
	(7, 70),
	(8, 71),
	(8, 72),
	(8, 73),
	(8, 74),
	(8, 75),
	(8, 76),
	(8, 77),
	(8, 78),
	(8, 79),
	(8, 80),
	(9, 81),
	(9, 82),
	(9, 83),
	(9, 84),
	(9, 85),
	(9, 86),
	(9, 87),
	(9, 88),
	(9, 89),
	(9, 90),
	(10, 91),
	(10, 92),
	(10, 93),
	(10, 94),
	(10, 95),
	(10, 96),
	(10, 97),
	(10, 98),
	(10, 99),
	(10, 100),
	(11, 101),
	(11, 102),
	(11, 103),
	(11, 104),
	(11, 105),
	(11, 106),
	(11, 107),
	(11, 108),
	(11, 109),
	(11, 110),
	(12, 111),
	(12, 112),
	(12, 113),
	(12, 114),
	(12, 115),
	(12, 116),
	(12, 117),
	(12, 118),
	(12, 119),
	(12, 120),
	(13, 121),
	(13, 122),
	(13, 123),
	(13, 124),
	(13, 125),
	(13, 126),
	(13, 127),
	(13, 128),
	(13, 129),
	(13, 130),
	(14, 131),
	(14, 132),
	(14, 133),
	(14, 134),
	(14, 135),
	(14, 136),
	(14, 137),
	(14, 138),
	(14, 139),
	(14, 140),
	(15, 141),
	(15, 142),
	(15, 143),
	(15, 144),
	(15, 145),
	(15, 146),
	(15, 147),
	(15, 148),
	(15, 149),
	(15, 150),
	(16, 151),
	(16, 152),
	(16, 153),
	(16, 154),
	(16, 155),
	(16, 156),
	(16, 157),
	(16, 158),
	(16, 159),
	(16, 160),
	(17, 161),
	(17, 162),
	(17, 163),
	(17, 164),
	(17, 165),
	(17, 166),
	(17, 167),
	(17, 168),
	(17, 169),
	(17, 170),
	(18, 171),
	(18, 172),
	(18, 173),
	(18, 174),
	(18, 175),
	(18, 176),
	(18, 177),
	(18, 178),
	(18, 179),
	(18, 180),
	(19, 181),
	(19, 182),
	(19, 183),
	(19, 184),
	(19, 185),
	(19, 186),
	(19, 187),
	(19, 188),
	(19, 189),
	(19, 190),
	(20, 191),
	(20, 192),
	(20, 193),
	(20, 194),
	(20, 195),
	(20, 196),
	(20, 197),
	(20, 198),
	(20, 199),
	(20, 200),
	(21, 201),
	(21, 202),
	(21, 203),
	(21, 204),
	(21, 205),
	(21, 206),
	(21, 207),
	(21, 208),
	(21, 209),
	(21, 210),
	(22, 211),
	(22, 212),
	(22, 213),
	(22, 214),
	(22, 215),
	(22, 216),
	(22, 217),
	(22, 218),
	(22, 219),
	(22, 220),
	(23, 221),
	(23, 222),
	(23, 223),
	(23, 224),
	(23, 225),
	(23, 226),
	(23, 227),
	(23, 228),
	(23, 229),
	(23, 230),
	(24, 231),
	(24, 232),
	(24, 233),
	(24, 234),
	(24, 235),
	(24, 236),
	(24, 237),
	(24, 238),
	(24, 239),
	(24, 240),
	(25, 241),
	(25, 242),
	(25, 243),
	(25, 244),
	(25, 245),
	(25, 246),
	(25, 247),
	(25, 248),
	(25, 249),
	(25, 250),
	(26, 251),
	(26, 252),
	(26, 253),
	(26, 254),
	(26, 255),
	(26, 256),
	(26, 257),
	(26, 258),
	(26, 259),
	(26, 260),
	(27, 261),
	(27, 262),
	(27, 263),
	(27, 264),
	(27, 265),
	(27, 266),
	(27, 267),
	(27, 268),
	(27, 269),
	(27, 270),
	(28, 271),
	(28, 272),
	(28, 273),
	(28, 274),
	(28, 275),
	(28, 276),
	(28, 277),
	(28, 278),
	(28, 279),
	(28, 280),
	(29, 281),
	(29, 282),
	(29, 283),
	(29, 284),
	(29, 285),
	(29, 286),
	(29, 287),
	(29, 288),
	(29, 289),
	(29, 290);
