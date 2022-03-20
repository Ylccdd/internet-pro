create table user
(
    id       int auto_increment
        primary key,
    username varchar(30) not null,
    password varchar(30) not null,
    name     varchar(30) null,
    idcard   varchar(20) null,
    phone    varchar(20) not null,
    account  int         null,
    flag     tinyint(1)  null
);

INSERT INTO internetcafe.user (id, username, password, name, idcard, phone, account, flag) VALUES (1, 'aaalex', '123456', 'Alex', '411256198802063364', '13639963266', 400, 0);
INSERT INTO internetcafe.user (id, username, password, name, idcard, phone, account, flag) VALUES (2, 'bbb', '123456', 'Bill', '333444199012163666', '15423698556', 400, 1);
INSERT INTO internetcafe.user (id, username, password, name, idcard, phone, account, flag) VALUES (3, 'cccody', '123456', 'Cody', '333444200003051456', '13625499635', 200, 0);
INSERT INTO internetcafe.user (id, username, password, name, idcard, phone, account, flag) VALUES (4, 'dddenny', '123456', 'Denny', '333444200105023654', '13526544423', 300, 1);
INSERT INTO internetcafe.user (id, username, password, name, idcard, phone, account, flag) VALUES (5, 'eeedison', '123456', 'Edison', '333444200005181234', '15236335489', 300, 1);
INSERT INTO internetcafe.user (id, username, password, name, idcard, phone, account, flag) VALUES (6, 'fffoof', '123456', 'Foof', '222333199811254488', '15936694875', 500, 0);
INSERT INTO internetcafe.user (id, username, password, name, idcard, phone, account, flag) VALUES (7, 'gggreen', '123456', 'Green', '222333199710087638', '15628398478', 500, 0);
INSERT INTO internetcafe.user (id, username, password, name, idcard, phone, account, flag) VALUES (8, 'hhhoney', '123456', 'Honey', '333444200007138894', '16728893409', 200, 0);
INSERT INTO internetcafe.user (id, username, password, name, idcard, phone, account, flag) VALUES (17, 'aaa', '13456', null, '333444200003051454', '18238245648', 200, null);
INSERT INTO internetcafe.user (id, username, password, name, idcard, phone, account, flag) VALUES (18, 'llllisi', '123456', null, '555666200102230115', '15632254886', 200, null);
INSERT INTO internetcafe.user (id, username, password, name, idcard, phone, account, flag) VALUES (20, 'ccccc', '123456', 'Cmmmm', '555666200102230000', '13526477555', 400, null);