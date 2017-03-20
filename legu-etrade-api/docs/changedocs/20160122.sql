

CREATE TABLE `express` (
  `id` CHAR(22) NOT NULL COMMENT 'id',
  `code` VARCHAR(50) DEFAULT NULL COMMENT '快递代号',
  `name` VARCHAR(50) DEFAULT NULL COMMENT '快递名称',
  `status` TINYINT(1) DEFAULT '1' COMMENT '可用1 否0',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


INSERT  INTO `express`(`id`,`code`,`name`,`status`) VALUES ('1','ZTO','中通速递',1),('2','YTO','圆通速递',1),('3','HTKY','百世汇通 ',1),('4','HHTT','天天快递',1),('5','YD','韵达快递',1),('6','STO','申通快递',1),('7','YZPY','邮政平邮/小包',1),('8','SF','顺丰快递',1),('9','EMS','EMS',1);



ALTER TABLE order_logistic ADD COLUMN express_code VARCHAR(50) AFTER express_name;