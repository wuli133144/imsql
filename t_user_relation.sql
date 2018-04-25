CREATE TABLE `t_user_relationship` (
	`relation_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '关系记录ID',
	`small_id` BIGINT(20) NOT NULL COMMENT '用户A的ID',
	`big_id` BIGINT(20) NOT NULL COMMENT '用户B的ID',
	`small_shield_big` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '关系状态，1：正常，2：small拉黑big',
	`big_shield_small` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '关系状态，1：正常，2：big拉黑small',
	`small_remark` VARCHAR(64) NULL DEFAULT NULL COMMENT '用户A备注',
	`big_remark` VARCHAR(64) NULL DEFAULT NULL COMMENT '用户B备注',
	`small_allow_disturb` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '用户A是否屏蔽用户B消息，1：不屏蔽，2：屏蔽',
	`big_allow_disturb` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '用户B是否屏蔽用户A消息，1：不屏蔽，2：屏蔽',
	`status` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '此条记录状态，1：正常，2：已删除',
	`create_ts` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '此条记录的生成时间戳',
	`update_ts` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '此条记录的更新时间戳',
	PRIMARY KEY (`relation_id`),
	UNIQUE INDEX `small_id` (`small_id`, `big_id`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=32332
;
