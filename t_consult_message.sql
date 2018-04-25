CREATE TABLE `t_consult_messages_0` (
	`record_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '聊天记录ID',
	`order_id` BIGINT(20) NOT NULL COMMENT '订单ID : 依据订单id分表',
	`consult_id` BIGINT(20) NOT NULL COMMENT '咨询ID',
	`from_id` BIGINT(20) NOT NULL COMMENT '发送用户ID',
	`to_id` BIGINT(20) NOT NULL COMMENT '接收用户ID',
	`message_id` BIGINT(20) NOT NULL COMMENT '消息ID',
	`message_type` TINYINT(4) NOT NULL COMMENT '消息类型，1：文字消息，2：音频消息，3：图片，4：文件，5：视频，17：系统文本消息',
	`message_data` VARCHAR(500) NOT NULL COMMENT '消息内容',
	`from_source` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '发送用户来源，1：app，2：web，3：微信',
	`from_identity` TINYINT(4) NOT NULL COMMENT '发送用户身份，1：学生，2：班主任，3：值班老师，4：系统账号',
	`to_identity` TINYINT(4) NOT NULL COMMENT '接收用户身份，1：学生，2：班主任，3：值班老师，4：系统账号',
	`create_ts` INT(11) NOT NULL COMMENT '此条记录的生成时间戳',
	`update_ts` INT(11) NOT NULL COMMENT '此条记录的更新时间戳',
	`display_mode` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '消息展现模式，1：正常展现，2：敏感词屏蔽',
	`status` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '此条记录状态，1：正常，2：已删除',
	`service` TINYINT(4) NOT NULL DEFAULT '0' COMMENT '服务场景，0：单通道，1：投退',
	PRIMARY KEY (`record_id`),
	INDEX `idx_cid` (`consult_id`),
	INDEX `idx_oid` (`order_id`),
	INDEX `idx_msgid` (`message_id`),
	INDEX `idx_fromid` (`from_id`),
	INDEX `idx_toid` (`to_id`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=49506
;
