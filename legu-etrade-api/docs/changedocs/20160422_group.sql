
---------------------------------流程状态-----------------------------
CREATE TABLE `flow_status` (
  `id` char(22) NOT NULL,
  `flow_type` varchar(30) NOT NULL,
  `current_status` varchar(30) NOT NULL,
  `next_status` varchar(30) NOT NULL,
  `flag` varchar(30) NOT NULL,
  `remark` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Unique_FLOW_STATUS` (`flow_type`,`current_status`,`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='流程状态配置';



---------------------------------团购-----------------------------
CREATE TABLE `groups` (
  `id` char(22) NOT NULL,
  `group_goods_id` char(22) DEFAULT NULL COMMENT '团购商品id',
  `leader_uid` char(22) DEFAULT NULL COMMENT '团长',
  `start` datetime DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL COMMENT '状态 组建中、组建成功、组团失败、订单完成等',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='团购团';



---------------------------------参团用户-----------------------------
CREATE TABLE `group_user` (
  `id` char(22) NOT NULL,
  `group_id` char(22) DEFAULT NULL,
  `jointime` datetime DEFAULT NULL,
  `uid` char(22) DEFAULT NULL,
  `paid` decimal(8,2) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='参团用户';




---------------------------------团购订单-----------------------------
CREATE TABLE `group_order` (
  `id` char(22) NOT NULL,
  `group_id` char(22) DEFAULT NULL,
  `group_user_id` char(22) DEFAULT NULL,
  `oid` char(22) DEFAULT NULL COMMENT '订单id',
  `orderno` bigint(20) DEFAULT NULL COMMENT '订单号',
  `type` varchar(22) DEFAULT NULL COMMENT '指明是押金、尾款等',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='团购订单';



---------------------------------团购商品-----------------------------

CREATE TABLE `group_goods` (
  `id` char(22) NOT NULL,
  `skuid` char(22) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL COMMENT '成团时长',
  `deadline` datetime DEFAULT NULL COMMENT '团购商品团购活动截止日期',
  `minpeople` int(11) DEFAULT NULL COMMENT '最少成团人数',
  `commission` decimal(8,2) DEFAULT NULL COMMENT '团长佣金',
  `upperlimit` tinyint(4) DEFAULT NULL COMMENT '是否设置人数上限',
  `deposit` decimal(8,2) DEFAULT NULL COMMENT '订金',
  `show` tinyint(4) DEFAULT NULL COMMENT '是否显示',
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='团购商品';


---------------------------------团购商品价格-----------------------------
CREATE TABLE `group_goods_price_setting` (
  `id` char(22) NOT NULL,
  `floor` int(11) DEFAULT NULL COMMENT '人数门槛',
  `ceiling` int(11) DEFAULT NULL COMMENT '人数上限',
  `price` decimal(8,2) DEFAULT NULL COMMENT '当人数介于floor-ceiling间时的价格',
  `ggid` char(22) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='团购商品团购价，支持阶梯团';

