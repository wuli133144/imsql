CREATE TABLE `t_friend_request` (
	`record_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '请求记录ID',
	`im_user_id` BIGINT(20) NOT NULL COMMENT '用户ID',
	`im_peer_id` BIGINT(20) NOT NULL COMMENT '用户请求ID',
	`request_message` VARCHAR(32) NOT NULL COMMENT '添加好友时的请求信息',
	`request_state` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '请求处理的状态，1：已请求，2：已通过，2：已拒绝',
	`status` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '此条记录状态，1：正常，2：已删除',
	`create_ts` DATETIME NOT NULL COMMENT '此条记录的生成时间戳',
	`update_ts` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '此条记录的更新时间戳',
	PRIMARY KEY (`record_id`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=97
;
