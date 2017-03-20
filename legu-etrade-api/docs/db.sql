------------------------------------用户表-------------------------------------
CREATE TABLE `jingyun_etrade`.`users` (
  `id` CHAR(22) NOT NULL,
  `username` VARCHAR(20) NOT NULL COMMENT '4-20位字母，数字。并且必须已字母开头',
  `mobile` CHAR(11) NULL,
  `email` VARCHAR(50) NULL COMMENT '长度为4-50位的邮件地址',
  `nickname` VARCHAR(20) NULL COMMENT '4-20位的昵称',
  `password` VARCHAR(20) NULL COMMENT '密码8-20位字母，数字，字符',
  `tradepwd` VARCHAR(20) NULL COMMENT '交易密码8-20位字母，数字，字符',
  `locked` TINYINT(1) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  UNIQUE INDEX `mobile_UNIQUE` (`mobile` ASC),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC))
COMMENT = '用户名不能为空，手机与邮箱必须有一个不能为空';


------------------------------------用户信息-------------------------------------
CREATE TABLE `jingyun_etrade`.`users_info` (
  `uid` CHAR(22) NOT NULL,
  `birthday` DATETIME NULL,
  `marriage` TINYINT NULL,
  `gener` TINYINT NULL,
  `country` INT NULL COMMENT '外键引用',
  `province` INT NULL,
  `city` INT NULL,
  `address` VARCHAR(50) NULL,
  `education` TINYINT NULL,
  `job` TINYINT NULL,
  `income` TINYINT NULL,
  `avatar` VARCHAR(255) NULL,
  `regtime` DATETIME NULL,
  `regip` INT NULL,
  `regdevice` TINYINT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE INDEX `uid_UNIQUE` (`uid` ASC));

  
------------------------------------订单表-------------------------------------
CREATE TABLE `orders` (
  `id` char(22) NOT NULL,
  `orderno` bigint(20) NOT NULL,
  `uid` char(22) NOT NULL,
  `mid` char(22) NOT NULL COMMENT '商家',
  `mname` varchar(50) DEFAULT NULL,
  `addtime` datetime NOT NULL,
  `paytype_id` char(22) DEFAULT NULL COMMENT '支付方式id，用来索引支付方式表paytype',
  `paytype_name` varchar(20) DEFAULT NULL COMMENT '支付方式名称，冗余字段，用来订单查询时的显示',
  `receiver` varchar(20) DEFAULT NULL COMMENT '收货人，来自收货地址，冗余字段，用户订单显示',
  `address_id` char(22) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `status_code` varchar(12) NOT NULL COMMENT '订单状态code，索引order_status_desc表',
  `status_name` varchar(20) DEFAULT NULL COMMENT '状态名称，冗余字段，用来订单查询时的显示',
  `postage` decimal(8,2) DEFAULT NULL COMMENT '订单邮费',
  `note` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderno_UNIQUE` (`orderno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


------------------------------------支付方式表-------------------------------------
CREATE TABLE `jingyun_etrade`.`pay_type` (
  `id` CHAR(22) NOT NULL,
  `name` VARCHAR(20) NULL,
  `code` VARCHAR(12) NULL,
  `desciption` VARCHAR(255) NULL,
  `online` TINYINT NULL COMMENT '是否是在线支付',
  `url` VARCHAR(512) NULL COMMENT '支付url',
  `disable` TINYINT NULL,
  PRIMARY KEY (`id`))
COMMENT = '支付方式表';

------------------------------------配送方式表-------------------------------------
CREATE TABLE `jingyun_etrade`.`delivery_type` (
  `id` CHAR(22) NOT NULL,
  `name` VARCHAR(20) NULL,
  `code` VARCHAR(12) NULL,
  `description` VARCHAR(255) NULL,
  `disable` TINYINT NULL,
  PRIMARY KEY (`id`));


------------------------------------订单详情表-------------------------------------
CREATE TABLE `order_goods` (
  `id` char(22) NOT NULL,
  `oid` char(22) NOT NULL,
  `gid` char(22) NOT NULL,
  `count` int(11) DEFAULT NULL COMMENT '商品数量',
  `price` decimal(8,2) DEFAULT NULL COMMENT '订单生成时的商品价格，作为商品价格快照',
  `points` int(11) DEFAULT NULL COMMENT '赠送积分',
  `postage` decimal(8,2) DEFAULT NULL COMMENT '邮费',
  `note` varchar(255) DEFAULT NULL,
  `status_id` char(22) DEFAULT NULL COMMENT '该商品的订单状态，用来支持某订单中有多件商品，但是买件只退某件商品的情况',
  `payout` decimal(8,2) DEFAULT NULL COMMENT '实际支付金额=下单时的订单价格-下单时的优惠价格+运费(price-reduce+postage)',
  `reduce` decimal(8,2) DEFAULT NULL COMMENT '下单时的优惠价格，优惠快照',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单详情表，描述该订单中包含哪些商品，以及商品价格，邮费，优惠价格等订单快照';


------------------------------------订单追踪表-------------------------------------
CREATE TABLE `jingyun_etrade`.`order_trace` (
  `id` CHAR(22) NOT NULL,
  `oid` CHAR(22) NULL,
  `operator` CHAR(22) NULL,
  `status_id` CHAR(22) NULL,
  `status_name` CHAR(20) NULL,
  `addtime` DATETIME NULL,
  `note` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
COMMENT = '订单的整个生命周期的变更史，包括下单，支付，发货，收货，评价，取消等等状态的详细信息';

------------------------------------订单支付表-------------------------------------
CREATE TABLE `jingyun_etrade`.`payment` (
  `id` CHAR(22) NOT NULL,
  `transno` BIGINT NULL,
  `oid` CHAR(22) NULL,
  `uid` CHAR(22) NULL,
  `money` DECIMAL(8,2) NULL,
  `description` VARCHAR(255) NULL,
  `success` TINYINT NULL,
  `paytype_id` CHAR(22) NULL,
  `paytype_name` VARCHAR(20) NULL,
  `addtime` DATETIME NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `transno_UNIQUE` (`transno` ASC),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
COMMENT = '订单支付信息表';

------------------------------------订单物流表-------------------------------------
CREATE TABLE `jingyun_etrade`.`order_delivery` (
  `id` CHAR(22) NOT NULL,
  `oid` CHAR(22) NULL,
  `expressno` VARCHAR(20) NULL,
  `addtime` DATETIME NULL,
  `type_id` CHAR(22) NULL,
  `type_name` VARCHAR(20) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `expressno_UNIQUE` (`expressno` ASC))
COMMENT = '订单物流信息，卖家将发送的快递单号填入该' ;

------------------------------------订单状态定义表-------------------------------------
CREATE TABLE `order_status_desc` (
  `code` varchar(12) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `visible` tinyint(4) DEFAULT NULL COMMENT '该状态订单是否对用户可见',
  PRIMARY KEY (`code`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='该类定义了整个订单的生命周期中各个节点的状态';

------------------------------------退款原因定义表-------------------------------------
CREATE TABLE `jingyun_etrade`.`refund_reason_desc` (
  `id` char(22) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `code` varchar(12) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `visible` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


------------------------------------退单表-------------------------------------
CREATE TABLE `jingyun_etrade`.`refund` (
  `id` CHAR(22) NOT NULL,
  `gid` BIGINT NOT NULL,
  `oid` CHAR(22) NOT NULL,
  `addtime` DATETIME NOT NULL,
  `money` DECIMAL(8,2) NULL,
  `reason_id` CHAR(22) NULL,
  `reason_name` VARCHAR(20) NULL,
  `status_id` CHAR(22) NULL COMMENT '订单状态id，索引order_status_desc表',
  `status_name` VARCHAR(20) NULL COMMENT '状态名称，冗余字段，用来订单查询时的显示',
  `return_goods` TINYINT NULL,
  `description` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));


------------------------------------退单物流表-------------------------------------
CREATE TABLE `jingyun_etrade`.`refund_delivery` (
  `id` CHAR(22) NOT NULL,
  `rid` CHAR(22) NULL,
  `expressno` VARCHAR(20) NULL,
  `addtime` DATETIME NULL,
  `type_id` CHAR(22) NULL,
  `type_name` VARCHAR(20) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `expressno_UNIQUE` (`expressno` ASC))
COMMENT = '订单物流信息，卖家将发送的快递单号填入该' ;


------------------------------------退单追踪表-------------------------------------
CREATE TABLE `jingyun_etrade`.`refund_trace` (
  `id` CHAR(22) NOT NULL,
  `rid` CHAR(22) NULL,
  `operator` CHAR(22) NULL,
  `status_id` CHAR(22) NULL,
  `status_name` CHAR(20) NULL,
  `addtime` DATETIME NULL,
  `note` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
COMMENT = '追踪退单变更的业务对象<br> 该类描述了退款（退单）的生命周期，包括退单申请，批准，完成等';

CREATE TABLE `jingyun_etrade`.`refund_image` (
  `id` CHAR(22) NOT NULL,
  `rid` CHAR(22) NULL,
  `path` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));

------------------------------------购物车------------------------------------- 
CREATE TABLE `cart` (
  `id` char(22) NOT NULL,
  `uid` char(22) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `uid_UNIQUE` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表，每个用户只有一个购物车记录，通常在用户注册时生成';


CREATE TABLE `jingyun_etrade`.`goods_in_cart` (
  `id` CHAR(22) NOT NULL,
  `cart_id` CHAR(22) NULL COMMENT '所属购物车',
  `uid` CHAR(22) NULL COMMENT '所属用户（冗余字段，与购物车表中重复，用于避免连表查询）',
  `gid` CHAR(22) NULL COMMENT '商品id',
  `price` DECIMAL(8,2) NULL,
  `count` INT NULL,
  `addtime` DATETIME NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
COMMENT = '购物车中的商品';


-----------------------------------收货地址-------------------------------------

CREATE TABLE `address` (
  `id` char(22) NOT NULL,
  `uid` char(22) NOT NULL COMMENT 'user id',
  `name` varchar(20) DEFAULT NULL COMMENT '收货地址标题',
  `country` int(3) NOT NULL COMMENT '国家',
  `province` int(5) NOT NULL,
  `city` int(10) NOT NULL,
  `address` varchar(80) NOT NULL COMMENT '详细地址',
  `zipcode` varchar(10) DEFAULT NULL COMMENT '邮政编码',
  `receiver` varchar(30) NOT NULL COMMENT '收货人',
  `mobile` varchar(11) NOT NULL COMMENT '收件人手机',
  `telephone` varchar(15) DEFAULT NULL COMMENT '座机',
  `defaulted` tinyint(1) DEFAULT NULL COMMENT '是否默认',
  `valid` tinyint(1) DEFAULT NULL COMMENT '是否有效',
  PRIMARY KEY (`id`),
  KEY `INDEX_ADDRESS_UID` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-----------------------------------国家-------------------------------------
CREATE TABLE `country` (
  `country_id` int(3) NOT NULL,
  `country_name` varchar(20) NOT NULL COMMENT '名字',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-----------------------------------省份-------------------------------------
CREATE TABLE `province` (
  `province_id` bigint(20) NOT NULL,
  `province_name` varchar(50) NOT NULL,
  `country_id` int(3) DEFAULT NULL,
  PRIMARY KEY (`province_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-----------------------------------城市-------------------------------------

CREATE TABLE `city` (
  `city_id` bigint(20) NOT NULL,
  `city_name` varchar(50) DEFAULT NULL,
  `zip_code` varchar(50) DEFAULT NULL,
  `province_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--------------------------系统参数------------------------------

CREATE TABLE `system_param` (
  `id` varchar(22) NOT NULL,
  `type` varchar(15) NOT NULL COMMENT '类别',
  `name` varchar(15) NOT NULL COMMENT '参数名',
  `value` varchar(30) NOT NULL COMMENT '参数值',
  `description` varchar(40) DEFAULT NULL COMMENT '描述',
  `add_time` datetime DEFAULT NULL COMMENT '添加时间',
  `author` varchar(10) DEFAULT NULL COMMENT '添加人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统参数';

--------------------------消息----------------------------------

CREATE TABLE `message` (
  `id` varchar(22) NOT NULL,
  `sent_uid` varchar(22) DEFAULT NULL,
  `receive_uid` varchar(22) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `status` int(2) DEFAULT NULL COMMENT '状态 1:成功 2:失败 3:删除',
  `addtime` datetime DEFAULT NULL,
  `addip` varchar(15) DEFAULT NULL,
  `has_read` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pk_message_id` (`id`) USING HASH,
  KEY `index_message_ruid` (`receive_uid`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息';



