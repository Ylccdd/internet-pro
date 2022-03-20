create table temp
(
    id             int auto_increment
        primary key,
    recharge_money int         null,
    recharge_date  date        null,
    recharge_phone varchar(20) null,
    recharge_type  varchar(20) null
);

INSERT INTO internetcafe.temp (id, recharge_money, recharge_date, recharge_phone, recharge_type) VALUES (1, 100, '2022-03-19', '15633659965', '微信');
INSERT INTO internetcafe.temp (id, recharge_money, recharge_date, recharge_phone, recharge_type) VALUES (2, 200, '2022-03-11', '13655249652', '现金');
INSERT INTO internetcafe.temp (id, recharge_money, recharge_date, recharge_phone, recharge_type) VALUES (3, 200, '2022-03-13', '12545693325', '支付宝');
INSERT INTO internetcafe.temp (id, recharge_money, recharge_date, recharge_phone, recharge_type) VALUES (10, 50, '2022-03-10', '15336652002', '支付宝');
INSERT INTO internetcafe.temp (id, recharge_money, recharge_date, recharge_phone, recharge_type) VALUES (11, 100, '2022-03-19', '15964020221', '现金');
INSERT INTO internetcafe.temp (id, recharge_money, recharge_date, recharge_phone, recharge_type) VALUES (13, 200, '2022-03-01', '15632254586', '现金');
INSERT INTO internetcafe.temp (id, recharge_money, recharge_date, recharge_phone, recharge_type) VALUES (14, 100, '2022-03-20', '15964022222', '微信');
INSERT INTO internetcafe.temp (id, recharge_money, recharge_date, recharge_phone, recharge_type) VALUES (15, 100, '2022-03-20', '15964020222', '现金');