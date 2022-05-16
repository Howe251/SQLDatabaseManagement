USE SQLKursach;

CREATE TABLE conditer_menu (
  id bigint NOT NULL PRIMARY KEY IDENTITY(1,1),
  [name] varchar(255) NOT NULL,
  add_date datetime2 NOT NULL DEFAULT(getdate()),
  cost int NOT NULL
);
