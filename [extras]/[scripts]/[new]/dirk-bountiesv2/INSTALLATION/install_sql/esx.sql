ALTER TABLE `owned_vehicles`
ADD COLUMN `originalOwner`  varchar(50) DEFAULT NULL;
ALTER TABLE `owned_vehicles`
ADD COLUMN `releaseFee` int(11) NOT NULL DEFAULT 0;