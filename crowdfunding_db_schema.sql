-- Drop table if exists

create table campaign(
	cf_id int NOT NULL,
	contact_id int NOT NULL ,
	company_name varchar NOT NULL, 
	description varchar NOT NULL,
	goal float NOT NULL, 
	pledged float NOT NULL, 
	outcome VARCHAR NOT NULL, 
	backers_count int NOT NULL , 
	country varchar NOT NULL, 
	currency varchar NOT NULL, 
	launched_date date NOT NULL, 
	end_date date NOT NULL, 
	category_id varchar NOT NULL, 
	subcategory_id varchar NOT NULL ,
	PRIMARY KEY(cf_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

select * from campaign;

create table category(
    category_id VARCHAR NOT NULL , 
    category varchar NOT NULL,
	PRIMARY KEY (category_id)
);

select * from category;

create table contacts(
   contact_id int NOT NULL ,
   first_name varchar NOT NULL,
   last_name varchar NOT NULL,
   email varchar not null,
   PRIMARY KEY(contact_id)
);

select * from contacts;

create table subcategory(
    subcategory_id varchar NOT NULL, 
    subcategory varchar NOT NULL,
	PRIMARY KEY(subcategory_id)	
);

select * from subcategory;







