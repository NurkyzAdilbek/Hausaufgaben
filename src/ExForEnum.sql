create table publishers(
                           id serial primary key ,
                           name varchar
);

create table authors(
                        id serial primary key ,
                        first_name varchar,
                        last_name varchar,
                        email varchar,
                        date_of_birth date,
                        country varchar
);

create table languages(
                          id serial primary key ,
                          language varchar
);

create table books(
                      id serial primary key ,
                      name varchar,
                      country varchar,
                      published_year date,
                      price numeric,
                      language_id integer references languages(id),
                      publisher_id integer references publishers(id),
                      author_id integer references authors(id)
);

insert into publishers(name)
values ('RELX Group'),
       ('Thomson Reuters'),
       ('Holtzbrinck Publishing Group'),
       ('Shanghai Jiao Tong University Press'),
       ('Wolters Kluwer'),
       ('Hachette Livre'),
       ('Aufbau-Verlag'),
       ('Macmillan'),
       ('Harper Collins'),
       ('China Publishing Group'),
       ('Springer Nature'),
       ('Grupo Planeta'),
       ('Books.Ru Ltd.St Petersburg'),
       ('The Moscow Times'),
       ('Zhonghua Book Company');

insert into authors(first_name, last_name, email, date_of_birth, country)
values ('Sybilla', 'Toderbrugge', 'stoderbrugge0@jugem.jp', '9/5/1968', 'France'),
       ('Patti', 'Walster', 'pwalster1@addtoany.com', '10/3/1965', 'China'),
       ('Sonnie', 'Emmens', 'semmens2@upenn.edu', '5/6/1980', 'Germany'),
       ('Brand', 'Burel', 'bburel3@ovh.net', '4/4/1964', 'United States'),
       ('Silvan', 'Smartman', 'ssmartman4@spiegel.de', '7/3/1967', 'France'),
       ('Alexey', 'Arnov', 'larnoldi5@writer.com', '12/9/1964', 'Russia'),
       ('Bunni', 'Aggio', 'baggio6@yahoo.co.jp', '12/4/1983', 'China'),
       ('Viole', 'Sarath', 'vsarath7@elegantthemes.com', '1/9/1960', 'United States'),
       ('Boigie', 'Etridge', 'betridge8@ed.gov', '11/7/1978', 'France'),
       ('Hilliard', 'Burnsyde', 'hburnsyde9@omniture.com', '9/8/1962', 'Germany'),
       ('Margarita', 'Bartova', 'mbartova@example.com', '12/3/1984', 'Russia'),
       ('Innis', 'Hugh', 'ihughb@marriott.com', '8/8/1983', 'Germany'),
       ('Lera', 'Trimnella', 'ltrimnellc@msn.com', '3/8/1980', 'Russia'),
       ('Jakob', 'Bransby', 'jbransbyd@nasa.gov', '8/5/1966', 'Spain'),
       ('Loretta', 'Gronaver', 'lgronavere@technorati.com', '10/7/1962', 'United States');

insert into languages(language)
values ('English'),
       ('French'),
       ('German'),
       ('Chinese'),
       ('Russian'),
       ('Spanish');

insert into books(name, country, published_year, price, language_id, publisher_id, author_id)
values('Taina', 'Russia', '11/4/2021', '568', '5', '12', '6'),
      ('Zvezdopad', 'Russia', '12/9/2004', '446', '5', '13', '11'),
      ('Homo Faber', 'Germany', '4/8/2022', '772', '3', '5', '3'),
      ('Der Richter und Sein Henker', 'Germany', '2/1/2011', '780', '3', '3', '10'),
      ('Lord of the Flies', 'United States', '7/1/2015', '900', '1', '2', '4'),
      ('Un soir au club', 'France', '1/8/2018', '480', '2', '1', '1'),
      ('Voina', 'Russia', '12/6/2004', '880', '5', '4', '13'),
      ('Sun Tzu', 'China', '9/5/2022', '349', '4', '4', '2'),
      ('Emil und die Detektive', 'Germany', '6/11/2010', '228', '3', '5', '10'),
      ('Coule la Seine', 'France', '3/1/2015', '732', '2', '6', '1'),
      ('Love and hatred', 'Russia', '2/3/2012', '763', '5', '14', '13'),
      ('Fantastic Mr Fox', 'United States', '3/4/2018', '309', '1', '9', '8'),
      ('Contes de la Bécasse', 'France', '10/5/2019', '378', '2', '6', '9'),
      ('"The Death of Ivan Ilyich', 'Russia', '9/4/2000', '814', '5', '6', '6'),
      ('Bonjour Tristesse', 'France', '8/2/2015', '502', '2', '8', '5'),
      ('Die Verwandlung', 'Germany', '6/1/2008', '305', '3', '7', '12'),
      ('The Inspector Barlach Mysteries', 'Germany', '3/10/2007', '566', '3', '3', '3'),
      ('LÉtranger', 'France', '11/4/2017', '422', '2', '8', '5'),
      ('Lao Tse', 'China', '7/6/2005', '900', '4', '4', '2'),
      ('Semya', 'Russia', '4/12/2004', '194', '5', '13', '11'),
      ('Empty World', 'United States', '1/4/2008', '324', '1', '11', '15'),
      ('Domainer', 'Germany', '1/6/2020', '420', '3', '5', '10'),
      ('The Fault in Our Stars', 'United States', '2/3/2008', '396', '1', '9', '4'),
      ('Die R uber', 'Germany', '6/5/2020', '300', '3', '7', '12'),
      ('Jung Chang', 'China', '5/4/2021', '600',  '4', '10', '7'),
      ('Les Aventures de Tintin', 'France', '4/10/2015', '582', '2', '1', '5'),
      ('Unvollendete Geschichte', 'Germany', '12/12/2010', '269', '3', '5', '10'),
      ('Amy Tan', 'China', '1/9/2023', '486', '4', '4', '7'),
      ('Krasnaya luna', 'Russia', '2/7/2020', '550', '5', '12', '11'),
      ('Emma', 'United States', '10/8/2021', '599', '1', '2', '15');

--1 AutorName, email and country
select authors.first_name, authors.last_name, authors.email, authors.country from authors;
--2 2020-2023 betwee ´n publi books#
select  *  from books where published_year between  '2020.01.01' and '2023-12-31';
--3 Country German France autorNAme, l,f as fullName sort country
select  authors.first_name, authors.last_name as full_Name from authors where country in ('German' , 'France') order by country;
--4 all countries and count autors
select  count(*), country from authors group by country ;
--5 order by country where count >=2
select  count(*), country from authors group by country having count(Country)<=2 ;
--6 BookName, publisherName, language
select b.name, p.name,l.language from books b
                                          join publishers p on p.id = b.publisher_id
                                          join languages l on l.id = b.language_id;
--7 kiteptin attary, chykkan jyly, autorname, lastname, publishername
select b.name,b.published_year, a.first_name, a.last_name, p.name from books b
                                                                           join authors a on a.id = b.author_id
                                                                           join publishers p on p.id = b.publisher_id;
--8 if publisher kein book hat
select * from publishers join books b on publishers.id = b.publisher_id where b.name is null ;
--8 fullname of authors and books, if no bokk null
select concat( a2.last_name,' ',a2.first_name) as full_Name, b.name from books b  right join authors a2 on b.author_id = a2.id;
--9 in wich language  how many book desc order by group
select l.language, count(b.id)from books b  join languages l on l.id = b.language_id
group by l.language
order by l.language desc;
--10 pubname, sum price
select p.name, round(sum(price)) from books join publishers p on p.id = books.publisher_id
group by p.name;



create type specialization
    as enum ('DERMOTOLOGIST','CARDIOLOGIST','ALLERGIST','ORTOPEDIST','PSYCHIATRIST');
create type gender
    as enum ('Male','Female');

create table doctors
(
    id             serial primary key,
    first_name     varchar(50),
    last_name      varchar(50),
    experience     int,
    email          varchar(50),
    gender         gender,
    specialization specialization,
    department_id  int references departments (id)
);
create table departments
(
    id              serial primary key,
    department_name varchar(50),
    hospital_id     int references hospitals (id)
);
create table patients
(
    id           serial primary key,
    first_name   varchar(50),
    last_name    varchar(50),
    phone_number numeric,
    email        varchar(50),
    gender       gender,
    hospital_id  int references hospitals (id),
    doctor_id    int references doctors (id)
);
create table hospitals
(
    id            serial primary key,
    hospital_name varchar(50),
    address       varchar(50)
);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (1, 'Dulcy', 'Jerson', 'djerson0@amazon.com', 1, 'Female', 'DERMOTOLOGIST', 1);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (2, 'Conrado', 'Placide', 'cplacide1@friendfeed.com', 2, 'Male', 'ALLERGIST', 2);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (3, 'Durand', 'Dreghorn', 'ddreghorn2@utexas.edu', 3, 'Male', 'CARDIOLOGIST', 6);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (4, 'Miller', 'Caddies', 'mcaddies3@barnesandnoble.com', 4, 'Male', 'DERMOTOLOGIST', 4);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (5, 'Trevor', 'Avon', 'tavon4@arizona.edu', 5, 'Male', 'ORTOPEDIST', 4);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (6, 'Marvin', 'Crix', 'mcrix5@bloomberg.com', 6, 'Male', 'CARDIOLOGIST', 5);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (7, 'Vail', 'Baily', 'vbaily6@symantec.com', 7, 'Male', 'ALLERGIST', 4);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (8, 'Yvette', 'Van Der Weedenburg', 'yvanderweedenburg7@ucsd.edu', 8, 'Female', 'PSYCHIATRIST', 5);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (9, 'Mil', 'Gwillim', 'mgwillim8@nba.com', 4, 'Female', 'ORTOPEDIST', 2);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (10, 'Angy', 'Minor', 'aminor9@auda.org.au', 10, 'Female', 'DERMOTOLOGIST', 5);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (11, 'Cassey', 'De la Barre', 'cdelabarrea@biblegateway.com', 5, 'Female', 'ALLERGIST', 7);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (12, 'Gaultiero', 'Goldie', 'ggoldieb@howstuffworks.com', 12, 'Male', 'CARDIOLOGIST', 6);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (13, 'Susannah', 'Ryce', 'srycec@foxnews.com', 15, 'Female', 'PSYCHIATRIST', 8);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (14, 'Eustacia', 'Caghy', 'ecaghyd@liveinternet.ru', 10, 'Female', 'DERMOTOLOGIST', 9);
insert into doctors (id, first_name, last_name, email, experience, gender, specialization, department_id)
values (15, 'Kariotta', 'Ferrettini', 'kferrettinie@phoca.cz', 15, 'Female', 'PSYCHIATRIST', 8);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (1, 'Lea', 'Witch', 'lwitch0@printfriendly.com', 7034943573, 'Female', 1, 3);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (2, 'Saraann', 'Seleway', 'sseleway1@discuz.net', 7042731563, 'Female', 1, 2);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (3, 'Thaxter', 'Bartley', 'tbartley2@reference.com', 5029541489, 'Male', 1, 3);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (4, 'Evvy', 'Mintoff', 'emintoff3@house.gov', 5047624512, 'Female', 1, 4);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (5, 'Fonsie', 'Fairholm', 'ffairholm4@dedecms.com', 5038828192, 'Male', 1, 5);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (6, 'Arda', 'Canadine', 'acanadine5@howstuffworks.com', 7069307149, 'Female', 1, 5);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (7, 'Elvira', 'Churchlow', 'echurchlow6@weebly.com', 7054337678, 'Female', 1, 3);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (8, 'Marty', 'Targetter', 'mtargetter7@vinaora.com', 5042600657, 'Male', 1, 2);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (9, 'Thaddeus', 'Scotts', 'tscotts8@chronoengine.com', 7054131954, 'Male', 1, 7);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (10, 'Freddy', 'Skilbeck', 'fskilbeck9@archive.org', 5057985117, 'Male', 1, 5);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (11, 'Kenn', 'Leif', 'kleifa@bloglovin.com', 7094159807, 'Male', 1, 6);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (12, 'Abdel', 'Lethebridge', 'alethebridgeb@wired.com', 7095010261, 'Male', 1, 8);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (13, 'Brandon', 'Jeaycock', 'bjeaycockc@booking.com', 5055207270, 'Male', 1, 4);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (14, 'Brew', 'Wloch', 'bwlochd@delicious.com', 7094319667, 'Male', 1, 2);
insert into patients (id, first_name, last_name, email, phone_number, gender, hospital_id, doctor_id)
values (15, 'Sonny', 'Labusch', 'slabusche@flickr.com', 5009884214, 'Female', 1, 8);
insert into hospitals (id, hospital_name, address)
values (1, 'Red Centre', '10548 Reindahl Circle');
insert into departments (id, department_name, hospital_id)
values (1, 'Neurology', 1);
insert into departments (id, department_name, hospital_id)
values (2, 'Oncology', 1);
insert into departments (id, department_name, hospital_id)
values (3, 'Cardiology', 1);
insert into departments (id, department_name, hospital_id)
values (4, 'Emergency Health', 1);
insert into departments (id, department_name, hospital_id)
values (5, 'Anesthesiology', 1);
insert into departments (id, department_name, hospital_id)
values (6, 'Surgical', 1);
insert into departments (id, department_name, hospital_id)
values (7, 'Pediatric', 1);
insert into departments (id, department_name, hospital_id)
values (8, 'Psychical', 1);
insert into departments (id, department_name, hospital_id)
values (9, 'Intensive', 1);
insert into departments (id, department_name, hospital_id)
values (10, 'Nursery', 1);

--1. Найти всех пациентов, которые лечатся в отделении 'Surgical’
select p.first_name,department_name from patients p
                                             join doctors d on p.doctor_id = d.id
                                             join departments d2 on d2.id = d.department_id
where department_name='Surgical';
--2. Получить список всех отделений, где работает врач с именем 'John’
SELECT  dep.department_name
FROM doctors d JOIN departments dep ON d.department_id = dep.id
WHERE d.first_name = 'John';
--3. Найти всех пациентов, у которых врач имеет стаж более 10 лет
select d.first_name,p.first_name from doctors  d join patients p on d.id = p.doctor_id
where experience>10 ;
--4. Получить список всех врачей и количество пациентов, которых они обслуживают
select concat(d.first_name,' ', d.last_name) as fullNameDoctors, count(p.last_name)from doctors d
                                                                                            left join patients p on d.id = p.doctor_id
group by d.first_name , d.last_name;
--5. Получить список всех пациентов, которые не обслуживаются ни у одного врача
select p.first_name from patients p
                             join doctors d on d.id = p.doctor_id
where doctor_id is null;
--6. Получить список всех врачей, которые не обслуживают ни одного пациента
select concat(d.first_name, ' ', d.last_name) as fullNameDoctors from doctors d
                                                                          left   join patients p on d.id = p.doctor_id
where p.doctor_id is null;
--7. Получить список всех врачей, которые лечат пациентов старе 60 лет
select concat(d.first_name, ' ', d.last_name) as fullNameDoctors from doctors d
                                                                          join patients p on d.id = p.doctor_id
where p.doctor_id is null;
--8. Найти всех пациентов, которые лечатся у врача с именем 'Anna' и фамилией 'Smith’
select patients.first_name, patients.last_name from patients
                                                        join doctors d on d.id = patients.doctor_id
where  d.first_name='Miller' and d.last_name='Caddies';
--9. Получить список всех врачей, работающих в отделении 'Intensive' и обслуживающих больше 3 пациентов
select concat(d.first_name, ' ', d.last_name) as fullNameDoctors from doctors d
                                                                          join departments d2 on d2.id = d.department_id
where department_name='Intensive';
--10. Получить список всех отделений, в которых пациенты лечатся у врачей с опытом менее 5 лет
select concat(patients.first_name, patients.last_name) as patientNAme,
       concat(d.first_name, ' ', d.last_name) as fullNameDoctors  from patients
                                                                           join doctors d on d.id = patients.doctor_id
where experience>5;
--11. Найти всех пациентов, у которых врач имеет специализацию 'DERMOTOLOGIST’
select concat(patients.first_name, patients.last_name) as patientNAme,
       concat(d.first_name, ' ', d.last_name) as fullNameDoctors  from patients
                                                                           join doctors d on d.id = patients.doctor_id where specialization='DERMOTOLOGIST';
--12. Получить количество врачей для каждой специализации
select doctors.specialization, count(doctors.id)from doctors
group by doctors.specialization;
--13. Найти всех пациентов, обслуживаемых врачами с наименее распространенной специализацией
WITH LeastCommonSpecialty AS (
    SELECT specialization
    FROM doctors
    GROUP BY specialization
    ORDER BY COUNT(*) ASC
    LIMIT 1
    )
select concat(patients.first_name, patients.last_name) as patientNAme,
       concat(d.first_name, ' ', d.last_name) as fullNameDoctors , specialization from patients
                                                                                           join doctors d on d.id = patients.doctor_id
where specialization=(select specialization from LeastCommonSpecialty);
--14. Найти всех пациентов, обслуживаемых врачами с специализацией ‘CARDIOLOGIST’
select concat(patients.first_name, patients.last_name) as patientNAme,
       concat(d.first_name, ' ', d.last_name) as fullNameDoctors , specialization from patients join doctors d on d.id = patients.doctor_id
where specialization='CARDIOLOGIST';
--15. Получить список всех врачей, работающих в отделении 'Neurology' и обслуживающих больше 3 пациентов
select concat(d.first_name, ' ', d.last_name) as fullNameDoctors,count(p.first_name)from doctors d
                                                                                             left join patients p on d.id = p.doctor_id left join departments d2 on d2.id = d.department_id
where department_name='Neurology'
group by d.first_name,d.last_name
having count(p.first_name)>3;