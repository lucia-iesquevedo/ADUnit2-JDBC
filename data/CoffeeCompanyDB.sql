create table suppliers (SUPP_ID integer NOT NULL, SUPP_NAME varchar(40) NOT NULL, STREET varchar(40) NOT NULL, TOWN varchar(20) NOT NULL, COUNTRY varchar(2) NOT NULL, PCODE varchar(5), PRIMARY KEY (SUPP_ID));

insert into suppliers values(49, 'superior Coffee', '1 Party Place', 'Mendocino', 'CA', '95460');
insert into suppliers values(101, 'Acme, Inc.', '99 market ST', 'Groundsville', 'CA', '95199');
insert into suppliers values(150, 'The High Ground', '100 Coffee Lane', 'Meadows', 'CA', '93966');

create table coffees (ID_PROD int NOT NULL AUTO_INCREMENT, COF_NAME varchar(32) NOT NULL, SUPP_ID int NOT NULL, PRICE numeric(10,2) NOT NULL, SALES integer NOT NULL, TOTAL integer NOT NULL, PRIMARY KEY (ID_PROD), FOREIGN KEY (SUPP_ID) REFERENCES suppliers(SUPP_ID));

insert into coffees (COF_NAME, SUPP_ID, PRICE, SALES, TOTAL) values('Colombian', 00101, 7.99, 0, 0);
insert into coffees (COF_NAME, SUPP_ID, PRICE, SALES, TOTAL) values('French_Roast', 00049, 8.99, 0, 0);
insert into coffees (COF_NAME, SUPP_ID, PRICE, SALES, TOTAL) values('Espresso', 00150, 9.99, 0, 0);
insert into coffees (COF_NAME, SUPP_ID, PRICE, SALES, TOTAL) values('Colombian_Decaf', 00101, 8.99, 0, 0);
insert into coffees (COF_NAME, SUPP_ID, PRICE, SALES, TOTAL) values('French_Roast_Decaf', 00049, 9.99, 0, 0);