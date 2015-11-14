--
-- Update event_tables columns
--
ALTER TABLE `characters` DROP COLUMN `ammo_id`;

--
-- Update character_db_version
--
UPDATE `character_db_version` SET `LastUpdate` = '2015-11-14_01_characters' WHERE `LastUpdate` = '2015-11-06_01_event_save';
