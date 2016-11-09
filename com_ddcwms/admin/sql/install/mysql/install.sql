CREATE TABLE IF NOT EXISTS `#__ddc_materials` (
  `ddc_material_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `vendor_id` INT(11) UNSIGNED NOT NULL,
  `material_sku` varchar(120),
  `material_gtin` varchar(64),
  `material_mpn` varchar(64),
  `material_name` varchar(120),
  `material_alias` varchar(120),
  `material_description` text,
  `material_weight` decimal(10,4),
  `material_weight_uom` INT(11),
  `material_length` decimal(10,4),
  `material_width` decimal(10,4),
  `material_height` decimal(10,4),
  `material_lwh_uom` INT(11),
  `default_loadtype` INT(11),
  `division` varchar(2),
  `material_base_uom` INT(11),
  `created_on` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
   PRIMARY KEY (`ddc_material_id`),
   KEY `vendor_id` (`vendor_id`),
   KEY `material_sku` (`material_sku`),
   KEY `division` (`division`),
   KEY `published` (`published`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 COMMENT='Used to store material master records' ;

CREATE TABLE IF NOT EXISTS `#__ddc_matloadtype` (
  `ddc_matloadtype_id` INT(11) NOT NULL AUTO_INCREMENT,
  `material_id` INT(11) NOT NULL,
  `load_type_code` varchar(8),
  `lt_description` text,
  `lt_weight` decimal(10,4),
  `lt_weight_uom` INT(11),
  `lt_length` decimal(10,4),
  `lt_width` decimal(10,4),
  `lt_height` decimal(10,4),
  `lt_lwh_uom` INT(11),
  `lt_layers_total` INT(11),
  `lt_layer_qty` INT(11),
  `created_on` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
   PRIMARY KEY (`ddc_matloadtype_id`),
   KEY `material_id` (`material_id`),
   KEY `published` (`published`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 COMMENT='Used to store material load type records' ;

CREATE TABLE IF NOT EXISTS `#__ddc_whsareas` (
  `ddc_whsarea_id` INT(11) NOT NULL AUTO_INCREMENT,
  `lt_layer_qty` INT(11),
  `created_on` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
   PRIMARY KEY (`ddc_matloadtype_id`),
   KEY `material_id` (`material_id`),
   KEY `published` (`published`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 COMMENT='Used to store material load type records' ;

CREATE TABLE IF NOT EXISTS `#__ddc_locations` (
  `ddc_whsarea_id` INT(11) NOT NULL AUTO_INCREMENT,
  `lt_layer_qty` INT(11),
  `created_on` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
   PRIMARY KEY (`ddc_matloadtype_id`),
   KEY `material_id` (`material_id`),
   KEY `published` (`published`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 COMMENT='Used to store material load type records' ;


CREATE TABLE IF NOT EXISTS `#__ddc_pickareas` (
  `ddc_whsarea_id` INT(11) NOT NULL AUTO_INCREMENT,
  `lt_layer_qty` INT(11),
  `created_on` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
   PRIMARY KEY (`ddc_matloadtype_id`),
   KEY `material_id` (`material_id`),
   KEY `published` (`published`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 COMMENT='Used to store material load type records' ;


CREATE TABLE IF NOT EXISTS `#__ddc_loctypes` (
  `ddc_whsarea_id` INT(11) NOT NULL AUTO_INCREMENT,
  `lt_layer_qty` INT(11),
  `created_on` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
   PRIMARY KEY (`ddc_matloadtype_id`),
   KEY `material_id` (`material_id`),
   KEY `published` (`published`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 COMMENT='Used to store material load type records' ;


CREATE TABLE IF NOT EXISTS `#__ddc_matassigns` (
  `ddc_whsarea_id` INT(11) NOT NULL AUTO_INCREMENT,
  `lt_layer_qty` INT(11),
  `created_on` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
   PRIMARY KEY (`ddc_matloadtype_id`),
   KEY `material_id` (`material_id`),
   KEY `published` (`published`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 COMMENT='Used to store material load type records' ;

