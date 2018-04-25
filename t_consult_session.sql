CREATE TABLE `t_consult_session_14` (
	`record_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '记录ID',
	`user_id` BIGINT(20) NOT NULL COMMENT '用户ID，会话表根据user_id分表',
	`order_id` BIGINT(20) NOT NULL COMMENT '订单ID',
	`user_identity` TINYINT(4) NOT NULL COMMENT '用户身份，1学生，2班主任，3值班老师',
	`object_id` BIGINT(20) NOT NULL COMMENT '最新的会话对象ID',
	`consult_id` BIGINT(20) NOT NULL COMMENT '最新的咨询id',
	`top_status` TINYINT(4) NULL DEFAULT '1' COMMENT '置顶状态， 1：不置顶   2：置顶',
	`last_read_msgid` BIGINT(20) NOT NULL DEFAULT '0' COMMENT '用户读到的最新消息ID',
	`latest_receive_msgid` BIGINT(20) NOT NULL DEFAULT '0' COMMENT '用户收到的最新消息ID',
	`create_ts` INT(11) NOT NULL COMMENT '此条记录的生成时间戳',
	`update_ts` INT(11) NOT NULL DEFAULT '0' COMMENT '此条记录的更新时间戳',
	`status` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '此条记录状态，1：正常，2：已删除',
	`service` TINYINT(4) NOT NULL DEFAULT '0' COMMENT '服务场景，0：单通道，1：投退',
	PRIMARY KEY (`record_id`),
	UNIQUE INDEX `idx_user_order_service` (`user_id`, `order_id`, `service`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1673
;
