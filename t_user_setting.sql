CREATE TABLE `t_user_setting` (
	`im_user_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'IM系统中的用户ID，IM系统内通用',
	`friends_num` INT(11) NOT NULL DEFAULT '0' COMMENT '用户的好友数量',
	`allow_disturb` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '用户是否允许被打扰，1：允许，2：不允许',
	`forbidden` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '成员是否被单聊禁言，1：否，2：是',
	`status` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '此条记录状态，1：正常，2：已删除',
	`create_ts` DATETIME NOT NULL COMMENT '此条记录的生成时间戳',
	`update_ts` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '此条记录的更新时间戳',
	PRIMARY KEY (`im_user_id`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=3662422
;
