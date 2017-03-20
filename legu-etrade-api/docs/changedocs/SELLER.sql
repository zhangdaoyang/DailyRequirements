CREATE TABLE `seller` (
  `id` varchar(22) NOT NULL,
  `sname` varchar(20) NOT NULL COMMENT '登录名',
  `password` char(32) NOT NULL,
  `mid` char(22) DEFAULT NULL COMMENT '商铺id',
  `valid` tinyint(1) DEFAULT '1' COMMENT '是否有效',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

