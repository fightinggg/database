create table vip
(
    vip_id int,
    vip_tel int,
    vip_name int,
    vip_sex int,
    vip_address int,
    vip_grade int,
    all_money int,
    vip_card int
)
/

create unique index vip_vip_id_uindex
    on vip (vip_id)
/

alter table vip
    add constraint vip_pk
        primary key (vip_id)
/

