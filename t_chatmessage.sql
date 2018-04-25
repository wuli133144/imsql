CREATE TABLE `t_chat_messages_0` (
	`record_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '聊天记录ID',
	`relation_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户关系ID',
	`from_id` BIGINT(20) NOT NULL COMMENT '发送用户ID',
	`to_id` BIGINT(20) NOT NULL COMMENT '接收用户ID',
	`message_id` BIGINT(20) NOT NULL COMMENT '消息ID',
	`message_type` TINYINT(4) NOT NULL COMMENT '消息类型，1：文字消息，2：音频消息，3：图片',
	`message_data` VARCHAR(500) NOT NULL COMMENT '消息内容',
	`status` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '此条记录状态，1：正常，2：已删除',
	`create_ts` INT(11) NOT NULL,
	`update_ts` INT(11) NOT NULL,
	`display_mode` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '消息展现模式，1：正常展现，2：敏感词屏蔽',
	PRIMARY KEY (`record_id`),
	INDEX `idx_relationId` (`relation_id`, `status`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=5413
;
