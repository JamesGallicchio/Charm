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
values (0, null, 'roo');
insert into ITEM_TREE (id, parent, abbr)
values (1, 1, 'BOK');
insert into ITEM_TREE (id, parent, abbr)
values (2, 1, 'PIC');
insert into ITEM_TREE (id, parent, abbr)
values (3, 1, 'AXE');
insert into ITEM_TREE (id, parent, abbr)
values (4, 1, 'SHO');
insert into ITEM_TREE (id, parent, abbr)
values (5, 1, 'ROD');
insert into ITEM_TREE (id, parent, abbr)
values (6, 1, 'SHE');
insert into ITEM_TREE (id, parent, abbr)
values (7, 1, 'FLI');
insert into ITEM_TREE (id, parent, abbr)
values (8, 1, 'SHI');
insert into ITEM_TREE (id, parent, abbr)
values (9, 1, 'BOW');
insert into ITEM_TREE (id, parent, abbr)
values (10, 1, 'SWO');
insert into ITEM_TREE (id, parent, abbr)
values (11, 1, 'HEL');
insert into ITEM_TREE (id, parent, abbr)
values (12, 1, 'CHE');
insert into ITEM_TREE (id, parent, abbr)
values (13, 1, 'LEG');
insert into ITEM_TREE (id, parent, abbr)
values (14, 1, 'BOO');
insert into ITEM_TREE (id, parent, abbr)
values (15, 1, 'ELY');
insert into ITEM_TREE (id, parent, abbr)
values (16, 1, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (17, 16, 'UN');
insert into ITEM_TREE (id, parent, abbr)
values (18, 17, 'EF');
insert into ITEM_TREE (id, parent, abbr)
values (19, 18, 'FO');
insert into ITEM_TREE (id, parent, abbr)
values (20, 19, 'ST');
insert into ITEM_TREE (id, parent, abbr)
values (21, 20, 'LU');
insert into ITEM_TREE (id, parent, abbr)
values (22, 21, 'LS');
insert into ITEM_TREE (id, parent, abbr)
values (23, 22, 'PO');
insert into ITEM_TREE (id, parent, abbr)
values (24, 23, 'PU');
insert into ITEM_TREE (id, parent, abbr)
values (25, 24, 'FL');
insert into ITEM_TREE (id, parent, abbr)
values (26, 25, 'IN');
insert into ITEM_TREE (id, parent, abbr)
values (27, 26, 'KN');
insert into ITEM_TREE (id, parent, abbr)
values (28, 27, 'FA');
insert into ITEM_TREE (id, parent, abbr)
values (29, 28, 'LO');
insert into ITEM_TREE (id, parent, abbr)
values (30, 29, 'SH');
insert into ITEM_TREE (id, parent, abbr)
values (31, 30, 'SM');
insert into ITEM_TREE (id, parent, abbr)
values (32, 31, 'BA');
insert into ITEM_TREE (id, parent, abbr)
values (33, 32, 'PR');
insert into ITEM_TREE (id, parent, abbr)
values (34, 33, 'FP');
insert into ITEM_TREE (id, parent, abbr)
values (35, 34, 'FF');
insert into ITEM_TREE (id, parent, abbr)
values (36, 35, 'BP');
insert into ITEM_TREE (id, parent, abbr)
values (37, 36, 'PP');
insert into ITEM_TREE (id, parent, abbr)
values (38, 37, 'RE');
insert into ITEM_TREE (id, parent, abbr)
values (39, 38, 'AA');
insert into ITEM_TREE (id, parent, abbr)
values (40, 39, 'TH');
insert into ITEM_TREE (id, parent, abbr)
values (41, 40, 'DS');
insert into ITEM_TREE (id, parent, abbr)
values (42, 41, 'FW');
insert into ITEM_TREE (id, parent, abbr)
values (43, 2, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (44, 43, 'UN');
insert into ITEM_TREE (id, parent, abbr)
values (45, 44, 'EF');
insert into ITEM_TREE (id, parent, abbr)
values (46, 45, 'FO');
insert into ITEM_TREE (id, parent, abbr)
values (47, 45, 'ST');
insert into ITEM_TREE (id, parent, abbr)
values (48, 3, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (49, 48, 'UN');
insert into ITEM_TREE (id, parent, abbr)
values (50, 49, 'EF');
insert into ITEM_TREE (id, parent, abbr)
values (51, 50, 'FO');
insert into ITEM_TREE (id, parent, abbr)
values (52, 50, 'ST');
insert into ITEM_TREE (id, parent, abbr)
values (53, 4, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (54, 53, 'UN');
insert into ITEM_TREE (id, parent, abbr)
values (55, 54, 'EF');
insert into ITEM_TREE (id, parent, abbr)
values (56, 55, 'FO');
insert into ITEM_TREE (id, parent, abbr)
values (57, 55, 'ST');
insert into ITEM_TREE (id, parent, abbr)
values (58, 5, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (59, 58, 'UN');
insert into ITEM_TREE (id, parent, abbr)
values (60, 59, 'LU');
insert into ITEM_TREE (id, parent, abbr)
values (61, 60, 'LS');
insert into ITEM_TREE (id, parent, abbr)
values (62, 6, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (63, 62, 'UN');
insert into ITEM_TREE (id, parent, abbr)
values (64, 7, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (65, 64, 'UN');
insert into ITEM_TREE (id, parent, abbr)
values (66, 8, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (67, 66, 'UN');
insert into ITEM_TREE (id, parent, abbr)
values (68, 9, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (69, 68, 'UN');
insert into ITEM_TREE (id, parent, abbr)
values (70, 69, 'PO');
insert into ITEM_TREE (id, parent, abbr)
values (71, 70, 'PU');
insert into ITEM_TREE (id, parent, abbr)
values (72, 71, 'FL');
insert into ITEM_TREE (id, parent, abbr)
values (73, 72, 'IN');
insert into ITEM_TREE (id, parent, abbr)
values (74, 10, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (75, 74, 'UN');
insert into ITEM_TREE (id, parent, abbr)
values (76, 75, 'LO');
insert into ITEM_TREE (id, parent, abbr)
values (77, 76, 'KN');
insert into ITEM_TREE (id, parent, abbr)
values (78, 77, 'FA');
insert into ITEM_TREE (id, parent, abbr)
values (79, 78, 'SH');
insert into ITEM_TREE (id, parent, abbr)
values (80, 78, 'SM');
insert into ITEM_TREE (id, parent, abbr)
values (81, 78, 'BA');
insert into ITEM_TREE (id, parent, abbr)
values (82, 11, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (83, 82, 'UN');
insert into ITEM_TREE (id, parent, abbr)
values (84, 83, 'TH');
insert into ITEM_TREE (id, parent, abbr)
values (85, 84, 'RE');
insert into ITEM_TREE (id, parent, abbr)
values (86, 85, 'AA');
insert into ITEM_TREE (id, parent, abbr)
values (87, 86, 'PR');
insert into ITEM_TREE (id, parent, abbr)
values (88, 86, 'FP');
insert into ITEM_TREE (id, parent, abbr)
values (89, 86, 'BP');
insert into ITEM_TREE (id, parent, abbr)
values (90, 86, 'PP');
insert into ITEM_TREE (id, parent, abbr)
values (91, 12, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (92, 91, 'UN');
insert into ITEM_TREE (id, parent, abbr)
values (93, 92, 'TH');
insert into ITEM_TREE (id, parent, abbr)
values (94, 93, 'PR');
insert into ITEM_TREE (id, parent, abbr)
values (95, 93, 'FP');
insert into ITEM_TREE (id, parent, abbr)
values (96, 93, 'BP');
insert into ITEM_TREE (id, parent, abbr)
values (97, 93, 'PP');
insert into ITEM_TREE (id, parent, abbr)
values (98, 13, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (99, 98, 'UN');
insert into ITEM_TREE (id, parent, abbr)
values (100, 99, 'TH');
insert into ITEM_TREE (id, parent, abbr)
values (101, 100, 'PR');
insert into ITEM_TREE (id, parent, abbr)
values (102, 100, 'FP');
insert into ITEM_TREE (id, parent, abbr)
values (103, 100, 'BP');
insert into ITEM_TREE (id, parent, abbr)
values (104, 100, 'PP');
insert into ITEM_TREE (id, parent, abbr)
values (105, 14, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (106, 105, 'UN');
insert into ITEM_TREE (id, parent, abbr)
values (107, 106, 'TH');
insert into ITEM_TREE (id, parent, abbr)
values (108, 107, 'FF');
insert into ITEM_TREE (id, parent, abbr)
values (109, 108, 'DS');
insert into ITEM_TREE (id, parent, abbr)
values (110, 109, 'FW');
insert into ITEM_TREE (id, parent, abbr)
values (111, 110, 'PR');
insert into ITEM_TREE (id, parent, abbr)
values (112, 110, 'FP');
insert into ITEM_TREE (id, parent, abbr)
values (113, 110, 'BP');
insert into ITEM_TREE (id, parent, abbr)
values (114, 110, 'PP');
insert into ITEM_TREE (id, parent, abbr)
values (115, 15, 'ME');
insert into ITEM_TREE (id, parent, abbr)
values (116, 115, 'UN');


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

