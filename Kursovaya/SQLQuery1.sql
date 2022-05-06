USE SQLKursach;

--DROP TABLE conditer_store, conditer_suplier, conditer_produced, dbo.conditer_ingredients, dbo.conditer_menu, 
--dbo.conditer_menu_ingredients, conditer_menu_transfer_to;

CREATE TABLE conditer_ingredients (
  id bigint NOT NULL PRIMARY KEY IDENTITY(1,1),
  [name] varchar(255) NOT NULL,
  [count] int NOT NULL,
  [postavka_id] bigint NOT NULL 
);

CREATE TABLE conditer_menu (
  id bigint NOT NULL PRIMARY KEY IDENTITY(1,1),
  [name] varchar(255) NOT NULL,
  add_date datetime2 NOT NULL DEFAULT(getdate()),
  cost int NOT NULL
);

CREATE TABLE conditer_menu_ingredients (
  id bigint NOT NULL PRIMARY KEY IDENTITY(1,1),
  menu_id bigint NOT NULL,
  ingredients_id bigint NOT NULL
);

CREATE TABLE conditer_menu_transfer_to (
  id bigint NOT NULL PRIMARY KEY IDENTITY(1,1),
  menu_id bigint NOT NULL,
  store_id bigint NOT NULL
);

CREATE TABLE conditer_store (
  id bigint NOT NULL PRIMARY KEY IDENTITY(1,1),
  store_name varchar(255) NOT NULL,
  [address] varchar(255) NOT NULL
);

CREATE TABLE conditer_suplier (
  id bigint NOT NULL PRIMARY KEY IDENTITY(1,1),
  company_name varchar(255) NOT NULL,
  item varchar(255) NOT NULL
);

CREATE TABLE conditer_produced (
  id bigint NOT NULL PRIMARY KEY IDENTITY(1,1),
  [produce_date] date NOT NULL DEFAULT(getdate()),
  [count] bigint NOT NULL,
  menu_id bigint NOT NULL
);

ALTER TABLE [dbo].[conditer_ingredients] WITH CHECK ADD CONSTRAINT [FK_Ingredients_Suplier] FOREIGN KEY([postavka_id])
REFERENCES [dbo].[conditer_suplier] ([id]);

ALTER TABLE [dbo].[conditer_menu_ingredients] WITH CHECK ADD CONSTRAINT [FK_menu_ingredients_ingredients] FOREIGN KEY([ingredients_id])
REFERENCES [dbo].[conditer_ingredients] ([id]);

ALTER TABLE [dbo].[conditer_menu_ingredients] WITH CHECK ADD CONSTRAINT [FK_menu_ingredients_menu] FOREIGN KEY([menu_id])
REFERENCES [dbo].[conditer_menu] ([id]);

ALTER TABLE [dbo].[conditer_menu_transfer_to] WITH CHECK ADD CONSTRAINT [FK_menu_transfer_to_store] FOREIGN KEY([store_id])
REFERENCES [dbo].[conditer_store] ([id]);

ALTER TABLE [dbo].[conditer_menu_transfer_to] WITH CHECK ADD CONSTRAINT [FK_menu_transfer_to_menu] FOREIGN KEY([menu_id])
REFERENCES [dbo].[conditer_menu] ([id]);

ALTER TABLE dbo.conditer_produced WITH CHECK ADD CONSTRAINT [FK_produced_menu] FOREIGN KEY([menu_id])
REFERENCES [dbo].conditer_menu ([id]);