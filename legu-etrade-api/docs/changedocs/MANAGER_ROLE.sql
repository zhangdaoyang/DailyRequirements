CREATE TABLE `manager_role` (
  `id` char(22) NOT NULL,
  `role_id` char(22) NOT NULL,
  `uid` char(22) NOT NULL,
  `valid` tinyint(1) DEFAULT '1',
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

