/* create tables */

create table tbl_boro (				
	boro_code	int	unsigned    not null,	
	boro_name	varchar(20)     not null,	
  primary key(boro_code)				
) ENGINE=InnoDB DEFAULT CHARSET=utf8;				


create table tbl_critical_flag_code (				
	critical_flag_code    int	not null,	
	critical_flag         varchar(15) not null,	
  primary key(critical_flag_code)				
) ENGINE=InnoDB DEFAULT CHARSET=utf8;				


create table tbl_violation_description_code (				
	violation_description_code    int	not null,	
	violation_description         varchar(1000) not null,	
  primary key(violation_description_code)				
) ENGINE=InnoDB DEFAULT CHARSET=utf8;				


create table tbl_violation_code (				
	violation_code      int not null,	
	violation_code_5    varchar(5) not null,	
  primary key(violation_code)				
) ENGINE=InnoDB DEFAULT CHARSET=utf8;	


create table tbl_grade_code (				
	grade_code    varchar(1) not null,	
	grade         varchar(5) not null,	
  primary key(grade_code)				
) ENGINE=InnoDB DEFAULT CHARSET=utf8;	


create table tbl_action_code (				
	action_code    int unsigned not null,		
	`action`       varchar(150) not null,	
  primary key(action_code)				
) ENGINE=InnoDB DEFAULT CHARSET=utf8;	


create table tbl_inspection_code (				
	inspection_code    int not null,		
	inspection_type    varchar(70) not null,	
  primary key(inspection_code)				
) ENGINE=InnoDB DEFAULT CHARSET=utf8;	


create table tbl_cuisine_code (				
	cuisine_code          int not null,		
	cuisine_decription    varchar(50) not null,	
  primary key(cuisine_code)				
) ENGINE=InnoDB DEFAULT CHARSET=utf8;	


create table tbl_building (				
	bin                 varchar(7) not null,	
	boro_code           int unsigned default null,	
	building            varchar(15)	null,	
	street              varchar(50) not null,	
	zipcode             varchar(5) null,	
	latitude            decimal null,	
	longitude           decimal null,	
	community_board     varchar(3) null,	
	council_district    varchar(2) null,	
	census_tract        varchar(7) null,	
	bbl                 varchar(10) null,	
	nta                 varchar(4) null,	
  primary key(bin),				
  foreign key(boro_code) references tbl_boro(boro_code)				
) ENGINE=InnoDB DEFAULT CHARSET=utf8;				

		
create table tbl_dba (				
	camis    varchar(8) not null,	
	dba      varchar(150) null,	
	phone    varchar(12) null,	
	bin      varchar(7) not null,	
	primary key(camis),			
  foreign key(bin) references tbl_building(bin)				
) ENGINE=InnoDB DEFAULT CHARSET=utf8;				


create table tbl_inspection_result (				
	camis              varchar(8) not null,
  inspection_date    date not null,
	action_code        int unsigned default null,	
	score              int null,	
	grade_code         varchar(1) null,		
	grade_date         date not null,		
	record_date        date not null,		
	cuisine_code       int not null,	
	primary key(camis, inspection_date),			
  foreign key(camis) references tbl_dba(camis),				
  foreign key(action_code) references tbl_action_code(action_code),				
  foreign key(grade_code) references tbl_grade_code(grade_code),				
  foreign key(cuisine_code) references tbl_cuisine_code(cuisine_code)				
) ENGINE=InnoDB DEFAULT CHARSET=utf8;				


create table tbl_violation (				
	camis                         varchar(8) not null,
	inspection_date               date not null,	
	violation_code                int not null,	
	violation_description_code    int not null,	
	critical_flag_code            int not null,	
  foreign key(camis, inspection_date) references tbl_inspection_result(camis, inspection_date),				
  foreign key(violation_code) references tbl_violation_code(violation_code),
  foreign key(violation_description_code) references tbl_violation_description_code(violation_description_code),
  foreign key(critical_flag_code) references tbl_critical_flag_code(critical_flag_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;				


create table tbl_inspection_type (				
	camis              varchar(8) not null,		
  inspection_date    date,
	inspection_code    int not null,	
  foreign key(camis, inspection_date) references tbl_inspection_result(camis, inspection_date),
  foreign key(inspection_code) references tbl_inspection_code(inspection_code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;	

