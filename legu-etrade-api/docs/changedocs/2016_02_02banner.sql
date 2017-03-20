CREATE TABLE `banner` (
  `id` char(22) NOT NULL,
  `type` varchar(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `target_url` varchar(255) NOT NULL,
  `wechat_image` varchar(255) DEFAULT NULL,
  `wechat_target_url` varchar(255) DEFAULT NULL,
  `alt` varchar(20) DEFAULT NULL,
  `order` int(3) DEFAULT NULL,
  `valid` tinyint(1) DEFAULT '1',
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;