-- added new department distributor // 27-02-2024
INSERT INTO `deapartment` (`id`, `name`) VALUES (NULL, 'Distributor'); 

-- for zones in admin users // 27-02-2024

ALTER TABLE `admin_users` ADD `zone_id` INT(11) NULL AFTER `beat_id`; 

-- for distributor tagging to bpmaster //28-02-2024
ALTER TABLE `business_partner_master` ADD `company_id` INT(11) NULL AFTER `outlet_image`; 