CREATE TABLE `t_user_convert` (
	`im_user_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'IM系统中的用户ID，IM系统内通用',
	`password` VARCHAR(128) NOT NULL COMMENT '用户密码，IM系统与APP社区系统通用',
	`system` TINYINT(4) NOT NULL COMMENT '此用户的系统来源，1：社区',
	`group_num` INT(10) NULL DEFAULT '0' COMMENT '用户所在的群数量，包括已退出的',
	`status` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '此条记录状态，1：正常，2：已删除',
	`create_ts` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '此条记录的生成时间戳',
	`update_ts` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '此条记录的更新时间戳',
	PRIMARY KEY (`im_user_id`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=3662422
;
