create table use_info
(
    id      int auto_increment
        primary key,
    usedate datetime    null,
    usetime time        null,
    type    varchar(20) null
);

INSERT INTO internetcafe.use_info (id, usedate, usetime, type) VALUES (1, '2021-12-27 13:23:33', '06:12:33', '包时');
INSERT INTO internetcafe.use_info (id, usedate, usetime, type) VALUES (2, '2022-01-03 15:36:30', '03:18:56', '包时');
INSERT INTO internetcafe.use_info (id, usedate, usetime, type) VALUES (3, '2022-01-25 09:03:11', '12:25:19', '包房');
INSERT INTO internetcafe.use_info (id, usedate, usetime, type) VALUES (4, '2022-01-26 10:25:33', '12:56:22', '包房');
INSERT INTO internetcafe.use_info (id, usedate, usetime, type) VALUES (5, '2022-01-27 12:55:56', '04:15:33', '包时');
INSERT INTO internetcafe.use_info (id, usedate, usetime, type) VALUES (6, '2022-02-11 14:33:44', '03:12:43', '包时');
INSERT INTO internetcafe.use_info (id, usedate, usetime, type) VALUES (7, '2022-02-16 16:32:01', '03:55:32', '包时');
INSERT INTO internetcafe.use_info (id, usedate, usetime, type) VALUES (8, '2022-03-01 09:01:02', '12:23:44', '包房');