USE SQLKursach

CREATE TABLE conditer_suplier (
  id bigint NOT NULL PRIMARY KEY IDENTITY(1,1),
  company_name varchar(255) NOT NULL,
  item varchar(255) NOT NULL
);