CREATE TABLE `sales_userrelationship` (
  `id` char(22) NOT NULL COMMENT '主键id',
  `sid` varchar(22) DEFAULT NULL COMMENT '分销系统id',
  `uid` char(22) DEFAULT NULL COMMENT 'p2p系统用户id',
  `realname` varchar(50) DEFAULT NULL COMMENT '真实姓名',
  `cardid` varchar(18) DEFAULT NULL COMMENT '身份证号码(18/15)',
  `realnameremark` varchar(1000) DEFAULT NULL COMMENT '实名认证备注',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `phoneremark` varchar(1000) DEFAULT NULL COMMENT '手机号备注',
  `password` varchar(32) DEFAULT NULL COMMENT '用户密码',
  `passwordremark` varchar(1000) DEFAULT NULL COMMENT '密码备注',
  PRIMARY KEY (`id`),
  KEY `index_uid_in_ur` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1365;


CREATE TABLE `asyn_defined` (
  `id` varchar(22) NOT NULL,
  `service_name` varchar(30) NOT NULL COMMENT '服务类',
  `valid` tinyint(1) DEFAULT '1',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='异步进程定义表';

CREATE TABLE `asyn_log` (
  `id` char(22) NOT NULL,
  `schedule_id` char(22) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `asyn_param` (
  `id` char(22) NOT NULL,
  `schedule_id` char(22) NOT NULL,
  `key` varchar(20) NOT NULL,
  `value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_asyn_log_schedule` (`schedule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `asyn_schedule` (
  `id` char(22) NOT NULL,
  `service_name` varchar(30) NOT NULL,
  `uid` char(22) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `remark` varchar(22) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `asyn_schedule_history` (
  `id` char(22) NOT NULL,
  `service_name` varchar(40) DEFAULT NULL,
  `uid` char(22) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `finishtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='异步进程历史表';



