create database java14;

create table schools(
                        id serial primary key ,
                        school_name varchar (50),
                        address varchar(50),
                        count_of_students int

);

insert into schools (school_name, address, count_of_students) VALUES ('NAme','ADdress',4434);
insert into schools (id,school_name, address, count_of_students) VALUES (4,'NAme','ADdress',4434);

create table students (
                          student_id serial primary key,
                          student_name varchar not null,
                          email varchar unique not null
);
create table courses (
                         course_id serial primary key,
                         course_name varchar not null,
                         course_description text
);
create table enrollments (
                             enrollment_id serial primary key,
                             student_id int references students(student_id),
                             course_id int references courses(course_id),
                             enrollment_date date not null
);
insert into students (student_name, email) values ('Alice', 'alice@example.com');
insert into courses (course_name, course_description)
values ('Database Systems', 'Introduction to database systems');
insert into enrollments (student_id, course_id, enrollment_date)
values (1, 1, '2024-09-01');
alter table students alter column email set not null;

create table comments (
                          comment_id serial primary key,
                          content text not null,
                          user_id int references benutzer(user_id),
                          announcement_id int references announcement(id)
);

insert into comments (content, user_id, announcement_id) values
    ('Great product!', 1, 1);

create table images (
                        image_id serial primary key,
                        url varchar(255) not null,
                        announcement_id int references announcement(id)
);
insert into comments (content, user_id, announcement_id) values
    ('Great product!', 1, 1);

create table messages (
                          message_id serial primary key,
                          content text not null,
                          sender_id int references benutzer(user_id),
                          receiver_id int references benutzer(user_id),
                          sent_at timestamp default current_timestamp
);

insert into messages (content, sender_id, receiver_id) values
    ('Hello!', 1, 2);
create table ratings (
                         rating_id serial primary key,
                         score int not null,
                         comment text,
                         user_id int references benutzer(user_id),
                         announcement_id int references announcement(id)
);

insert into ratings (score, comment, user_id, announcement_id) values
    (5, 'Excellent!', 1, 1);
create table transactions (
                              transaction_id serial primary key,
                              user_id int references benutzer(user_id),
                              amount decimal not null,
                              transaction_date timestamp default current_timestamp,
                              status varchar(50) not null
);

insert into transactions (user_id, amount, status) values
    (1, 99.99, 'Completed');

create table user_roles (
                            user_role_id serial primary key,
                            user_id int references benutzer(user_id),
                            role_id int references roles(role_id)
);

insert into user_roles (user_id, role_id) values
    (1, 1);
