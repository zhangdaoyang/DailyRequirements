CREATE TABLE `postage` (
  `id` char(22) NOT NULL,
  `mid` char(22) NOT NULL COMMENT '商家id',
  `title` varchar(30) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'number' COMMENT '收费类型 number:按件计费 weight:按重量 volume:体积',
  `valid` tinyint(1) DEFAULT '1' COMMENT '是否有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='邮费模板';

CREATE TABLE `postage_detail` (
  `id` char(22) NOT NULL,
  `postage_id` char(22) NOT NULL,
  `transport_type` varchar(10) DEFAULT NULL COMMENT '运送方式 EMS 等',
  `free` tinyint(1) DEFAULT '1' COMMENT '是否包邮',
  `first_number` int(5) DEFAULT NULL,
  `first_weight` double(8,3) DEFAULT NULL,
  `first_volume` double(8,3) DEFAULT NULL,
  `first_cost` decimal(8,2) DEFAULT NULL,
  `next_number` int(5) DEFAULT NULL,
  `next_weight` double(8,3) DEFAULT NULL,
  `next_volume` double(8,3) DEFAULT NULL,
  `next_cost` decimal(8,2) DEFAULT NULL,
  `fit_area` varchar(255) DEFAULT 'default' COMMENT '适用地区 default为默认 其他的话为单独设定的城市',
  `valid` tinyint(1) DEFAULT '1' COMMENT '是否有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='邮费模板详情';

