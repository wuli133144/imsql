CREATE TABLE `t_session` (
	`record_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '记录ID',
	`group_id` BIGINT(20) NOT NULL COMMENT '群组ID',
	`sender_id` BIGINT(20) NOT NULL COMMENT '消息发送者ID',
	`message_type` TINYINT(4) NOT NULL COMMENT '消息类型',
	`message_content` VARCHAR(500) NOT NULL COMMENT '消息内容',
	`status` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '此条记录状态，1：正常，2：已删除',
	`create_ts` INT(11) NOT NULL,
	`update_ts` INT(11) NOT NULL,
	`message_id` BIGINT(20) NOT NULL,
	`display_mode` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '消息展现模式，1：正常展现，2：敏感词屏蔽',
	PRIMARY KEY (`record_id`),
	UNIQUE INDEX `idx_group_message_sender` (`group_id`, `message_id`, `sender_id`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
ROW_FORMAT=COMPACT
;
