﻿prompt PL/SQL Developer import file
prompt Created on Saturday, 18 June, 2016 by James
set feedback off
set define off
prompt Disabling triggers for INVENTORY...
alter table INVENTORY disable all triggers;
prompt Disabling triggers for STOCKING_RECORDS...
alter table STOCKING_RECORDS disable all triggers;
prompt Loading INVENTORY...
insert into INVENTORY (item_id, charm_stock, tools_stock, arms_stock, books_stock, market_stock, charm_inv, tools_inv, arms_inv, books_inv, market_inv)
values ('SWOUN3KN2SH4', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
insert into INVENTORY (item_id, charm_stock, tools_stock, arms_stock, books_stock, market_stock, charm_inv, tools_inv, arms_inv, books_inv, market_inv)
values ('SWOSM5', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
insert into INVENTORY (item_id, charm_stock, tools_stock, arms_stock, books_stock, market_stock, charm_inv, tools_inv, arms_inv, books_inv, market_inv)
values ('SWOUN3LO3KN2BA4', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
insert into INVENTORY (item_id, charm_stock, tools_stock, arms_stock, books_stock, market_stock, charm_inv, tools_inv, arms_inv, books_inv, market_inv)
values ('BOKSH4', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
insert into INVENTORY (item_id, charm_stock, tools_stock, arms_stock, books_stock, market_stock, charm_inv, tools_inv, arms_inv, books_inv, market_inv)
values ('BOKFW2', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
insert into INVENTORY (item_id, charm_stock, tools_stock, arms_stock, books_stock, market_stock, charm_inv, tools_inv, arms_inv, books_inv, market_inv)
values ('BOKEF4', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
insert into INVENTORY (item_id, charm_stock, tools_stock, arms_stock, books_stock, market_stock, charm_inv, tools_inv, arms_inv, books_inv, market_inv)
values ('BOKUN3', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
insert into INVENTORY (item_id, charm_stock, tools_stock, arms_stock, books_stock, market_stock, charm_inv, tools_inv, arms_inv, books_inv, market_inv)
values ('SWOUN3SM4', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
insert into INVENTORY (item_id, charm_stock, tools_stock, arms_stock, books_stock, market_stock, charm_inv, tools_inv, arms_inv, books_inv, market_inv)
values ('PICEF4FO3', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
insert into INVENTORY (item_id, charm_stock, tools_stock, arms_stock, books_stock, market_stock, charm_inv, tools_inv, arms_inv, books_inv, market_inv)
values ('PICUN3EF4FO3', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0);
insert into INVENTORY (item_id, charm_stock, tools_stock, arms_stock, books_stock, market_stock, charm_inv, tools_inv, arms_inv, books_inv, market_inv)
values ('PICUN3EF4FO2', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
insert into INVENTORY (item_id, charm_stock, tools_stock, arms_stock, books_stock, market_stock, charm_inv, tools_inv, arms_inv, books_inv, market_inv)
values ('PICEF4FO2', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
insert into INVENTORY (item_id, charm_stock, tools_stock, arms_stock, books_stock, market_stock, charm_inv, tools_inv, arms_inv, books_inv, market_inv)
values ('PICFO2', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
insert into INVENTORY (item_id, charm_stock, tools_stock, arms_stock, books_stock, market_stock, charm_inv, tools_inv, arms_inv, books_inv, market_inv)
values ('PICUN3EF5', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0);
insert into INVENTORY (item_id, charm_stock, tools_stock, arms_stock, books_stock, market_stock, charm_inv, tools_inv, arms_inv, books_inv, market_inv)
values ('SWOLO3SH4', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
insert into INVENTORY (item_id, charm_stock, tools_stock, arms_stock, books_stock, market_stock, charm_inv, tools_inv, arms_inv, books_inv, market_inv)
values ('SWOUN3FA2SH3', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
insert into INVENTORY (item_id, charm_stock, tools_stock, arms_stock, books_stock, market_stock, charm_inv, tools_inv, arms_inv, books_inv, market_inv)
values ('BOKSH3', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
insert into INVENTORY (item_id, charm_stock, tools_stock, arms_stock, books_stock, market_stock, charm_inv, tools_inv, arms_inv, books_inv, market_inv)
values ('PICST1', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0);
insert into INVENTORY (item_id, charm_stock, tools_stock, arms_stock, books_stock, market_stock, charm_inv, tools_inv, arms_inv, books_inv, market_inv)
values ('PICUN3EF4ST1', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0);
insert into INVENTORY (item_id, charm_stock, tools_stock, arms_stock, books_stock, market_stock, charm_inv, tools_inv, arms_inv, books_inv, market_inv)
values ('PICUN3EF3ST1', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
insert into INVENTORY (item_id, charm_stock, tools_stock, arms_stock, books_stock, market_stock, charm_inv, tools_inv, arms_inv, books_inv, market_inv)
values ('PICUN3EF4', 6, 0, 0, 0, 0, 0, 0, 0, 0, 0);
insert into INVENTORY (item_id, charm_stock, tools_stock, arms_stock, books_stock, market_stock, charm_inv, tools_inv, arms_inv, books_inv, market_inv)
values ('PICUN3EF3', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
commit;
prompt 22 records loaded
prompt Loading STOCKING_RECORDS...
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (27, 'random_person1', 'SWOUN3KN2SH4', 360, to_timestamp('11-06-2016 12:03:03.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (28, 'clairehead', 'SWOSM5', 208, to_timestamp('11-06-2016 15:06:04.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (29, 'clairehead', 'SWOUN3LO3KN2BA4', 640, to_timestamp('11-06-2016 15:06:04.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (42, 'QuestionTues_FTW', 'BOKSH4', 124, to_timestamp('14-06-2016 16:46:15.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (43, 'GerliJ', 'BOKFW2', 164, to_timestamp('14-06-2016 17:18:04.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (44, 'clairehead', 'PICUN3EF5', 488, to_timestamp('16-06-2016 09:06:31.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (45, 'QuestionTues_FTW', 'BOKEF4', 132, to_timestamp('16-06-2016 09:07:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (46, 'random_person1', 'PICUN3EF4ST1', 600, to_timestamp('16-06-2016 10:35:13.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (47, 'random_person1', 'BOKUN3', 164, to_timestamp('16-06-2016 13:20:19.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (26, 'random_person1', 'SWOUN3SM4', 288, to_timestamp('10-06-2016 14:56:22.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (2, 'Moocow9999', 'PICEF4FO3', 456, to_timestamp('09-06-2016 10:36:35.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (3, 'Moocow9999', 'PICUN3EF4FO3', 616, to_timestamp('09-06-2016 10:36:35.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (4, 'Moocow9999', 'PICUN3EF4FO3', 616, to_timestamp('09-06-2016 10:36:35.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (5, 'Moocow9999', 'PICUN3EF4FO2', 488, to_timestamp('09-06-2016 10:36:35.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (6, 'Moocow9999', 'PICEF4FO2', 328, to_timestamp('09-06-2016 10:36:35.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (7, 'Moocow9999', 'PICFO2', 200, to_timestamp('09-06-2016 10:36:35.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (8, 'clairehead', 'PICUN3EF4FO3', 616, to_timestamp('09-06-2016 10:48:01.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (9, 'clairehead', 'PICUN3EF4FO3', 616, to_timestamp('09-06-2016 10:48:01.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (10, 'clairehead', 'PICUN3EF5', 488, to_timestamp('09-06-2016 10:48:01.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (11, 'clairehead', 'SWOLO3SH4', 488, to_timestamp('09-06-2016 11:06:26.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (12, 'Moocow9999', 'SWOUN3FA2SH3', 320, to_timestamp('09-06-2016 11:07:08.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (13, 'QuestionTues_FTW', 'BOKSH3', 52, to_timestamp('09-06-2016 11:07:40.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (14, 'GerliJ', 'PICST1', 312, to_timestamp('09-06-2016 12:15:29.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (15, 'QuestionTues_FTW', 'PICUN3EF5', 488, to_timestamp('09-06-2016 12:16:28.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (16, 'OZG1001', 'PICST1', 312, to_timestamp('09-06-2016 12:18:05.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (17, 'PurpleDanser', 'PICUN3EF4ST1', 600, to_timestamp('09-06-2016 12:20:30.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (18, 'flash_fire13', 'PICUN3EF3ST1', 536, to_timestamp('09-06-2016 12:38:24.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (19, 'flash_fire13', 'PICUN3EF4', 360, to_timestamp('09-06-2016 12:41:33.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (20, 'OZG1001', 'PICEF3UN3', 296, to_timestamp('09-06-2016 12:41:47.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (21, 'Moocow9999', 'PICUN3EF4', 360, to_timestamp('09-06-2016 12:42:53.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (22, 'Moocow9999', 'PICUN3EF4', 360, to_timestamp('09-06-2016 12:43:31.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (23, 'Moocow9999', 'PICUN3EF4', 360, to_timestamp('09-06-2016 12:43:31.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (24, 'Moocow9999', 'PICUN3EF4', 360, to_timestamp('09-06-2016 12:43:31.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
insert into STOCKING_RECORDS (recnum, name, item_id, payment, date_time)
values (25, 'Moocow9999', 'PICUN3EF4', 360, to_timestamp('09-06-2016 12:43:31.000000', 'dd-mm-yyyy hh24:mi:ss.ff'));
commit;
prompt 34 records loaded
prompt Enabling triggers for INVENTORY...
alter table INVENTORY enable all triggers;
prompt Enabling triggers for STOCKING_RECORDS...
alter table STOCKING_RECORDS enable all triggers;
set feedback on
set define on
prompt Done.
