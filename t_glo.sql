CREATE TABLE `t_global_consult_id` (
	`name` VARCHAR(255) NOT NULL COMMENT '业务名称',
	`id` BIGINT(20) UNSIGNED NOT NULL COMMENT '全局id',
	PRIMARY KEY (`name`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
