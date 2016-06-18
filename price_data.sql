use CHARM;

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

insert into ITEM_TREE (id, parent, name)
values (1, null, 'root');
insert into ITEM_TREE (id, parent, name)
values (2, 1, 'book');
insert into ITEM_TREE (id, parent, name)
values (3, 1, 'pickaxe');
insert into ITEM_TREE (id, parent, name)
values (4, 1, 'axe');
insert into ITEM_TREE (id, parent, name)
values (5, 1, 'shovel');
insert into ITEM_TREE (id, parent, name)
values (6, 1, 'fishing_rod');
insert into ITEM_TREE (id, parent, name)
values (7, 1, 'shears');
insert into ITEM_TREE (id, parent, name)
values (8, 1, 'flint_and_steel');
insert into ITEM_TREE (id, parent, name)
values (9, 1, 'shield');
insert into ITEM_TREE (id, parent, name)
values (10, 1, 'bow');
insert into ITEM_TREE (id, parent, name)
values (11, 1, 'sword');
insert into ITEM_TREE (id, parent, name)
values (12, 1, 'helmet');
insert into ITEM_TREE (id, parent, name)
values (13, 1, 'chestplate');
insert into ITEM_TREE (id, parent, name)
values (14, 1, 'leggings');
insert into ITEM_TREE (id, parent, name)
values (15, 1, 'boots');
insert into ITEM_TREE (id, parent, name)
values (16, 1, 'elytra');
insert into ITEM_TREE (id, parent, name)
values (17, 1, 'mending');
insert into ITEM_TREE (id, parent, name)
values (18, 16, 'unbreaking');
insert into ITEM_TREE (id, parent, name)
values (19, 17, 'efficiency');
insert into ITEM_TREE (id, parent, name)
values (20, 18, 'fortune');
insert into ITEM_TREE (id, parent, name)
values (21, 19, 'silk_touch');
insert into ITEM_TREE (id, parent, name)
values (22, 20, 'lure');
insert into ITEM_TREE (id, parent, name)
values (23, 21, 'luck_of_the_sea');
insert into ITEM_TREE (id, parent, name)
values (24, 22, 'power');
insert into ITEM_TREE (id, parent, name)
values (25, 23, 'punch');
insert into ITEM_TREE (id, parent, name)
values (26, 24, 'flame');
insert into ITEM_TREE (id, parent, name)
values (27, 25, 'infinity');
insert into ITEM_TREE (id, parent, name)
values (28, 26, 'knockback');
insert into ITEM_TREE (id, parent, name)
values (29, 27, 'fire_aspect');
insert into ITEM_TREE (id, parent, name)
values (30, 28, 'looting');
insert into ITEM_TREE (id, parent, name)
values (31, 29, 'sharpness');
insert into ITEM_TREE (id, parent, name)
values (32, 30, 'smite');
insert into ITEM_TREE (id, parent, name)
values (33, 31, 'bane_of_arthropods');
insert into ITEM_TREE (id, parent, name)
values (34, 32, 'protection');
insert into ITEM_TREE (id, parent, name)
values (35, 33, 'fire_protection');
insert into ITEM_TREE (id, parent, name)
values (36, 34, 'feather_falling');
insert into ITEM_TREE (id, parent, name)
values (37, 35, 'blast_protection');
insert into ITEM_TREE (id, parent, name)
values (38, 36, 'projectile_protection');
insert into ITEM_TREE (id, parent, name)
values (39, 37, 'respiration');
insert into ITEM_TREE (id, parent, name)
values (40, 38, 'aqua_affinity');
insert into ITEM_TREE (id, parent, name)
values (41, 39, 'thorns');
insert into ITEM_TREE (id, parent, name)
values (42, 40, 'depth_strider');
insert into ITEM_TREE (id, parent, name)
values (43, 41, 'frost_walker');
insert into ITEM_TREE (id, parent, name)
values (44, 2, 'mending');
insert into ITEM_TREE (id, parent, name)
values (45, 43, 'unbreaking');
insert into ITEM_TREE (id, parent, name)
values (46, 44, 'efficiency');
insert into ITEM_TREE (id, parent, name)
values (47, 45, 'fortune');
insert into ITEM_TREE (id, parent, name)
values (48, 45, 'silk_touch');
insert into ITEM_TREE (id, parent, name)
values (49, 3, 'mending');
insert into ITEM_TREE (id, parent, name)
values (50, 48, 'unbreaking');
insert into ITEM_TREE (id, parent, name)
values (51, 49, 'efficiency');
insert into ITEM_TREE (id, parent, name)
values (52, 50, 'fortune');
insert into ITEM_TREE (id, parent, name)
values (53, 50, 'silk_touch');
insert into ITEM_TREE (id, parent, name)
values (54, 4, 'mending');
insert into ITEM_TREE (id, parent, name)
values (55, 53, 'unbreaking');
insert into ITEM_TREE (id, parent, name)
values (56, 54, 'efficiency');
insert into ITEM_TREE (id, parent, name)
values (57, 55, 'fortune');
insert into ITEM_TREE (id, parent, name)
values (58, 55, 'silk_touch');
insert into ITEM_TREE (id, parent, name)
values (59, 5, 'mending');
insert into ITEM_TREE (id, parent, name)
values (60, 58, 'unbreaking');
insert into ITEM_TREE (id, parent, name)
values (61, 59, 'lure');
insert into ITEM_TREE (id, parent, name)
values (62, 60, 'luck_of_the_sea');
insert into ITEM_TREE (id, parent, name)
values (63, 6, 'mending');
insert into ITEM_TREE (id, parent, name)
values (64, 62, 'unbreaking');
insert into ITEM_TREE (id, parent, name)
values (65, 7, 'mending');
insert into ITEM_TREE (id, parent, name)
values (66, 64, 'unbreaking');
insert into ITEM_TREE (id, parent, name)
values (67, 8, 'mending');
insert into ITEM_TREE (id, parent, name)
values (68, 66, 'unbreaking');
insert into ITEM_TREE (id, parent, name)
values (69, 9, 'mending');
insert into ITEM_TREE (id, parent, name)
values (70, 68, 'unbreaking');
insert into ITEM_TREE (id, parent, name)
values (71, 69, 'power');
insert into ITEM_TREE (id, parent, name)
values (72, 70, 'punch');
insert into ITEM_TREE (id, parent, name)
values (73, 71, 'flame');
insert into ITEM_TREE (id, parent, name)
values (74, 72, 'infinity');
insert into ITEM_TREE (id, parent, name)
values (75, 10, 'mending');
insert into ITEM_TREE (id, parent, name)
values (76, 74, 'unbreaking');
insert into ITEM_TREE (id, parent, name)
values (77, 75, 'looting');
insert into ITEM_TREE (id, parent, name)
values (78, 76, 'knockback');
insert into ITEM_TREE (id, parent, name)
values (79, 77, 'fire_aspect');
insert into ITEM_TREE (id, parent, name)
values (80, 78, 'sharpness');
insert into ITEM_TREE (id, parent, name)
values (81, 78, 'smite');
insert into ITEM_TREE (id, parent, name)
values (82, 78, 'bane_of_arthropods');
insert into ITEM_TREE (id, parent, name)
values (83, 11, 'mending');
insert into ITEM_TREE (id, parent, name)
values (84, 82, 'unbreaking');
insert into ITEM_TREE (id, parent, name)
values (85, 83, 'thorns');
insert into ITEM_TREE (id, parent, name)
values (86, 84, 'respiration');
insert into ITEM_TREE (id, parent, name)
values (87, 85, 'aqua_affinity');
insert into ITEM_TREE (id, parent, name)
values (88, 86, 'protection');
insert into ITEM_TREE (id, parent, name)
values (89, 86, 'fire_protection');
insert into ITEM_TREE (id, parent, name)
values (90, 86, 'blast_protection');
insert into ITEM_TREE (id, parent, name)
values (91, 86, 'projectile_protection');
insert into ITEM_TREE (id, parent, name)
values (92, 12, 'mending');
insert into ITEM_TREE (id, parent, name)
values (93, 91, 'unbreaking');
insert into ITEM_TREE (id, parent, name)
values (94, 92, 'thorns');
insert into ITEM_TREE (id, parent, name)
values (95, 93, 'protection');
insert into ITEM_TREE (id, parent, name)
values (96, 93, 'fire_protection');
insert into ITEM_TREE (id, parent, name)
values (97, 93, 'blast_protection');
insert into ITEM_TREE (id, parent, name)
values (98, 93, 'projectile_protection');
insert into ITEM_TREE (id, parent, name)
values (99, 13, 'mending');
insert into ITEM_TREE (id, parent, name)
values (100, 98, 'unbreaking');
insert into ITEM_TREE (id, parent, name)
values (101, 99, 'thorns');
insert into ITEM_TREE (id, parent, name)
values (102, 100, 'protection');
insert into ITEM_TREE (id, parent, name)
values (103, 100, 'fire_protection');
insert into ITEM_TREE (id, parent, name)
values (104, 100, 'blast_protection');
insert into ITEM_TREE (id, parent, name)
values (105, 100, 'projectile_protection');
insert into ITEM_TREE (id, parent, name)
values (106, 14, 'mending');
insert into ITEM_TREE (id, parent, name)
values (107, 105, 'unbreaking');
insert into ITEM_TREE (id, parent, name)
values (108, 106, 'thorns');
insert into ITEM_TREE (id, parent, name)
values (109, 107, 'feather_falling');
insert into ITEM_TREE (id, parent, name)
values (110, 108, 'depth_strider');
insert into ITEM_TREE (id, parent, name)
values (111, 109, 'frost_walker');
insert into ITEM_TREE (id, parent, name)
values (112, 110, 'protection');
insert into ITEM_TREE (id, parent, name)
values (113, 110, 'fire_protection');
insert into ITEM_TREE (id, parent, name)
values (114, 110, 'blast_protection');
insert into ITEM_TREE (id, parent, name)
values (115, 110, 'projectile_protection');
insert into ITEM_TREE (id, parent, name)
values (116, 15, 'mending');
insert into ITEM_TREE (id, parent, name)
values (117, 115, 'unbreaking');


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


