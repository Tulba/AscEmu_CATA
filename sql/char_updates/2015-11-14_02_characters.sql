--
-- Update event_tables columns
--
ALTER TABLE `characters` DROP COLUMN `available_prof_points`;

--
-- Update character_db_version
--
UPDATE `character_db_version` SET `LastUpdate` = '2015-11-14_02_characters' WHERE `LastUpdate` = '2015-11-14_01_characters';
