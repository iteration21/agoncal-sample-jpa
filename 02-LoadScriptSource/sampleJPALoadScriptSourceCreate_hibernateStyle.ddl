create table Author (id bigint generated by default as identity, bio varchar(5000), date_of_birth date, first_name varchar(50), last_name varchar(50), preferred_language integer, version integer, primary key (id))
create table Book (id bigint generated by default as identity, description varchar(3000), image_url varchar(255), isbn varchar(15), language integer, nb_of_pages integer, price float, publication_date date, title varchar(50), version integer, author_id bigint, category_id bigint, publisher_id bigint, primary key (id))
create table CD (id bigint generated by default as identity, description varchar(3000), price float, title varchar(50), total_duration float, version integer, genre_id bigint, label_id bigint, primary key (id))
create table CD_Musician (CD_id bigint not null, musicians_id bigint not null, primary key (CD_id, musicians_id))
create table Category (id bigint generated by default as identity, name varchar(100), version integer, primary key (id))
create table Genre (id bigint generated by default as identity, name varchar(100), version integer, primary key (id))
create table MajorLabel (id bigint generated by default as identity, name varchar(30), version integer, primary key (id))
create table Musician (id bigint generated by default as identity, bio varchar(5000), date_of_birth date, first_name varchar(50), last_name varchar(50), preferred_instrument varchar(255), version integer, primary key (id))
create table Publisher (id bigint generated by default as identity, name varchar(30), version integer, primary key (id))
alter table Book add constraint FK_2krfr0tkkuxiv7j794sgfv5j1 foreign key (author_id) references Author
alter table Book add constraint FK_oobhb38ja35ikb5isw4t4nghy foreign key (category_id) references Category
alter table Book add constraint FK_mi1mvgct3kh7oyxn9iwy4n59m foreign key (publisher_id) references Publisher
alter table CD add constraint FK_49btnkbn9fkb1custjuqbd9o0 foreign key (genre_id) references Genre
alter table CD add constraint FK_l36kwr6gaqfux7c4d40swo5an foreign key (label_id) references MajorLabel
alter table CD_Musician add constraint FK_d6s2g1rutmncm4gnfrlcai6o8 foreign key (musicians_id) references Musician
alter table CD_Musician add constraint FK_h3ueec6lhd0bdg0r70sfq6k7o foreign key (CD_id) references CD
