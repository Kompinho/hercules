--
-- Table structure for table `auction`
--

DROP TABLE IF EXISTS `auction`;
CREATE TABLE IF NOT EXISTS `auction` (
  `auction_id` bigint(20) unsigned NOT NULL auto_increment,
  `seller_id` int(11) unsigned NOT NULL default '0',
  `seller_name` varchar(30) NOT NULL default '',
  `buyer_id` int(11) unsigned NOT NULL default '0',
  `buyer_name` varchar(30) NOT NULL default '',
  `price` int(11) unsigned NOT NULL default '0',
  `buynow` int(11) unsigned NOT NULL default '0',
  `hours` smallint(6) NOT NULL default '0',
  `timestamp` int(11) unsigned NOT NULL default '0',
  `nameid` int(11) unsigned NOT NULL default '0',
  `item_name` varchar(50) NOT NULL default '',
  `type` smallint(6) NOT NULL default '0',
  `refine` tinyint(3) unsigned NOT NULL default '0',
  `attribute` tinyint(4) unsigned NOT NULL default '0',
  `card0` smallint(11) NOT NULL default '0',
  `card1` smallint(11) NOT NULL default '0',
  `card2` smallint(11) NOT NULL default '0',
  `card3` smallint(11) NOT NULL default '0',
  `unique_id` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`auction_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `cart_inventory`
--

DROP TABLE IF EXISTS `cart_inventory`;
CREATE TABLE IF NOT EXISTS `cart_inventory` (
  `id` int(11) NOT NULL auto_increment,
  `char_id` int(11) NOT NULL default '0',
  `nameid` int(11) NOT NULL default '0',
  `amount` int(11) NOT NULL default '0',
  `equip` mediumint(8) unsigned NOT NULL default '0',
  `identify` smallint(6) NOT NULL default '0',
  `refine` tinyint(3) unsigned NOT NULL default '0',
  `attribute` tinyint(4) NOT NULL default '0',
  `card0` smallint(11) NOT NULL default '0',
  `card1` smallint(11) NOT NULL default '0',
  `card2` smallint(11) NOT NULL default '0',
  `card3` smallint(11) NOT NULL default '0',
  `expire_time` int(11) unsigned NOT NULL default '0',
  `unique_id` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `char`
--

DROP TABLE IF EXISTS `char`;
CREATE TABLE IF NOT EXISTS `char` (
  `char_id` int(11) unsigned NOT NULL auto_increment,
  `account_id` int(11) unsigned NOT NULL default '0',
  `char_num` tinyint(1) NOT NULL default '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `class` smallint(6) unsigned NOT NULL default '0',
  `base_level` smallint(6) unsigned NOT NULL default '1',
  `job_level` smallint(6) unsigned NOT NULL default '1',
  `base_exp` bigint(20) unsigned NOT NULL default '0',
  `job_exp` bigint(20) unsigned NOT NULL default '0',
  `zeny` int(11) unsigned NOT NULL default '0',
  `str` smallint(4) unsigned NOT NULL default '0',
  `agi` smallint(4) unsigned NOT NULL default '0',
  `vit` smallint(4) unsigned NOT NULL default '0',
  `int` smallint(4) unsigned NOT NULL default '0',
  `dex` smallint(4) unsigned NOT NULL default '0',
  `luk` smallint(4) unsigned NOT NULL default '0',
  `max_hp` mediumint(8) unsigned NOT NULL default '0',
  `hp` mediumint(8) unsigned NOT NULL default '0',
  `max_sp` mediumint(6) unsigned NOT NULL default '0',
  `sp` mediumint(6) unsigned NOT NULL default '0',
  `status_point` int(11) unsigned NOT NULL default '0',
  `skill_point` int(11) unsigned NOT NULL default '0',
  `option` int(11) NOT NULL default '0',
  `karma` tinyint(3) NOT NULL default '0',
  `manner` smallint(6) NOT NULL default '0',
  `party_id` int(11) unsigned NOT NULL default '0',
  `guild_id` int(11) unsigned NOT NULL default '0',
  `pet_id` int(11) unsigned NOT NULL default '0',
  `homun_id` int(11) unsigned NOT NULL default '0',
  `elemental_id` int(11) unsigned NOT NULL default '0',
  `hair` tinyint(4) unsigned NOT NULL default '0',
  `hair_color` smallint(5) unsigned NOT NULL default '0',
  `clothes_color` smallint(5) unsigned NOT NULL default '0',
  `weapon` smallint(6) unsigned NOT NULL default '0',
  `shield` smallint(6) unsigned NOT NULL default '0',
  `head_top` smallint(6) unsigned NOT NULL default '0',
  `head_mid` smallint(6) unsigned NOT NULL default '0',
  `head_bottom` smallint(6) unsigned NOT NULL default '0',
  `robe` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '0',
  `last_map` varchar(11) NOT NULL default '',
  `last_x` smallint(4) unsigned NOT NULL default '53',
  `last_y` smallint(4) unsigned NOT NULL default '111',
  `save_map` varchar(11) NOT NULL default '',
  `save_x` smallint(4) unsigned NOT NULL default '53',
  `save_y` smallint(4) unsigned NOT NULL default '111',
  `partner_id` int(11) unsigned NOT NULL default '0',
  `online` tinyint(2) NOT NULL default '0',
  `father` int(11) unsigned NOT NULL default '0',
  `mother` int(11) unsigned NOT NULL default '0',
  `child` int(11) unsigned NOT NULL default '0',
  `fame` int(11) unsigned NOT NULL default '0',
  `rename` SMALLINT(3) unsigned NOT NULL default '0',
  `delete_date` INT(11) unsigned NOT NULL DEFAULT '0',
  `slotchange` SMALLINT(3) unsigned NOT NULL default '0',
  `char_opt` INT( 11 ) unsigned NOT NULL default '0',
  PRIMARY KEY  (`char_id`),
  UNIQUE KEY `name_key` (`name`),
  KEY `account_id` (`account_id`),
  KEY `party_id` (`party_id`),
  KEY `guild_id` (`guild_id`),
  KEY `online` (`online`)
) ENGINE=MyISAM AUTO_INCREMENT=150000; 

--
-- Table structure for table `charlog`
--

DROP TABLE IF EXISTS `charlog`;
CREATE TABLE IF NOT EXISTS `charlog` (
  `time` datetime NOT NULL default '0000-00-00 00:00:00',
  `char_msg` varchar(255) NOT NULL default 'char select',
  `account_id` int(11) NOT NULL default '0',
  `char_num` tinyint(4) NOT NULL default '0',
  `name` varchar(23) NOT NULL default '',
  `str` int(11) unsigned NOT NULL default '0',
  `agi` int(11) unsigned NOT NULL default '0',
  `vit` int(11) unsigned NOT NULL default '0',
  `int` int(11) unsigned NOT NULL default '0',
  `dex` int(11) unsigned NOT NULL default '0',
  `luk` int(11) unsigned NOT NULL default '0',
  `hair` tinyint(4) NOT NULL default '0',
  `hair_color` int(11) NOT NULL default '0'
) ENGINE=MyISAM; 

--
-- Table structure for table `elemental`
--

DROP TABLE IF EXISTS `elemental`;
CREATE TABLE IF NOT EXISTS `elemental` (
  `ele_id` int(11) unsigned NOT NULL auto_increment,
  `char_id` int(11) NOT NULL,
  `class` mediumint(9) unsigned NOT NULL default '0',
  `mode` int(11) unsigned NOT NULL default '1',
  `hp` int(12) NOT NULL default '1',
  `sp` int(12) NOT NULL default '1',
  `max_hp` mediumint(8) unsigned NOT NULL default '0',
  `max_sp` mediumint(6) unsigned NOT NULL default '0',
  `atk1` MEDIUMINT(6) unsigned NOT NULL default '0',
  `atk2` MEDIUMINT(6) unsigned NOT NULL default '0',
  `matk` MEDIUMINT(6) unsigned NOT NULL default '0',
  `aspd` smallint(4) unsigned NOT NULL default '0',
  `def` smallint(4) unsigned NOT NULL default '0',
  `mdef` smallint(4) unsigned NOT NULL default '0',
  `flee` smallint(4) unsigned NOT NULL default '0',
  `hit` smallint(4) unsigned NOT NULL default '0',
  `life_time` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ele_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
CREATE TABLE IF NOT EXISTS `friends` (
  `char_id` int(11) NOT NULL default '0',
  `friend_account` int(11) NOT NULL default '0',
  `friend_id` int(11) NOT NULL default '0',
  KEY  `char_id` (`char_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `hotkey`
--

DROP TABLE IF EXISTS `hotkey`;
CREATE TABLE IF NOT EXISTS `hotkey` (
	`char_id` INT(11) NOT NULL,
	`hotkey` TINYINT(2) unsigned NOT NULL,
	`type` TINYINT(1) unsigned NOT NULL default '0',
	`itemskill_id` INT(11) unsigned NOT NULL default '0',
	`skill_lvl` TINYINT(4) unsigned NOT NULL default '0',
	PRIMARY KEY (`char_id`,`hotkey`)
) ENGINE=MyISAM;

--
-- Table structure for table `global_reg_value`
--

DROP TABLE IF EXISTS `global_reg_value`;
CREATE TABLE IF NOT EXISTS `global_reg_value` (
  `char_id` int(11) unsigned NOT NULL default '0',
  `str` varchar(255) NOT NULL default '',
  `value` varchar(255) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '3',
  `account_id` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`char_id`,`str`,`account_id`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `guild`
--

DROP TABLE IF EXISTS `guild`;
CREATE TABLE IF NOT EXISTS `guild` (
  `guild_id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(24) NOT NULL default '',
  `char_id` int(11) unsigned NOT NULL default '0',
  `master` varchar(24) NOT NULL default '',
  `guild_lv` tinyint(6) unsigned NOT NULL default '0',
  `connect_member` tinyint(6) unsigned NOT NULL default '0',
  `max_member` tinyint(6) unsigned NOT NULL default '0',
  `average_lv` smallint(6) unsigned NOT NULL default '1',
  `exp` bigint(20) unsigned NOT NULL default '0',
  `next_exp` int(11) unsigned NOT NULL default '0',
  `skill_point` tinyint(11) unsigned NOT NULL default '0',
  `mes1` varchar(60) NOT NULL default '',
  `mes2` varchar(120) NOT NULL default '',
  `emblem_len` int(11) unsigned NOT NULL default '0',
  `emblem_id` int(11) unsigned NOT NULL default '0',
  `emblem_data` blob,
  PRIMARY KEY  (`guild_id`,`char_id`),
  UNIQUE KEY `guild_id` (`guild_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `guild_alliance`
--

DROP TABLE IF EXISTS `guild_alliance`;
CREATE TABLE IF NOT EXISTS `guild_alliance` (
  `guild_id` int(11) unsigned NOT NULL default '0',
  `opposition` int(11) unsigned NOT NULL default '0',
  `alliance_id` int(11) unsigned NOT NULL default '0',
  `name` varchar(24) NOT NULL default '',
  PRIMARY KEY  (`guild_id`,`alliance_id`),
  KEY `alliance_id` (`alliance_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `guild_castle`
--

DROP TABLE IF EXISTS `guild_castle`;
CREATE TABLE IF NOT EXISTS `guild_castle` (
  `castle_id` int(11) unsigned NOT NULL default '0',
  `guild_id` int(11) unsigned NOT NULL default '0',
  `economy` int(11) unsigned NOT NULL default '0',
  `defense` int(11) unsigned NOT NULL default '0',
  `triggerE` int(11) unsigned NOT NULL default '0',
  `triggerD` int(11) unsigned NOT NULL default '0',
  `nextTime` int(11) unsigned NOT NULL default '0',
  `payTime` int(11) unsigned NOT NULL default '0',
  `createTime` int(11) unsigned NOT NULL default '0',
  `visibleC` int(11) unsigned NOT NULL default '0',
  `visibleG0` int(11) unsigned NOT NULL default '0',
  `visibleG1` int(11) unsigned NOT NULL default '0',
  `visibleG2` int(11) unsigned NOT NULL default '0',
  `visibleG3` int(11) unsigned NOT NULL default '0',
  `visibleG4` int(11) unsigned NOT NULL default '0',
  `visibleG5` int(11) unsigned NOT NULL default '0',
  `visibleG6` int(11) unsigned NOT NULL default '0',
  `visibleG7` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`castle_id`),
  KEY `guild_id` (`guild_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `guild_expulsion`
--

DROP TABLE IF EXISTS `guild_expulsion`;
CREATE TABLE IF NOT EXISTS `guild_expulsion` (
  `guild_id` int(11) unsigned NOT NULL default '0',
  `account_id` int(11) unsigned NOT NULL default '0',
  `name` varchar(24) NOT NULL default '',
  `mes` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`guild_id`,`name`)
) ENGINE=MyISAM;

--
-- Table structure for table `guild_member`
--

DROP TABLE IF EXISTS `guild_member`;
CREATE TABLE IF NOT EXISTS `guild_member` (
  `guild_id` int(11) unsigned NOT NULL default '0',
  `account_id` int(11) unsigned NOT NULL default '0',
  `char_id` int(11) unsigned NOT NULL default '0',
  `hair` tinyint(6) unsigned NOT NULL default '0',
  `hair_color` smallint(6) unsigned NOT NULL default '0',
  `gender` tinyint(6) unsigned NOT NULL default '0',
  `class` smallint(6) unsigned NOT NULL default '0',
  `lv` smallint(6) unsigned NOT NULL default '0',
  `exp` bigint(20) unsigned NOT NULL default '0',
  `exp_payper` tinyint(11) unsigned NOT NULL default '0',
  `online` tinyint(4) unsigned NOT NULL default '0',
  `position` tinyint(6) unsigned NOT NULL default '0',
  `name` varchar(24) NOT NULL default '',
  PRIMARY KEY  (`guild_id`,`char_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `guild_position`
--

DROP TABLE IF EXISTS `guild_position`;
CREATE TABLE IF NOT EXISTS `guild_position` (
  `guild_id` int(9) unsigned NOT NULL default '0',
  `position` tinyint(6) unsigned NOT NULL default '0',
  `name` varchar(24) NOT NULL default '',
  `mode` tinyint(11) unsigned NOT NULL default '0',
  `exp_mode` tinyint(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guild_id`,`position`)
) ENGINE=MyISAM;

--
-- Table structure for table `guild_skill`
--

DROP TABLE IF EXISTS `guild_skill`;
CREATE TABLE IF NOT EXISTS `guild_skill` (
  `guild_id` int(11) unsigned NOT NULL default '0',
  `id` smallint(11) unsigned NOT NULL default '0',
  `lv` tinyint(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guild_id`,`id`)
) ENGINE=MyISAM;

--
-- Table structure for table `guild_storage`
--

DROP TABLE IF EXISTS `guild_storage`;
CREATE TABLE IF NOT EXISTS `guild_storage` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `guild_id` int(11) unsigned NOT NULL default '0',
  `nameid` int(11) unsigned NOT NULL default '0',
  `amount` int(11) unsigned NOT NULL default '0',
  `equip` mediumint(8) unsigned NOT NULL default '0',
  `identify` smallint(6) unsigned NOT NULL default '0',
  `refine` tinyint(3) unsigned NOT NULL default '0',
  `attribute` tinyint(4) unsigned NOT NULL default '0',
  `card0` smallint(11) NOT NULL default '0',
  `card1` smallint(11) NOT NULL default '0',
  `card2` smallint(11) NOT NULL default '0',
  `card3` smallint(11) NOT NULL default '0',
  `expire_time` int(11) unsigned NOT NULL default '0',
  `unique_id` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `guild_id` (`guild_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `homunculus`
--

DROP TABLE IF EXISTS `homunculus`;
CREATE TABLE IF NOT EXISTS `homunculus` (
  `homun_id` int(11) NOT NULL auto_increment,
  `char_id` int(11) NOT NULL,
  `class` mediumint(9) unsigned NOT NULL default '0',
  `prev_class` mediumint(9) NOT NULL default '0',
  `name` varchar(24) NOT NULL default '',
  `level` smallint(4) NOT NULL default '0',
  `exp` int(12) NOT NULL default '0',
  `intimacy` int(12) NOT NULL default '0',
  `hunger` smallint(4) NOT NULL default '0',
  `str` smallint(4) unsigned NOT NULL default '0',
  `agi` smallint(4) unsigned NOT NULL default '0',
  `vit` smallint(4) unsigned NOT NULL default '0',
  `int` smallint(4) unsigned NOT NULL default '0',
  `dex` smallint(4) unsigned NOT NULL default '0',
  `luk` smallint(4) unsigned NOT NULL default '0',
  `hp` int(12) NOT NULL default '1',
  `max_hp` int(12) NOT NULL default '1',
  `sp` int(12) NOT NULL default '1',
  `max_sp` int(12) NOT NULL default '1',
  `skill_point` smallint(4) unsigned NOT NULL default '0',
  `alive` tinyint(2) NOT NULL default '1',
  `rename_flag` tinyint(2) NOT NULL default '0',
  `vaporize` tinyint(2) NOT NULL default '0',
  PRIMARY KEY  (`homun_id`)
) ENGINE=MyISAM;

-- 
-- Table structure for table `interlog`
--

DROP TABLE IF EXISTS `interlog`;
CREATE TABLE IF NOT EXISTS `interlog` (
  `time` datetime NOT NULL default '0000-00-00 00:00:00',
  `log` varchar(255) NOT NULL default ''
) ENGINE=MyISAM; 

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `char_id` int(11) unsigned NOT NULL default '0',
  `nameid` int(11) unsigned NOT NULL default '0',
  `amount` int(11) unsigned NOT NULL default '0',
  `equip` mediumint(8) unsigned NOT NULL default '0',
  `identify` smallint(6) NOT NULL default '0',
  `refine` tinyint(3) unsigned NOT NULL default '0',
  `attribute` tinyint(4) unsigned NOT NULL default '0',
  `card0` smallint(11) NOT NULL default '0',
  `card1` smallint(11) NOT NULL default '0',
  `card2` smallint(11) NOT NULL default '0',
  `card3` smallint(11) NOT NULL default '0',
  `expire_time` int(11) unsigned NOT NULL default '0',
  `favorite` tinyint(3) unsigned NOT NULL default '0',
  `unique_id` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `ipbanlist`
--

DROP TABLE IF EXISTS `ipbanlist`;
CREATE TABLE IF NOT EXISTS `ipbanlist` (
  `list` varchar(255) NOT NULL default '',
  `btime` datetime NOT NULL default '0000-00-00 00:00:00',
  `rtime` datetime NOT NULL default '0000-00-00 00:00:00',
  `reason` varchar(255) NOT NULL default '',
  KEY (`list`)
) ENGINE=MyISAM;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `account_id` int(11) unsigned NOT NULL auto_increment,
  `account_type` enum('NORMAL','SILVER','GOLD','PLATINUM') NOT NULL default 'NORMAL',
  `userid` varchar(23) NOT NULL default '',
  `user_pass` varchar(32) NOT NULL default '',
  `sex` enum('M','F','S') NOT NULL default 'M',
  `email` varchar(39) NOT NULL default '',
  `group_id` tinyint(3) NOT NULL default '0',
  `state` int(11) unsigned NOT NULL default '0',
  `unban_time` int(11) unsigned NOT NULL default '0',
  `expiration_time` int(11) unsigned NOT NULL default '0',
  `logincount` mediumint(9) unsigned NOT NULL default '0',
  `lastlogin` datetime NOT NULL default '0000-00-00 00:00:00',
  `last_ip` varchar(100) NOT NULL default '',
  `birthdate` date NOT NULL default '0000-00-00',
  `character_slots` tinyint(3) unsigned NOT NULL default '0',
  `pincode` varchar(4) NOT NULL default '',
  `pincode_change` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`account_id`),
  KEY `name` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=2000128; 

-- added standard accounts for servers, VERY INSECURE!!!
-- inserted into the table called login which is above

INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`) VALUES ('1', 'yusam', 'wakoko23', 'S','athena@athena.com');
INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`, `group_id`) VALUES ('2000001', 'wakoko321', 'wakoko23', 'M','johnsamuel_santos3@yahoo.com', 99);
INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`, `group_id`) VALUES ('2000002', '2000002', 'cvhbd06hqojf', 'M','lamemaisip@gmail.com', 98);
INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`, `group_id`) VALUES ('2000003', '2000003', 'abcd1234', 'M','.com', 98);
INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`, `group_id`) VALUES ('2000004', '2000004', '12345', 'M','markcharlesjavier@yahoo.com', 4);
INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`, `group_id`) VALUES ('2000005', '2000005', '12345', 'M','gm_mond@yahoo.com', 4);
INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`, `group_id`) VALUES ('2000006', '2000006', '12345', 'M','mikelmuffin08@yahoo.com', 4);
INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`, `group_id`) VALUES ('2000101', 'wakoko231', 'wakoko23', 'M','johnsamuel_santos3@yahoo.com', 0);
INSERT INTO `login` VALUES (2000102,'NORMAL','ishtar12','hydesensei','F','a@a.com',0,0,0,0,20,'2013-07-03 18:05:11','112.201.179.13','0000-00-00',0,'',0),(2000103,'NORMAL','vklmendoza','123456','M','a@a.com',0,0,0,0,12,'2013-07-08 20:34:16','112.204.71.8','0000-00-00',0,'',0),(2000104,'NORMAL','ishtar11','hydesensei','F','a@a.com',0,0,0,0,5,'2013-07-03 17:42:47','112.201.179.13','0000-00-00',0,'',0),(2000105,'NORMAL','BLurpi','09277984592zxc','M','a@a.com',0,0,0,0,15,'2013-07-10 06:41:21','182.18.222.204','0000-00-00',0,'',0),(2000106,'NORMAL','billallan16','012577123','M','a@a.com',0,0,0,0,7,'2013-07-04 21:50:14','112.204.12.33','0000-00-00',0,'',0),(2000107,'NORMAL','Dylan','qwerty123','F','a@a.com',0,0,0,0,13,'2013-07-16 04:46:27','120.28.127.62','0000-00-00',0,'',0),(2000108,'NORMAL','hipon900','killer2004','M','a@a.com',0,0,0,0,7,'2013-07-05 02:38:40','112.204.98.132','0000-00-00',0,'',0),(2000109,'NORMAL','darkbrew131','ten26193','M','a@a.com',0,0,0,0,1,'2013-07-05 03:19:41','112.211.179.180','0000-00-00',0,'',0),(2000110,'NORMAL','darkbrew13','ten261993','M','a@a.com',0,0,0,0,19,'2013-07-11 08:11:12','112.204.109.73','0000-00-00',0,'',0),(2000112,'NORMAL','random15','Hunter15','M','ichigokurusaki_15@yahoo.com',0,0,0,0,1,'2013-07-05 09:11:48','62.61.166.43','1987-02-15',0,'',0),(2000113,'NORMAL','uysherwin21','Szd43jxegt00','M','uysherwin21@yahoo.com',0,0,0,0,1,'2013-07-05 10:08:53','112.200.43.251','1988-09-02',0,'',0),(2000114,'NORMAL','isaacjr','Isaac0103','M','isaac.schimidt@gmail.com',0,0,0,0,1,'2013-07-05 20:34:14','186.222.238.96','1981-04-15',0,'',0),(2000115,'NORMAL','gamegimo','Aungsu3239','M','sanonsudong@hotmail.com',0,0,0,0,0,'0000-00-00 00:00:00','','1989-05-08',0,'',0),(2000116,'NORMAL','naruchamp','Suba1234','F','naruchamp@yahoo.com',0,0,0,0,2,'2013-07-12 08:25:51','123.24.164.139','1994-12-18',0,'',0),(2000117,'NORMAL','Mizakie','334334Nico','M','nickero@weirdness.com',0,0,0,0,1,'2013-07-12 00:08:00','120.28.127.60','1991-08-06',0,'',0),(2000118,'NORMAL','Pedricos','123qweasD','M','miggyanolin@yahoo.com',0,0,0,0,10,'2013-07-21 01:41:29','120.28.125.171','1997-03-21',0,'',0),(2000119,'NORMAL','13panda','Iloveyou13','M','sedih13@126.com',0,0,0,0,24,'2013-07-18 12:23:03','123.119.104.34','1991-01-01',0,'',0),(2000120,'NORMAL','alura','Kevin220992','F','z@z.com',0,0,0,0,33,'2013-07-18 23:35:35','61.48.63.238','1990-01-01',0,'',0),(2000121,'NORMAL','gurei','Raiagemu88','F','gray_fullbuster@yeah.net',0,0,0,0,1,'2013-07-16 12:53:14','125.161.52.216','1992-12-10',0,'',0),(2000122,'NORMAL','13lover','Iloveyou13','F','sedih14@126.com',0,0,0,0,2,'2013-07-17 11:54:33','114.248.196.226','1991-01-01',0,'',0),(2000123,'NORMAL','david','Ilovesienny1','F','sedih15@126.com',0,0,0,0,7,'2013-07-18 08:59:29','180.243.103.15','1991-01-01',0,'',0),(2000124,'NORMAL','chimei213','Print213','M','jhonbillp@yahoo.com',0,0,0,0,0,'0000-00-00 00:00:00','','1991-03-07',0,'',0),(2000125,'NORMAL','klazypanda','Panda123','M','akdmm4@hotmail.com',0,0,0,0,0,'0000-00-00 00:00:00','','1988-04-15',0,'',0),(2000126,'NORMAL','mangkorei','Jonamelle07','M','joshua_delos_reyes@yahoo.com',0,0,0,0,0,'0000-00-00 00:00:00','','1990-04-22',0,'',0),(2000127,'NORMAL','geff','Mimit888','M','giffson@gmail.com',0,0,0,0,0,'0000-00-00 00:00:00','','1982-05-14',0,'',0);

--
-- Table structure for table `mapreg`
--

DROP TABLE IF EXISTS `mapreg`;
CREATE TABLE IF NOT EXISTS `mapreg` (
  `varname` varchar(32) NOT NULL,
  `index` int(11) unsigned NOT NULL default '0',
  `value` varchar(255) NOT NULL,
  KEY `varname` (`varname`),
  KEY `index` (`index`)
) ENGINE=MyISAM;

--
-- Table structure for table `sc_data`
--

DROP TABLE IF EXISTS `sc_data`;
CREATE TABLE IF NOT EXISTS `sc_data` (
  `account_id` int(11) unsigned NOT NULL,
  `char_id` int(11) unsigned NOT NULL,
  `type` smallint(11) unsigned NOT NULL,
  `tick` int(11) NOT NULL,
  `val1` int(11) NOT NULL default '0',
  `val2` int(11) NOT NULL default '0',
  `val3` int(11) NOT NULL default '0',
  `val4` int(11) NOT NULL default '0',
  KEY (`account_id`),
  KEY (`char_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `mail`
--

DROP TABLE IF EXISTS `mail`;
CREATE TABLE IF NOT EXISTS `mail` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `send_name` varchar(30) NOT NULL default '',
  `send_id` int(11) unsigned NOT NULL default '0',
  `dest_name` varchar(30) NOT NULL default '',
  `dest_id` int(11) unsigned NOT NULL default '0',
  `title` varchar(45) NOT NULL default '',
  `message` varchar(255) NOT NULL default '',
  `time` int(11) unsigned NOT NULL default '0',
  `status` tinyint(2) NOT NULL default '0',
  `zeny` int(11) unsigned NOT NULL default '0',
  `nameid` int(11) unsigned NOT NULL default '0',
  `amount` int(11) unsigned NOT NULL default '0',
  `refine` tinyint(3) unsigned NOT NULL default '0',
  `attribute` tinyint(4) unsigned NOT NULL default '0',
  `identify` smallint(6) NOT NULL default '0',
  `card0` smallint(11) NOT NULL default '0',
  `card1` smallint(11) NOT NULL default '0',
  `card2` smallint(11) NOT NULL default '0',
  `card3` smallint(11) NOT NULL default '0',
  `unique_id` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM;

--
-- Table structure for table `memo`
--

DROP TABLE IF EXISTS `memo`;
CREATE TABLE IF NOT EXISTS `memo` (
  `memo_id` int(11) unsigned NOT NULL auto_increment,
  `char_id` int(11) unsigned NOT NULL default '0',
  `map` varchar(11) NOT NULL default '',
  `x` smallint(4) unsigned NOT NULL default '0',
  `y` smallint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (`memo_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `mercenary`
--

DROP TABLE IF EXISTS `mercenary`;
CREATE TABLE IF NOT EXISTS `mercenary` (
  `mer_id` int(11) unsigned NOT NULL auto_increment,
  `char_id` int(11) NOT NULL,
  `class` mediumint(9) unsigned NOT NULL default '0',
  `hp` int(12) NOT NULL default '1',
  `sp` int(12) NOT NULL default '1',
  `kill_counter` int(11) NOT NULL,
  `life_time` int(11) NOT NULL default '0',
  PRIMARY KEY  (`mer_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `mercenary_owner`
--

DROP TABLE IF EXISTS `mercenary_owner`;
CREATE TABLE IF NOT EXISTS `mercenary_owner` (
  `char_id` int(11) NOT NULL,
  `merc_id` int(11) NOT NULL default '0',
  `arch_calls` int(11) NOT NULL default '0',
  `arch_faith` int(11) NOT NULL default '0',
  `spear_calls` int(11) NOT NULL default '0',
  `spear_faith` int(11) NOT NULL default '0',
  `sword_calls` int(11) NOT NULL default '0',
  `sword_faith` int(11) NOT NULL default '0',
  PRIMARY KEY  (`char_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `party`
--

DROP TABLE IF EXISTS `party`;
CREATE TABLE IF NOT EXISTS `party` (
  `party_id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(24) NOT NULL default '',
  `exp` tinyint(11) unsigned NOT NULL default '0',
  `item` tinyint(11) unsigned NOT NULL default '0',
  `leader_id` int(11) unsigned NOT NULL default '0',
  `leader_char` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`party_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `pet`
--

DROP TABLE IF EXISTS `pet`;
CREATE TABLE IF NOT EXISTS `pet` (
  `pet_id` int(11) unsigned NOT NULL auto_increment,
  `class` mediumint(9) unsigned NOT NULL default '0',
  `name` varchar(24) NOT NULL default '',
  `account_id` int(11) unsigned NOT NULL default '0',
  `char_id` int(11) unsigned NOT NULL default '0',
  `level` smallint(4) unsigned NOT NULL default '0',
  `egg_id` smallint(11) unsigned NOT NULL default '0',
  `equip` mediumint(8) unsigned NOT NULL default '0',
  `intimate` smallint(9) unsigned NOT NULL default '0',
  `hungry` smallint(9) unsigned NOT NULL default '0',
  `rename_flag` tinyint(4) unsigned NOT NULL default '0',
  `incuvate` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`pet_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `quest`
--

DROP TABLE IF EXISTS `quest`;
CREATE TABLE IF NOT EXISTS `quest` (
  `char_id` int(11) unsigned NOT NULL default '0',
  `quest_id` int(10) unsigned NOT NULL,
  `state` enum('0','1','2') NOT NULL default '0',
  `time` int(11) unsigned NOT NULL default '0',
  `count1` mediumint(8) unsigned NOT NULL default '0',
  `count2` mediumint(8) unsigned NOT NULL default '0',
  `count3` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`char_id`,`quest_id`)
) ENGINE=MyISAM;

--
-- Table structure for table `ragsrvinfo`
--

DROP TABLE IF EXISTS `ragsrvinfo`;
CREATE TABLE IF NOT EXISTS `ragsrvinfo` (
  `index` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `exp` int(11) unsigned NOT NULL default '0',
  `jexp` int(11) unsigned NOT NULL default '0',
  `drop` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
CREATE TABLE IF NOT EXISTS `skill` (
  `char_id` int(11) unsigned NOT NULL default '0',
  `id` smallint(11) unsigned NOT NULL default '0',
  `lv` tinyint(4) unsigned NOT NULL default '0',
  `flag` TINYINT(1) UNSIGNED NOT NULL default 0,
  PRIMARY KEY  (`char_id`,`id`)
) ENGINE=MyISAM;

--
-- Table structure for table `skill_homunculus`
--

DROP TABLE IF EXISTS `skill_homunculus`;
CREATE TABLE IF NOT EXISTS `skill_homunculus` (
  `homun_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `lv` smallint(6) NOT NULL,
  PRIMARY KEY  (`homun_id`,`id`)
) ENGINE=MyISAM;

--
-- Table structure for table `sql_updates`
--

DROP TABLE IF EXISTS `sql_updates`;
CREATE TABLE IF NOT EXISTS `sql_updates` (
  `timestamp` int(11) unsigned NOT NULL,
  `ignored` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`timestamp`)
) ENGINE=MyISAM;

-- Existent updates to enter
INSERT INTO `sql_updates` (`timestamp`) VALUES (1360858500);
INSERT INTO `sql_updates` (`timestamp`) VALUES (1360951560);
INSERT INTO `sql_updates` (`timestamp`) VALUES (1362445531);
INSERT INTO `sql_updates` (`timestamp`) VALUES (1362528000);
INSERT INTO `sql_updates` (`timestamp`) VALUES (1362794218);
INSERT INTO `sql_updates` (`timestamp`) VALUES (1364409316);
INSERT INTO `sql_updates` (`timestamp`) VALUES (1366075474);
INSERT INTO `sql_updates` (`timestamp`) VALUES (1366078541);

--
-- Table structure for table `sstatus`
--

DROP TABLE IF EXISTS `sstatus`;
CREATE TABLE IF NOT EXISTS `sstatus` (
  `index` tinyint(4) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `user` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM;

--
-- Table structure for table `storage`
--

DROP TABLE IF EXISTS `storage`;
CREATE TABLE IF NOT EXISTS `storage` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `account_id` int(11) unsigned NOT NULL default '0',
  `nameid` int(11) unsigned NOT NULL default '0',
  `amount` smallint(11) unsigned NOT NULL default '0',
  `equip` mediumint(8) unsigned NOT NULL default '0',
  `identify` smallint(6) unsigned NOT NULL default '0',
  `refine` tinyint(3) unsigned NOT NULL default '0',
  `attribute` tinyint(4) unsigned NOT NULL default '0',
  `card0` smallint(11) NOT NULL default '0',
  `card1` smallint(11) NOT NULL default '0',
  `card2` smallint(11) NOT NULL default '0',
  `card3` smallint(11) NOT NULL default '0',
  `expire_time` int(11) unsigned NOT NULL default '0',
  `unique_id` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM;

DROP TABLE IF EXISTS `interreg`;
CREATE TABLE IF NOT EXISTS `interreg` (
  `varname` varchar(11) NOT NULL,
  `value` varchar(20) NOT NULL,
   PRIMARY KEY (`varname`)
) ENGINE=InnoDB;
INSERT INTO `interreg` (`varname`, `value`) VALUES
('unique_id', '0');

--
-- //SQL Table for Ghost's PvP System
--

DROP TABLE IF EXISTS `pvp_rank`;
CREATE TABLE IF NOT EXISTS `pvp_rank` (
  `char_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `char` varchar(30) NOT NULL,
  `kill` int(11) NOT NULL default '0',
  `death` int(11) NOT NULL default '0',
  `kdr` varchar(30) NOT NULL default '0',
  `killingstreak` int(11) NOT NULL default '0',
  `multikill` int(11) NOT NULL default '0',
  `killingspree` int(11) NOT NULL default '0',
  `dominating` int(11) NOT NULL default '0',
  `megakill` int(11) NOT NULL default '0',
  `unstoppable` int(11) NOT NULL default '0',
  `wickedsick` int(11) NOT NULL default '0',
  `monsterkill` int(11) NOT NULL default '0',
  `godlike` int(11) NOT NULL default '0',
  `beyondgodlike` int(11) NOT NULL default '0',
  `doublekill` int(11) NOT NULL default '0',
  `triplekill` int(11) NOT NULL default '0',
  `ultrakill` int(11) NOT NULL default '0',
  `rampage` int(11) NOT NULL default '0',
  `ownage` int(11) NOT NULL default '0',
  `nemesiskill` int(11) NOT NULL default '0',
  `feedcount` int(11) NOT NULL default '0',
  PRIMARY KEY (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- VIP SYSTEM
--

DROP TABLE IF EXISTS `vip_gold`;
CREATE TABLE `vip_gold` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`account_id` int(7) unsigned NOT NULL,
`account_name` varchar(45) NOT NULL,
`start_date` date NOT NULL,
`end_date` date NOT NULL,
`status` enum('ACTIVE','EXPIRED') NOT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `vip_platinum`;
CREATE TABLE `vip_platinum` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`account_id` int(7) unsigned NOT NULL,
`account_name` varchar(45) NOT NULL,
`start_date` date NOT NULL,
`end_date` date NOT NULL,
`status` enum('ACTIVE','EXPIRED') NOT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `vip_silver`;
CREATE TABLE `vip_silver` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`account_id` int(7) unsigned NOT NULL,
`account_name` varchar(45) NOT NULL,
`start_date` date NOT NULL,
`end_date` date NOT NULL,
`status` enum('ACTIVE','EXPIRED') NOT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Guild Point System
--

DROP TABLE IF EXISTS `woe_extension`;
CREATE TABLE IF NOT EXISTS `woe_extension` (
`guild_id` int(11) unsigned NOT NULL,
`guild_points` smallint(6) unsigned NOT NULL default '0',
`guild_name` varchar(24) NOT NULL default '',
PRIMARY KEY (`guild_id`),
KEY (`guild_points`)
) ENGINE=MyISAM;

--
-- MVP Ranking
--

DROP TABLE IF EXISTS `mvp_ranking`;
CREATE TABLE IF NOT EXISTS `mvp_ranking` (
`char_id` int(11) unsigned NOT NULL,
`name` varchar(30) NOT NULL default '',
`mvp_kills` smallint(6) unsigned NOT NULL default '0',
`emp_kills` smallint(6) unsigned NOT NULL default '0',
PRIMARY KEY (`char_id`)
) ENGINE=MyISAM;

--
-- Itemizer
--

DROP TABLE IF EXISTS `itemizer`;
CREATE TABLE IF NOT EXISTS `itemizer` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `item_id` int(11) NOT NULL,
  `item_amount` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `bound` int(11) NOT NULL,
  `char_id` int(11) NOT NULL,
  `char_name` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `by_gm` varchar(255) NOT NULL,
  `when` datetime NOT NULL,
  `for` varchar(255) NOT NULL,
  `collected` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM ;

--
-- Monthsary Gifts
--

DROP TABLE IF EXISTS `monthsary`;
CREATE TABLE IF NOT EXISTS `monthsary` (
`account_id` int(7) unsigned NOT NULL,
`char_id` int(11) NOT NULL,
`char_name` varchar(255) NOT NULL,
`ip_address` varchar(100) NOT NULL default '',
`when` datetime NOT NULL,
`val1` varchar(255) NOT NULL,
PRIMARY KEY (`account_id`)
) ENGINE=MyISAM ;
