use CHARM;

insert into ENCHANT_INFO (name, abbr, max_level)
values ('protection', 'PR', 4);
insert into ENCHANT_INFO (name, abbr, max_level)
values ('fire_protection', 'FP', 4);
insert into ENCHANT_INFO (name, abbr, max_level)
values ('feather_falling', 'FF', 4);
insert into ENCHANT_INFO (name, abbr, max_level)
values ('blast_protection', 'BP', 4);
insert into ENCHANT_INFO (name, abbr, max_level)
values ('projectile_protection', 'PP', 4);
insert into ENCHANT_INFO (name, abbr, max_level)
values ('respiration', 'RE', 3);
insert into ENCHANT_INFO (name, abbr, max_level)
values ('aqua_affinity', 'AA', 1);
insert into ENCHANT_INFO (name, abbr, max_level)
values ('thorns', 'TH', 3);
insert into ENCHANT_INFO (name, abbr, max_level)
values ('depth_strider', 'DS', 3);
insert into ENCHANT_INFO (name, abbr, max_level)
values ('frost_walker', 'FW', 2);
insert into ENCHANT_INFO (name, abbr, max_level)
values ('sharpness', 'SH', 5);
insert into ENCHANT_INFO (name, abbr, max_level)
values ('smite', 'SM', 5);
insert into ENCHANT_INFO (name, abbr, max_level)
values ('bane_of_arthropods', 'BA', 5);
insert into ENCHANT_INFO (name, abbr, max_level)
values ('knockback', 'KN', 2);
insert into ENCHANT_INFO (name, abbr, max_level)
values ('fire_aspect', 'FA', 2);
insert into ENCHANT_INFO (name, abbr, max_level)
values ('looting', 'LO', 3);
insert into ENCHANT_INFO (name, abbr, max_level)
values ('efficiency', 'EF', 5);
insert into ENCHANT_INFO (name, abbr, max_level)
values ('silk_touch', 'ST', 1);
insert into ENCHANT_INFO (name, abbr, max_level)
values ('unbreaking', 'UN', 3);
insert into ENCHANT_INFO (name, abbr, max_level)
values ('fortune', 'FO', 3);
insert into ENCHANT_INFO (name, abbr, max_level)
values ('power', 'PO', 5);
insert into ENCHANT_INFO (name, abbr, max_level)
values ('punch', 'PU', 2);
insert into ENCHANT_INFO (name, abbr, max_level)
values ('flame', 'FL', 1);
insert into ENCHANT_INFO (name, abbr, max_level)
values ('infinity', 'IN', 1);
insert into ENCHANT_INFO (name, abbr, max_level)
values ('luck_of_the_sea', 'LS', 3);
insert into ENCHANT_INFO (name, abbr, max_level)
values ('lure', 'LU', 3);
insert into ENCHANT_INFO (name, abbr, max_level)
values ('mending', 'ME', 1);


insert into ITEM_PRICES (abbr, price, name)
values ('PIC', 90, 'pickaxe');
insert into ITEM_PRICES (abbr, price, name)
values ('AXE', 90, 'axe');
insert into ITEM_PRICES (abbr, price, name)
values ('SHO', 30, 'shovel');
insert into ITEM_PRICES (abbr, price, name)
values ('ROD', 5, 'fishing_rod');
insert into ITEM_PRICES (abbr, price, name)
values ('SHE', 18, 'shears');
insert into ITEM_PRICES (abbr, price, name)
values ('FLI', 10, 'flint_and_steel');
insert into ITEM_PRICES (abbr, price, name)
values ('SHI', 12, 'shield');
insert into ITEM_PRICES (abbr, price, name)
values ('BOW', 5, 'bow');
insert into ITEM_PRICES (abbr, price, name)
values ('SWO', 60, 'sword');
insert into ITEM_PRICES (abbr, price, name)
values ('HEL', 150, 'helmet');
insert into ITEM_PRICES (abbr, price, name)
values ('CHE', 240, 'chestplate');
insert into ITEM_PRICES (abbr, price, name)
values ('LEG', 210, 'leggings');
insert into ITEM_PRICES (abbr, price, name)
values ('BOO', 120, 'boots');
insert into ITEM_PRICES (abbr, price, name)
values ('BOK', 5, 'book');
insert into ITEM_PRICES (abbr, price, name)
values ('ELY', 5000, 'elytra');

insert into ITEM_TREE (id, parent, abbr)
values (1, null, 'root');
insert into ITEM_TREE (id, parent, abbr)
values (2, 1, 'BOK');
insert into ITEM_TREE (id, parent, abbr)
values (3, 1, 'PIC');
insert into ITEM_TREE (id, parent, abbr)
values (4, 1, 'AXE');
insert into ITEM_TREE (id, parent, abbr)
values (5, 1, 'SHO');
insert into ITEM_TREE (id, parent, abbr)
values (6, 1, 'ROD');
insert into ITEM_TREE (id, parent, abbr)
values (7, 1, 'SHE');
insert into ITEM_TREE (id, parent, abbr)
values (8, 1, 'FLI');
insert into ITEM_TREE (id, parent, abbr)
values (9, 1, 'SHI');
insert into ITEM_TREE (id, parent, abbr)
values (10, 1, 'BOW');
insert into ITEM_TREE (id, parent, abbr)
values (11, 1, 'SWO');
insert into ITEM_TREE (id, parent, abbr)
values (12, 1, 'HEL');
insert into ITEM_TREE (id, parent, abbr)
values (13, 1, 'CHE');
insert into ITEM_TREE (id, parent, abbr)
values (14, 1, 'LEG');
insert into ITEM_TREE (id, parent, abbr)
values (15, 1, 'BOO');
insert into ITEM_TREE (id, parent, abbr)
values (16, 1, 'ELY');
insert into ITEM_TREE (id, parent, abbr)
values (17, 1, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (18, 16, 'UN');
insert into ITEM_TREE (id, parent, abbr)
values (19, 17, 'EF');
insert into ITEM_TREE (id, parent, abbr)
values (20, 18, 'FO');
insert into ITEM_TREE (id, parent, abbr)
values (21, 19, 'ST');
insert into ITEM_TREE (id, parent, abbr)
values (22, 20, 'LU');
insert into ITEM_TREE (id, parent, abbr)
values (23, 21, 'LS');
insert into ITEM_TREE (id, parent, abbr)
values (24, 22, 'PO');
insert into ITEM_TREE (id, parent, abbr)
values (25, 23, 'PU');
insert into ITEM_TREE (id, parent, abbr)
values (26, 24, 'FL');
insert into ITEM_TREE (id, parent, abbr)
values (27, 25, 'IN');
insert into ITEM_TREE (id, parent, abbr)
values (28, 26, 'KN');
insert into ITEM_TREE (id, parent, abbr)
values (29, 27, 'FA');
insert into ITEM_TREE (id, parent, abbr)
values (30, 28, 'LO');
insert into ITEM_TREE (id, parent, abbr)
values (31, 29, 'SH');
insert into ITEM_TREE (id, parent, abbr)
values (32, 30, 'SM');
insert into ITEM_TREE (id, parent, abbr)
values (33, 31, 'BA');
insert into ITEM_TREE (id, parent, abbr)
values (34, 32, 'PR');
insert into ITEM_TREE (id, parent, abbr)
values (35, 33, 'FP');
insert into ITEM_TREE (id, parent, abbr)
values (36, 34, 'FF');
insert into ITEM_TREE (id, parent, abbr)
values (37, 35, 'BP');
insert into ITEM_TREE (id, parent, abbr)
values (38, 36, 'PP');
insert into ITEM_TREE (id, parent, abbr)
values (39, 37, 'RE');
insert into ITEM_TREE (id, parent, abbr)
values (40, 38, 'AA');
insert into ITEM_TREE (id, parent, abbr)
values (41, 39, 'TH');
insert into ITEM_TREE (id, parent, abbr)
values (42, 40, 'DS');
insert into ITEM_TREE (id, parent, abbr)
values (43, 41, 'FW');
insert into ITEM_TREE (id, parent, abbr)
values (44, 2, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (45, 43, 'UN');
insert into ITEM_TREE (id, parent, abbr)
values (46, 44, 'EF');
insert into ITEM_TREE (id, parent, abbr)
values (47, 45, 'FO');
insert into ITEM_TREE (id, parent, abbr)
values (48, 45, 'ST');
insert into ITEM_TREE (id, parent, abbr)
values (49, 3, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (50, 48, 'UN');
insert into ITEM_TREE (id, parent, abbr)
values (51, 49, 'EF');
insert into ITEM_TREE (id, parent, abbr)
values (52, 50, 'FO');
insert into ITEM_TREE (id, parent, abbr)
values (53, 50, 'ST');
insert into ITEM_TREE (id, parent, abbr)
values (54, 4, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (55, 53, 'UN');
insert into ITEM_TREE (id, parent, abbr)
values (56, 54, 'EF');
insert into ITEM_TREE (id, parent, abbr)
values (57, 55, 'FO');
insert into ITEM_TREE (id, parent, abbr)
values (58, 55, 'ST');
insert into ITEM_TREE (id, parent, abbr)
values (59, 5, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (60, 58, 'UN');
insert into ITEM_TREE (id, parent, abbr)
values (61, 59, 'LU');
insert into ITEM_TREE (id, parent, abbr)
values (62, 60, 'LS');
insert into ITEM_TREE (id, parent, abbr)
values (63, 6, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (64, 62, 'UN');
insert into ITEM_TREE (id, parent, abbr)
values (65, 7, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (66, 64, 'UN');
insert into ITEM_TREE (id, parent, abbr)
values (67, 8, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (68, 66, 'UN');
insert into ITEM_TREE (id, parent, abbr)
values (69, 9, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (70, 68, 'UN');
insert into ITEM_TREE (id, parent, abbr)
values (71, 69, 'PO');
insert into ITEM_TREE (id, parent, abbr)
values (72, 70, 'PU');
insert into ITEM_TREE (id, parent, abbr)
values (73, 71, 'FL');
insert into ITEM_TREE (id, parent, abbr)
values (74, 72, 'IN');
insert into ITEM_TREE (id, parent, abbr)
values (75, 10, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (76, 74, 'UN');
insert into ITEM_TREE (id, parent, abbr)
values (77, 75, 'LO');
insert into ITEM_TREE (id, parent, abbr)
values (78, 76, 'KN');
insert into ITEM_TREE (id, parent, abbr)
values (79, 77, 'FA');
insert into ITEM_TREE (id, parent, abbr)
values (80, 78, 'SH');
insert into ITEM_TREE (id, parent, abbr)
values (81, 78, 'SM');
insert into ITEM_TREE (id, parent, abbr)
values (82, 78, 'BA');
insert into ITEM_TREE (id, parent, abbr)
values (83, 11, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (84, 82, 'UN');
insert into ITEM_TREE (id, parent, abbr)
values (85, 83, 'TH');
insert into ITEM_TREE (id, parent, abbr)
values (86, 84, 'RE');
insert into ITEM_TREE (id, parent, abbr)
values (87, 85, 'AA');
insert into ITEM_TREE (id, parent, abbr)
values (88, 86, 'PR');
insert into ITEM_TREE (id, parent, abbr)
values (89, 86, 'FP');
insert into ITEM_TREE (id, parent, abbr)
values (90, 86, 'BP');
insert into ITEM_TREE (id, parent, abbr)
values (91, 86, 'PP');
insert into ITEM_TREE (id, parent, abbr)
values (92, 12, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (93, 91, 'UN');
insert into ITEM_TREE (id, parent, abbr)
values (94, 92, 'TH');
insert into ITEM_TREE (id, parent, abbr)
values (95, 93, 'PR');
insert into ITEM_TREE (id, parent, abbr)
values (96, 93, 'FP');
insert into ITEM_TREE (id, parent, abbr)
values (97, 93, 'BP');
insert into ITEM_TREE (id, parent, abbr)
values (98, 93, 'PP');
insert into ITEM_TREE (id, parent, abbr)
values (99, 13, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (100, 98, 'UN');
insert into ITEM_TREE (id, parent, abbr)
values (101, 99, 'TH');
insert into ITEM_TREE (id, parent, abbr)
values (102, 100, 'PR');
insert into ITEM_TREE (id, parent, abbr)
values (103, 100, 'FP');
insert into ITEM_TREE (id, parent, abbr)
values (104, 100, 'BP');
insert into ITEM_TREE (id, parent, abbr)
values (105, 100, 'PP');
insert into ITEM_TREE (id, parent, abbr)
values (106, 14, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (107, 105, 'UN');
insert into ITEM_TREE (id, parent, abbr)
values (108, 106, 'TH');
insert into ITEM_TREE (id, parent, abbr)
values (109, 107, 'FF');
insert into ITEM_TREE (id, parent, abbr)
values (110, 108, 'DS');
insert into ITEM_TREE (id, parent, abbr)
values (111, 109, 'FW');
insert into ITEM_TREE (id, parent, abbr)
values (112, 110, 'PR');
insert into ITEM_TREE (id, parent, abbr)
values (113, 110, 'FP');
insert into ITEM_TREE (id, parent, abbr)
values (114, 110, 'BP');
insert into ITEM_TREE (id, parent, abbr)
values (115, 110, 'PP');
insert into ITEM_TREE (id, parent, abbr)
values (116, 15, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (117, 115, 'UN');


insert into PRICES (ench_level, unbreaking, efficiency, silk_touch, fortune, looting, sharpness, knockback, smite, bane_of_arthropods, fire_aspect, protection, thorns, aqua_affinity, fire_protection, projectile_protection, feather_falling, blast_protection, respiration, depth_strider, power, punch, flame, infinity, luck_of_the_sea, lure, frost_walker)
values (1, 50, 20, 300, 80, 100, 10, 20, 10, 10, 40, 10, 40, 100, 7.5, 7.5, 10, 5, 20, 30, 10, 20, 100, 400, 10, 10, 100);
insert into PRICES (ench_level, unbreaking, efficiency, silk_touch, fortune, looting, sharpness, knockback, smite, bane_of_arthropods, fire_aspect, protection, thorns, aqua_affinity, fire_protection, projectile_protection, feather_falling, blast_protection, respiration, depth_strider, power, punch, flame, infinity, luck_of_the_sea, lure, frost_walker)
values (2, 100, 40, null, 160, 200, 20, 40, 20, 20, 80, 20, 80, null, 15, 15, 30, 10, 50, 100, 20, 40, null, null, 40, 40, 200);
insert into PRICES (ench_level, unbreaking, efficiency, silk_touch, fortune, looting, sharpness, knockback, smite, bane_of_arthropods, fire_aspect, protection, thorns, aqua_affinity, fire_protection, projectile_protection, feather_falling, blast_protection, respiration, depth_strider, power, punch, flame, infinity, luck_of_the_sea, lure, frost_walker)
values (3, 200, 80, null, 320, 400, 60, null, 40, 40, null, 100, null, null, 75, 75, 100, 50, 100, 200, 50, null, null, null, 100, 100, null);
insert into PRICES (ench_level, unbreaking, efficiency, silk_touch, fortune, looting, sharpness, knockback, smite, bane_of_arthropods, fire_aspect, protection, thorns, aqua_affinity, fire_protection, projectile_protection, feather_falling, blast_protection, respiration, depth_strider, power, punch, flame, infinity, luck_of_the_sea, lure, frost_walker)
values (4, null, 160, null, null, null, 150, null, 100, 100, null, 150, null, null, 112.5, 112.5, 150, 75, null, null, 100, null, null, null, null, null, null);
insert into PRICES (ench_level, unbreaking, efficiency, silk_touch, fortune, looting, sharpness, knockback, smite, bane_of_arthropods, fire_aspect, protection, thorns, aqua_affinity, fire_protection, projectile_protection, feather_falling, blast_protection, respiration, depth_strider, power, punch, flame, infinity, luck_of_the_sea, lure, frost_walker)
values (5, null, 320, null, null, null, 300, null, 200, 200, null, null, null, null, null, null, null, null, null, null, 200, null, null, null, null, null, null);

