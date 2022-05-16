USE SQLKursach

CREATE TABLE conditer_menu_ingredients (
  id bigint NOT NULL PRIMARY KEY IDENTITY(1,1),
  menu_id bigint NOT NULL,
  ingredients_id bigint NOT NULL
);