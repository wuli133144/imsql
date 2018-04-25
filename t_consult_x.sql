CREATE TABLE `t_consult_0` (
	`consult_id` BIGINT(20) UNSIGNED NOT NULL COMMENT '咨询ID',
	`teacher_id` BIGINT(20) UNSIGNED NOT NULL COMMENT '老师ID   //根据老师id分表//',
	`student_id` BIGINT(20) UNSIGNED NOT NULL COMMENT '学生ID',
	`order_id` BIGINT(20) UNSIGNED NOT NULL COMMENT '订单ID',
	`create_type` TINYINT(4) UNSIGNED NOT NULL COMMENT '创建类型: 1，学生正常咨询，直接分配给值班老师；2，(弃用)学生正常咨询，直接分配给班主任；3，学生正常咨询，但老师都不在线，留言给班主任；4，学生正常咨询，在 值班老师名下排队；5，学生正常咨询，在班主任名下排队；6，班主发起；7，值班老师转接给在线班主任；8，值班老师转接给离线班主任；32，学生继续咨询，班主任在线；33，学生继续咨询，班主任离线；34，学生正常咨询，值班老师离线，分配给在线班主任；35，学生正常咨询，值班老师咨询量满了，分配给在线班主任；64，学生正常咨询，直接分配给投退老师；65，学生正常咨询，在投退老师名下排队；66，学生正常咨询，但投退老师都不在线，留言给投退老师；67，投退老师发起',
	`close_type` TINYINT(4) UNSIGNED NULL DEFAULT '0' COMMENT '关闭类型，1，学生主动关闭；2，值班老师主动关闭；3，班主任主动关闭；4，学生超时关闭；5，值班老师超时关闭；6，班主任超时关闭； 7, 异常关闭；64，学生在一个咨询未关闭情况下，发起另外一个咨询；65，投退老师关闭；66，学生超时关闭；67，投退老师超时关闭；68，异常关闭(双方均未发言)',
	`queue_start_ts` INT(11) UNSIGNED NULL DEFAULT '0' COMMENT '排队开始时间戳',
	`queue_end_ts` INT(11) UNSIGNED NULL DEFAULT '0' COMMENT '排队结束时间戳',
	`consult_start_ts` INT(11) UNSIGNED NULL DEFAULT '0' COMMENT '咨询接入时间戳',
	`consult_end_ts` INT(11) UNSIGNED NULL DEFAULT '0' COMMENT '咨询结束时间戳',
	`consult_status` TINYINT(4) UNSIGNED NOT NULL DEFAULT '1' COMMENT '咨询状态，1:咨询进行中，2：咨询关闭',
	`status` TINYINT(4) UNSIGNED NOT NULL DEFAULT '1' COMMENT '咨询状态，1：正常，2：删除',
	`update_ts` INT(11) UNSIGNED NOT NULL COMMENT '此条记录的更新时间戳',
	`deliver_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '转接之前的咨询ID',
	`receiver_identity` TINYINT(4) NULL DEFAULT '0' COMMENT '咨询最新消息的接收者身份，1：学生，2：班主任，3：值班老师，4：系统账号',
	`message_id` BIGINT(20) NULL DEFAULT '0' COMMENT '咨询最新消息ID',
	`service` TINYINT(4) NOT NULL DEFAULT '0' COMMENT '服务场景，0：单通道，1：投退',
	PRIMARY KEY (`consult_id`),
	INDEX `idx_tid_sid_lid` (`teacher_id`, `student_id`, `order_id`),
	INDEX `idx_sid_stat` (`student_id`, `consult_status`),
	INDEX `idx_tid_stat` (`teacher_id`, `consult_status`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
