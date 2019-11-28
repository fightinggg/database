create table grade
(
	grade_id int not null,
	grade_name varchar(10)
)
/

create unique index grade_grade_id_uindex
	on grade (grade_id)
/

alter table grade
	add constraint grade_pk
		primary key (grade_id)
/

