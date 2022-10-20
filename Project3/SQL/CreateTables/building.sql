create table if not exists tbl_building (				
    bin                 varchar(7)       not null,	
    boro_code           int unsigned default null,	
    building            varchar(15)	     null,	
    street              varchar(50)      not null,	
    zipcode             varchar(5)           null,	
    latitude            decimal              null,	
    longitude           decimal              null,	
    community_board     varchar(3)           null,	
    council_district    varchar(2)           null,	
    census_tract        varchar(7)           null,	
    bbl                 varchar(10)          null,	
    nta                 varchar(4)           null,	
    primary key(bin),				
    foreign key(boro_code) references tbl_boro(boro_code)				
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
