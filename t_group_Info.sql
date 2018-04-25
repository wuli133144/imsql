CREATE TABLE `t_group_info` (
	`group_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '群组ID',
	`group_name` VARCHAR(128) NOT NULL COMMENT '群组名称',
	`group_type` TINYINT(4) NOT NULL COMMENT '群组类型， 1新生群  2新生班级群  3老生班级群   4活动运营群 5课程群   6社团群    7其他',
	`group_portrait` VARCHAR(512) NOT NULL COMMENT '群头像URL',
	`group_activeness` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '群活跃度',
	`forbidden` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '群组屏蔽，1：未被屏蔽，2：被屏蔽',
	`creator_id` BIGINT(20) NOT NULL COMMENT '创建者ID',
	`member_num` INT(11) NOT NULL DEFAULT '0' COMMENT '群成员人数',
	`group_descrp` VARCHAR(256) NULL DEFAULT NULL COMMENT '群组简介',
	`last_message_id` BIGINT(20) NOT NULL DEFAULT '0' COMMENT '群最后一条信息ID',
	`status` TINYINT(4) NOT NULL DEFAULT '1' COMMENT '此条记录状态，1：正常，2：已删除',
	`create_ts` DATETIME NOT NULL COMMENT '此条记录的生成时间戳',
	`update_ts` INT(11) NOT NULL DEFAULT '0' COMMENT '此条记录的更新时间戳',
	`announce` VARCHAR(500) NULL DEFAULT '' COMMENT '群公告',
	`announce_update_ts` INT(11) NULL DEFAULT '0' COMMENT '群公告更新时间',
	PRIMARY KEY (`group_id`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=6927
;
