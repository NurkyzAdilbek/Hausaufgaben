create type gender
    as enum ('Male','Female');
create type family_status as enum ('Single', 'Married', 'Divorced', 'Widow', 'Separated', 'Other');
create type house_type as enum ('House', 'Apartment');
create type marital_status as enum ('Single', 'Married', 'Divorced', 'Widow', 'Separated', 'Other');

create table Agencies(
                         id serial primary key ,
                         agency_name  varchar,
                         phone_number varchar,
                         address_id int references  Addresses(id)
);

create table Addresses(
                          id serial primary key ,
                          city varchar,
                          region varchar,
                          street varchar
);

create table  owners(
                        id serial primary key ,
                        first_name varchar,
                        last_name varchar,
                        email varchar,
                        date_of_birth date,
                        gender gender
);
create table houses (
                        id serial primary key ,
                        house_type house_type,
                        price numeric,
                        rating float,
                        description text,
                        room int,
                        furniture boolean,
                        address_id int references Addresses(id),
                        owner_id int references  owners(id)
);


create table rent_info(
                          id serial primary key ,
                          owner_id int references owners(id),
                          customer_id int references  customers(id),
                          agency_id int references Agencies(id),
                          house_id int references houses(id),
                          check_in date,
                          check_out date

);
drop table customers cascade
create table  customers(
                           id serial  primary key ,
                           first_name varchar,
                           last_name varchar,
                           email   varchar,
                           date_of_birth date,
                           gender gender,
                           nationality varchar,
                           marital_status marital_status

);
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Serene', 'Roggerone', 'sroggeronej@shop-pro.jp', '1988-06-13', 'Female', 'French', 'Married');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Rafaellle', 'Hannent', 'rhannentk@miitbeian.gov.cn', '1974-10-14', 'Male', 'Icelandic', 'Single');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Aveline', 'Aslum', 'aasluml@w3.org', '1994-12-23', 'Female', 'Kurdish', 'Single');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Gloria', 'Powrie', 'gpowriem@msn.com', '1986-11-19', 'Female', 'Malay', 'Widow');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Tilek', 'Adam', 'tcrimminsn@google.co.uk', '1990-01-18', 'Male', 'Kyrgyz', 'Single');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Felike', 'Jurisic', 'fjurisico@joomla.org', '1994-08-24', 'Male', 'Guaraní', 'Married');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Kailey', 'Gate', 'kgatep@lycos.com', '1987-04-21', 'Female', 'Malayalam', 'Widow');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Ronna', 'Genge', 'rgengeq@admin.ch', '1982-01-04', 'Female', 'Thai', 'Single');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Hamish', 'Flisher', 'hflisherr@webnode.com', '1982-10-08', 'Male', 'Icelandic', 'Divorced');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Trula', 'Gheraldi', 'tgheraldis@paginegialle.it', '1988-01-06', 'Female', 'Malayalam', 'Divorced');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Fran', 'Olander', 'folandert@nsw.gov.au', '1974-11-14', 'Male', 'Indonesian', 'Married');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Arlana', 'Glass', 'aglassu@stanford.edu', '1983-10-30', 'Female', 'Bosnian', 'Single');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Esma', 'Doerr', 'edoerrv@51.la', '1983-06-13', 'Female', 'English', 'Married');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Rhiamon', 'MacLaig', 'rmaclaigw@feedburner.com', '1992-07-19', 'Female', 'Hebrew', 'Single');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Hunt', 'Minchinton', 'hminchintonx@mac.com', '1969-09-26', 'Male', 'German', 'Single');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Kamila', 'Armanova', 'kama@aboutads.info', '1994-02-02', 'Female', 'Kyrgyz', 'Single');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Berne', 'Armall', 'barmallz@e-recht24.de', '1980-09-28', 'Male', 'Belarusian', 'Widow');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Crista', 'Skeene', 'cskeene10@hp.com', '1970-01-25', 'Female', 'Gujarati', 'Single');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Fernanda', 'Bullen', 'fbullen11@abc.net.au', '1966-12-14', 'Female', 'Bosnian', 'Divorced');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Malika', 'Alikova', 'malika@last.fm', '1988-02-22', 'Female', 'Kyrgyz', 'Married');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Zackariah', 'Gelardi', 'zgelardi13@usa.gov', '1986-01-04', 'Male', 'Hungarian', 'Widow');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Frans', 'Colls', 'fcolls14@japanpost.jp', '1989-08-24', 'Male', 'Hindi', 'Married');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Ali', 'Jumabek', 'ali@imgur.com', '1993-11-14', 'Male', 'Kyrgyz', 'Married');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Shirleen', 'Hasley', 'shasley16@dmoz.org', '2019-07-12', 'Female', 'Chineese', 'Widow');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Garrott', 'Beccles', 'gbeccles17@foxnews.com', '2001-04-11', 'Male', 'Tsonga', 'Single');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Uulkan', 'Beisheeva', 'uulkan@xinhuanet.com', '1980-05-12', 'Female', 'Kyrgyz', 'Divorced');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Rosana', 'Mucci', 'rmucci19@fotki.com', '1970-05-07', 'Female', 'Czech', 'Married');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Neils', 'Aronson', 'naronson1a@time.com', '1976-12-18', 'Male', 'German', 'Married');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Nicol', 'Tipple', 'ntipple1b@theatlantic.com', '1997-07-19', 'Male', 'Turkish', 'Widow');
insert into customers (first_name, last_name, email, date_of_birth, gender, nationality, marital_status) values ('Leandra', 'Swancott', 'lswancott1c@thetimes.co.uk', '1985-04-14', 'Female', 'English', 'Single');


-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Nikos', 'Oxenford', 'noxenford0@forbes.com', '1960-02-03', 'Male');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Mirlan', 'Emirov', 'aperford1@ask.com', '1990-05-26', 'Male');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Franky', 'Lettuce', 'flettuce2@wordpress.com', '1983-02-27', 'Male');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Katharyn', 'Antonutti', 'kantonutti3@usatoday.com', '1984-04-05', 'Female');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Marney', 'Cossey', 'mcossey4@chron.com', '1970-02-20', 'Female');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Byrann', 'Brereton', 'bbrereton5@vk.com', '1980-08-15', 'Male');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Deena', 'Gudd', 'dgudd6@shutterfly.com', '1977-02-13', 'Female');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Kirsteni', 'Winfred', 'kwinfred7@fastcompany.com', '1986-11-06', 'Female');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Mark', 'Oldroyde', 'moldroyde8@discuz.net', '1965-02-21', 'Male');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Marina', 'Kirova', 'mennever9@vk.com', '1988-03-26', 'Female');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Twyla', 'Paddingdon', 'tpaddingdona@artisteer.com', '1985-04-15', 'Female');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Britt', 'Schoffler', 'bschofflerb@wisc.edu', '1974-06-19', 'Female');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Ebba', 'Ferrillo', 'eferrilloc@hibu.com', '1997-05-26', 'Female');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Amalie', 'Chrystal', 'achrystald@adobe.com', '1991-09-23', 'Female');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Avrom', 'Gilphillan', 'agilphillane@macromedia.com', '1980-12-14', 'Male');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Demetris', 'Udy', 'dudyf@smh.com.au', '1996-02-25', 'Male');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Yelena', 'Inglis', 'yinglisg@hostgator.com', '1982-03-29', 'Female');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Kary', 'Midlar', 'kmidlarh@vk.com', '1985-05-30', 'Female');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Phyllida', 'Baseley', 'pbaseleyi@printfriendly.com', '1976-03-27', 'Female');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Almira', 'Dalieva', 'adrooganj@lycos.com', '1969-02-28', 'Female');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Livvie', 'Chastel', 'lchastelk@chron.com', '1983-04-03', 'Female');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Kaila', 'Hanks', 'khanksl@altervista.org', '1993-08-26', 'Female');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Ivonne', 'Peare', 'ipearem@go.com', '1989-08-01', 'Female');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Lulu', 'Chrstine', 'lchrstinen@huffingtonpost.com', '1995-07-15', 'Female');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Kerimbek', 'Arstanov', 'gbrocklehursto@mac.com', '1977-07-01', 'Male');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Odie', 'Cadwallader', 'ocadwalladerp@google.pl', '1983-03-12', 'Male');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Charlot', 'Sivills', 'csivillsq@utexas.edu', '1988-09-19', 'Female');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Shari', 'ducarme', 'sducarmer@seesaa.net', '1967-04-04', 'Female');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Hayes', 'Rooney', 'hrooneys@hexun.com', '1988-10-27', 'Male');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Glen', 'Lagadu', 'glagadut@berkeley.edu', '1992-05-06', 'Female');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Iago', 'Burhouse', 'iburhouseu@godaddy.com', '1999-05-30', 'Male');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Kasiet', 'Alieva', 'kgoracciv@un.org', '1978-11-24', 'Female');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Madelin', 'Barlee', 'mbarleew@privacy.gov.au', '1981-02-12', 'Female');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Asan', 'Asanbekov', 'lmerrikinx@nature.com', '1983-09-06', 'Male');
insert into owners (first_name, last_name, email, date_of_birth, gender) values ('Fania', 'Martinot', 'fmartinoty@sphinn.com', '1979-11-27', 'Female');


-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

insert into addresses (city, region, street) values ('Bishkek', 'Asanbai', 'A.Tokombaev 132');
insert into addresses (city, region, street) values ('Shanshu', 'AU-NT', '65435 Jana Circle');
insert into addresses (city, region, street) values ('Pont Cassé', 'US-FL', '36921 Briar Crest Point');
insert into addresses (city, region, street) values ('Samboan', 'BR-PE', '47931 Delaware Road');
insert into addresses (city, region, street) values ('KwaMbonambi', 'BR-AM', '1554 Talmadge Street');
insert into addresses (city, region, street) values ('El Almendro', 'BW-KG', '6939 Hoepker Avenue');
insert into addresses (city, region, street) values ('Zhutuo', 'NA-OT', '6 Manitowish Park');
insert into addresses (city, region, street) values ('Zyablikovo', 'ID-BA', '4755 Lakewood Street');
insert into addresses (city, region, street) values ('Quận Năm', 'US-UT', '47 Oneill Court');
insert into addresses (city, region, street) values ('Tsimlyansk', 'AU-QLD', '736 Harbort Center');
insert into addresses (city, region, street) values ('Bishkek', 'Tunguch', 'Ankara 56');
insert into addresses (city, region, street) values ('Santo Estêvão', 'BR-AM', '8746 Rigney Circle');
insert into addresses (city, region, street) values ('Narva', 'CA-QC', '767 Meadow Ridge Lane');
insert into addresses (city, region, street) values ('Porto-Novo', 'TR-56', '53 Leroy Avenue');
insert into addresses (city, region, street) values ('Loja', 'US-PA', '771 Packers Alley');
insert into addresses (city, region, street) values ('Obudovac', 'DE-BW', '63 Sutherland Hill');
insert into addresses (city, region, street) values ('Slobozia', 'PK-BA', '7 Sherman Lane');
insert into addresses (city, region, street) values ('Stratford', 'CA-BC', '17 Carioca Lane');
insert into addresses (city, region, street) values ('Bishkek', 'Djal', 'Tynaliev 29');
insert into addresses (city, region, street) values ('Kedungtulup', 'CA-MB', '2648 Maple Way');
insert into addresses (city, region, street) values ('Jablonec nad Jizerou', 'CN-42', '96224 Loftsgordon Street');
insert into addresses (city, region, street) values ('Staraya Kulatka', 'BR-TO', '6945 Kedzie Terrace');
insert into addresses (city, region, street) values ('Zhongling', 'US-CT', '24795 Sherman Lane');
insert into addresses (city, region, street) values ('San Antonio', 'US-WA', '8257 Amoth Alley');
insert into addresses (city, region, street) values ('Pantijan No 2', 'AU-WA', '7693 Emmet Trail');
insert into addresses (city, region, street) values ('Bishkek', 'Alamedin', 'Saliev 114');
insert into addresses (city, region, street) values ('Saint-Denis', 'AU-QLD', '59 East Drive');
insert into addresses (city, region, street) values ('Oslo', 'CA-AB', '11 Cody Avenue');
insert into addresses (city, region, street) values ('Perpignan', 'CO-HUI', '6971 Red Cloud Lane');
insert into addresses (city, region, street) values ('Ovidiopol’', 'US-MN', '86557 Arizona Way');
insert into addresses (city, region, street) values ('Tiepu', 'BR-RS', '98691 Onsgard Hill');
insert into addresses (city, region, street) values ('Bishkek', '11-mkr', 'Aitiyev 14/2');
insert into addresses (city, region, street) values ('La Estancia', 'US-PA', '04461 Summer Ridge Pass');
insert into addresses (city, region, street) values ('Castro', 'MX-BCS', '23 Nancy Park');
insert into addresses (city, region, street) values ('Magutian', 'TG-K', '100 Debs Park');
insert into addresses (city, region, street) values ('Taiping', 'PK-PB', '898 Sutteridge Alley');
insert into addresses (city, region, street) values ('Oklahoma City', 'PK-BA', '46 John Wall Place');
insert into addresses (city, region, street) values ('Bishkek', 'Vostok-5', 'Chuy 78');
insert into addresses (city, region, street) values ('Kasamwa', 'AR-B', '16 Reindahl Terrace');
insert into addresses (city, region, street) values ('Sundsvall', 'ID-PA', '1939 Vidon Way');

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

insert into agencies (agency_name, phone_number, address_id) values ('House_kg', '+996700919191', 1);
insert into agencies (agency_name, phone_number, address_id) values ('Apartment Agency', '+996550123456', 2);
insert into agencies (agency_name, phone_number, address_id) values ('Rent Agency', '+996999098765', 3);
insert into agencies (agency_name, phone_number, address_id) values ('Comfort House', '+996500789098', 4);
insert into agencies (agency_name, phone_number, address_id) values ('My House', '+996086123456', 5);
insert into agencies (agency_name, phone_number, address_id) values ('Sweet Home', '+996709123456', 6);
insert into agencies (agency_name, phone_number, address_id) values ('Kg_apartment', '+996700789876', 7);
insert into agencies (agency_name, phone_number, address_id) values ('Rent_Apartment', '+996700987654', 8);
insert into agencies (agency_name, phone_number, address_id) values ('Get House', '+996700987654', 9);
insert into agencies (agency_name, phone_number, address_id) values ('Flat_rent', '+996550418756', 10);


-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('House', 891, 1.8, 'Goldner, Skiles and Gorczany', 11, true,33 ,1 );
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('Apartment', 1407, 2.6, 'Dibbert, Emard and Gerlach', 19, false,34 ,30 );
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('Apartment', 747, 1.4, 'Smitham-Rogahn', 14, true,35 ,21 );
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('House', 1393, 4.3, 'Russel LLC', 14, true, 32, 20);
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('Apartment', 496, 4.5, 'Big light rooms', 5, false,1 ,2 );
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('House', 1162, 4.4, 'Armstrong, Kilback and Mueller', 4, true,36 ,22 );
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('Apartment', 682, 1.6, 'Beahan and Sons', 10, false,7 , 23);
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('House', 1590, 2.2, 'Kulas and Sons', 4, true,31 , 8);
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('House', 408, 1.9, 'Emmerich, Wisozk and D''Amore', 17, false,2 , 11);
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('Apartment', 513, 4.2, 'Keeling, McGlynn and Leuschke', 14, true, 37, 3);
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('House', 1786, 4.1, 'Town House', 13, true, 3, 12);
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('Apartment', 838, 4.0, 'Russel Group', 11, false,17 , 4);
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('House', 476, 4.6, 'Schulist Group', 15, false,4 , 24);
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('House', 979, 3.9, 'Collins-Daniel', 20, false,30, 5);
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('Apartment', 1964, 1.7, 'Flatley, Medhurst and Reilly', 17, false,39 ,31 );
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('Apartment', 1197, 2.0, 'Pollich-Roberts', 16, true,29 , 33);
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('House', 1536, 4.4, 'Ritchie-Ebert', 15, true, 18,31);
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('Apartment', 1181, 3.6, 'Weissnat Group', 18, true,5 , 6);
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('House', 1273, 4.1, 'McCullough-Mueller', 8, false, 19,32 );
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('Apartment', 1429, 3.4, 'Big family flat', 6, false,16, 7);
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('House', 1040, 4.7, 'Vandervort Group', 15, true, 7, 31);
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('House', 1619, 1.8, 'Brekke, Hermiston and Waelchi', 5, true,38 ,10 );
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('Apartment', 396, 2.2, 'Schumm Group', 19, true, 13,30 );
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('House', 1760, 1.7, 'Big House', 5, true, 6, 19);
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('Apartment', 210, 4.9, 'Hoeger-Willms', 18, false, 14, 29);
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('House', 1630, 4.3, 'Upton Inc', 7, true, 28, 18);
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('Apartment', 1125, 1.5, 'Streich, Wisozk and Kessler', 19, true,8 ,28 );
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('House', 133, 3.4, 'Okuneva-Hagenes', 1, false, 9, 17);
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('Apartment', 344, 1.4, 'Ratke LLC', 13, false, 25,12 );
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('House', 1657, 1.1, 'Kiehn and Sons', 18, true,10 ,8);
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('House', 1941, 4.0, 'Walker-Doyle', 8, false, 20, 35);
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('House', 1462, 3.5, 'Sipes, McKenzie and Johnson', 16, true,21 ,16 );
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('Apartment', 394, 3.8, 'Muller LLC', 6, true,26 , 25);
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('Apartment', 999, 2.7, 'Reichert and Sons', 11, true,15 ,26 );
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('House', 809, 2.1, 'Mitchell-Ondricka', 13, true,22,9 );
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('Apartment', 663, 2.3, 'Crooks-Cormier', 18, false,12 , 13);
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('Apartment', 1876, 4.6, 'Klocko, West and Williamson',23 , true,40 ,27 );
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('House', 694, 4.1, 'Streich Group', 18, false,24 ,14 );
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('House', 1639, 3.3, 'Shanahan Inc', 12, true,27 ,15 );
insert into houses (house_type, price, rating, description, room, furniture, address_id, owner_id) values ('Apartment', 852, 3.1, 'Barrows-Boyer', 11, false,11 ,34 );

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (1, 1, 1, 1, '2021-10-12', '2021-10-27');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (2, 2, 2, 5, '2021-01-19', '2022-11-13');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (3, 3, 3, 3, '2021-12-12', '2022-03-24');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (20, 4, 4, 4, '2021-01-27', '2021-08-31');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (5, 5, 5, 2, '2022-07-05', '2023-01-16');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (6, 6, 6, 6, '2021-01-22', '2021-08-30');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (7, 7, 7, 7, '2019-08-08', '2022-02-04');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (8, 8, 8, 8, '2021-04-06', '2021-05-21');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (9, 9, 9, 9, '2020-11-07', '2022-07-05');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (22, 10, 10, 10, '2022-03-18', '2023-01-10');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (11, 11, 1, 11, '2018-02-03', '2021-02-04');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (12, 12, 2, 12, '2021-12-09', '2023-01-08');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (13, 13, 3, 13, '2021-03-15', '2022-10-13');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (10, 14, 4, 14, '2022-04-22', '2022-06-16');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (15, 15, 5, 15, '2020-08-27', '2021-08-05');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (16, 16, 6, 16, '2019-04-27', '2020-12-03');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (17, 17, 7, 17, '2021-01-01', '2021-12-31');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (10, 18, 8, 18, '2020-05-24', '2021-02-20');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (32, 19, 9, 19, '2019-09-27', '2020-07-31');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (4, 20, 10, 20, '2021-12-21', '2022-06-20');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (21, 21, 1, 21, '2021-12-09', '2023-01-01');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (10, 22, 2, 22, '2022-01-20', '2022-08-05');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (13, 23, 3, 23, '2020-12-03', '2021-04-22');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (24, 24, 4, 24, '2022-12-26', '2023-01-16');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (33, 25, 5, 25, '2020-02-07', '2021-08-19');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (26, 26, 1, 26, '2019-09-10', '2021-09-19');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (6, 27, 2, 27, '2021-05-02', '2021-12-21');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (28, 28, 3, 28, '2022-01-16', '2022-12-13');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (29, 29, 7, 29, '2020-11-09', '2021-05-04');
insert into rent_info (owner_id, customer_id, agency_id, house_id, check_in, check_out) values (30, 30, 8, 30, '2022-05-08', '2022-12-29');




--1. Owner_лердин аттарынын арасынан эн коп символ камтыган owner_ди жана анын уйун(House) чыгар.
select owners.first_name, concat(city,region,street) as address from owners join houses h on owners.id = h.owner_id
                                                                            join Addresses A on A.id = h.address_id
order by length(first_name) desc limit 1;
-- 2. Уйлордун баалары 1500, 2000 дин аралыгында бар болсо true чыгар, жок болсо false чыгар.
SELECT  EXISTS  (
    SELECT 1
    FROM houses
    WHERE price BETWEEN 1500 AND 2000
) house_type;



--3. id_лери 5, 6, 7, 8, 9, 10 го барабар болгон адресстерди жана ал адрессте кайсы уйлор бар экенин чыгар.
select Addresses.id, concat( Addresses.city,' ', Addresses.region,'', Addresses.street) as  address ,h.description from addresses
                                                                                                                            join houses h on addresses.id = h.address_id where Addresses.id in (5,6,7,8,9,10);
-- 4. Бардык уйлорду, уйдун ээсинин атын, клиенттин атын, агенттин атын чыгар.
select h.description as house, o.first_name as owner, c.first_name as customer , A.agency_name
from houses h join owners o on o.id = h.owner_id join rent_info ri on h.id = ri.house_id join customers c on c.id = ri.customer_id
              join Agencies A on A.id = ri.agency_id;
--5. Клиенттердин 10-катарынан баштап 1999-жылдан кийин туулган 15 клиентти чыгар.
select id,customers.first_name,date_of_birth from customers   where date_of_birth
                                                                        between '1999-01-01' and '2024-07-24' -- offset 10 limit 15;

-- 6. Рейтинги боюнча уйлорду сорттоп, уйлордун тайптарын, рейтингин жана уйдун ээлерин чыгар. (asc and desc)
select houses.rating, houses.house_type, o.first_name from houses join owners o on o.id = houses.owner_id
order by rating asc;
select houses.rating, houses.house_type, o.first_name from houses join owners o on o.id = houses.owner_id
order by rating desc;
-- 7. Уйлордун арасынан квартиралардын (apartment) санын жана алардын баасынын суммасын чыгар.
select houses.house_type, count(house_type ), sum(price )from houses where house_type ='Apartment'
group by houses.house_type;
-- 8. Агентсволардын арасынан аты ‘My_House’ болгон агентсвоны, агентсвонын адресин
-- жана анын бардык уйлорун, уйлордун  адрессин чыгар.
SELECT
    ag.agency_name,
    ad.city, ', ' || ad.region || ', ' || ad.street AS agency_address,
    h.description AS house_description,
    had.city || ', ' || had.region || ', ' || had.street AS house_address
FROM
    Agencies ag
        JOIN
    Addresses ad ON ag.address_id = ad.id
        JOIN
    houses h ON ag.id = h.address_id
        JOIN
    Addresses had ON h.address_id = had.id
WHERE
    ag.agency_name = 'My House';
-- 9. Уйлордун арасынан мебели бар уйлорду, уйдун ээсин жана уйдун адрессин чыгар.
select houses.id,houses.description, houses.house_type,furniture, o.first_name,A.city, A.region,A.street
from houses
         join owners o on o.id = houses.owner_id
         join Addresses A on A.id = houses.address_id where furniture=true;

-- 10.Кленти жок уйлордун баарын жана анын адрессин жана ал уйлор кайсыл агентсвога тийешелуу экенин чыгар.
select houses.description,     A.city || ', ' || A.region || ', ' || A.street AS house_address,
       A2.agency_name from houses  join Addresses A on A.id = houses.address_id
                                   join Agencies A2 on A.id = A2.address_id
                                   left join rent_info ri on A2.id = ri.agency_id
where ri.customer_id is null;
-- 11.Клиенттердин улутуна карап, улутуну жана ал улуутта канча клиент жашайт санын чыгар.
select customers.nationality, count(customers.id)from customers
group by customers.nationality;
-- 12.Уйлордун арасынан рейтингтери чон, кичине, орточо болгон 3 уйду чыгар.
SELECT description AS house_description, rating
FROM houses
ORDER BY rating ASC
    LIMIT 1;
SELECT description AS house_description, rating
FROM houses
ORDER BY rating desc
    LIMIT 1;
SELECT description AS house_description, rating
FROM houses
ORDER BY rating ASC
    LIMIT 1;
SELECT AVG(rating) AS average_rating
FROM houses limit 1;

-- 13.Уйлору жок киленттерди, клиенттери жок уйлорду чыгар.
select c.first_name, houses.description from houses left  join rent_info ri on houses.id = ri.house_id
                                                    left  join customers c on c.id = ri.customer_id where first_name is null or description is null
-- 14.Уйлордун бааларынын орточо суммасын чыгар.
select  avg(houses.price)from houses;

--15.‘A’ тамга менен башталган уйдун ээсинин аттарын, клиенттердин аттарын чыгар.
select o.first_name, c.first_name from houses join owners o on o.id = houses.owner_id
                                              join rent_info ri on houses.id = ri.house_id
                                              join customers c on c.id = ri.customer_id
where o.first_name like 'A%';
--16.Эн уйу коп owner_ди жана анын уйлорунун санын чыгар.
select o.first_name, count( h.id) as count from owners o join rent_info ri on o.id = ri.owner_id
    join houses h on o.id = h.owner_id
group by o.first_name
order by  count desc limit 1;
-- 17.Улуту Kyrgyzstan уй-булолу customerлерди чыгарыныз.
select customers.first_name , customers.last_name, customers.marital_status from customers
where nationality='Kyrgyz' and marital_status='Married';
-- 18.Эн коп болмолуу уйду жана анын адресин ал уй кайсыл ownerге таандык ошону чыгарыныз.
--select houses.description,concat( A.city, A.region,A.street) as address , o.first_name, count(room) as count
--from houses join Addresses A on A.id = houses.address_id join owners o on o.id = houses.owner_id
--having max(count)
--  group by houses.description
SELECT
    h.description AS house_description,
    CONCAT(a.city, ', ', a.region, ', ', a.street) AS address,
    o.first_name AS owner_name,
    h.room AS room_count
FROM
    houses h
        JOIN
    Addresses a ON h.address_id = a.id
        JOIN
    owners o ON h.owner_id = o.id
ORDER BY
    h.room DESC
    LIMIT 1;

-- 19.Бишкекте жайгашкан уйлорду жана клиентерин кошо чыгарыныз.
select  CONCAT(a.city, ', ', a.region, ', ', a.street) AS address, c.first_name from houses
                                                                                         join Addresses A on A.id = houses.address_id
                                                                                         join rent_info ri on houses.id = ri.house_id
                                                                                         join customers c on c.id = ri.customer_id where city='Bishkek';
-- 20.Жендерине карап группировка кылыныз.
select gender, first_name from  customers c group by gender, first_name
-- 21.Эн коп моонотко ижарага алынган уйду чыгарыныз.
select houses.description ,(check_out-check_in)  as ijaraZeit
from houses join rent_info ri on houses.id = ri.house_id
order by  ijaraZeit desc limit 1;

-- 22.Эн кымбат уйду жана анын ээсин чыгарыныз.
select o.first_name, houses.price from houses join owners o on o.id = houses.owner_id
order by price desc
    limit 1;
-- 23.Бир региондо жайгашкан баардык агентстволорду чыгарыныз
select Agencies.agency_name,A.city,A.region,A.street
from Agencies join Addresses A on A.id = Agencies.address_id
where  A.region = 'some_region';
-- 24.Рейтинг боюнча эн популярдуу 5 уйду чыгар.
select houses.description from houses
order by rating desc limit 5;
-- 25.Орто жаштагы owner_ди , анын уйун , уйдун адрессин чыгар.


