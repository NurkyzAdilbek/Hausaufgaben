create table publisher(
                          id serial primary key ,
                          publisherNAme varchar
);

create table language(
                         language_id  serial primary key ,
                         language varchar not null
);
create type gender
    as enum ('Male','Female');

create type genre
    as enum ('DETECTIVE','DRAMA',
    'HISTORY','ROMANS','BIOGRAPHY','FANTASY');
drop  type genre cascade ;


create table authors(
                        authorID serial primary key ,
                        first_name varchar,
                        last_name varchar,
                        email varchar unique ,
                        date_of_birth date,
                        country varchar,
                        gender gender
);

--drop table author cascade ;
create table books(
                      bookID serial primary key ,
                      bookName varchar,
                      country varchar,
                      publisher_year date,
                      price numeric,
                      genre genre,
                      languageID int references language(language_id),
                      publisherID int references publisher(id),
                      authorID int references authors(authorID)

);
drop table books cascade;
insert into publisher(publisherNAme)
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


insert into authors(first_name, last_name, email, date_of_birth, country, gender)
values ('Sybilla', 'Toderbrugge', 'stoderbrugge0@jugem.jp', '1968-09-25', 'France', 'Female'),
       ('Patti', 'Walster', 'pwalster1@addtoany.com', '1965-10-31', 'China', 'Female'),
       ('Sonnie', 'Emmens', 'semmens2@upenn.edu', '1980-05-16', 'Germany', 'Male');
INSERT INTO authors (first_name, last_name, email, date_of_birth, country, gender)
VALUES
    ('Brand', 'Burel', 'bburel3@ovh.net', '1964-04-24', 'United States', 'Male'),
    ('Silvan', 'Smartman', 'ssmartman4@spiegel.de', '1967-07-03', 'France', 'Male'),
    ('Alexey', 'Arnov', 'larnoldi5@writer.com', '1964-12-29', 'Russia', 'Male'),
    ('Bunni', 'Aggio', 'baggio6@yahoo.co.jp', '1983-12-14', 'China', 'Female'),
    ('Viole', 'Sarath', 'vsarath7@elegantthemes.com', '1960-01-29', 'United States', 'Female'),
    ('Boigie', 'Etridge', 'betridge8@ed.gov', '1978-11-17', 'France', 'Male'),
    ('Hilliard', 'Burnsyde', 'hburnsyde9@omniture.com', '1962-09-08', 'Germany', 'Male'),
    ('Margarita', 'Bartova', 'mbartova@example.com', '1984-12-03', 'Russia', 'Female'),
    ('Innis', 'Hugh', 'ihughb@marriott.com', '1983-08-28', 'Germany', 'Male'),
    ('Lera', 'Trimnella', 'ltrimnellc@msn.com', '1980-03-28', 'Russia', 'Female'),
    ('Jakob', 'Bransby', 'jbransbyd@nasa.gov', '1966-08-05', 'Spain', 'Male'),
    ('Loretta', 'Gronaver', 'lgronavere@technorati.com', '1962-10-17', 'United States', 'Female');


insert into language(language)
values ('English'),
       ('French'),
       ('German'),
       ('Chinese'),
       ('Russian'),
       ('Spanish');


INSERT INTO books (bookName, country, publisher_year, price, genre, languageID, publisherID, authorID)
VALUES
    ('Taina', 'Russia', '2021-12-11', 568, 'DETECTIVE', 5, 12, 6),
    ('Zvezdopad', 'Russia', '2004-12-09', 446, 'ROMANS', 5, 13, 11),
    ('Homo Faber', 'Germany', '2022-04-10', 772, 'FANTASY', 3, 5, 3),
    ('Der Richter und Sein Henker', 'Germany', '2011-02-01', 780, 'DETECTIVE', 3, 3, 10),
    ('Lord of the Flies', 'United States', '2015-07-11', 900, 'FANTASY', 1, 2, 4),
    ('Un soir au club', 'France', '2018-01-12', 480, 'DRAMA', 2, 1, 1),
    ('Voina', 'Russia', '2004-12-06', 880, 'HISTORY', 5, 4, 13),
    ('Sun Tzu', 'China', '2022-09-05', 349, 'HISTORY', 4, 4, 2),
    ('Emil und die Detektive', 'Germany', '2010-06-11', 228, 'DETECTIVE', 3, 5, 10),
    ('Coule la Seine', 'France', '2015-03-01', 732, 'FANTASY', 2, 6, 1),
    ('Love and hatred', 'Russia', '2012-02-03', 763, 'ROMANS', 5, 14, 13),
    ('Fantastic Mr Fox', 'United States', '2018-03-10', 309, 'FANTASY', 1, 9, 8),
    ('Contes de la Bécasse', 'France', '2019-10-05', 378, 'ROMANS', 2, 6, 9),
    ('The Death of Ivan Ilyich', 'Russia', '2000-09-24', 814, 'DRAMA', 5, 6, 6),
    ('Bonjour Tristesse', 'France', '2015-08-02', 502, 'ROMANS', 2, 8, 5),
    ('Die Verwandlung', 'Germany', '2008-06-19', 305, 'DETECTIVE', 3, 7, 12),
    ('The Inspector Barlach Mysteries', 'Germany', '2007-03-10', 566, 'DETECTIVE', 3, 3, 3),
    ('LÉtranger', 'France', '2017-11-14', 422, 'ROMANS', 2, 8, 5),
    ('Lao Tse', 'China', '2005-07-16', 900, 'FANTASY', 4, 4, 2),
    ('Semya', 'Russia', '2004-04-12', 194, 'DRAMA', 5, 13, 11),
    ('Empty World', 'United States', '2008-01-04', 324, 'FANTASY', 1, 11, 15),
    ('Domainer', 'Germany', '2020-01-06', 420, 'ROMANS', 3, 5, 10),
    ('The Fault in Our Stars', 'United States', '2008-02-13', 396, 'ROMANS', 1, 9, 4),
    ('Die Räuber', 'Germany', '2020-06-25', 300, 'ROMANS', 3, 7, 12),
    ('Jung Chang', 'China', '2021-05-14', 600, 'HISTORY', 4, 10, 7),
    ('Les Aventures de Tintin', 'France', '2015-04-10', 582, 'DRAMA', 2, 1, 5),
    ('Unvollendete Geschichte', 'Germany', '2010-12-12', 269, 'DETECTIVE', 3, 5, 10),
    ('Amy Tan', 'China', '2023-01-09', 486, 'DRAMA', 4, 4, 7),
    ('Krasnaya luna', 'Russia', '2020-02-07', 550, 'FANTASY', 5, 12, 11),
    ('Emma', 'United States', '2021-10-11', 599, 'BIOGRAPHY', 1, 2, 15);

--1.Китептердин атын, чыккан жылын, жанрын чыгарыныз.
select books.bookName, books.publisher_year , books.genre from books;
--2.Авторлордун мамлекеттери уникалдуу чыксын.
select distinct  authors.country from authors;
--3.2020-2023 жылдардын арасындагы китептер чыксын.
select books.bookName,publisher_year from books where publisher_year between  '2020-01-02' and '2023-12-31';
--4.Детектив китептер жана алардын аттары чыксын.
select books.bookName , books.genre from books where genre='DETECTIVE';
--5.Автордун аты-жону author деген бир колонкага чыксын.
select  authors.first_name as author from authors;
--6.Германия жана Франциядан болгон авторлорду толук аты-жону менен сорттоп чыгарыныз.
select concat(authors.first_name, authors.last_name) as fullName from authors where country in ('Germany','France')
order by  fullName desc ;
--7.Романдан башка жана баасы 500 дон кичине болгон китептердин аты, олкосу, чыккан жылы, баасы жанры чыксын..
select books.bookName, books.country,books.publisher_year, books.price, books.genre from books
where genre<>'ROMANS' and price<500;
SELECT bookName, country, publisher_year, price, genre
FROM (
         SELECT bookName, country, publisher_year, price, genre
         FROM books
         WHERE genre <> 'ROMANS'
     ) AS filtered_books
WHERE price < 500;
--8.Бардык кыз авторлордун биринчи 3 ну чыгарыныз.
select  fullName from
    (select concat(authors.first_name, authors.last_name) as fullName from authors where gender='Female')
        as filtred_Authors limit 3;

--9.Почтасы .com мн буткон, аты 4 тамгадан турган, кыз авторлорду чыгарыныз.
SELECT email, first_name
FROM authors
WHERE gender = 'Female'
  AND first_name LIKE '____'
  AND email LIKE '%.com';
--10.Бардык олколорду жана ар бир олкодо канчадан автор бар экенин чыгаргыла.
select authors.country, count(authors.authorID)from public.authors
group by authors.country;
--11.Уч автор бар болгон олколорду аты мн сорттоп чыгарыныз.
select country from (select country, count(*) as authorCount from authors
                     group by country)
where authorCount=3 order by country;
--12. Ар бир жанрдагы китептердин жалпы суммасын чыгарыны
select genre, count(books.bookID) from books  group by genre;
--13. Роман жана Детектив китептеринин эн арзан бааларын чыгарыныз
select books.genre, max(books.price), min(books.price) from books
where genre in  ('ROMANS','DETECTIVE') group by books.genre ;
--
select genre, min(price),max(price) from (select  genre, price from books
                                          where genre in  ('ROMANS','DETECTIVE'))
group by genre ;
--14.История жана Биографиялык китептердин сандарын чыгарыныз
select books.bookName, books.genre from books where genre in ('HISTORY','BIOGRAPHY');
--subquery
select bookName,genre from (select  bookName,genre from books where genre in ('HISTORY','BIOGRAPHY'));
--15.Китептердин , издательстволордун аттары жана тили чыксын
select bookName, publishername, language  from books
    join publisher p on p.id = books.publisherID
    join language l on l.language_id = books.languageID;
--subquery
select bookName, publishername, language  from (select bookName, publishername, language from books
    join publisher p on p.id = books.publisherID
    join language l on l.language_id = books.languageID);
--156Авторлордун бардык маалыматтары жана издательстволору чыксын, издательство болбосо null чыксын
SELECT authors.*, p.publisherName
FROM authors
         LEFT JOIN books b ON authors.authorID = b.authorID
         left join publisher p on p.id = b.publisherID;
--subquery
select *, publisherNAme from (SELECT *,p.publisherNAme from authors
                                                                left join books b on authors.authorID = b.authorID
                                                                left join publisher p on p.id = b.publisherID);
--17.Авторлордун толук аты-жону жана китептери чыксын, китеби жок болсо null чыксын.
select concat(authors.first_name, authors.last_name) as fullName,bookName from authors
                                                                                   left  join books b on authors.authorID = b.authorID;
select  fullName,bookName from
    (select concat(authors.first_name, authors.last_name) as fullName,bookName from authors
                                                                                        left  join books b on authors.authorID = b.authorID);
--18.Кайсы тилде канча китеп бар экендиги ылдыйдан ойлдого сорттолуп чыксын.
select language,count(b.bookName) from language
    join books b on language.language_id = b.languageID group by language ;
--subquery
select language, countBooks from (select language,count(b.bookName) as countBooks from language
    join books b on language.language_id = b.languageID group by language) ;
---19.Издательствонун аттары жана алардын тапкан акчасынын оточо суммасы тегеректелип чыгарылсын.
select publisherNAme, round(sum(b.price))from publisher
                                                  join books b on publisher.id = b.publisherID
group by publisherNAme;
--subqueries
select  publisherNAme, sum from (select publisherNAme, round(sum(b.price)) as sum from publisher
    join books b on publisher.id = b.publisherID
                                 group by publisherNAme);
--20. 2010-2015 жылдардын арасындагы китептер жана автордун аты-фамилиясы чыксын.
select bookName, fullNameOFAuthor, publisherYear from (select bookName, concat( a.first_name,' ', a.last_name) as fullNameOFAuthor,
                                                              publisher_year as publisherYear from books
                                                                                                       inner join authors a on a.authorID = books.authorID
                                                       where publisher_year between '2010-01-01' and '2015-12-31'       ) ;

--21.2010-2015 жылдардын арасындагы китептердин авторлорунун толук аты-жону жана алардын тапкан акчаларынын жалпы суммасы чыксын.

select fullNameOFAuthor, sum,  publisherYear from
    (select
         concat( authors.first_name,' ', authors.last_name) as fullNameOFAuthor, sum(price) as sum,
   publisher_year as publisherYear
     from    authors  join books b on authors.authorID = b.authorID
     where publisher_year between '2010-01-01' and '2015-12-31'
     group by authors.first_name, authors.last_name, b.publisher_year );


;
select concat( a.first_name,' ', a.last_name) as fullNameOFAuthor, sum(b.price), b.publisher_year
from authors a join books b on a.authorID = b.authorID
where publisher_year between '2010-01-01' and '2015-12-31'
group by a.first_name, a.last_name, b.publisher_year;
