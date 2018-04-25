CREATE TABLE `t_user_recent_session_0` (
	`record_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '记录ID',
	`user_id` BIGINT(20) NOT NULL COMMENT '用户ID',
	`session_type` TINYINT(4) NOT NULL COMMENT '会话类型，1：单聊会话，2：群组聊天会话',
	`object_id` BIGINT(20) NOT NULL COMMENT '会话对象ID',
	`status` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '此条记录状态，1：正常，2：已删除',
	`create_ts` INT(11) NOT NULL COMMENT '此条记录的生成时间戳',
	`update_ts` INT(11) NOT NULL COMMENT '此条记录的更新时间戳',
	`last_read_msgid` BIGINT(20) NOT NULL,
	`latest_receive_msgid` BIGINT(20) NOT NULL DEFAULT '0' COMMENT '最近一条消息，群聊暂时没用；单聊发消息时更新',
	PRIMARY KEY (`record_id`),
	UNIQUE INDEX `idx_user_type_object` (`user_id`, `session_type`, `object_id`),
	INDEX `idx_userid_status` (`user_id`, `status`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=94557
;
