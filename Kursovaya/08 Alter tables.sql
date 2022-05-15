ALTER TABLE [dbo].[conditer_ingredients] WITH CHECK ADD CONSTRAINT [FK_Ingredients_Suplier] FOREIGN KEY([delivery_id])
REFERENCES [dbo].[conditer_suplier] ([id]) ON DELETE CASCADE;

ALTER TABLE [dbo].[conditer_menu_ingredients] WITH CHECK ADD CONSTRAINT [FK_menu_ingredients_ingredients] FOREIGN KEY([ingredients_id])
REFERENCES [dbo].[conditer_ingredients] ([id]) ON DELETE CASCADE;

ALTER TABLE [dbo].[conditer_menu_ingredients] WITH CHECK ADD CONSTRAINT [FK_menu_ingredients_menu] FOREIGN KEY([menu_id])
REFERENCES [dbo].[conditer_menu] ([id]) ON DELETE CASCADE;

ALTER TABLE [dbo].[conditer_menu_transfer_to] WITH CHECK ADD CONSTRAINT [FK_menu_transfer_to_store] FOREIGN KEY([store_id])
REFERENCES [dbo].[conditer_store] ([id]) ON DELETE CASCADE;

ALTER TABLE [dbo].[conditer_menu_transfer_to] WITH CHECK ADD CONSTRAINT [FK_menu_transfer_to_menu] FOREIGN KEY([menu_id])
REFERENCES [dbo].[conditer_menu] ([id]) ON DELETE CASCADE;

ALTER TABLE dbo.conditer_produced WITH CHECK ADD CONSTRAINT [FK_produced_menu] FOREIGN KEY([menu_id])
REFERENCES [dbo].conditer_menu ([id]) ON DELETE CASCADE;