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
values (1, 0, 'BOK');
insert into ITEM_TREE (id, parent, abbr)
values (2, 0, 'PIC');
insert into ITEM_TREE (id, parent, abbr)
values (3, 0, 'AXE');
insert into ITEM_TREE (id, parent, abbr)
values (4, 0, 'SHO');
insert into ITEM_TREE (id, parent, abbr)
values (5, 0, 'ROD');
insert into ITEM_TREE (id, parent, abbr)
values (6, 0, 'SHE');
insert into ITEM_TREE (id, parent, abbr)
values (7, 0, 'FLI');
insert into ITEM_TREE (id, parent, abbr)
values (8, 0, 'SHI');
insert into ITEM_TREE (id, parent, abbr)
values (9, 0, 'BOW');
insert into ITEM_TREE (id, parent, abbr)
values (10, 0, 'SWO');
insert into ITEM_TREE (id, parent, abbr)
values (11, 0, 'HEL');
insert into ITEM_TREE (id, parent, abbr)
values (12, 0, 'CHE');
insert into ITEM_TREE (id, parent, abbr)
values (13, 0, 'LEG');
insert into ITEM_TREE (id, parent, abbr)
values (14, 0, 'BOO');
insert into ITEM_TREE (id, parent, abbr)
values (15, 0, 'ELY');
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


insert into PRICES (abbr, price) values ('UN1', 50);
insert into PRICES (abbr, price) values ('EF1', 20);
insert into PRICES (abbr, price) values ('ST1', 300);
insert into PRICES (abbr, price) values ('FO1', 80);
insert into PRICES (abbr, price) values ('LO1', 100);
insert into PRICES (abbr, price) values ('SH1', 10);
insert into PRICES (abbr, price) values ('KN1', 20);
insert into PRICES (abbr, price) values ('SM1', 10);
insert into PRICES (abbr, price) values ('BA1', 10);
insert into PRICES (abbr, price) values ('FA1', 40);
insert into PRICES (abbr, price) values ('PR1', 10);
insert into PRICES (abbr, price) values ('TH1', 40);
insert into PRICES (abbr, price) values ('AA1', 100);
insert into PRICES (abbr, price) values ('FP1', 7.5);
insert into PRICES (abbr, price) values ('PP1', 7.5);
insert into PRICES (abbr, price) values ('FF1', 10);
insert into PRICES (abbr, price) values ('BP1', 5);
insert into PRICES (abbr, price) values ('RE1', 20);
insert into PRICES (abbr, price) values ('DS1', 30);
insert into PRICES (abbr, price) values ('PO1', 10);
insert into PRICES (abbr, price) values ('PU1', 20);
insert into PRICES (abbr, price) values ('FL1', 100);
insert into PRICES (abbr, price) values ('IN1', 400);
insert into PRICES (abbr, price) values ('LS1', 10);
insert into PRICES (abbr, price) values ('LU1', 10);
insert into PRICES (abbr, price) values ('FW1', 100);
insert into PRICES (abbr, price) values ('UN2', 100);
insert into PRICES (abbr, price) values ('EF2', 40);
insert into PRICES (abbr, price) values ('FO2', 160);
insert into PRICES (abbr, price) values ('LO2', 200);
insert into PRICES (abbr, price) values ('SH2', 20);
insert into PRICES (abbr, price) values ('KN2', 40);
insert into PRICES (abbr, price) values ('SM2', 20);
insert into PRICES (abbr, price) values ('BA2', 20);
insert into PRICES (abbr, price) values ('FA2', 80);
insert into PRICES (abbr, price) values ('PR2', 20);
insert into PRICES (abbr, price) values ('TH2', 80);
insert into PRICES (abbr, price) values ('FP2', 15);
insert into PRICES (abbr, price) values ('PP2', 15);
insert into PRICES (abbr, price) values ('FF2', 30);
insert into PRICES (abbr, price) values ('BP2', 10);
insert into PRICES (abbr, price) values ('RE2', 50);
insert into PRICES (abbr, price) values ('DS2', 100);
insert into PRICES (abbr, price) values ('PO2', 20);
insert into PRICES (abbr, price) values ('PU2', 40);
insert into PRICES (abbr, price) values ('LS2', 40);
insert into PRICES (abbr, price) values ('LU2', 40);
insert into PRICES (abbr, price) values ('FW2', 200);
insert into PRICES (abbr, price) values ('UN3', 200);
insert into PRICES (abbr, price) values ('EF3', 80);
insert into PRICES (abbr, price) values ('FO3', 320);
insert into PRICES (abbr, price) values ('LO3', 400);
insert into PRICES (abbr, price) values ('SH3', 60);
insert into PRICES (abbr, price) values ('SM3', 40);
insert into PRICES (abbr, price) values ('BA3', 40);
insert into PRICES (abbr, price) values ('PR3', 100);
insert into PRICES (abbr, price) values ('FP3', 75);
insert into PRICES (abbr, price) values ('PP3', 75);
insert into PRICES (abbr, price) values ('FF3', 100);
insert into PRICES (abbr, price) values ('BP3', 50);
insert into PRICES (abbr, price) values ('RE3', 100);
insert into PRICES (abbr, price) values ('DS3', 200);
insert into PRICES (abbr, price) values ('PO3', 50);
insert into PRICES (abbr, price) values ('LS3', 100);
insert into PRICES (abbr, price) values ('LU3', 100);
insert into PRICES (abbr, price) values ('EF4', 160);
insert into PRICES (abbr, price) values ('SH4', 150);
insert into PRICES (abbr, price) values ('SM4', 100);
insert into PRICES (abbr, price) values ('BA4', 100);
insert into PRICES (abbr, price) values ('PR4', 150);
insert into PRICES (abbr, price) values ('FP4', 112.5);
insert into PRICES (abbr, price) values ('PP4', 112.5);
insert into PRICES (abbr, price) values ('FF4', 150);
insert into PRICES (abbr, price) values ('BP4', 75);
insert into PRICES (abbr, price) values ('PO4', 100);
insert into PRICES (abbr, price) values ('EF5', 320);
insert into PRICES (abbr, price) values ('SH5', 300);
insert into PRICES (abbr, price) values ('SM5', 200);
insert into PRICES (abbr, price) values ('BA5', 200);
insert into PRICES (abbr, price) values ('PO5', 200);