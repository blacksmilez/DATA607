create table tbl_dba (
camis    varchar(8) not null,
dba      varchar(150) null,
phone    varchar(12) null,
bin      varchar(7) not null,
primary key(camis),
  foreign key(bin) references tbl_building(bin)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
