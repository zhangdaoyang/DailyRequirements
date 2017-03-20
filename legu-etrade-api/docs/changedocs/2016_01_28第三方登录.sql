CREATE TABLE `weibo_login` (
  `id` char(22) NOT NULL,
  `weibo_uid` varchar(20) NOT NULL,
  `access_token` varchar(40) DEFAULT NULL,
  `uid` char(22) NOT NULL,
  `login_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `qq_login` (
  `id` varchar(35) NOT NULL,
  `access_token` varchar(35) NOT NULL,
  `uid` char(22) NOT NULL,
  `login_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

