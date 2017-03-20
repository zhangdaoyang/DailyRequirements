CREATE TABLE `manager` (
  `id` varchar(22) NOT NULL,
  `mname` varchar(20) NOT NULL COMMENT '管理员登录名',
  `password` char(32) NOT NULL,
  `valid` tinyint(1) DEFAULT '1',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

