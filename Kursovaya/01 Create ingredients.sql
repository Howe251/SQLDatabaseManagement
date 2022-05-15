USE SQLKursach;

CREATE TABLE conditer_ingredients (
  id bigint NOT NULL PRIMARY KEY IDENTITY(1,1),
  [name] varchar(255) NOT NULL,
  [count] int NOT NULL,
  [delivery_id] bigint NOT NULL 
);
