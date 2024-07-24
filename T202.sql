/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t202`;
CREATE DATABASE IF NOT EXISTS `t202` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t202`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/yiqingdakapingce/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/yiqingdakapingce/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/yiqingdakapingce/upload/config3.jpg');

DROP TABLE IF EXISTS `daka`;
CREATE TABLE IF NOT EXISTS `daka` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `daka_photo` varchar(200) DEFAULT NULL COMMENT '打卡照片',
  `daka_content` text COMMENT '打卡备注',
  `insert_time` date DEFAULT NULL COMMENT '打卡日期',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='打卡';

DELETE FROM `daka`;
INSERT INTO `daka` (`id`, `yonghu_id`, `daka_photo`, `daka_content`, `insert_time`, `create_time`) VALUES
	(1, 3, 'http://localhost:8080/yiqingdakapingce/upload/yonghu1.jpg', '打卡备注1', '2022-03-23', '2022-03-23 11:19:12'),
	(2, 3, 'http://localhost:8080/yiqingdakapingce/upload/yonghu2.jpg', '打卡备注2', '2022-03-23', '2022-03-23 11:19:12'),
	(3, 3, 'http://localhost:8080/yiqingdakapingce/upload/yonghu3.jpg', '打卡备注3', '2022-03-23', '2022-03-23 11:19:12'),
	(4, 2, 'http://localhost:8080/yiqingdakapingce/upload/yonghu1.jpg', '打卡备注4', '2022-03-23', '2022-03-23 11:19:12'),
	(5, 3, 'http://localhost:8080/yiqingdakapingce/upload/yonghu2.jpg', '打卡备注5', '2022-03-23', '2022-03-23 11:19:12'),
	(6, 1, 'http://localhost:8080/yiqingdakapingce/upload/1648036337519.jpg', '<p>就会痛苦化工</p>', '2022-03-23', '2022-03-23 11:52:20');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-03-23 11:17:07'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-03-23 11:17:07'),
	(3, 'news_types', '资讯类型', 1, '资讯类型1', NULL, NULL, '2022-03-23 11:17:07'),
	(4, 'news_types', '资讯类型', 2, '资讯类型2', NULL, NULL, '2022-03-23 11:17:07'),
	(5, 'xueshengjujia_zhuangtai_types', '居家状态', 1, '正常', NULL, NULL, '2022-03-23 11:17:07'),
	(6, 'xueshengjujia_zhuangtai_types', '居家状态', 2, '感冒', NULL, NULL, '2022-03-23 11:17:07'),
	(7, 'xueshengjujia_zhuangtai_types', '居家状态', 3, '感染者', NULL, NULL, '2022-03-23 11:17:07'),
	(8, 'examquestion_types', '试题类型', 1, '单选题', NULL, NULL, '2022-03-23 11:17:07'),
	(9, 'examquestion_types', '试题类型', 2, '多选题', NULL, NULL, '2022-03-23 11:17:07'),
	(10, 'examquestion_types', '试题类型', 3, '判断题', NULL, NULL, '2022-03-23 11:17:07'),
	(11, 'examquestion_types', '试题类型', 4, '填空题', NULL, NULL, '2022-03-23 11:17:07'),
	(12, 'exampaper_types', '试卷状态', 1, '启用', NULL, NULL, '2022-03-23 11:17:07'),
	(13, 'exampaper_types', '试卷状态', 2, '禁用', NULL, NULL, '2022-03-23 11:17:07'),
	(14, 'fanxiaoshenqing_yesno_types', '审核状态', 1, '待审核', NULL, NULL, '2022-03-23 11:17:07'),
	(15, 'fanxiaoshenqing_yesno_types', '审核状态', 2, '同意', NULL, NULL, '2022-03-23 11:17:07'),
	(16, 'fanxiaoshenqing_yesno_types', '审核状态', 2, '拒绝', NULL, NULL, '2022-03-23 11:17:07'),
	(17, 'news_types', '资讯类型', 3, '资讯类型3', NULL, '', '2022-03-23 11:47:32'),
	(18, 'xueshengjujia_zhuangtai_types', '居家状态', 4, '隔离者', NULL, '', '2022-03-23 11:47:52');

DROP TABLE IF EXISTS `exampaper`;
CREATE TABLE IF NOT EXISTS `exampaper` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_name` varchar(200) NOT NULL COMMENT '试卷名称 Search111',
  `exampaper_date` int NOT NULL COMMENT '考试时长(分钟)',
  `exampaper_myscore` int NOT NULL DEFAULT '0' COMMENT '试卷总分数',
  `exampaper_types` int NOT NULL DEFAULT '0' COMMENT '试卷状态 Search111',
  `exampaper_delete` int DEFAULT '0' COMMENT '逻辑删除（0代表未删除 1代表已删除）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='试卷表';

DELETE FROM `exampaper`;
INSERT INTO `exampaper` (`id`, `exampaper_name`, `exampaper_date`, `exampaper_myscore`, `exampaper_types`, `exampaper_delete`, `create_time`) VALUES
	(1, '考试试卷1', 100, 100, 1, 1, '2022-03-23 11:17:07'),
	(2, '试卷2', 100, 100, 1, 1, '2022-03-23 11:48:35');

DROP TABLE IF EXISTS `examquestion`;
CREATE TABLE IF NOT EXISTS `examquestion` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_id` int NOT NULL COMMENT '所属试卷id（外键）',
  `examquestion_name` varchar(200) NOT NULL COMMENT '试题名称 Search111',
  `examquestion_options` longtext COMMENT '选项，json字符串',
  `examquestion_score` int DEFAULT '0' COMMENT '分值 Search111',
  `examquestion_answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `examquestion_analysis` longtext COMMENT '答案解析',
  `examquestion_types` int DEFAULT '0' COMMENT '试题类型',
  `examquestion_sequence` int DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COMMENT='试题表';

DELETE FROM `examquestion`;
INSERT INTO `examquestion` (`id`, `exampaper_id`, `examquestion_name`, `examquestion_options`, `examquestion_score`, `examquestion_answer`, `examquestion_analysis`, `examquestion_types`, `examquestion_sequence`, `create_time`) VALUES
	(1, 1, '单选题1', '[{"text":"答案A","code":"A"},{"text":"答案B","code":"B"},{"text":"正确答案C","code":"C"},{"text":"答案D","code":"D"}]', 10, 'C', '无', 1, 1, '2022-03-23 11:17:07'),
	(2, 1, '多选题1', '[{"text":"答案A","code":"A"},{"text":"正确答案B","code":"B"},{"text":"正确答案C","code":"C"},{"text":"答案D","code":"D"}]', 34, 'B,C', '无', 2, 2, '2022-03-23 11:17:07'),
	(3, 1, '填空题(正)_____', '[]', 41, '正', '无', 4, 3, '2022-03-23 11:17:07'),
	(4, 1, '判断题1', '[{"text":"A.对","code":"A"},{"text":"B.错","code":"B"}]', 11, 'A', '无', 3, 4, '2022-03-23 11:17:07'),
	(5, 1, '单选题2', '[{"text":"答案A","code":"A"},{"text":"正确答案B","code":"B"},{"text":"答案C","code":"C"},{"text":"答案D","code":"D"}]', 4, 'B', '无', 1, 5, '2022-03-23 11:17:07'),
	(6, 2, '题目1(正1)', '[]', 30, '正1', '萨达', 4, 1, '2022-03-23 11:49:14'),
	(7, 2, '题目2', '[{"text":"A.对","code":"A"},{"text":"B.错","code":"B"}]', 40, 'B', '按时', 3, 2, '2022-03-23 11:49:39'),
	(8, 2, '题目3', '[{"text":"A","code":"A"},{"text":"B","code":"B"},{"text":"正确答案C","code":"C"},{"text":"D","code":"D"}]', 14, 'C', '我说的', 1, 4, '2022-03-23 11:50:32'),
	(9, 2, '题目4', '[{"text":"A","code":"A"},{"text":"B","code":"B"},{"text":"正确答案C","code":"C"},{"text":"正确答案D","code":"D"}]', 16, 'C,D', 'dg ', 2, 5, '2022-03-23 11:51:24');

DROP TABLE IF EXISTS `examrecord`;
CREATE TABLE IF NOT EXISTS `examrecord` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examrecord_uuid_number` varchar(200) DEFAULT NULL COMMENT '考试编号',
  `yonghu_id` int NOT NULL COMMENT '考试用户',
  `exampaper_id` int NOT NULL COMMENT '所属试卷id（外键）',
  `total_score` int DEFAULT NULL COMMENT '所得总分',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '考试时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='考试记录表';

DELETE FROM `examrecord`;
INSERT INTO `examrecord` (`id`, `examrecord_uuid_number`, `yonghu_id`, `exampaper_id`, `total_score`, `insert_time`, `create_time`) VALUES
	(1, '1648034995446', 1, 1, 15, '2022-03-23 11:29:55', '2022-03-23 11:29:55'),
	(2, '1648035025260', 1, 1, 66, '2022-03-23 11:30:25', '2022-03-23 11:30:25'),
	(3, '1648035049628', 1, 1, 96, '2022-03-23 11:30:50', '2022-03-23 11:30:50'),
	(4, '1648035912965', 1, 1, 48, '2022-03-23 11:45:13', '2022-03-23 11:45:13'),
	(5, '1648036383232', 1, 2, 30, '2022-03-23 11:53:03', '2022-03-23 11:53:03'),
	(6, '1717391172406', 1, 2, 0, '2024-06-03 05:06:12', '2024-06-03 05:06:12');

DROP TABLE IF EXISTS `examredetails`;
CREATE TABLE IF NOT EXISTS `examredetails` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examredetails_uuid_number` varchar(200) DEFAULT NULL COMMENT '试卷编号',
  `yonghu_id` int NOT NULL COMMENT '用户id',
  `examquestion_id` int NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  `examredetails_myscore` int NOT NULL DEFAULT '0' COMMENT '试题得分',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 COMMENT='答题详情表';

DELETE FROM `examredetails`;
INSERT INTO `examredetails` (`id`, `examredetails_uuid_number`, `yonghu_id`, `examquestion_id`, `examredetails_myanswer`, `examredetails_myscore`, `create_time`) VALUES
	(1, '1648034995446', 1, 5, 'B', 4, '2022-03-23 11:30:00'),
	(2, '1648034995446', 1, 4, 'A', 11, '2022-03-23 11:30:08'),
	(3, '1648034995446', 1, 3, 'fga', 0, '2022-03-23 11:30:12'),
	(4, '1648034995446', 1, 2, 'B,D', 0, '2022-03-23 11:30:16'),
	(5, '1648034995446', 1, 1, 'A', 0, '2022-03-23 11:30:21'),
	(6, '1648035025260', 1, 5, 'B', 4, '2022-03-23 11:30:29'),
	(7, '1648035025260', 1, 4, 'A', 11, '2022-03-23 11:30:33'),
	(8, '1648035025260', 1, 3, '正', 41, '2022-03-23 11:30:39'),
	(9, '1648035025260', 1, 2, 'B,C,D', 0, '2022-03-23 11:30:43'),
	(10, '1648035025260', 1, 1, 'C', 10, '2022-03-23 11:30:46'),
	(11, '1648035049628', 1, 5, 'A', 0, '2022-03-23 11:30:53'),
	(12, '1648035049628', 1, 4, 'A', 11, '2022-03-23 11:30:57'),
	(13, '1648035049628', 1, 3, '正', 41, '2022-03-23 11:31:02'),
	(14, '1648035049628', 1, 2, 'B,C', 34, '2022-03-23 11:31:08'),
	(15, '1648035049628', 1, 1, 'C', 10, '2022-03-23 11:31:11'),
	(16, '1648035912965', 1, 5, 'B', 4, '2022-03-23 11:45:16'),
	(17, '1648035912965', 1, 4, 'B', 0, '2022-03-23 11:45:19'),
	(18, '1648035912965', 1, 3, '54', 0, '2022-03-23 11:45:26'),
	(19, '1648035912965', 1, 2, 'B,C', 34, '2022-03-23 11:45:31'),
	(20, '1648035912965', 1, 1, 'C', 10, '2022-03-23 11:45:34'),
	(21, '1648036383232', 1, 9, 'C,D', 16, '2022-03-23 11:53:07'),
	(22, '1648036383232', 1, 8, 'C', 14, '2022-03-23 11:53:09'),
	(23, '1648036383232', 1, 7, 'A', 0, '2022-03-23 11:53:13'),
	(24, '1648036383232', 1, 6, '1', 0, '2022-03-23 11:53:18'),
	(25, '1717391172406', 1, 6, '未作答', 0, '2024-06-03 05:06:15'),
	(26, '1717391172406', 1, 7, '未作答', 0, '2024-06-03 05:06:15'),
	(27, '1717391172406', 1, 8, '未作答', 0, '2024-06-03 05:06:15'),
	(28, '1717391172406', 1, 9, '未作答', 0, '2024-06-03 05:06:15');

DROP TABLE IF EXISTS `examrewrongquestion`;
CREATE TABLE IF NOT EXISTS `examrewrongquestion` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int NOT NULL COMMENT '用户id',
  `exampaper_id` int NOT NULL COMMENT '试卷（外键）',
  `examquestion_id` int NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生作答',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COMMENT='错题表';

DELETE FROM `examrewrongquestion`;
INSERT INTO `examrewrongquestion` (`id`, `yonghu_id`, `exampaper_id`, `examquestion_id`, `examredetails_myanswer`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 3, 'fga', '2022-03-23 11:30:12', '2022-03-23 11:30:12'),
	(2, 1, 1, 2, 'B,D', '2022-03-23 11:30:16', '2022-03-23 11:30:16'),
	(3, 1, 1, 1, 'A', '2022-03-23 11:30:21', '2022-03-23 11:30:21'),
	(4, 1, 1, 2, 'B,C,D', '2022-03-23 11:30:43', '2022-03-23 11:30:43'),
	(5, 1, 1, 5, 'A', '2022-03-23 11:30:53', '2022-03-23 11:30:53'),
	(6, 1, 1, 4, 'B', '2022-03-23 11:45:19', '2022-03-23 11:45:19'),
	(7, 1, 1, 3, '54', '2022-03-23 11:45:26', '2022-03-23 11:45:26'),
	(8, 1, 2, 7, 'A', '2022-03-23 11:53:13', '2022-03-23 11:53:13'),
	(9, 1, 2, 6, '1', '2022-03-23 11:53:18', '2022-03-23 11:53:18'),
	(10, 1, 2, 6, '未作答', '2024-06-03 05:06:15', '2024-06-03 05:06:15'),
	(11, 1, 2, 7, '未作答', '2024-06-03 05:06:15', '2024-06-03 05:06:15'),
	(12, 1, 2, 8, '未作答', '2024-06-03 05:06:15', '2024-06-03 05:06:15'),
	(13, 1, 2, 9, '未作答', '2024-06-03 05:06:15', '2024-06-03 05:06:15');

DROP TABLE IF EXISTS `fanxiaoshenqing`;
CREATE TABLE IF NOT EXISTS `fanxiaoshenqing` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `fanxiaoshenqing_uuid_number` varchar(200) DEFAULT NULL COMMENT '申请编号 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `fanxiaoshenqing_time` date DEFAULT NULL COMMENT '申请返校日期',
  `jiankangma_photo` varchar(200) DEFAULT NULL COMMENT '健康码',
  `xingchengma_photo` varchar(200) DEFAULT NULL COMMENT '行程码',
  `hesuanbaogao_photo` varchar(200) DEFAULT NULL COMMENT '核酸报告',
  `fanxiaoshenqing_content` text COMMENT '申请理由',
  `fanxiaoshenqing_yesno_types` int DEFAULT NULL COMMENT '审核状态 Search111 ',
  `fanxiaoshenqing_yesno_text` text COMMENT '审核意见',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COMMENT='学生返校申请';

DELETE FROM `fanxiaoshenqing`;
INSERT INTO `fanxiaoshenqing` (`id`, `yonghu_id`, `fanxiaoshenqing_uuid_number`, `insert_time`, `fanxiaoshenqing_time`, `jiankangma_photo`, `xingchengma_photo`, `hesuanbaogao_photo`, `fanxiaoshenqing_content`, `fanxiaoshenqing_yesno_types`, `fanxiaoshenqing_yesno_text`, `update_time`, `create_time`) VALUES
	(9, 1, '1648036312014', '2022-03-23 11:52:07', '2022-03-10', 'http://localhost:8080/yiqingdakapingce/upload/1648036316698.jpg', 'http://localhost:8080/yiqingdakapingce/upload/1648036321436.jpg', 'http://localhost:8080/yiqingdakapingce/upload/1648036323567.jpg', '<p>电话说得好</p>', 1, '', NULL, '2022-03-23 11:52:07');

DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE IF NOT EXISTS `liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='留言板';

DELETE FROM `liuyan`;
INSERT INTO `liuyan` (`id`, `yonghu_id`, `liuyan_name`, `liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, '留言标题1', '留言内容1', '2022-03-23 11:19:12', '回复信息1', '2022-03-23 11:19:12', '2022-03-23 11:19:12'),
	(2, 2, '留言标题2', '留言内容2', '2022-03-23 11:19:12', '回复信息2', '2022-03-23 11:19:12', '2022-03-23 11:19:12'),
	(3, 1, '留言标题3', '留言内容3', '2022-03-23 11:19:12', '回复信息3', '2022-03-23 11:19:12', '2022-03-23 11:19:12'),
	(4, 3, '留言标题4', '留言内容4', '2022-03-23 11:19:12', '回复信息4', '2022-03-23 11:19:12', '2022-03-23 11:19:12'),
	(5, 2, '留言标题5', '留言内容5', '2022-03-23 11:19:12', '回复信息5', '2022-03-23 11:19:12', '2022-03-23 11:19:12'),
	(6, 1, '111', '22222', '2022-03-23 11:45:43', '2333', '2022-03-23 11:48:08', '2022-03-23 11:45:43'),
	(7, 1, '66', '666', '2024-06-03 05:06:22', NULL, NULL, '2024-06-03 05:06:22');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '资讯名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '资讯图片 ',
  `news_types` int NOT NULL COMMENT '资讯类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '资讯发布时间 ',
  `news_content` text COMMENT '资讯详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='资讯信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_photo`, `news_types`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '资讯名称1', 'http://localhost:8080/yiqingdakapingce/upload/news1.jpg', 1, '2022-03-23 11:19:12', '资讯详情1', '2022-03-23 11:19:12'),
	(2, '资讯名称2', 'http://localhost:8080/yiqingdakapingce/upload/news2.jpg', 1, '2022-03-23 11:19:12', '资讯详情2', '2022-03-23 11:19:12'),
	(3, '资讯名称3', 'http://localhost:8080/yiqingdakapingce/upload/news3.jpg', 2, '2022-03-23 11:19:12', '资讯详情3', '2022-03-23 11:19:12'),
	(4, '资讯名称4', 'http://localhost:8080/yiqingdakapingce/upload/news4.jpg', 2, '2022-03-23 11:19:12', '资讯详情4', '2022-03-23 11:19:12'),
	(5, '资讯名称5', 'http://localhost:8080/yiqingdakapingce/upload/news5.jpg', 2, '2022-03-23 11:19:12', '资讯详情5', '2022-03-23 11:19:12');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', 'oergs9v80wlno2v99xbzys1ol4st0p4t', '2022-03-23 11:28:27', '2024-06-03 06:04:40'),
	(2, 1, 'a1', 'yonghu', '学生', 'x13rndsrmylwcbarhdbfztthmgcxih7g', '2022-03-23 11:29:52', '2024-06-03 06:06:01');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2022-05-02 06:51:13');

DROP TABLE IF EXISTS `xueshengjujia`;
CREATE TABLE IF NOT EXISTS `xueshengjujia` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `xueshengjujia_zhuangtai_types` int DEFAULT NULL COMMENT '居家状态 Search111 ',
  `jujia_time` date DEFAULT NULL COMMENT '居家日期',
  `xueshengjujia_address` varchar(200) DEFAULT NULL COMMENT '居家位置',
  `xueshengjujia_content` text COMMENT '居家备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='居家';

DELETE FROM `xueshengjujia`;
INSERT INTO `xueshengjujia` (`id`, `yonghu_id`, `xueshengjujia_zhuangtai_types`, `jujia_time`, `xueshengjujia_address`, `xueshengjujia_content`, `create_time`) VALUES
	(1, 3, 2, '2022-03-23', '居家位置1', '居家备注1', '2022-03-23 11:19:12'),
	(2, 2, 2, '2022-03-23', '居家位置2', '居家备注2', '2022-03-23 11:19:12'),
	(3, 1, 1, '2022-03-23', '居家位置3', '居家备注3', '2022-03-23 11:19:12'),
	(4, 3, 2, '2022-03-23', '居家位置4', '居家备注4', '2022-03-23 11:19:12'),
	(5, 3, 1, '2022-03-23', '居家位置5', '居家备注5', '2022-03-23 11:19:12'),
	(7, 1, 1, '2022-03-23', '地址1', '<p>还没NFC </p>', '2022-03-23 11:52:52');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `create_time`) VALUES
	(1, '学生1', '123456', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/yiqingdakapingce/upload/yonghu1.jpg', 1, '1@qq.com', '2022-03-23 11:19:12'),
	(2, '学生2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/yiqingdakapingce/upload/yonghu2.jpg', 1, '2@qq.com', '2022-03-23 11:19:12'),
	(3, '学生3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/yiqingdakapingce/upload/yonghu3.jpg', 2, '3@qq.com', '2022-03-23 11:19:12');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
