
create table "user"
(
	user_id int,
	user_name varchar(10),
	account int,
	password varchar(10),
	age int,
	sex int,
	card int,
	tel int,
	power int,
	status int
)
/

create unique index user_user_id_uindex
	on "user" (user_id)
/

alter table "user"
	add constraint user_pk
		primary key (user_id)
/

