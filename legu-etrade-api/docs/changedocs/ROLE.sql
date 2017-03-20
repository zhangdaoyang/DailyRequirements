CREATE TABLE `role` (
  `id` char(22) NOT NULL,
  `code` varchar(20) NOT NULL DEFAULT '' COMMENT '角色编码',
  `name` varchar(20) NOT NULL COMMENT '角色名称',
  `valid` tinyint(1) DEFAULT '1' COMMENT '是否有效',
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Unique_role_code` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

