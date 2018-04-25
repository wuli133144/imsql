CREATE TABLE `t_system_messages` (
	`record_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '记录ID',
	`receiver_id` BIGINT(20) NOT NULL COMMENT '消息接收者ID',
	`message_type` TINYINT(4) NOT NULL COMMENT '消息类型',
	`message_content` VARCHAR(4096) NOT NULL COMMENT '消息内容',
	`status` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '此条记录状态，1：正常，2：已删除',
	`create_ts` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '此条记录的生成时间戳',
	`update_ts` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '此条记录的更新时间戳',
	PRIMARY KEY (`record_id`),
	INDEX `idx_receiverid_status` (`receiver_id`, `status`),
	INDEX `idx_status` (`status`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=166630
;
