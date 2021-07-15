INSERT INTO products(product_id, product_name, product_description, category, amount_in_stock, acme_rating, user_rating)
VALUES
	(1, 'Hammer', 'A deviced used to hit things, and sometimes cook steak.', 'Godly', 690630, 3.73, 1.22),
	(2, 'Nails', 'Used by a hammer to attach things to walls, taxidermied fish, or plants.', 'Godly', 299909, 2.42, 1.36),
	(3, 'Screwdriver', 'Used to hit nails when your hammer breaks!', 'Godly', 801200, 0.52, 4.57),
	(4, 'Uranium-238 (5 kg)', 'Used to create bombs or really cool glowing dust for art class! Known to cause cancer.', 'Unsafe', 100590, 4.81, 2.33),
	(5, 'Turnip Flavored Grenades', 'Grenades that are just BURSTING with flavor!', 'Godly', 139964, 1.44, 3.72),
	(6, 'Iron Anvil', 'An anvil that can be used as a table for breakfast, or for forging weapons to fight the abominations of the deep.', 'General', 429130, 0.86, 3.16),
	(7, 'Mk. 2000 Ray Gun', 'Porter legacy, let it be the mighty death to the zombies that roam the charred Earth...', 'General', 908804, 4.91, 2.24),
	(8, 'ACME Inc. Dynamite', 'Our special brand of dynamite! Goes off without lighting 20% of the time!', 'Evil', 483486, 4.84, 1.53),
	(9, 'Cactus Football', 'A football shaped like a catus. Also tastes and looks like a cactus... It is actually just a cactus thrown like a football...', 'Godly', 162276, 4.50, 3.57),
	(10, 'Antimatter Egg', 'An egg of ultimate proportions 1000x stronger than Dilithium, which powers multiple reactors around the world.', 'General', 856578, 2.50, 1.92),
	(11, 'Soul of Harambe', 'The essence of a legend long gone...', 'Unsafe', 626799, 0.81, 3.02),
	(12, 'Mint Air Freshener', 'Air freshener to block out the sent of baby diapers and smoke from $35 a night hotels.', 'Godly', 602254, 1.87, 0.62),
	(13, 'Black Powder Bomb', 'Good old bombs from the past, used by pirates and insurgents to overthrow tyrannical monarchies.', 'Unsafe', 256794, 2.11, 3.31),
	(14, 'Broken Surge Protector', 'Good for pranking your friends! (and setting their house on fire...)', 'Potato', 964764, 4.07, 2.96),
	(15, 'Broken 5GB USB Drive', 'Good for pranking your friends! (and wiping their UEFI...)', 'Evil', 965429, 3.74, 3.97),
	(16, 'Penny', 'Good for paying off your bank loans, if you want to make a lot of enemies and waste a lot of time...', 'General', 470578, 2.13, 3.58),
	(17, 'Orb of Time and Space', 'A device used by modern scientists to investigate the grand infinity of space.', 'Godly', 811014, 1.88, 1.63),
	(18, 'Bread Sandwich', 'A piece of bread stuck between two other pieces of bread. It is 3 pieces of bread. Bread sandwich.', 'Godly', 194364, 0.05, 4.37),
	(19, 'Lead Binnoculars', 'Binnoculars that are supremely powerful. Only causes lead poisoning after extended usage!', 'Unsafe', 480577, 2.03, 0.86),
	(20, 'Plutonium-239 (5 kg)', 'Used to create bombs or really REALLY cool glowing dust! Known to cause cancer and ulcers.', 'Unsafe', 674953, 3.42, 3.90),
	(21, 'Far Cry 4', 'A video game that somehow got added to our inventory but belongs nonetheless!', 'General', 919240, 1.42, 0.52),
	(22, 'Lord of the Wings', 'A US Western ripoff of Lord of the Rings, sold only in broken down Blockbusters.', 'Potato', 809595, 3.76, 0.48),
	(23, 'Big Mac 2', 'The second Big Mac.', 'Potato', 531439, 0.33, 2.50),
	(24, 'Whoopie Cushion', 'A hilarious device originating from the beginning of time. Theorized to have been the reason Brutus helped kill Caesar.', 'Holy', 633473, 3.15, 2.46),
	(25, 'Notepad--', 'A notepad with a white background and white text. Also unzips a zip bomb every time it is opened.', 'Unsafe', 103202, 0.27, 0.02),
	(26, 'Eaten Wizard Hat', 'A half eaten wizard hat. Comes with the capybara that ate it.', 'Godly', 172680, 2.66, 0.31),
	(27, 'Wizard Lizard', 'A legendary artifact of a time long past, said to have been in the mind of a great man before being forgotten due to lazy subordinates.', 'General', 385257, 4.48, 4.68),
	(28, 'Torn Blue Shirt', 'A torn blue gucci shirt. Marked up price because people are sheep.', 'Holy', 851946, 3.44, 2.89),
	(29, 'ACME Inc. Cell Phone', 'Battery can last at most 10 minutes if on charger. Make sure to keep away from water, as it can explode.', 'Holy', 175301, 4.42, 4.85);
INSERT INTO products_yearly_data(year_id, year, units_sold, production_cost, distribution_cost, retail_price)
VALUES
	(1, TO_DATE('1990', 'YYYY'), 231306, 10.61, 95.20, 108.54),
	(2, TO_DATE('1991', 'YYYY'), 24526, 34.71, 66.19, 73.06),
	(3, TO_DATE('1992', 'YYYY'), 141282, 56.75, 60.82, 61.16),
	(4, TO_DATE('1993', 'YYYY'), 485506, 53.39, 79.66, 93.17),
	(5, TO_DATE('1994', 'YYYY'), 172081, 86.05, 104.38, 105.27),
	(6, TO_DATE('1995', 'YYYY'), 292661, 95.03, 99.13, 121.09),
	(7, TO_DATE('1996', 'YYYY'), 146149, 85.43, 85.76, 96.10),
	(8, TO_DATE('1997', 'YYYY'), 173147, 46.90, 56.93, 69.05),
	(9, TO_DATE('1998', 'YYYY'), 23315, 74.18, 78.70, 95.36),
	(10, TO_DATE('1999', 'YYYY'), 212607, 46.55, 51.19, 84.20),
	(11, TO_DATE('1990', 'YYYY'), 250479, 53.41, 66.02, 93.19),
	(12, TO_DATE('1991', 'YYYY'), 169833, 26.81, 75.42, 91.19),
	(13, TO_DATE('1992', 'YYYY'), 117248, 30.37, 34.19, 50.90),
	(14, TO_DATE('1993', 'YYYY'), 286520, 11.06, 30.49, 66.44),
	(15, TO_DATE('1994', 'YYYY'), 173238, 98.71, 110.29, 121.61),
	(16, TO_DATE('1995', 'YYYY'), 16647, 98.58, 106.24, 120.24),
	(17, TO_DATE('1996', 'YYYY'), 274230, 88.86, 102.83, 104.70),
	(18, TO_DATE('1997', 'YYYY'), 270462, 48.30, 57.14, 91.98),
	(19, TO_DATE('1998', 'YYYY'), 14465, 99.83, 100.91, 117.03),
	(20, TO_DATE('1999', 'YYYY'), 126661, 24.77, 61.78, 65.06),
	(21, TO_DATE('1990', 'YYYY'), 564589, 98.95, 114.64, 125.40),
	(22, TO_DATE('1991', 'YYYY'), 37114, 96.86, 115.77, 122.30),
	(23, TO_DATE('1992', 'YYYY'), 126131, 68.10, 99.72, 110.22),
	(24, TO_DATE('1993', 'YYYY'), 444778, 27.07, 43.97, 90.61),
	(25, TO_DATE('1994', 'YYYY'), 311296, 48.22, 55.03, 56.86),
	(26, TO_DATE('1995', 'YYYY'), 188096, 50.17, 64.78, 79.95),
	(27, TO_DATE('1996', 'YYYY'), 589179, 30.55, 37.08, 45.88),
	(28, TO_DATE('1997', 'YYYY'), 335829, 70.82, 73.57, 98.69),
	(29, TO_DATE('1998', 'YYYY'), 24884, 73.01, 81.95, 89.71),
	(30, TO_DATE('1999', 'YYYY'), 88305, 30.49, 33.43, 85.08),
	(31, TO_DATE('1990', 'YYYY'), 76494, 49.67, 69.32, 83.13),
	(32, TO_DATE('1991', 'YYYY'), 435204, 18.06, 19.94, 74.10),
	(33, TO_DATE('1992', 'YYYY'), 406174, 30.07, 79.97, 84.80),
	(34, TO_DATE('1993', 'YYYY'), 164434, 51.96, 59.74, 74.36),
	(35, TO_DATE('1994', 'YYYY'), 443720, 8.43, 23.64, 69.55),
	(36, TO_DATE('1995', 'YYYY'), 251493, 10.66, 87.65, 105.35),
	(37, TO_DATE('1996', 'YYYY'), 306013, 47.31, 57.22, 78.06),
	(38, TO_DATE('1997', 'YYYY'), 102906, 87.39, 101.21, 101.98),
	(39, TO_DATE('1998', 'YYYY'), 373702, 56.72, 91.55, 111.87),
	(40, TO_DATE('1999', 'YYYY'), 250531, 64.47, 69.60, 83.84),
	(41, TO_DATE('1990', 'YYYY'), 557817, 38.34, 41.90, 48.71),
	(42, TO_DATE('1991', 'YYYY'), 241718, 34.89, 35.98, 77.13),
	(43, TO_DATE('1992', 'YYYY'), 499186, 85.87, 99.90, 109.60),
	(44, TO_DATE('1993', 'YYYY'), 129117, 70.31, 86.46, 95.95),
	(45, TO_DATE('1994', 'YYYY'), 541831, 72.74, 89.45, 93.78),
	(46, TO_DATE('1995', 'YYYY'), 222565, 71.82, 80.42, 88.50),
	(47, TO_DATE('1996', 'YYYY'), 58658, 12.20, 24.40, 36.62),
	(48, TO_DATE('1997', 'YYYY'), 148742, 26.09, 74.84, 88.23),
	(49, TO_DATE('1998', 'YYYY'), 432754, 65.07, 89.08, 94.12),
	(50, TO_DATE('1999', 'YYYY'), 434206, 22.98, 95.03, 99.32),
	(51, TO_DATE('1990', 'YYYY'), 104584, 17.09, 18.01, 44.47),
	(52, TO_DATE('1991', 'YYYY'), 537532, 99.08, 118.01, 119.55),
	(53, TO_DATE('1992', 'YYYY'), 105878, 5.85, 19.35, 23.03),
	(54, TO_DATE('1993', 'YYYY'), 439028, 35.96, 68.55, 85.54),
	(55, TO_DATE('1994', 'YYYY'), 209247, 61.55, 67.22, 77.63),
	(56, TO_DATE('1995', 'YYYY'), 264432, 13.82, 15.29, 71.57),
	(57, TO_DATE('1996', 'YYYY'), 16827, 62.96, 66.68, 82.83),
	(58, TO_DATE('1997', 'YYYY'), 627961, 70.63, 77.13, 88.41),
	(59, TO_DATE('1998', 'YYYY'), 2022, 29.14, 78.03, 91.53),
	(60, TO_DATE('1999', 'YYYY'), 151755, 92.30, 114.92, 117.76),
	(61, TO_DATE('1990', 'YYYY'), 482557, 60.78, 87.97, 95.33),
	(62, TO_DATE('1991', 'YYYY'), 384886, 83.90, 98.35, 113.25),
	(63, TO_DATE('1992', 'YYYY'), 157594, 32.96, 34.90, 88.74),
	(64, TO_DATE('1993', 'YYYY'), 78029, 45.35, 53.08, 58.89),
	(65, TO_DATE('1994', 'YYYY'), 114295, 46.01, 47.33, 50.61),
	(66, TO_DATE('1995', 'YYYY'), 100034, 23.77, 71.30, 79.38),
	(67, TO_DATE('1996', 'YYYY'), 170262, 81.44, 93.93, 109.17),
	(68, TO_DATE('1997', 'YYYY'), 123679, 62.52, 72.69, 85.11),
	(69, TO_DATE('1998', 'YYYY'), 505841, 84.13, 84.14, 88.64),
	(70, TO_DATE('1999', 'YYYY'), 256149, 72.43, 72.53, 74.05),
	(71, TO_DATE('1990', 'YYYY'), 339410, 44.91, 50.77, 63.11),
	(72, TO_DATE('1991', 'YYYY'), 271878, 94.86, 95.67, 96.74),
	(73, TO_DATE('1992', 'YYYY'), 218987, 98.80, 100.99, 108.80),
	(74, TO_DATE('1993', 'YYYY'), 180403, 53.48, 60.36, 63.68),
	(75, TO_DATE('1994', 'YYYY'), 272931, 91.83, 114.11, 139.35),
	(76, TO_DATE('1995', 'YYYY'), 123858, 48.88, 59.70, 74.19),
	(77, TO_DATE('1996', 'YYYY'), 198338, 72.67, 86.11, 87.88),
	(78, TO_DATE('1997', 'YYYY'), 66784, 96.13, 101.37, 109.61),
	(79, TO_DATE('1998', 'YYYY'), 151646, 18.32, 95.99, 100.20),
	(80, TO_DATE('1999', 'YYYY'), 240529, 19.19, 30.09, 34.98),
	(81, TO_DATE('1990', 'YYYY'), 448853, 25.63, 74.69, 82.35),
	(82, TO_DATE('1991', 'YYYY'), 13494, 23.41, 56.80, 66.49),
	(83, TO_DATE('1992', 'YYYY'), 207890, 39.49, 55.34, 66.43),
	(84, TO_DATE('1993', 'YYYY'), 361982, 0.39, 1.96, 70.97),
	(85, TO_DATE('1994', 'YYYY'), 342383, 96.98, 100.76, 120.34),
	(86, TO_DATE('1995', 'YYYY'), 137041, 75.61, 82.17, 100.06),
	(87, TO_DATE('1996', 'YYYY'), 330804, 73.13, 83.54, 85.43),
	(88, TO_DATE('1997', 'YYYY'), 167387, 14.98, 78.88, 93.40),
	(89, TO_DATE('1998', 'YYYY'), 283376, 18.72, 78.36, 95.23),
	(90, TO_DATE('1999', 'YYYY'), 212336, 82.60, 99.16, 110.94),
	(91, TO_DATE('1990', 'YYYY'), 99041, 85.30, 93.18, 113.97),
	(92, TO_DATE('1991', 'YYYY'), 452389, 72.97, 74.30, 75.79),
	(93, TO_DATE('1992', 'YYYY'), 246777, 47.28, 52.34, 87.81),
	(94, TO_DATE('1993', 'YYYY'), 33333, 24.42, 64.15, 71.48),
	(95, TO_DATE('1994', 'YYYY'), 373535, 0.95, 36.53, 81.38),
	(96, TO_DATE('1995', 'YYYY'), 65312, 65.56, 65.97, 68.34),
	(97, TO_DATE('1996', 'YYYY'), 309222, 43.66, 47.92, 52.42),
	(98, TO_DATE('1997', 'YYYY'), 135472, 80.21, 80.76, 93.68),
	(99, TO_DATE('1998', 'YYYY'), 365618, 32.61, 47.55, 97.71),
	(100, TO_DATE('1999', 'YYYY'), 358758, 58.24, 59.38, 60.88),
	(101, TO_DATE('1990', 'YYYY'), 123770, 63.90, 98.58, 99.15),
	(102, TO_DATE('1991', 'YYYY'), 69378, 93.14, 103.96, 120.76),
	(103, TO_DATE('1992', 'YYYY'), 573379, 70.78, 88.65, 99.52),
	(104, TO_DATE('1993', 'YYYY'), 23225, 16.96, 55.49, 64.83),
	(105, TO_DATE('1994', 'YYYY'), 229857, 29.74, 30.48, 33.78),
	(106, TO_DATE('1995', 'YYYY'), 184993, 0.03, 85.67, 88.27),
	(107, TO_DATE('1996', 'YYYY'), 179410, 50.90, 62.96, 81.87),
	(108, TO_DATE('1997', 'YYYY'), 391010, 98.26, 116.87, 139.31),
	(109, TO_DATE('1998', 'YYYY'), 356259, 43.40, 85.84, 98.26),
	(110, TO_DATE('1999', 'YYYY'), 33089, 53.18, 59.87, 61.49),
	(111, TO_DATE('1990', 'YYYY'), 203696, 72.35, 74.26, 91.92),
	(112, TO_DATE('1991', 'YYYY'), 347534, 16.80, 75.66, 89.84),
	(113, TO_DATE('1992', 'YYYY'), 404334, 16.39, 55.96, 61.34),
	(114, TO_DATE('1993', 'YYYY'), 72918, 31.40, 96.52, 97.43),
	(115, TO_DATE('1994', 'YYYY'), 316415, 37.32, 55.66, 97.42),
	(116, TO_DATE('1995', 'YYYY'), 581526, 58.53, 67.29, 75.26),
	(117, TO_DATE('1996', 'YYYY'), 578513, 8.75, 47.46, 77.55),
	(118, TO_DATE('1997', 'YYYY'), 560432, 24.98, 98.90, 123.48),
	(119, TO_DATE('1998', 'YYYY'), 378467, 35.31, 74.46, 78.53),
	(120, TO_DATE('1999', 'YYYY'), 241646, 65.91, 77.47, 88.60),
	(121, TO_DATE('1990', 'YYYY'), 195411, 80.81, 92.79, 95.96),
	(122, TO_DATE('1991', 'YYYY'), 103174, 94.53, 107.63, 114.51),
	(123, TO_DATE('1992', 'YYYY'), 427420, 91.33, 107.37, 112.98),
	(124, TO_DATE('1993', 'YYYY'), 369077, 82.39, 93.84, 113.07),
	(125, TO_DATE('1994', 'YYYY'), 355477, 46.65, 51.42, 52.07),
	(126, TO_DATE('1995', 'YYYY'), 505958, 99.07, 122.00, 132.61),
	(127, TO_DATE('1996', 'YYYY'), 248568, 81.41, 89.79, 107.28),
	(128, TO_DATE('1997', 'YYYY'), 228327, 6.43, 71.89, 82.01),
	(129, TO_DATE('1998', 'YYYY'), 657337, 75.88, 88.45, 108.66),
	(130, TO_DATE('1999', 'YYYY'), 397233, 30.35, 32.73, 94.25),
	(131, TO_DATE('1990', 'YYYY'), 383389, 46.15, 54.29, 55.84),
	(132, TO_DATE('1991', 'YYYY'), 233821, 28.20, 71.56, 98.71),
	(133, TO_DATE('1992', 'YYYY'), 180762, 86.25, 93.83, 112.39),
	(134, TO_DATE('1993', 'YYYY'), 112450, 16.23, 32.61, 99.95),
	(135, TO_DATE('1994', 'YYYY'), 48441, 24.79, 56.14, 60.49),
	(136, TO_DATE('1995', 'YYYY'), 320243, 4.75, 41.69, 50.55),
	(137, TO_DATE('1996', 'YYYY'), 319175, 7.56, 45.14, 45.68),
	(138, TO_DATE('1997', 'YYYY'), 308743, 60.63, 66.03, 89.19),
	(139, TO_DATE('1998', 'YYYY'), 176661, 29.03, 45.58, 70.89),
	(140, TO_DATE('1999', 'YYYY'), 573116, 98.95, 108.39, 112.75),
	(141, TO_DATE('1990', 'YYYY'), 56955, 77.18, 81.56, 90.97),
	(142, TO_DATE('1991', 'YYYY'), 55732, 61.89, 86.27, 98.26),
	(143, TO_DATE('1992', 'YYYY'), 157955, 91.41, 101.15, 106.25),
	(144, TO_DATE('1993', 'YYYY'), 13508, 48.02, 86.43, 95.06),
	(145, TO_DATE('1994', 'YYYY'), 239867, 72.02, 84.23, 91.34),
	(146, TO_DATE('1995', 'YYYY'), 218328, 63.10, 73.39, 91.74),
	(147, TO_DATE('1996', 'YYYY'), 145312, 32.79, 44.63, 64.40),
	(148, TO_DATE('1997', 'YYYY'), 20357, 99.42, 114.94, 127.36),
	(149, TO_DATE('1998', 'YYYY'), 254758, 97.67, 116.35, 130.63),
	(150, TO_DATE('1999', 'YYYY'), 402427, 15.25, 76.08, 79.74),
	(151, TO_DATE('1990', 'YYYY'), 226949, 25.50, 39.11, 79.49),
	(152, TO_DATE('1991', 'YYYY'), 511314, 63.66, 79.93, 83.80),
	(153, TO_DATE('1992', 'YYYY'), 26059, 64.57, 79.36, 92.02),
	(154, TO_DATE('1993', 'YYYY'), 117204, 18.16, 28.38, 83.38),
	(155, TO_DATE('1994', 'YYYY'), 18579, 19.36, 28.25, 72.00),
	(156, TO_DATE('1995', 'YYYY'), 227517, 65.31, 81.53, 93.52),
	(157, TO_DATE('1996', 'YYYY'), 127831, 45.64, 70.53, 72.72),
	(158, TO_DATE('1997', 'YYYY'), 34475, 37.09, 88.79, 89.49),
	(159, TO_DATE('1998', 'YYYY'), 281237, 14.68, 25.50, 85.58),
	(160, TO_DATE('1999', 'YYYY'), 87408, 3.72, 24.85, 82.85),
	(161, TO_DATE('1990', 'YYYY'), 201811, 87.33, 93.78, 107.11),
	(162, TO_DATE('1991', 'YYYY'), 516143, 39.96, 44.60, 88.96),
	(163, TO_DATE('1992', 'YYYY'), 121462, 4.93, 17.96, 40.19),
	(164, TO_DATE('1993', 'YYYY'), 36944, 27.55, 97.09, 104.69),
	(165, TO_DATE('1994', 'YYYY'), 165227, 2.66, 9.52, 83.51),
	(166, TO_DATE('1995', 'YYYY'), 204035, 37.98, 91.95, 110.02),
	(167, TO_DATE('1996', 'YYYY'), 90731, 96.48, 104.63, 111.64),
	(168, TO_DATE('1997', 'YYYY'), 279031, 25.56, 26.49, 92.09),
	(169, TO_DATE('1998', 'YYYY'), 34362, 61.75, 65.74, 76.13),
	(170, TO_DATE('1999', 'YYYY'), 465581, 53.47, 56.21, 76.52),
	(171, TO_DATE('1990', 'YYYY'), 11679, 34.53, 87.99, 99.83),
	(172, TO_DATE('1991', 'YYYY'), 245233, 50.04, 56.01, 68.17),
	(173, TO_DATE('1992', 'YYYY'), 213060, 47.20, 87.58, 106.87),
	(174, TO_DATE('1993', 'YYYY'), 131602, 52.44, 58.23, 87.81),
	(175, TO_DATE('1994', 'YYYY'), 189265, 80.24, 86.51, 92.17),
	(176, TO_DATE('1995', 'YYYY'), 412451, 71.60, 79.89, 97.59),
	(177, TO_DATE('1996', 'YYYY'), 149434, 61.99, 82.65, 100.05),
	(178, TO_DATE('1997', 'YYYY'), 160248, 93.62, 116.07, 143.74),
	(179, TO_DATE('1998', 'YYYY'), 205918, 33.52, 34.12, 41.58),
	(180, TO_DATE('1999', 'YYYY'), 432074, 92.23, 93.98, 99.89),
	(181, TO_DATE('1990', 'YYYY'), 350764, 72.63, 78.43, 80.54),
	(182, TO_DATE('1991', 'YYYY'), 364837, 29.92, 36.39, 94.97),
	(183, TO_DATE('1992', 'YYYY'), 242837, 24.38, 29.57, 67.15),
	(184, TO_DATE('1993', 'YYYY'), 267534, 67.83, 69.32, 71.24),
	(185, TO_DATE('1994', 'YYYY'), 223136, 8.19, 58.03, 64.19),
	(186, TO_DATE('1995', 'YYYY'), 178782, 47.83, 48.85, 59.64),
	(187, TO_DATE('1996', 'YYYY'), 93366, 62.88, 67.49, 82.12),
	(188, TO_DATE('1997', 'YYYY'), 538720, 16.13, 18.53, 21.51),
	(189, TO_DATE('1998', 'YYYY'), 131736, 6.01, 35.48, 38.25),
	(190, TO_DATE('1999', 'YYYY'), 296769, 37.03, 40.98, 43.39),
	(191, TO_DATE('1990', 'YYYY'), 1649, 9.84, 16.46, 23.51),
	(192, TO_DATE('1991', 'YYYY'), 155506, 0.02, 63.83, 74.09),
	(193, TO_DATE('1992', 'YYYY'), 159880, 79.06, 89.37, 98.90),
	(194, TO_DATE('1993', 'YYYY'), 137002, 16.99, 60.42, 69.81),
	(195, TO_DATE('1994', 'YYYY'), 233700, 91.47, 113.10, 120.08),
	(196, TO_DATE('1995', 'YYYY'), 308096, 84.23, 103.31, 110.29),
	(197, TO_DATE('1996', 'YYYY'), 46590, 24.13, 24.82, 64.86),
	(198, TO_DATE('1997', 'YYYY'), 382297, 14.01, 47.65, 86.56),
	(199, TO_DATE('1998', 'YYYY'), 126592, 98.10, 116.19, 121.58),
	(200, TO_DATE('1999', 'YYYY'), 280808, 0.29, 46.96, 71.85),
	(201, TO_DATE('1990', 'YYYY'), 216704, 43.36, 44.50, 52.20),
	(202, TO_DATE('1991', 'YYYY'), 223335, 47.61, 58.37, 58.98),
	(203, TO_DATE('1992', 'YYYY'), 611795, 92.79, 99.95, 113.13),
	(204, TO_DATE('1993', 'YYYY'), 116016, 60.90, 71.64, 79.37),
	(205, TO_DATE('1994', 'YYYY'), 530178, 20.72, 45.55, 49.64),
	(206, TO_DATE('1995', 'YYYY'), 137173, 38.30, 45.54, 56.62),
	(207, TO_DATE('1996', 'YYYY'), 414438, 7.91, 53.50, 63.95),
	(208, TO_DATE('1997', 'YYYY'), 12468, 41.45, 85.47, 102.50),
	(209, TO_DATE('1998', 'YYYY'), 16322, 69.84, 78.61, 81.02),
	(210, TO_DATE('1999', 'YYYY'), 484132, 0.06, 68.90, 76.77),
	(211, TO_DATE('1990', 'YYYY'), 137700, 67.60, 80.21, 81.94),
	(212, TO_DATE('1991', 'YYYY'), 512857, 37.39, 42.10, 98.91),
	(213, TO_DATE('1992', 'YYYY'), 211936, 34.97, 67.76, 96.40),
	(214, TO_DATE('1993', 'YYYY'), 229916, 0.23, 13.61, 91.08),
	(215, TO_DATE('1994', 'YYYY'), 277757, 82.79, 91.24, 100.85),
	(216, TO_DATE('1995', 'YYYY'), 36680, 14.27, 15.60, 85.35),
	(217, TO_DATE('1996', 'YYYY'), 283217, 1.69, 89.74, 99.43),
	(218, TO_DATE('1997', 'YYYY'), 598048, 49.51, 50.45, 54.79),
	(219, TO_DATE('1998', 'YYYY'), 497489, 59.84, 83.37, 91.08),
	(220, TO_DATE('1999', 'YYYY'), 25956, 34.17, 56.46, 69.14),
	(221, TO_DATE('1990', 'YYYY'), 361544, 68.57, 76.59, 80.11),
	(222, TO_DATE('1991', 'YYYY'), 358226, 19.97, 60.87, 63.42),
	(223, TO_DATE('1992', 'YYYY'), 38716, 48.35, 55.34, 72.75),
	(224, TO_DATE('1993', 'YYYY'), 85203, 56.94, 74.84, 90.22),
	(225, TO_DATE('1994', 'YYYY'), 23564, 32.30, 33.72, 40.33),
	(226, TO_DATE('1995', 'YYYY'), 106210, 62.14, 95.01, 117.66),
	(227, TO_DATE('1996', 'YYYY'), 157879, 41.47, 99.85, 103.15),
	(228, TO_DATE('1997', 'YYYY'), 6852, 41.13, 64.95, 72.27),
	(229, TO_DATE('1998', 'YYYY'), 39934, 90.33, 97.56, 101.65),
	(230, TO_DATE('1999', 'YYYY'), 450109, 47.81, 55.86, 63.27),
	(231, TO_DATE('1990', 'YYYY'), 209037, 30.65, 51.61, 53.41),
	(232, TO_DATE('1991', 'YYYY'), 377402, 17.55, 99.39, 106.85),
	(233, TO_DATE('1992', 'YYYY'), 151867, 27.70, 33.11, 38.80),
	(234, TO_DATE('1993', 'YYYY'), 95306, 76.97, 97.08, 112.43),
	(235, TO_DATE('1994', 'YYYY'), 534118, 85.61, 96.01, 111.20),
	(236, TO_DATE('1995', 'YYYY'), 372453, 95.77, 106.43, 110.90),
	(237, TO_DATE('1996', 'YYYY'), 667235, 51.56, 59.59, 81.59),
	(238, TO_DATE('1997', 'YYYY'), 469027, 94.04, 96.71, 118.80),
	(239, TO_DATE('1998', 'YYYY'), 325162, 1.12, 29.18, 66.07),
	(240, TO_DATE('1999', 'YYYY'), 188054, 16.46, 16.83, 82.21),
	(241, TO_DATE('1990', 'YYYY'), 6224, 38.18, 46.04, 67.48),
	(242, TO_DATE('1991', 'YYYY'), 235501, 5.16, 97.13, 115.22),
	(243, TO_DATE('1992', 'YYYY'), 163148, 20.92, 24.85, 34.11),
	(244, TO_DATE('1993', 'YYYY'), 61485, 5.16, 96.53, 114.38),
	(245, TO_DATE('1994', 'YYYY'), 141683, 50.90, 76.73, 84.73),
	(246, TO_DATE('1995', 'YYYY'), 41973, 12.32, 33.42, 33.66),
	(247, TO_DATE('1996', 'YYYY'), 454666, 9.82, 32.70, 82.63),
	(248, TO_DATE('1997', 'YYYY'), 582837, 62.90, 82.45, 93.02),
	(249, TO_DATE('1998', 'YYYY'), 45480, 31.48, 74.75, 78.35),
	(250, TO_DATE('1999', 'YYYY'), 246829, 53.20, 70.74, 73.77),
	(251, TO_DATE('1990', 'YYYY'), 245179, 71.78, 94.34, 117.40),
	(252, TO_DATE('1991', 'YYYY'), 89477, 31.43, 34.84, 44.70),
	(253, TO_DATE('1992', 'YYYY'), 197851, 9.91, 58.19, 67.58),
	(254, TO_DATE('1993', 'YYYY'), 181888, 72.55, 73.57, 91.50),
	(255, TO_DATE('1994', 'YYYY'), 9641, 63.20, 66.81, 84.01),
	(256, TO_DATE('1995', 'YYYY'), 170838, 61.25, 76.06, 90.53),
	(257, TO_DATE('1996', 'YYYY'), 498779, 17.86, 20.18, 23.91),
	(258, TO_DATE('1997', 'YYYY'), 233106, 25.11, 72.35, 89.37),
	(259, TO_DATE('1998', 'YYYY'), 453366, 22.81, 79.71, 98.83),
	(260, TO_DATE('1999', 'YYYY'), 131597, 14.39, 33.84, 36.13),
	(261, TO_DATE('1990', 'YYYY'), 154710, 36.94, 95.51, 96.64),
	(262, TO_DATE('1991', 'YYYY'), 227891, 73.55, 82.19, 94.41),
	(263, TO_DATE('1992', 'YYYY'), 65475, 13.90, 62.92, 71.17),
	(264, TO_DATE('1993', 'YYYY'), 133166, 29.73, 52.82, 76.20),
	(265, TO_DATE('1994', 'YYYY'), 113350, 96.91, 118.00, 120.32),
	(266, TO_DATE('1995', 'YYYY'), 269293, 74.56, 90.19, 109.77),
	(267, TO_DATE('1996', 'YYYY'), 183130, 2.23, 39.17, 47.37),
	(268, TO_DATE('1997', 'YYYY'), 192241, 36.36, 48.53, 54.42),
	(269, TO_DATE('1998', 'YYYY'), 103484, 59.49, 59.53, 71.39),
	(270, TO_DATE('1999', 'YYYY'), 320662, 60.35, 73.54, 80.35),
	(271, TO_DATE('1990', 'YYYY'), 84034, 47.81, 57.35, 58.14),
	(272, TO_DATE('1991', 'YYYY'), 242845, 60.30, 69.91, 99.44),
	(273, TO_DATE('1992', 'YYYY'), 57769, 21.94, 27.20, 66.07),
	(274, TO_DATE('1993', 'YYYY'), 53320, 26.17, 76.29, 88.86),
	(275, TO_DATE('1994', 'YYYY'), 21169, 44.30, 50.09, 51.71),
	(276, TO_DATE('1995', 'YYYY'), 109468, 24.08, 61.15, 70.45),
	(277, TO_DATE('1996', 'YYYY'), 421912, 84.51, 97.08, 103.93),
	(278, TO_DATE('1997', 'YYYY'), 62696, 40.38, 74.27, 90.44),
	(279, TO_DATE('1998', 'YYYY'), 42544, 98.78, 111.14, 137.57),
	(280, TO_DATE('1999', 'YYYY'), 550354, 28.61, 91.01, 100.73),
	(281, TO_DATE('1990', 'YYYY'), 111445, 85.02, 87.37, 87.40),
	(282, TO_DATE('1991', 'YYYY'), 35310, 98.81, 110.20, 113.10),
	(283, TO_DATE('1992', 'YYYY'), 424005, 83.23, 91.13, 98.26),
	(284, TO_DATE('1993', 'YYYY'), 198209, 54.33, 54.73, 96.14),
	(285, TO_DATE('1994', 'YYYY'), 43779, 95.38, 96.51, 104.55),
	(286, TO_DATE('1995', 'YYYY'), 38420, 57.98, 64.89, 80.83),
	(287, TO_DATE('1996', 'YYYY'), 551749, 40.29, 41.10, 53.31),
	(288, TO_DATE('1997', 'YYYY'), 434091, 77.71, 84.77, 103.24),
	(289, TO_DATE('1998', 'YYYY'), 164388, 28.54, 46.48, 57.78),
	(290, TO_DATE('1999', 'YYYY'), 221446, 79.65, 89.99, 105.54);
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
