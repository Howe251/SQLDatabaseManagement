USE SQLKursach

CREATE TABLE conditer_produced (
  id bigint NOT NULL PRIMARY KEY IDENTITY(1,1),
  [produce_date] date NOT NULL DEFAULT(getdate()),
  [count] bigint NOT NULL,
  menu_id bigint NOT NULL
);