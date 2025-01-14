/*
 Navicat Premium Data Transfer

 Source Server         : onlineexam
 Source Server Type    : MySQL
 Source Server Version : 50624
 Source Host           : localhost:3306
 Source Schema         : onlineexam

 Target Server Type    : MySQL
 Target Server Version : 50624
 File Encoding         : 65001

 Date: 22/04/2024 23:28:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for answer_details
-- ----------------------------
DROP TABLE IF EXISTS `answer_details`;
CREATE TABLE `answer_details`  (
  `answer_detail_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '学生答题详情 id',
  `answer_situation_id` int(8) NOT NULL COMMENT '考试答题情况 ld',
  `exam_paper_question_id` int(8) NOT NULL COMMENT '试卷试题 id',
  `question_key_by_user` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '学生答案',
  `score` decimal(10, 2) NOT NULL COMMENT '得分',
  `status` int(8) NULL DEFAULT NULL COMMENT '1:正确, 2: 错误, 3: 对了一丢丢',
  PRIMARY KEY (`answer_detail_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '试卷 - 答题详情' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of answer_details
-- ----------------------------

-- ----------------------------
-- Table structure for answer_record_bean
-- ----------------------------
DROP TABLE IF EXISTS `answer_record_bean`;
CREATE TABLE `answer_record_bean`  (
  `answer_record_id` int(8) NOT NULL AUTO_INCREMENT,
  `practice_detail_id` int(8) NOT NULL COMMENT '试卷详情id',
  `student_id` int(8) NOT NULL COMMENT '学生id',
  `question_key_by_user` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '学生填写的答案',
  `correct` tinyint(2) NULL DEFAULT NULL COMMENT '是否正确',
  `create_time` bigint(20) NOT NULL COMMENT '创建时间',
  `update_time` bigint(20) NOT NULL COMMENT '修改时间',
  `question_type_id` int(8) NOT NULL COMMENT '题型id',
  `kps_id` int(8) NOT NULL COMMENT '知识点id',
  `module_id` int(8) NOT NULL COMMENT '模块id',
  PRIMARY KEY (`answer_record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '练习题 - 答题记录表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of answer_record_bean
-- ----------------------------

-- ----------------------------
-- Table structure for answer_situation
-- ----------------------------
DROP TABLE IF EXISTS `answer_situation`;
CREATE TABLE `answer_situation`  (
  `answer_situation_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '考试答题情况 ld',
  `exam_id` int(8) NOT NULL COMMENT '考试 id',
  `student_id` int(8) NOT NULL COMMENT '学生 id',
  `answer_time` bigint(8) NULL DEFAULT NULL COMMENT '答题时间',
  `submit_time` bigint(8) NULL DEFAULT NULL COMMENT '交卷时间',
  `total_score` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '总分',
  PRIMARY KEY (`answer_situation_id`) USING BTREE,
  UNIQUE INDEX `unique_index`(`exam_id`, `student_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '试卷 - 答题情况表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of answer_situation
-- ----------------------------

-- ----------------------------
-- Table structure for class_table
-- ----------------------------
DROP TABLE IF EXISTS `class_table`;
CREATE TABLE `class_table`  (
  `class_id` int(8) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '班级名称',
  `teacher_id` int(8) NOT NULL COMMENT '老师id',
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '班级表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of class_table
-- ----------------------------
INSERT INTO `class_table` VALUES (1, '一班', 1);
INSERT INTO `class_table` VALUES (2, '二班', 1);
INSERT INTO `class_table` VALUES (3, '三班', 1);

-- ----------------------------
-- Table structure for compose_of_exam
-- ----------------------------
DROP TABLE IF EXISTS `compose_of_exam`;
CREATE TABLE `compose_of_exam`  (
  `compose_of_exam_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '试卷组成 id',
  `exam_paper_id` int(8) NOT NULL COMMENT '试卷 id',
  `number` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '题型序号',
  `question_type_id` int(8) NOT NULL COMMENT '题型',
  `quantity` int(8) NOT NULL COMMENT '数量',
  `score_for_each_question` decimal(10, 2) NOT NULL COMMENT '每道题分数',
  PRIMARY KEY (`compose_of_exam_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '试卷组成表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of compose_of_exam
-- ----------------------------
INSERT INTO `compose_of_exam` VALUES (1, 1, '一', 1, 10, 4.00);
INSERT INTO `compose_of_exam` VALUES (2, 1, '二', 2, 5, 4.00);
INSERT INTO `compose_of_exam` VALUES (3, 1, '三', 3, 4, 5.00);
INSERT INTO `compose_of_exam` VALUES (4, 1, '四', 4, 2, 10.00);

-- ----------------------------
-- Table structure for exam_paper
-- ----------------------------
DROP TABLE IF EXISTS `exam_paper`;
CREATE TABLE `exam_paper`  (
  `exam_paper_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '试卷 id',
  `paper_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '试卷名称',
  `teacher_id` int(8) NOT NULL COMMENT '组卷人(老师id)',
  `status` tinyint(2) NOT NULL COMMENT '状态（是否禁用，1-是， 0-否）',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '试卷描述',
  PRIMARY KEY (`exam_paper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '试卷表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of exam_paper
-- ----------------------------
INSERT INTO `exam_paper` VALUES (1, '计算机组成原理考试', 1, 0, '计算机组成原理考试');

-- ----------------------------
-- Table structure for exam_paper_question
-- ----------------------------
DROP TABLE IF EXISTS `exam_paper_question`;
CREATE TABLE `exam_paper_question`  (
  `exam_paper_question_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '试卷试题 id',
  `compose_of_exam_id` int(8) NOT NULL COMMENT '试卷组成 id',
  `number` int(8) NOT NULL COMMENT '题目序号',
  `question_id` int(8) NOT NULL COMMENT '题目 id',
  PRIMARY KEY (`exam_paper_question_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '试卷试题表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of exam_paper_question
-- ----------------------------
INSERT INTO `exam_paper_question` VALUES (1, 1, 1, 37);
INSERT INTO `exam_paper_question` VALUES (2, 1, 2, 11);
INSERT INTO `exam_paper_question` VALUES (3, 1, 3, 54);
INSERT INTO `exam_paper_question` VALUES (4, 1, 4, 76);
INSERT INTO `exam_paper_question` VALUES (5, 1, 5, 87);
INSERT INTO `exam_paper_question` VALUES (6, 1, 6, 24);
INSERT INTO `exam_paper_question` VALUES (7, 1, 7, 90);
INSERT INTO `exam_paper_question` VALUES (8, 1, 8, 36);
INSERT INTO `exam_paper_question` VALUES (9, 1, 9, 65);
INSERT INTO `exam_paper_question` VALUES (10, 1, 10, 72);
INSERT INTO `exam_paper_question` VALUES (11, 2, 1, 196);
INSERT INTO `exam_paper_question` VALUES (12, 2, 2, 140);
INSERT INTO `exam_paper_question` VALUES (13, 2, 3, 120);
INSERT INTO `exam_paper_question` VALUES (14, 2, 4, 101);
INSERT INTO `exam_paper_question` VALUES (15, 2, 5, 142);
INSERT INTO `exam_paper_question` VALUES (16, 3, 1, 235);
INSERT INTO `exam_paper_question` VALUES (17, 3, 2, 201);
INSERT INTO `exam_paper_question` VALUES (18, 3, 3, 231);
INSERT INTO `exam_paper_question` VALUES (19, 3, 4, 229);
INSERT INTO `exam_paper_question` VALUES (20, 4, 1, 245);
INSERT INTO `exam_paper_question` VALUES (21, 4, 2, 249);

-- ----------------------------
-- Table structure for exams
-- ----------------------------
DROP TABLE IF EXISTS `exams`;
CREATE TABLE `exams`  (
  `exam_id` int(8) NOT NULL AUTO_INCREMENT,
  `opening_hours` bigint(8) NOT NULL COMMENT '考试开放时间',
  `deadline` bigint(8) NOT NULL COMMENT '考试截止时间',
  `duration` int(8) NOT NULL COMMENT '考试时长（分钟）',
  `explain_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '考试说明',
  `announce_the_result` tinyint(2) NOT NULL COMMENT '是否公布成绩',
  `exam_paper_id` int(8) NOT NULL COMMENT '试卷id',
  `teacher_id` int(8) NOT NULL COMMENT '考试安排人（老师id）',
  `class_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '班级id',
  PRIMARY KEY (`exam_id`) USING BTREE,
  UNIQUE INDEX `unique_index`(`exam_paper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '考试表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of exams
-- ----------------------------
INSERT INTO `exams` VALUES (1, 1713799132000, 1714406400000, 60, '考试说明：xxxx', 0, 1, 1, ',1,2,3,');

-- ----------------------------
-- Table structure for kps
-- ----------------------------
DROP TABLE IF EXISTS `kps`;
CREATE TABLE `kps`  (
  `kps_id` int(8) NOT NULL AUTO_INCREMENT,
  `kps_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '知识点',
  `module_id` int(8) NOT NULL COMMENT '模块id',
  PRIMARY KEY (`kps_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '知识点表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of kps
-- ----------------------------
INSERT INTO `kps` VALUES (1, '计算机的发展历程', 1);
INSERT INTO `kps` VALUES (2, '计算机的分类', 1);
INSERT INTO `kps` VALUES (3, '计算机的硬件', 1);
INSERT INTO `kps` VALUES (4, '计算机的软件', 1);
INSERT INTO `kps` VALUES (5, '计算机的网络基础', 1);
INSERT INTO `kps` VALUES (6, '组合逻辑电路', 2);
INSERT INTO `kps` VALUES (7, '时序逻辑电路', 2);
INSERT INTO `kps` VALUES (8, '阵列逻辑电路', 2);
INSERT INTO `kps` VALUES (9, '数值的表示和转换', 3);
INSERT INTO `kps` VALUES (10, '带符号位的二进制数据的表示和运算', 3);
INSERT INTO `kps` VALUES (11, '二进制乘法运算', 3);
INSERT INTO `kps` VALUES (12, '二进制除法运算', 3);
INSERT INTO `kps` VALUES (13, '浮点的预算方法', 3);
INSERT INTO `kps` VALUES (14, '数据校验码', 3);
INSERT INTO `kps` VALUES (15, '主存储器的主要技术指标', 4);
INSERT INTO `kps` VALUES (16, '主存储器的组成', 4);
INSERT INTO `kps` VALUES (17, '随机读写存储器RAM的分类', 4);
INSERT INTO `kps` VALUES (18, '存储器的组成', 4);
INSERT INTO `kps` VALUES (19, '多体交叉存储器', 4);
INSERT INTO `kps` VALUES (20, '双端口存储器', 4);
INSERT INTO `kps` VALUES (21, '指令格式', 5);
INSERT INTO `kps` VALUES (22, '寻址方式', 5);
INSERT INTO `kps` VALUES (23, '指令类型', 5);
INSERT INTO `kps` VALUES (24, '精简指令系统计算机和复杂指令系统', 5);
INSERT INTO `kps` VALUES (25, 'CPU的组成和功能', 6);
INSERT INTO `kps` VALUES (26, '控制器的组成和功能', 6);
INSERT INTO `kps` VALUES (27, '微程序控制计算机', 6);
INSERT INTO `kps` VALUES (28, '微程序设计技术', 6);
INSERT INTO `kps` VALUES (29, '硬布线控制的计算机', 6);
INSERT INTO `kps` VALUES (30, '流水线工作原理', 6);
INSERT INTO `kps` VALUES (31, '存储系统的层次结构', 7);
INSERT INTO `kps` VALUES (32, '高速缓冲存储器（cache）', 7);
INSERT INTO `kps` VALUES (33, '虚拟存储器', 7);
INSERT INTO `kps` VALUES (34, '相联存储器', 7);
INSERT INTO `kps` VALUES (35, '存储保护', 7);
INSERT INTO `kps` VALUES (36, '存储器分类', 8);
INSERT INTO `kps` VALUES (37, '辅助存储器分类', 8);
INSERT INTO `kps` VALUES (38, '固态硬盘', 8);
INSERT INTO `kps` VALUES (39, '硬盘、软盘、磁带和光盘', 8);
INSERT INTO `kps` VALUES (40, 'I/O设备分类', 9);
INSERT INTO `kps` VALUES (41, '键盘', 9);
INSERT INTO `kps` VALUES (42, '鼠标', 9);
INSERT INTO `kps` VALUES (43, '扫描仪与光学符识别', 9);
INSERT INTO `kps` VALUES (44, '触摸屏', 9);
INSERT INTO `kps` VALUES (45, '显示器', 9);
INSERT INTO `kps` VALUES (46, '打印机', 9);
INSERT INTO `kps` VALUES (47, '输入输出系统概述', 10);
INSERT INTO `kps` VALUES (48, '程序中断输入输出方式', 10);
INSERT INTO `kps` VALUES (49, 'DMA输入输出方式', 10);
INSERT INTO `kps` VALUES (50, 'I/O通道控制方式', 10);
INSERT INTO `kps` VALUES (51, '总线结构', 10);
INSERT INTO `kps` VALUES (52, '外设接口', 10);
INSERT INTO `kps` VALUES (53, '计算机换代的标志', 11);
INSERT INTO `kps` VALUES (54, '如何提高计算机系统的运算速度', 11);
INSERT INTO `kps` VALUES (55, '计算机系统的分类', 11);
INSERT INTO `kps` VALUES (56, '封闭系统与开放系统', 11);
INSERT INTO `kps` VALUES (57, '并行性', 11);
INSERT INTO `kps` VALUES (58, '并行处理机', 11);
INSERT INTO `kps` VALUES (59, '多机系统', 11);
INSERT INTO `kps` VALUES (60, '新一代计算机', 11);

-- ----------------------------
-- Table structure for module
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module`  (
  `module_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '章节模块id',
  `module_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '章节模块名称',
  `module_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '模块描述',
  `create_time` bigint(20) NOT NULL COMMENT '创建时间',
  `update_time` bigint(20) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`module_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '章节模块表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES (1, '模块一 计算机系统概述', '', 1711546587917, 1711546587917);
INSERT INTO `module` VALUES (2, '第二章 计算机的逻辑部件', NULL, 1711546587917, 1711546587917);
INSERT INTO `module` VALUES (3, '第三章 运算方法和运算部件', NULL, 1711546587917, 1711546587917);
INSERT INTO `module` VALUES (4, '第四章 主存储器', NULL, 1711546587917, 1711546587917);
INSERT INTO `module` VALUES (5, '第五章 指令系统', NULL, 1711546587917, 1711546587917);
INSERT INTO `module` VALUES (6, '第六章 中央处理部件CPU', NULL, 1711546587917, 1711546587917);
INSERT INTO `module` VALUES (7, '第七章 存储系统', NULL, 1711546587917, 1711546587917);
INSERT INTO `module` VALUES (8, '第八章 辅助存储器', NULL, 1711546587917, 1711546587917);
INSERT INTO `module` VALUES (9, '第九章 输入输出设备', NULL, 1711546587917, 1711546587917);
INSERT INTO `module` VALUES (10, '第十章 输入输出系统', NULL, 1711546587917, 1711546587917);
INSERT INTO `module` VALUES (11, '第十一章 计算机系统', NULL, 1711546587917, 1711546587917);

-- ----------------------------
-- Table structure for option_table
-- ----------------------------
DROP TABLE IF EXISTS `option_table`;
CREATE TABLE `option_table`  (
  `option_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '选项id',
  `option_number` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '选项编号',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '内容',
  `key_whether` tinyint(2) NOT NULL COMMENT '是否为答案',
  `question_id` int(16) NOT NULL COMMENT '所属题目id',
  PRIMARY KEY (`option_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 607 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '选项表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of option_table
-- ----------------------------
INSERT INTO `option_table` VALUES (1, 'A', '网络语言', 0, 1);
INSERT INTO `option_table` VALUES (2, 'B', '操作系统', 0, 1);
INSERT INTO `option_table` VALUES (3, 'C', '机器语言', 1, 1);
INSERT INTO `option_table` VALUES (4, 'D', '高级语言', 0, 1);
INSERT INTO `option_table` VALUES (5, 'A', '＋0100011B', 0, 2);
INSERT INTO `option_table` VALUES (6, 'B', '－0100011B', 1, 2);
INSERT INTO `option_table` VALUES (7, 'C', '＋1011101B', 0, 2);
INSERT INTO `option_table` VALUES (8, 'D', '－1011101B', 0, 2);
INSERT INTO `option_table` VALUES (9, 'A', 'EDVAC', 0, 3);
INSERT INTO `option_table` VALUES (10, 'B', 'ENIAC', 1, 3);
INSERT INTO `option_table` VALUES (11, 'C', 'EDSAC', 0, 3);
INSERT INTO `option_table` VALUES (12, 'D', 'MARKI', 0, 3);
INSERT INTO `option_table` VALUES (13, 'A', '实时处理', 0, 4);
INSERT INTO `option_table` VALUES (14, 'B', '智能化', 0, 4);
INSERT INTO `option_table` VALUES (15, 'C', '并行', 0, 4);
INSERT INTO `option_table` VALUES (16, 'D', '冯•诺依曼', 1, 4);
INSERT INTO `option_table` VALUES (17, 'A', '1.001010', 0, 5);
INSERT INTO `option_table` VALUES (18, 'B', '1.0010110', 0, 5);
INSERT INTO `option_table` VALUES (19, 'C', '0.0010110', 0, 5);
INSERT INTO `option_table` VALUES (20, 'D', '0.1101010', 1, 5);
INSERT INTO `option_table` VALUES (21, 'A', 'B2H', 0, 6);
INSERT INTO `option_table` VALUES (22, 'B', '0.9CH', 0, 6);
INSERT INTO `option_table` VALUES (23, 'C', '0.64H', 0, 6);
INSERT INTO `option_table` VALUES (24, 'D', '4EH', 1, 6);
INSERT INTO `option_table` VALUES (25, 'A', '加1', 0, 7);
INSERT INTO `option_table` VALUES (26, 'B', '减1', 0, 7);
INSERT INTO `option_table` VALUES (27, 'C', '加3', 1, 7);
INSERT INTO `option_table` VALUES (28, 'D', '减3', 0, 7);
INSERT INTO `option_table` VALUES (29, 'A', '（（R））+（Ad）-->（Ad）', 0, 8);
INSERT INTO `option_table` VALUES (30, 'B', '（（R））+（（Ad））-->Ad', 0, 8);
INSERT INTO `option_table` VALUES (31, 'C', '（R）+（（Ad））-->（Ad）', 0, 8);
INSERT INTO `option_table` VALUES (32, 'D', '（（R））+（Ad）-->Ad', 1, 8);
INSERT INTO `option_table` VALUES (33, 'A', '21.3', 0, 9);
INSERT INTO `option_table` VALUES (34, 'B', '84.C', 1, 9);
INSERT INTO `option_table` VALUES (35, 'C', '24.6', 0, 9);
INSERT INTO `option_table` VALUES (36, 'D', '84.6', 0, 9);
INSERT INTO `option_table` VALUES (37, 'A', '1.0010101', 0, 10);
INSERT INTO `option_table` VALUES (38, 'B', '1.0010110', 0, 10);
INSERT INTO `option_table` VALUES (39, 'C', '0.0010110', 0, 10);
INSERT INTO `option_table` VALUES (40, 'D', '0.1101010', 1, 10);
INSERT INTO `option_table` VALUES (41, 'A', 'B2H', 1, 11);
INSERT INTO `option_table` VALUES (42, 'B', '1.9CH', 0, 11);
INSERT INTO `option_table` VALUES (43, 'C', '1.64H', 0, 11);
INSERT INTO `option_table` VALUES (44, 'D', 'CEH', 0, 11);
INSERT INTO `option_table` VALUES (45, 'A', '左规格化', 0, 12);
INSERT INTO `option_table` VALUES (46, 'B', '右规格化', 1, 12);
INSERT INTO `option_table` VALUES (47, 'C', '修改阶码', 0, 12);
INSERT INTO `option_table` VALUES (48, 'D', '结束浮点运算', 0, 12);
INSERT INTO `option_table` VALUES (49, 'A', '只适用于存储那些固定数据的场合；', 1, 13);
INSERT INTO `option_table` VALUES (50, 'B', '具有不易失性，即使是电源被切断，ROM的信息也不会丢失', 0, 13);
INSERT INTO `option_table` VALUES (51, 'C', '存储单元简单，集成度高', 0, 13);
INSERT INTO `option_table` VALUES (52, 'D', '存储器中的内容是被预先写好的，并且断电后仍能长期保存', 0, 13);
INSERT INTO `option_table` VALUES (53, 'A', '用原码表示操作数，然后直接相乘', 0, 14);
INSERT INTO `option_table` VALUES (54, 'B', '被乘数用原码表示，乘数取绝对值，然后相乘', 0, 14);
INSERT INTO `option_table` VALUES (55, 'C', '乘数用原码表示，被乘数取绝对值，然后相乘', 0, 14);
INSERT INTO `option_table` VALUES (56, 'D', '先取操作数绝对值相乘，符号位单独处理', 1, 14);
INSERT INTO `option_table` VALUES (57, 'A', '每一条机器指令由一条微指令来执行', 0, 15);
INSERT INTO `option_table` VALUES (58, 'B', '每一条机器指令由一段用微指令编成的微程序来解释执行', 1, 15);
INSERT INTO `option_table` VALUES (59, 'C', '一段机器指令组成的程序可由一条微指令来执行', 0, 15);
INSERT INTO `option_table` VALUES (60, 'D', '一条微指令由若干条机器指令组成', 0, 15);
INSERT INTO `option_table` VALUES (61, 'A', 'ALU', 0, 16);
INSERT INTO `option_table` VALUES (62, 'B', '控制器', 0, 16);
INSERT INTO `option_table` VALUES (63, 'C', '寄存器', 0, 16);
INSERT INTO `option_table` VALUES (64, 'D', 'DRAM', 1, 16);
INSERT INTO `option_table` VALUES (65, 'A', 'SRAM', 0, 17);
INSERT INTO `option_table` VALUES (66, 'B', 'DRAM', 1, 17);
INSERT INTO `option_table` VALUES (67, 'C', 'EPROM', 0, 17);
INSERT INTO `option_table` VALUES (68, 'D', 'Flash Memory', 0, 17);
INSERT INTO `option_table` VALUES (69, 'A', '提高微程序的执行速度', 0, 18);
INSERT INTO `option_table` VALUES (70, 'B', '提高微程序设计的灵活性', 0, 18);
INSERT INTO `option_table` VALUES (71, 'C', '缩短微指令的长度', 0, 18);
INSERT INTO `option_table` VALUES (72, 'D', '增大控制存储器的容量', 1, 18);
INSERT INTO `option_table` VALUES (73, 'A', '0.0100110×2^4', 0, 19);
INSERT INTO `option_table` VALUES (74, 'B', '0.0110011×2^4', 0, 19);
INSERT INTO `option_table` VALUES (75, 'C', '1.0100011×2^4', 0, 19);
INSERT INTO `option_table` VALUES (76, 'D', '1.1100110×2^4', 1, 19);
INSERT INTO `option_table` VALUES (77, 'A', '将较小的一个阶码调整到与较大的一个阶码相同', 1, 20);
INSERT INTO `option_table` VALUES (78, 'B', '将较大的一个阶码调整到与较小的一个阶码相同', 0, 20);
INSERT INTO `option_table` VALUES (79, 'C', '将被加数的阶码调整到与加数的阶码相同', 0, 20);
INSERT INTO `option_table` VALUES (80, 'D', '将加数的阶码调整到与被加数的阶码相同', 0, 20);
INSERT INTO `option_table` VALUES (81, 'A', 'CPU内部各部件', 1, 21);
INSERT INTO `option_table` VALUES (82, 'B', 'CPU与存储器、I/O系统之间的连线', 0, 21);
INSERT INTO `option_table` VALUES (83, 'C', '主机系统板上的各个芯片', 0, 21);
INSERT INTO `option_table` VALUES (84, 'D', '系统中的各个功能模块或设备', 0, 21);
INSERT INTO `option_table` VALUES (85, 'A', '操作数的有效地址', 1, 22);
INSERT INTO `option_table` VALUES (86, 'B', '操作数', 0, 22);
INSERT INTO `option_table` VALUES (87, 'C', '操作数的间接地址', 0, 22);
INSERT INTO `option_table` VALUES (88, 'D', '操作数的形式地址', 0, 22);
INSERT INTO `option_table` VALUES (89, 'A', '硬盘', 0, 23);
INSERT INTO `option_table` VALUES (90, 'B', '光盘', 0, 23);
INSERT INTO `option_table` VALUES (91, 'C', '磁带', 0, 23);
INSERT INTO `option_table` VALUES (92, 'D', '半导体存储器', 1, 23);
INSERT INTO `option_table` VALUES (93, 'A', '能一次并行传送的数据位数', 1, 24);
INSERT INTO `option_table` VALUES (94, 'B', '可依次串行传送的数据位数', 0, 24);
INSERT INTO `option_table` VALUES (95, 'C', '单位时间内可传送的数据位数', 0, 24);
INSERT INTO `option_table` VALUES (96, 'D', '能一次并行传送的数据最大值', 0, 24);
INSERT INTO `option_table` VALUES (97, 'A', '163.3125', 1, 25);
INSERT INTO `option_table` VALUES (98, 'B', '172.5', 0, 25);
INSERT INTO `option_table` VALUES (99, 'C', '179.75', 0, 25);
INSERT INTO `option_table` VALUES (100, 'D', '188.5', 0, 25);
INSERT INTO `option_table` VALUES (101, 'A', '3', 0, 26);
INSERT INTO `option_table` VALUES (102, 'B', '6', 0, 26);
INSERT INTO `option_table` VALUES (103, 'C', '9', 1, 26);
INSERT INTO `option_table` VALUES (104, 'D', '1', 0, 26);
INSERT INTO `option_table` VALUES (105, 'A', '只能存放数据，不能存放地址', 0, 27);
INSERT INTO `option_table` VALUES (106, 'B', '可以存放数据和地址', 1, 27);
INSERT INTO `option_table` VALUES (107, 'C', '可以存放数据和地址，还可以用做指令寄存器IR', 0, 27);
INSERT INTO `option_table` VALUES (108, 'D', '可以存放数据和地址，还可以用做程序计数器PC', 0, 27);
INSERT INTO `option_table` VALUES (109, 'A', 'B2H', 0, 28);
INSERT INTO `option_table` VALUES (110, 'B', '0.9CH', 0, 28);
INSERT INTO `option_table` VALUES (111, 'C', '0.64H', 0, 28);
INSERT INTO `option_table` VALUES (112, 'D', '4EH', 1, 28);
INSERT INTO `option_table` VALUES (113, 'A', '-（2^7-1）', 1, 29);
INSERT INTO `option_table` VALUES (114, 'B', '-（2^8-1）', 0, 29);
INSERT INTO `option_table` VALUES (115, 'C', '-2^7', 0, 29);
INSERT INTO `option_table` VALUES (116, 'D', '-2^8', 0, 29);
INSERT INTO `option_table` VALUES (117, 'A', '连续的两个存储单元分布在相邻两个存储分体中', 1, 30);
INSERT INTO `option_table` VALUES (118, 'B', '连续的两个存储单元分布在同一个存储体内，但地址相隔4', 0, 30);
INSERT INTO `option_table` VALUES (119, 'C', '地址按并行分体纵向顺序编号', 0, 30);
INSERT INTO `option_table` VALUES (120, 'D', '地址按并行分体横向地址相隔4编号', 0, 30);
INSERT INTO `option_table` VALUES (121, 'A', '运算结果的绝对值小于机器所能表示的最小绝对值', 0, 31);
INSERT INTO `option_table` VALUES (122, 'B', '运算结果小于机器所能表示的最小负数', 1, 31);
INSERT INTO `option_table` VALUES (123, 'C', '运算结果小于机器所能表示的最小正数', 0, 31);
INSERT INTO `option_table` VALUES (124, 'D', '运算结果的最低有效位产生错误', 0, 31);
INSERT INTO `option_table` VALUES (125, 'A', '指令执行速度慢，指令功能的修改和扩展容易', 0, 32);
INSERT INTO `option_table` VALUES (126, 'B', '指令执行速度慢，指令功能的修改和扩展难', 0, 32);
INSERT INTO `option_table` VALUES (127, 'C', '指令执行速度快，指令功能的修改和扩展容易', 0, 32);
INSERT INTO `option_table` VALUES (128, 'D', '指令执行速度快，指令功能的修改和扩展难', 1, 32);
INSERT INTO `option_table` VALUES (129, 'A', '寄存器直接寻址方式', 0, 33);
INSERT INTO `option_table` VALUES (130, 'B', '寄存器间接寻址方式', 1, 33);
INSERT INTO `option_table` VALUES (131, 'C', '变址寄存器寻址方式', 0, 33);
INSERT INTO `option_table` VALUES (132, 'D', '相对寻址方式', 0, 33);
INSERT INTO `option_table` VALUES (133, 'A', '指令长度固定，指令种类少', 0, 34);
INSERT INTO `option_table` VALUES (134, 'B', '指令功能尽可能强', 1, 34);
INSERT INTO `option_table` VALUES (135, 'C', '增加寄存器的数目，以尽量减少访存次数', 0, 34);
INSERT INTO `option_table` VALUES (136, 'D', '选取使用频率最高的一些简单指令，以及很有用但不复杂的指令', 0, 34);
INSERT INTO `option_table` VALUES (137, 'A', '在主存与CPU之间进行数据传送', 0, 35);
INSERT INTO `option_table` VALUES (138, 'B', '在主存和I/O端口之间进行相间传送', 0, 35);
INSERT INTO `option_table` VALUES (139, 'C', '在CPU和I/O端口之间进行数据传送', 1, 35);
INSERT INTO `option_table` VALUES (140, 'D', '在I/O端口和I/O端口之间进行数据传送', 0, 35);
INSERT INTO `option_table` VALUES (141, 'A', '都采用地址指定方式进行读写', 0, 36);
INSERT INTO `option_table` VALUES (142, 'B', 'ROM芯片属于半导体随机存储器芯片', 1, 36);
INSERT INTO `option_table` VALUES (143, 'C', 'SRAM是静态随机访问存储器，可用作cache', 0, 36);
INSERT INTO `option_table` VALUES (144, 'D', 'DRAM是动态随机访问存储器，可用作主存', 0, 36);
INSERT INTO `option_table` VALUES (145, 'A', '逻辑运算指令', 0, 37);
INSERT INTO `option_table` VALUES (146, 'B', '数据传送指令', 0, 37);
INSERT INTO `option_table` VALUES (147, 'C', '移位指令', 0, 37);
INSERT INTO `option_table` VALUES (148, 'D', '子程序调用指令', 1, 37);
INSERT INTO `option_table` VALUES (149, 'A', '工作中存储的内容动态的变化', 0, 38);
INSERT INTO `option_table` VALUES (150, 'B', '工作中需要动态地改变访存地址', 0, 38);
INSERT INTO `option_table` VALUES (151, 'C', '每隔一定时间刷新一遍', 1, 38);
INSERT INTO `option_table` VALUES (152, 'D', '每次读出后需根据原存内容全部刷新一遍', 0, 38);
INSERT INTO `option_table` VALUES (153, 'A', '主存储器存放计算机运行期间的大量程序和数据；', 1, 39);
INSERT INTO `option_table` VALUES (154, 'B', '辅助存储器中的信息需要由计算机专门的存储管理部件调入主存，然后才被CPU访问；', 0, 39);
INSERT INTO `option_table` VALUES (155, 'C', '主存储器处于被中央处理机CPU直接访问的位置，由只读存储器ROM组成；', 0, 39);
INSERT INTO `option_table` VALUES (156, 'D', '辅助存储器由随机存储器RAM组成；', 0, 39);
INSERT INTO `option_table` VALUES (157, 'A', '主存容量不足', 0, 40);
INSERT INTO `option_table` VALUES (158, 'B', '主存与辅存速度不匹配', 0, 40);
INSERT INTO `option_table` VALUES (159, 'C', '辅存与CPU速度不匹配', 0, 40);
INSERT INTO `option_table` VALUES (160, 'D', '主存与CPU速度不匹配', 1, 40);
INSERT INTO `option_table` VALUES (161, 'A', '虚拟存储器的逻辑地址空间比物理地址空间小', 0, 41);
INSERT INTO `option_table` VALUES (162, 'B', '虚拟存储器的逻辑地址码就是主存的地址码', 0, 41);
INSERT INTO `option_table` VALUES (163, 'C', '虚拟存储器在存取数据时直接访问外存', 0, 41);
INSERT INTO `option_table` VALUES (164, 'D', '虚拟存储器每次访问主存时，必须进行虚实地址的变换', 1, 41);
INSERT INTO `option_table` VALUES (165, 'A', '4和2', 0, 42);
INSERT INTO `option_table` VALUES (166, 'B', '4和8', 1, 42);
INSERT INTO `option_table` VALUES (167, 'C', '2和4', 0, 42);
INSERT INTO `option_table` VALUES (168, 'D', '8和4', 0, 42);
INSERT INTO `option_table` VALUES (169, 'A', '支持程序的动态定位', 0, 43);
INSERT INTO `option_table` VALUES (170, 'B', '支持访存地址的越界检查', 0, 43);
INSERT INTO `option_table` VALUES (171, 'C', '支持向量、数组的运算寻址', 1, 43);
INSERT INTO `option_table` VALUES (172, 'D', '支持程序在存储器中的定位和扩大寻址范围', 0, 43);
INSERT INTO `option_table` VALUES (173, 'A', '地址指定方式', 0, 44);
INSERT INTO `option_table` VALUES (174, 'B', '内容指定方式', 1, 44);
INSERT INTO `option_table` VALUES (175, 'C', '堆栈访问方式', 0, 44);
INSERT INTO `option_table` VALUES (176, 'D', '队列访问方式', 0, 44);
INSERT INTO `option_table` VALUES (177, 'A', '主存—辅存—cache—寄存器', 0, 45);
INSERT INTO `option_table` VALUES (178, 'B', '辅存—cache—主存—寄存器', 0, 45);
INSERT INTO `option_table` VALUES (179, 'C', '辅存—主存—cache—寄存器', 1, 45);
INSERT INTO `option_table` VALUES (180, 'D', '辅存—主存—寄存器—cache', 0, 45);
INSERT INTO `option_table` VALUES (181, 'A', '增加内存容量', 0, 46);
INSERT INTO `option_table` VALUES (182, 'B', '提高内存可靠性', 0, 46);
INSERT INTO `option_table` VALUES (183, 'C', '加快信息访问速度', 1, 46);
INSERT INTO `option_table` VALUES (184, 'D', '增加内存容量，同时加快访问速度', 0, 46);
INSERT INTO `option_table` VALUES (185, 'A', '多体交叉存储器主要解决扩充容量问题', 0, 47);
INSERT INTO `option_table` VALUES (186, 'B', 'cache的功能全由硬件完成', 1, 47);
INSERT INTO `option_table` VALUES (187, 'C', 'cache与主存同一编址，即主存空间的某一部分属于cache', 0, 47);
INSERT INTO `option_table` VALUES (188, 'D', '主存－外存的存储层次，是为了弥补主存速度的不足', 0, 47);
INSERT INTO `option_table` VALUES (189, 'A', '通用寄存器', 0, 48);
INSERT INTO `option_table` VALUES (190, 'B', '控制存储器', 0, 48);
INSERT INTO `option_table` VALUES (191, 'C', '堆栈', 1, 48);
INSERT INTO `option_table` VALUES (192, 'D', '外设接口', 0, 48);
INSERT INTO `option_table` VALUES (193, 'A', '寄存器和软盘', 0, 49);
INSERT INTO `option_table` VALUES (194, 'B', '软盘和硬盘', 0, 49);
INSERT INTO `option_table` VALUES (195, 'C', '磁盘区域与主存', 1, 49);
INSERT INTO `option_table` VALUES (196, 'D', 'CDROM和主存', 0, 49);
INSERT INTO `option_table` VALUES (197, 'A', '软件', 0, 50);
INSERT INTO `option_table` VALUES (198, 'B', '硬件', 0, 50);
INSERT INTO `option_table` VALUES (199, 'C', '固件', 0, 50);
INSERT INTO `option_table` VALUES (200, 'D', '软硬件结合', 1, 50);
INSERT INTO `option_table` VALUES (201, 'A', '采用指令流水线，使得一条指令执行的过程变短', 1, 51);
INSERT INTO `option_table` VALUES (202, 'B', '指令流水线可以大大加快程序执行的速度', 0, 51);
INSERT INTO `option_table` VALUES (203, 'C', '指令流水线在许多情况下会遭到破坏', 0, 51);
INSERT INTO `option_table` VALUES (204, 'D', '指令流水线中的每个流水段的时间相同', 0, 51);
INSERT INTO `option_table` VALUES (205, 'A', '小得多的逻辑', 0, 52);
INSERT INTO `option_table` VALUES (206, 'B', '大得多的逻辑', 1, 52);
INSERT INTO `option_table` VALUES (207, 'C', '小得多的物理', 0, 52);
INSERT INTO `option_table` VALUES (208, 'D', '大得多的物理', 0, 52);
INSERT INTO `option_table` VALUES (209, 'A', '支持程序的模块化设计和并行编程的要求', 0, 53);
INSERT INTO `option_table` VALUES (210, 'B', '各段程序的修改互不影响', 0, 53);
INSERT INTO `option_table` VALUES (211, 'C', '地址变换速度快、内存碎片（零头）小', 1, 53);
INSERT INTO `option_table` VALUES (212, 'D', '便于多道程序共享内存的某些段', 0, 53);
INSERT INTO `option_table` VALUES (213, 'A', '主存的存取速度可以与CPU匹配', 0, 54);
INSERT INTO `option_table` VALUES (214, 'B', '主存由ROM构成', 0, 54);
INSERT INTO `option_table` VALUES (215, 'C', '辅存中的程序调入主存后才能运行', 1, 54);
INSERT INTO `option_table` VALUES (216, 'D', '汇编语言程序设计不需要了解计算机的硬件结构', 0, 54);
INSERT INTO `option_table` VALUES (217, 'A', '通用寄存器', 0, 55);
INSERT INTO `option_table` VALUES (218, 'B', '堆栈', 1, 55);
INSERT INTO `option_table` VALUES (219, 'C', '存储器', 0, 55);
INSERT INTO `option_table` VALUES (220, 'D', '外存', 0, 55);
INSERT INTO `option_table` VALUES (221, 'A', '程序直接控制方式', 1, 56);
INSERT INTO `option_table` VALUES (222, 'B', '程序中断方式', 0, 56);
INSERT INTO `option_table` VALUES (223, 'C', 'DMA输入输出方式', 0, 56);
INSERT INTO `option_table` VALUES (224, 'D', '通道控制方式', 0, 56);
INSERT INTO `option_table` VALUES (225, 'A', '中断方式一般用于处理随机出现的服务请求', 1, 57);
INSERT INTO `option_table` VALUES (226, 'B', '外部设备发出中断应立即得到CPU的响应', 0, 57);
INSERT INTO `option_table` VALUES (227, 'C', '中断方式可用于CPU向外部设备的请求', 0, 57);
INSERT INTO `option_table` VALUES (228, 'D', 'DMA也可用于在主存与主存之间传送数据', 0, 57);
INSERT INTO `option_table` VALUES (229, 'A', '中断向量表', 0, 58);
INSERT INTO `option_table` VALUES (230, 'B', '通用寄存器', 0, 58);
INSERT INTO `option_table` VALUES (231, 'C', '堆栈', 1, 58);
INSERT INTO `option_table` VALUES (232, 'D', '数据缓冲寄存器', 0, 58);
INSERT INTO `option_table` VALUES (233, 'A', '时钟周期', 0, 59);
INSERT INTO `option_table` VALUES (234, 'B', '机器周期', 0, 59);
INSERT INTO `option_table` VALUES (235, 'C', '工作周期', 0, 59);
INSERT INTO `option_table` VALUES (236, 'D', '指令周期', 1, 59);
INSERT INTO `option_table` VALUES (237, 'A', '01', 0, 60);
INSERT INTO `option_table` VALUES (238, 'B', '00', 0, 60);
INSERT INTO `option_table` VALUES (239, 'C', '10', 1, 60);
INSERT INTO `option_table` VALUES (240, 'D', '11', 0, 60);
INSERT INTO `option_table` VALUES (241, 'A', 'ALU与主存', 0, 61);
INSERT INTO `option_table` VALUES (242, 'B', 'ALU、累加器与主存', 0, 61);
INSERT INTO `option_table` VALUES (243, 'C', 'ALU、通用寄存器和主存', 0, 61);
INSERT INTO `option_table` VALUES (244, 'D', 'ALU、累加器与通用寄存器', 1, 61);
INSERT INTO `option_table` VALUES (245, 'A', 'CPU内部各部件', 0, 62);
INSERT INTO `option_table` VALUES (246, 'B', 'CPU与存储器、I/O系统之间的连线', 1, 62);
INSERT INTO `option_table` VALUES (247, 'C', '主机系统板上的各个芯片', 0, 62);
INSERT INTO `option_table` VALUES (248, 'D', '系统中的各个功能模块或设备', 0, 62);
INSERT INTO `option_table` VALUES (249, 'A', '00', 0, 63);
INSERT INTO `option_table` VALUES (250, 'B', '01', 0, 63);
INSERT INTO `option_table` VALUES (251, 'C', '10', 1, 63);
INSERT INTO `option_table` VALUES (252, 'D', '11', 0, 63);
INSERT INTO `option_table` VALUES (253, 'A', '运算结果没有溢出', 0, 64);
INSERT INTO `option_table` VALUES (254, 'B', '运算结果发生溢出', 1, 64);
INSERT INTO `option_table` VALUES (255, 'C', '运算结果是正数', 0, 64);
INSERT INTO `option_table` VALUES (256, 'D', '运算结果是负数', 0, 64);
INSERT INTO `option_table` VALUES (257, 'A', '操作数的形式地址', 0, 65);
INSERT INTO `option_table` VALUES (258, 'B', '操作数的有效地址', 0, 65);
INSERT INTO `option_table` VALUES (259, 'C', '操作数的间接地址', 1, 65);
INSERT INTO `option_table` VALUES (260, 'D', '操作数', 0, 65);
INSERT INTO `option_table` VALUES (261, 'A', '程序查询方式', 0, 66);
INSERT INTO `option_table` VALUES (262, 'B', '程序中断方式', 0, 66);
INSERT INTO `option_table` VALUES (263, 'C', 'DMA方式', 1, 66);
INSERT INTO `option_table` VALUES (264, 'D', '无条件程序控制方式', 0, 66);
INSERT INTO `option_table` VALUES (265, 'A', 'DMA控制器和CPU都可以作为总线的主控设备', 0, 67);
INSERT INTO `option_table` VALUES (266, 'B', 'DMA方式下整个I/O过程完全不需要CPU介入', 1, 67);
INSERT INTO `option_table` VALUES (267, 'C', 'DMA控制器向CPU请求的是总线的使用权', 0, 67);
INSERT INTO `option_table` VALUES (268, 'D', 'DMA方式需要用中断处理进行辅助操作', 0, 67);
INSERT INTO `option_table` VALUES (269, 'A', '阶码部分与尾数部分分别进行加减运算', 0, 68);
INSERT INTO `option_table` VALUES (270, 'B', '阶码与尾数作为一个整体进行加减运算', 0, 68);
INSERT INTO `option_table` VALUES (271, 'C', '阶码对齐后，尾数相加减运算', 1, 68);
INSERT INTO `option_table` VALUES (272, 'D', '尾数单独加减，去两数中最大阶码值作为结果的阶码值', 0, 68);
INSERT INTO `option_table` VALUES (273, 'A', '10100101', 1, 69);
INSERT INTO `option_table` VALUES (274, 'B', '11001010', 0, 69);
INSERT INTO `option_table` VALUES (275, 'C', '01000110', 0, 69);
INSERT INTO `option_table` VALUES (276, 'D', '01010101', 0, 69);
INSERT INTO `option_table` VALUES (277, 'A', '读写存储器', 0, 70);
INSERT INTO `option_table` VALUES (278, 'B', '只读存储器', 0, 70);
INSERT INTO `option_table` VALUES (279, 'C', '闪速存储器', 0, 70);
INSERT INTO `option_table` VALUES (280, 'D', '光擦除可编程只读存储器', 1, 70);
INSERT INTO `option_table` VALUES (281, 'A', '主存的存取时间', 1, 71);
INSERT INTO `option_table` VALUES (282, 'B', '块的大小', 0, 71);
INSERT INTO `option_table` VALUES (283, 'C', 'Cache的组织方式', 0, 71);
INSERT INTO `option_table` VALUES (284, 'D', 'Cache的容量', 0, 71);
INSERT INTO `option_table` VALUES (285, 'A', '高速芯片', 0, 72);
INSERT INTO `option_table` VALUES (286, 'B', '新型器件', 0, 72);
INSERT INTO `option_table` VALUES (287, 'C', '流水技术', 0, 72);
INSERT INTO `option_table` VALUES (288, 'D', '两套相互独立的读写电路', 1, 72);
INSERT INTO `option_table` VALUES (289, 'A', '存放1个二进制信息位的存储元', 0, 73);
INSERT INTO `option_table` VALUES (290, 'B', '存放1个机器字的所有存储元集合', 1, 73);
INSERT INTO `option_table` VALUES (291, 'C', '存放1字节的所有存储元集合', 0, 73);
INSERT INTO `option_table` VALUES (292, 'D', '存放2字节的所有存储元集合', 0, 73);
INSERT INTO `option_table` VALUES (293, 'A', '或', 0, 74);
INSERT INTO `option_table` VALUES (294, 'B', '与', 0, 74);
INSERT INTO `option_table` VALUES (295, 'C', '异或', 1, 74);
INSERT INTO `option_table` VALUES (296, 'D', '与非', 0, 74);
INSERT INTO `option_table` VALUES (297, 'A', 'ISA', 0, 75);
INSERT INTO `option_table` VALUES (298, 'B', 'EISA', 0, 75);
INSERT INTO `option_table` VALUES (299, 'C', 'VESA', 0, 75);
INSERT INTO `option_table` VALUES (300, 'D', 'PCI', 1, 75);
INSERT INTO `option_table` VALUES (301, 'A', '单总线', 1, 76);
INSERT INTO `option_table` VALUES (302, 'B', '双总线', 0, 76);
INSERT INTO `option_table` VALUES (303, 'C', '三总线', 0, 76);
INSERT INTO `option_table` VALUES (304, 'D', '多总线', 0, 76);
INSERT INTO `option_table` VALUES (305, 'A', '只有一个部件可以向总线发送信息，并且只有一个部件能从总线上接收信息', 0, 77);
INSERT INTO `option_table` VALUES (306, 'B', '只有一个部件可以向总线发送信息，但可以有多个部件同时从总线上接收信息', 1, 77);
INSERT INTO `option_table` VALUES (307, 'C', '可以有一个以上部件向总线发送信息，但只有一个部件可从总线上接收信息', 0, 77);
INSERT INTO `option_table` VALUES (308, 'D', '可以有一个以上部件向总线发送信息，并且可以有多个部件同时从总线上接收信息', 0, 77);
INSERT INTO `option_table` VALUES (309, 'A', '指令寄存器', 0, 78);
INSERT INTO `option_table` VALUES (310, 'B', '累加器', 1, 78);
INSERT INTO `option_table` VALUES (311, 'C', '存储器', 0, 78);
INSERT INTO `option_table` VALUES (312, 'D', 'ALU', 0, 78);
INSERT INTO `option_table` VALUES (313, 'A', '指令寄存器', 0, 79);
INSERT INTO `option_table` VALUES (314, 'B', '地址寄存器', 0, 79);
INSERT INTO `option_table` VALUES (315, 'C', '数据缓冲寄存器', 1, 79);
INSERT INTO `option_table` VALUES (316, 'D', '累加寄存器', 0, 79);
INSERT INTO `option_table` VALUES (317, 'A', 'CPU', 0, 80);
INSERT INTO `option_table` VALUES (318, 'B', 'DMA控制器', 1, 80);
INSERT INTO `option_table` VALUES (319, 'C', '存储器', 0, 80);
INSERT INTO `option_table` VALUES (320, 'D', '总线', 0, 80);
INSERT INTO `option_table` VALUES (321, 'A', '立即数', 0, 81);
INSERT INTO `option_table` VALUES (322, 'B', '寄存器', 1, 81);
INSERT INTO `option_table` VALUES (323, 'C', '直接', 0, 81);
INSERT INTO `option_table` VALUES (324, 'D', '间接', 0, 81);
INSERT INTO `option_table` VALUES (325, 'A', '变址寻址方式', 1, 82);
INSERT INTO `option_table` VALUES (326, 'B', '相对寻址方式', 0, 82);
INSERT INTO `option_table` VALUES (327, 'C', '基址寻址方式', 0, 82);
INSERT INTO `option_table` VALUES (328, 'D', '间接寻址方式', 0, 82);
INSERT INTO `option_table` VALUES (329, 'A', '与内存单元必须统一编址', 0, 83);
INSERT INTO `option_table` VALUES (330, 'B', '可以独立编址', 1, 83);
INSERT INTO `option_table` VALUES (331, 'C', '必须采用DMA方式与内存交换数据', 0, 83);
INSERT INTO `option_table` VALUES (332, 'D', '必须采用中断方式与内存交换数据', 0, 83);
INSERT INTO `option_table` VALUES (333, 'A', '主存储器存放的是大量静止、待命的信息', 0, 84);
INSERT INTO `option_table` VALUES (334, 'B', '辅助存储器存放系统程序和大型数据文件及数据库', 1, 84);
INSERT INTO `option_table` VALUES (335, 'C', '辅助存储器中的信息可直接被CPU访问', 0, 84);
INSERT INTO `option_table` VALUES (336, 'D', '主存储器处于被中央处理机CPU直接访问的位置，由只读存储器ROM组成', 0, 84);
INSERT INTO `option_table` VALUES (337, 'A', '用原码表示乘数与被乘数，直接相乘', 0, 85);
INSERT INTO `option_table` VALUES (338, 'B', '先取操作数绝对值相乘，符号位单独处理', 1, 85);
INSERT INTO `option_table` VALUES (339, 'C', '符号位连同绝对值一起相乘', 0, 85);
INSERT INTO `option_table` VALUES (340, 'D', '取操作数绝对值相乘，乘积符号与乘数符号相同', 0, 85);
INSERT INTO `option_table` VALUES (341, 'A', '可对栈内任一单元存取代码', 0, 86);
INSERT INTO `option_table` VALUES (342, 'B', '只能在栈底存取代码', 0, 86);
INSERT INTO `option_table` VALUES (343, 'C', '只能在栈顶存取代码', 1, 86);
INSERT INTO `option_table` VALUES (344, 'D', '可在栈顶和栈底存取代码', 0, 86);
INSERT INTO `option_table` VALUES (345, 'A', 'CPU周期', 0, 87);
INSERT INTO `option_table` VALUES (346, 'B', '微周期', 1, 87);
INSERT INTO `option_table` VALUES (347, 'C', '时钟周期', 0, 87);
INSERT INTO `option_table` VALUES (348, 'D', '机器周期', 0, 87);
INSERT INTO `option_table` VALUES (349, 'A', '操作码字段以外的辅助操作字段的代码', 0, 88);
INSERT INTO `option_table` VALUES (350, 'B', '指令格式中不同字段设置的操作码', 0, 88);
INSERT INTO `option_table` VALUES (351, 'C', '一种指令优化技术，即让操作码的长度随地址数的减少而增加，不同地址数的指令可以具有不同的操作码长度', 1, 88);
INSERT INTO `option_table` VALUES (352, 'D', '指扩大操作码字段的位数', 0, 88);
INSERT INTO `option_table` VALUES (353, 'A', '2n位', 0, 89);
INSERT INTO `option_table` VALUES (354, 'B', '2n-2位', 0, 89);
INSERT INTO `option_table` VALUES (355, 'C', 'n位', 1, 89);
INSERT INTO `option_table` VALUES (356, 'D', 'n+2位', 0, 89);
INSERT INTO `option_table` VALUES (357, 'A', '采用单符号位操作检测方法判溢时，当操作数中的加数与被加数符号相同时，若运算结果的符号与操作数的符号不一致，表示溢出；否则，表示没有溢出', 0, 90);
INSERT INTO `option_table` VALUES (358, 'B', '采用单符号位操作检测方法判溢时，当加数和被加数符号不同时，相加运算的结果有可能会溢出', 1, 90);
INSERT INTO `option_table` VALUES (359, 'C', '采用变形码操作检测方法判溢时，若运算结果的两个符号位的代码不一致时表示溢出', 0, 90);
INSERT INTO `option_table` VALUES (360, 'D', '采用变形码操作检测方法判溢时，最高符号位永远表示结果的正确符号', 0, 90);
INSERT INTO `option_table` VALUES (361, 'A', '1001H', 0, 91);
INSERT INTO `option_table` VALUES (362, 'B', '1002H', 0, 91);
INSERT INTO `option_table` VALUES (363, 'C', '1003H', 0, 91);
INSERT INTO `option_table` VALUES (364, 'D', '1004H', 1, 91);
INSERT INTO `option_table` VALUES (365, 'A', '所有的简单指令在一个机器周期内执行完', 0, 92);
INSERT INTO `option_table` VALUES (366, 'B', '采用大量的寄存器和高速缓冲存储器技术', 0, 92);
INSERT INTO `option_table` VALUES (367, 'C', '通过优化编译程序提高处理速度', 0, 92);
INSERT INTO `option_table` VALUES (368, 'D', '指令的功能强大', 1, 92);
INSERT INTO `option_table` VALUES (369, 'A', '存储器中的内容是被预先写好的，并且断电后仍能长期保存', 0, 93);
INSERT INTO `option_table` VALUES (370, 'B', '运行程序时，ROM只能读出信息而不可能随机写入', 1, 93);
INSERT INTO `option_table` VALUES (371, 'C', '存储单元简单，集成度高', 0, 93);
INSERT INTO `option_table` VALUES (372, 'D', '具有不易失性，即使是电源被切断，ROM的信息也不会丢失', 0, 93);
INSERT INTO `option_table` VALUES (373, 'A', '计算机运行时，机器指令与微指令都存放在主存中', 0, 94);
INSERT INTO `option_table` VALUES (374, 'B', '待执行的微指令的地址存放在程序计数器（PC）中', 0, 94);
INSERT INTO `option_table` VALUES (375, 'C', '一条微指令的功能可用多条机器指令组成的程序实现', 0, 94);
INSERT INTO `option_table` VALUES (376, 'D', '一条机器指令的功能可用多条微指令组成的微程序实现', 1, 94);
INSERT INTO `option_table` VALUES (377, 'A', '重叠控制方式要研究的是如何加快指令执行过程', 0, 95);
INSERT INTO `option_table` VALUES (378, 'B', '重叠解释并不能加快指令的实现，但能加快相邻两条指令以至一段程序的解释', 0, 95);
INSERT INTO `option_table` VALUES (379, 'C', '“流水”和“一次重叠”都可同时解释两条以上指令', 1, 95);
INSERT INTO `option_table` VALUES (380, 'D', '“流水”把一条指令的解释过程分解成很多个的子过程', 0, 95);
INSERT INTO `option_table` VALUES (381, 'A', '一个记忆单元只能存储1位二进制数，是信息的最小单元', 0, 96);
INSERT INTO `option_table` VALUES (382, 'B', '存储器的核心是存储阵列，它是由一个个基本记忆单元组成的', 0, 96);
INSERT INTO `option_table` VALUES (383, 'C', '一台机器的所有存储单元的长度可能不同', 1, 96);
INSERT INTO `option_table` VALUES (384, 'D', '一个存储单元的每个二进制必须并行工作，同时读出或同时写入信息', 0, 96);
INSERT INTO `option_table` VALUES (385, 'A', '能一次并行传送的数据位数', 0, 97);
INSERT INTO `option_table` VALUES (386, 'B', '可一次串行传送的数据位数', 0, 97);
INSERT INTO `option_table` VALUES (387, 'C', '可一次并行传送的数据的最大值', 0, 97);
INSERT INTO `option_table` VALUES (388, 'D', '单位时间内可传送的数据位数', 1, 97);
INSERT INTO `option_table` VALUES (389, 'A', '磁盘存储器', 0, 98);
INSERT INTO `option_table` VALUES (390, 'B', '只读存储器', 0, 98);
INSERT INTO `option_table` VALUES (391, 'C', '光盘', 0, 98);
INSERT INTO `option_table` VALUES (392, 'D', '静态存储器DRAM', 1, 98);
INSERT INTO `option_table` VALUES (393, 'A', '虚拟存储器是建立在主存－辅存物理结构的基础之上的', 0, 99);
INSERT INTO `option_table` VALUES (394, 'B', '虚拟存储器是借助于磁盘等辅助存储器来扩大主存容量的', 0, 99);
INSERT INTO `option_table` VALUES (395, 'C', '虚拟存储器解决了存储容量、存取速度和价格之间的矛盾，是管理存储设备的有效方法', 0, 99);
INSERT INTO `option_table` VALUES (396, 'D', '虚拟存储器是一个实际的物理存储器', 1, 99);
INSERT INTO `option_table` VALUES (397, 'A', 'CPU与主存', 0, 100);
INSERT INTO `option_table` VALUES (398, 'B', '外设与外设', 0, 100);
INSERT INTO `option_table` VALUES (399, 'C', '外设与CPU', 0, 100);
INSERT INTO `option_table` VALUES (400, 'D', '外设与主存', 1, 100);
INSERT INTO `option_table` VALUES (401, 'A', '正确', 1, 101);
INSERT INTO `option_table` VALUES (402, 'B', '错误', 0, 101);
INSERT INTO `option_table` VALUES (403, 'A', '正确', 1, 102);
INSERT INTO `option_table` VALUES (404, 'B', '错误', 0, 102);
INSERT INTO `option_table` VALUES (405, 'A', '正确', 0, 103);
INSERT INTO `option_table` VALUES (406, 'B', '错误', 1, 103);
INSERT INTO `option_table` VALUES (407, 'A', '正确', 1, 104);
INSERT INTO `option_table` VALUES (408, 'B', '错误', 0, 104);
INSERT INTO `option_table` VALUES (409, 'A', '正确', 1, 105);
INSERT INTO `option_table` VALUES (410, 'B', '错误', 0, 105);
INSERT INTO `option_table` VALUES (411, 'A', '正确', 1, 106);
INSERT INTO `option_table` VALUES (412, 'B', '错误', 0, 106);
INSERT INTO `option_table` VALUES (413, 'A', '正确', 0, 107);
INSERT INTO `option_table` VALUES (414, 'B', '错误', 1, 107);
INSERT INTO `option_table` VALUES (415, 'A', '正确', 0, 108);
INSERT INTO `option_table` VALUES (416, 'B', '错误', 1, 108);
INSERT INTO `option_table` VALUES (417, 'A', '正确', 1, 109);
INSERT INTO `option_table` VALUES (418, 'B', '错误', 0, 109);
INSERT INTO `option_table` VALUES (419, 'A', '正确', 0, 110);
INSERT INTO `option_table` VALUES (420, 'B', '错误', 1, 110);
INSERT INTO `option_table` VALUES (421, 'A', '正确', 1, 111);
INSERT INTO `option_table` VALUES (422, 'B', '错误', 0, 111);
INSERT INTO `option_table` VALUES (423, 'A', '正确', 1, 112);
INSERT INTO `option_table` VALUES (424, 'B', '错误', 0, 112);
INSERT INTO `option_table` VALUES (425, 'A', '正确', 0, 113);
INSERT INTO `option_table` VALUES (426, 'B', '错误', 1, 113);
INSERT INTO `option_table` VALUES (427, 'A', '正确', 0, 114);
INSERT INTO `option_table` VALUES (428, 'B', '错误', 1, 114);
INSERT INTO `option_table` VALUES (429, 'A', '正确', 1, 115);
INSERT INTO `option_table` VALUES (430, 'B', '错误', 0, 115);
INSERT INTO `option_table` VALUES (431, 'A', '正确', 1, 116);
INSERT INTO `option_table` VALUES (432, 'B', '错误', 0, 116);
INSERT INTO `option_table` VALUES (433, 'A', '正确', 0, 117);
INSERT INTO `option_table` VALUES (434, 'B', '错误', 1, 117);
INSERT INTO `option_table` VALUES (435, 'A', '正确', 0, 118);
INSERT INTO `option_table` VALUES (436, 'B', '错误', 1, 118);
INSERT INTO `option_table` VALUES (437, 'A', '正确', 0, 119);
INSERT INTO `option_table` VALUES (438, 'B', '错误', 1, 119);
INSERT INTO `option_table` VALUES (439, 'A', '正确', 1, 120);
INSERT INTO `option_table` VALUES (440, 'B', '错误', 0, 120);
INSERT INTO `option_table` VALUES (441, 'A', '正确', 1, 121);
INSERT INTO `option_table` VALUES (442, 'B', '错误', 0, 121);
INSERT INTO `option_table` VALUES (443, 'A', '正确', 0, 122);
INSERT INTO `option_table` VALUES (444, 'B', '错误', 1, 122);
INSERT INTO `option_table` VALUES (445, 'A', '正确', 0, 123);
INSERT INTO `option_table` VALUES (446, 'B', '错误', 1, 123);
INSERT INTO `option_table` VALUES (447, 'A', '正确', 1, 124);
INSERT INTO `option_table` VALUES (448, 'B', '错误', 0, 124);
INSERT INTO `option_table` VALUES (449, 'A', '正确', 1, 125);
INSERT INTO `option_table` VALUES (450, 'B', '错误', 0, 125);
INSERT INTO `option_table` VALUES (451, 'A', '正确', 1, 126);
INSERT INTO `option_table` VALUES (452, 'B', '错误', 0, 126);
INSERT INTO `option_table` VALUES (453, 'A', '正确', 0, 127);
INSERT INTO `option_table` VALUES (454, 'B', '错误', 1, 127);
INSERT INTO `option_table` VALUES (455, 'A', '正确', 1, 128);
INSERT INTO `option_table` VALUES (456, 'B', '错误', 0, 128);
INSERT INTO `option_table` VALUES (457, 'A', '正确', 1, 129);
INSERT INTO `option_table` VALUES (458, 'B', '错误', 0, 129);
INSERT INTO `option_table` VALUES (459, 'A', '正确', 0, 130);
INSERT INTO `option_table` VALUES (460, 'B', '错误', 1, 130);
INSERT INTO `option_table` VALUES (461, 'A', '正确', 0, 131);
INSERT INTO `option_table` VALUES (462, 'B', '错误', 1, 131);
INSERT INTO `option_table` VALUES (463, 'A', '正确', 1, 132);
INSERT INTO `option_table` VALUES (464, 'B', '错误', 0, 132);
INSERT INTO `option_table` VALUES (465, 'A', '正确', 1, 133);
INSERT INTO `option_table` VALUES (466, 'B', '错误', 0, 133);
INSERT INTO `option_table` VALUES (467, 'A', '正确', 0, 134);
INSERT INTO `option_table` VALUES (468, 'B', '错误', 1, 134);
INSERT INTO `option_table` VALUES (469, 'A', '正确', 0, 135);
INSERT INTO `option_table` VALUES (470, 'B', '错误', 1, 135);
INSERT INTO `option_table` VALUES (471, 'A', '正确', 0, 136);
INSERT INTO `option_table` VALUES (472, 'B', '错误', 1, 136);
INSERT INTO `option_table` VALUES (473, 'A', '正确', 1, 137);
INSERT INTO `option_table` VALUES (474, 'B', '错误', 0, 137);
INSERT INTO `option_table` VALUES (475, 'A', '正确', 1, 138);
INSERT INTO `option_table` VALUES (476, 'B', '错误', 0, 138);
INSERT INTO `option_table` VALUES (477, 'A', '正确', 0, 139);
INSERT INTO `option_table` VALUES (478, 'B', '错误', 1, 139);
INSERT INTO `option_table` VALUES (479, 'A', '正确', 1, 140);
INSERT INTO `option_table` VALUES (480, 'B', '错误', 0, 140);
INSERT INTO `option_table` VALUES (481, 'A', '正确', 1, 141);
INSERT INTO `option_table` VALUES (482, 'B', '错误', 0, 141);
INSERT INTO `option_table` VALUES (483, 'A', '正确', 0, 142);
INSERT INTO `option_table` VALUES (484, 'B', '错误', 1, 142);
INSERT INTO `option_table` VALUES (485, 'A', '正确', 0, 143);
INSERT INTO `option_table` VALUES (486, 'B', '错误', 1, 143);
INSERT INTO `option_table` VALUES (487, 'A', '正确', 1, 144);
INSERT INTO `option_table` VALUES (488, 'B', '错误', 0, 144);
INSERT INTO `option_table` VALUES (489, 'A', '正确', 0, 145);
INSERT INTO `option_table` VALUES (490, 'B', '错误', 1, 145);
INSERT INTO `option_table` VALUES (491, 'A', '正确', 1, 146);
INSERT INTO `option_table` VALUES (492, 'B', '错误', 0, 146);
INSERT INTO `option_table` VALUES (493, 'A', '正确', 1, 147);
INSERT INTO `option_table` VALUES (494, 'B', '错误', 0, 147);
INSERT INTO `option_table` VALUES (495, 'A', '正确', 0, 148);
INSERT INTO `option_table` VALUES (496, 'B', '错误', 1, 148);
INSERT INTO `option_table` VALUES (497, 'A', '正确', 1, 149);
INSERT INTO `option_table` VALUES (498, 'B', '错误', 0, 149);
INSERT INTO `option_table` VALUES (499, 'A', '正确', 0, 150);
INSERT INTO `option_table` VALUES (500, 'B', '错误', 1, 150);
INSERT INTO `option_table` VALUES (501, 'A', '正确', 0, 151);
INSERT INTO `option_table` VALUES (502, 'B', '错误', 1, 151);
INSERT INTO `option_table` VALUES (503, 'A', '正确', 1, 152);
INSERT INTO `option_table` VALUES (504, 'B', '错误', 0, 152);
INSERT INTO `option_table` VALUES (505, 'A', '正确', 0, 153);
INSERT INTO `option_table` VALUES (506, 'B', '错误', 1, 153);
INSERT INTO `option_table` VALUES (507, 'A', '正确', 0, 154);
INSERT INTO `option_table` VALUES (508, 'B', '错误', 1, 154);
INSERT INTO `option_table` VALUES (509, 'A', '正确', 1, 155);
INSERT INTO `option_table` VALUES (510, 'B', '错误', 0, 155);
INSERT INTO `option_table` VALUES (511, 'A', '正确', 0, 156);
INSERT INTO `option_table` VALUES (512, 'B', '错误', 1, 156);
INSERT INTO `option_table` VALUES (513, 'A', '正确', 0, 157);
INSERT INTO `option_table` VALUES (514, 'B', '错误', 1, 157);
INSERT INTO `option_table` VALUES (515, 'A', '正确', 0, 158);
INSERT INTO `option_table` VALUES (516, 'B', '错误', 1, 158);
INSERT INTO `option_table` VALUES (517, 'A', '正确', 0, 159);
INSERT INTO `option_table` VALUES (518, 'B', '错误', 1, 159);
INSERT INTO `option_table` VALUES (519, 'A', '正确', 1, 160);
INSERT INTO `option_table` VALUES (520, 'B', '错误', 0, 160);
INSERT INTO `option_table` VALUES (521, 'A', '正确', 1, 161);
INSERT INTO `option_table` VALUES (522, 'B', '错误', 0, 161);
INSERT INTO `option_table` VALUES (523, 'A', '正确', 1, 162);
INSERT INTO `option_table` VALUES (524, 'B', '错误', 0, 162);
INSERT INTO `option_table` VALUES (525, 'A', '正确', 1, 163);
INSERT INTO `option_table` VALUES (526, 'B', '错误', 0, 163);
INSERT INTO `option_table` VALUES (527, 'A', '正确', 1, 164);
INSERT INTO `option_table` VALUES (528, 'B', '错误', 0, 164);
INSERT INTO `option_table` VALUES (529, 'A', '正确', 0, 165);
INSERT INTO `option_table` VALUES (530, 'B', '错误', 1, 165);
INSERT INTO `option_table` VALUES (531, 'A', '正确', 1, 166);
INSERT INTO `option_table` VALUES (532, 'B', '错误', 0, 166);
INSERT INTO `option_table` VALUES (533, 'A', '正确', 0, 167);
INSERT INTO `option_table` VALUES (534, 'B', '错误', 1, 167);
INSERT INTO `option_table` VALUES (535, 'A', '正确', 0, 168);
INSERT INTO `option_table` VALUES (536, 'B', '错误', 1, 168);
INSERT INTO `option_table` VALUES (537, 'A', '正确', 0, 169);
INSERT INTO `option_table` VALUES (538, 'B', '错误', 1, 169);
INSERT INTO `option_table` VALUES (539, 'A', '正确', 1, 170);
INSERT INTO `option_table` VALUES (540, 'B', '错误', 0, 170);
INSERT INTO `option_table` VALUES (541, 'A', '正确', 0, 171);
INSERT INTO `option_table` VALUES (542, 'B', '错误', 1, 171);
INSERT INTO `option_table` VALUES (543, 'A', '正确', 0, 172);
INSERT INTO `option_table` VALUES (544, 'B', '错误', 1, 172);
INSERT INTO `option_table` VALUES (545, 'A', '正确', 1, 173);
INSERT INTO `option_table` VALUES (546, 'B', '错误', 0, 173);
INSERT INTO `option_table` VALUES (547, 'A', '正确', 0, 174);
INSERT INTO `option_table` VALUES (548, 'B', '错误', 1, 174);
INSERT INTO `option_table` VALUES (549, 'A', '正确', 0, 175);
INSERT INTO `option_table` VALUES (550, 'B', '错误', 1, 175);
INSERT INTO `option_table` VALUES (551, 'A', '正确', 1, 176);
INSERT INTO `option_table` VALUES (552, 'B', '错误', 0, 176);
INSERT INTO `option_table` VALUES (553, 'A', '正确', 1, 177);
INSERT INTO `option_table` VALUES (554, 'B', '错误', 0, 177);
INSERT INTO `option_table` VALUES (555, 'A', '正确', 1, 178);
INSERT INTO `option_table` VALUES (556, 'B', '错误', 0, 178);
INSERT INTO `option_table` VALUES (557, 'A', '正确', 1, 179);
INSERT INTO `option_table` VALUES (558, 'B', '错误', 0, 179);
INSERT INTO `option_table` VALUES (559, 'A', '正确', 0, 180);
INSERT INTO `option_table` VALUES (560, 'B', '错误', 1, 180);
INSERT INTO `option_table` VALUES (561, 'A', '正确', 1, 181);
INSERT INTO `option_table` VALUES (562, 'B', '错误', 0, 181);
INSERT INTO `option_table` VALUES (563, 'A', '正确', 0, 182);
INSERT INTO `option_table` VALUES (564, 'B', '错误', 1, 182);
INSERT INTO `option_table` VALUES (565, 'A', '正确', 1, 183);
INSERT INTO `option_table` VALUES (566, 'B', '错误', 0, 183);
INSERT INTO `option_table` VALUES (567, 'A', '正确', 1, 184);
INSERT INTO `option_table` VALUES (568, 'B', '错误', 0, 184);
INSERT INTO `option_table` VALUES (569, 'A', '正确', 1, 185);
INSERT INTO `option_table` VALUES (570, 'B', '错误', 0, 185);
INSERT INTO `option_table` VALUES (571, 'A', '正确', 1, 186);
INSERT INTO `option_table` VALUES (572, 'B', '错误', 0, 186);
INSERT INTO `option_table` VALUES (573, 'A', '正确', 0, 187);
INSERT INTO `option_table` VALUES (574, 'B', '错误', 1, 187);
INSERT INTO `option_table` VALUES (575, 'A', '正确', 1, 188);
INSERT INTO `option_table` VALUES (576, 'B', '错误', 0, 188);
INSERT INTO `option_table` VALUES (577, 'A', '正确', 0, 189);
INSERT INTO `option_table` VALUES (578, 'B', '错误', 1, 189);
INSERT INTO `option_table` VALUES (579, 'A', '正确', 0, 190);
INSERT INTO `option_table` VALUES (580, 'B', '错误', 1, 190);
INSERT INTO `option_table` VALUES (581, 'A', '正确', 0, 191);
INSERT INTO `option_table` VALUES (582, 'B', '错误', 1, 191);
INSERT INTO `option_table` VALUES (583, 'A', '正确', 1, 192);
INSERT INTO `option_table` VALUES (584, 'B', '错误', 0, 192);
INSERT INTO `option_table` VALUES (585, 'A', '正确', 0, 193);
INSERT INTO `option_table` VALUES (586, 'B', '错误', 1, 193);
INSERT INTO `option_table` VALUES (587, 'A', '正确', 0, 194);
INSERT INTO `option_table` VALUES (588, 'B', '错误', 1, 194);
INSERT INTO `option_table` VALUES (589, 'A', '正确', 1, 195);
INSERT INTO `option_table` VALUES (590, 'B', '错误', 0, 195);
INSERT INTO `option_table` VALUES (591, 'A', '正确', 0, 196);
INSERT INTO `option_table` VALUES (592, 'B', '错误', 1, 196);
INSERT INTO `option_table` VALUES (593, 'A', '正确', 0, 197);
INSERT INTO `option_table` VALUES (594, 'B', '错误', 1, 197);
INSERT INTO `option_table` VALUES (595, 'A', '正确', 1, 198);
INSERT INTO `option_table` VALUES (596, 'B', '错误', 0, 198);
INSERT INTO `option_table` VALUES (597, 'A', '正确', 0, 199);
INSERT INTO `option_table` VALUES (598, 'B', '错误', 1, 199);
INSERT INTO `option_table` VALUES (599, 'A', '湖北', 0, 280);
INSERT INTO `option_table` VALUES (600, 'B', '重庆', 0, 280);
INSERT INTO `option_table` VALUES (601, 'C', '湖南', 1, 280);
INSERT INTO `option_table` VALUES (602, 'D', '深圳', 0, 280);
INSERT INTO `option_table` VALUES (603, 'A', '1', 1, 281);
INSERT INTO `option_table` VALUES (604, 'B', '2', 0, 281);
INSERT INTO `option_table` VALUES (605, 'C', '3', 0, 281);
INSERT INTO `option_table` VALUES (606, 'D', '4', 0, 281);

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `permission_id` int(20) NOT NULL,
  `permission_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '权限表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of permission
-- ----------------------------

-- ----------------------------
-- Table structure for practice_detail
-- ----------------------------
DROP TABLE IF EXISTS `practice_detail`;
CREATE TABLE `practice_detail`  (
  `practice_detail_id` int(20) NOT NULL AUTO_INCREMENT,
  `practice_info_id` int(20) NOT NULL COMMENT '属于哪个试卷/练习题记录',
  `question_id` int(20) NOT NULL COMMENT '题目id',
  `question_type_id` int(20) NOT NULL COMMENT '题型id',
  `create_time` bigint(20) NOT NULL COMMENT '创建时间',
  `update_time` bigint(20) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`practice_detail_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '练习题详情表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of practice_detail
-- ----------------------------

-- ----------------------------
-- Table structure for practice_info
-- ----------------------------
DROP TABLE IF EXISTS `practice_info`;
CREATE TABLE `practice_info`  (
  `practice_info_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '名称',
  `teacher_id` bigint(8) NULL DEFAULT NULL COMMENT '创建者id',
  `score` decimal(10, 2) NOT NULL COMMENT '总分值',
  `expire_time` bigint(20) NOT NULL COMMENT '到期时间',
  `create_time` bigint(20) NOT NULL COMMENT '创建时间',
  `update_time` bigint(20) NOT NULL COMMENT '修改时间',
  `accuracy` decimal(10, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`practice_info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '练习题表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of practice_info
-- ----------------------------

-- ----------------------------
-- Table structure for practice_record
-- ----------------------------
DROP TABLE IF EXISTS `practice_record`;
CREATE TABLE `practice_record`  (
  `parctice_id` int(8) NOT NULL AUTO_INCREMENT,
  `practice_detail_id` int(8) NOT NULL COMMENT '练习试卷详情id',
  `student_id` int(8) NOT NULL COMMENT '学生id',
  `accuracy` decimal(10, 2) NULL DEFAULT NULL COMMENT '正确率',
  `practice_time` bigint(20) NOT NULL COMMENT '答题时间',
  `status` tinyint(2) NULL DEFAULT NULL COMMENT '状态：1-已完成, 0-未完成',
  PRIMARY KEY (`parctice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '练习记录题' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of practice_record
-- ----------------------------

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `question_id` bigint(8) NOT NULL AUTO_INCREMENT,
  `question_type_id` int(8) NOT NULL COMMENT '题型id',
  `module_id` bigint(20) NULL DEFAULT NULL COMMENT '模块id',
  `kps_id` bigint(8) NOT NULL COMMENT '知识点',
  `question` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '题干',
  `question_key` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '参考答案',
  `difficulty` int(8) NULL DEFAULT NULL COMMENT '难易程度',
  `analysis` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '解析',
  `score` decimal(10, 2) NULL DEFAULT NULL COMMENT '分值',
  `create_time` bigint(20) NOT NULL COMMENT '创建时间',
  `update_time` bigint(20) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`question_id`) USING BTREE,
  INDEX `Idex_query`(`question_type_id`, `module_id`, `kps_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 282 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '题目表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (1, 1, 1, 1, '计算机语言有许多种，其中与硬件直接相关的是（    ）', '机器语言', NULL, '', 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (2, 1, 3, 10, '8位定点原码整数10100011B的真值为（    ）', '－0100011B', NULL, '', 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (3, 1, 1, 1, '1946年研制成功的第一台电子数字计算机称为（    ）', 'ENIAC', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (4, 1, 1, 1, '计算机经历了从器件角度划分的四代发展历程，但从系统结构来看，至今为止绝大多数计算机仍是（    ）式计算机', '冯•诺依曼', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (5, 1, 3, 10, '若X补=0.1101010，则其X原=（    ）', '0.1101010', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (6, 1, 3, 9, '若X的真值是0.100111B，则其补码形式的十六进制数表示为（    ）', '4EH', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (7, 1, 3, 10, '在底数为2的浮点数中，为了保持数值不变，尾数右移3位，阶码要（    ）', '加3', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (8, 1, 5, 21, '在指令“ADD @R， Ad”中，源操作数在前，目的操作数在后，该指令执行的操作是（    ）', '（（R））+（Ad）-->Ad', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (9, 1, 3, 9, '若十进制数为132．75，则其十六进制数为（    ）', '84.C', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (10, 1, 3, 10, '若X原=0.1101010，则X补=（    ）', '0.1101010', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (11, 1, 3, 9, '若X的真值是－0.100111B，则其补码形式的十六进制数表示为（    ）', 'B2H', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (12, 1, 3, 10, '在浮点加减运算时，若尾数求和后结果溢出，那么接下来的运算是（    ）', '右规格化', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (13, 1, 2, 8, '下列叙述中（    ）不是只读存储器（ROM）的优点', '只适用于存储那些固定数据的场合；', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (14, 1, 2, 6, '原码乘法是（     ）', '先取操作数绝对值相乘，符号位单独处理', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (15, 1, 5, 21, '微程序控制器中，机器指令与微指令的关系是（    ）', '每一条机器指令由一段用微指令编成的微程序来解释执行', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (16, 1, 2, 7, '通常情况下，下列（    ）部件不包括在中央处理器CPU芯片中', 'DRAM', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (17, 1, 2, 7, '需要定时刷新的半导体存储器芯片是（    ）', 'DRAM', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (18, 1, 2, 8, '下列各条中，不属于微指令结构设计所追求的目标是（    ）', '增大控制存储器的容量', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (19, 1, 3, 10, '下列底数为2的浮点数表示中，尾数是原码表示，那么符合规格化要求的是（    ）', '1.1100110×2^4', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (20, 1, 3, 10, '浮点加减中的对阶（    ）', '将较小的一个阶码调整到与较大的一个阶码相同', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (21, 1, 4, 15, '内部总线是用来连接（    ）', 'CPU内部各部件', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (22, 1, 1, 3, '采用直接寻址方式，则指令中的地址码是（    ）', '操作数的有效地址', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (23, 1, 1, 3, '下列存储器中，（    ）速度最快', '半导体存储器', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (24, 1, 1, 3, '总线的数据通路宽度是指（    ）', '能一次并行传送的数据位数', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (25, 1, 3, 9, '若十六进制数为A3.5，则其十进制数为（    ）', '163.3125', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (26, 1, 3, 9, '在8421码表示的二—十进制数中，代码1001表示（    ）', '9', 2, '', 1.00, 1711418060730, 1713024882529);
INSERT INTO `question` VALUES (27, 1, 2, 7, '通用寄存器（    ）', '可以存放数据和地址', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (28, 1, 3, 9, '若X的真值是0.100111B，则其八位二进制定点小数的补码形式的十六进制数表示为（    ）', '4EH', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (29, 1, 3, 10, '某定点整数8位，含一位符号位，原码表示，则其绝对值最大负数为（    ）', '-（2^7-1）', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (30, 1, 4, 19, '多体交叉编址方式（设为4体）中地址序号编排规则是（    ）', '连续的两个存储单元分布在相邻两个存储分体中', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (31, 1, 3, 10, '下溢指的是（    ）', '运算结果小于机器所能表示的最小负数', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (32, 1, 6, 29, '相对于微程序控制器，硬布线控制器的特点是（    ）', '指令执行速度快，指令功能的修改和扩展难', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (33, 1, 5, 22, '如果某指令的地址码中给出的是寄存器编号，若该寄存器的内容指明了操作数的地址，则这种指令的寻址方式是（    ）', '寄存器间接寻址方式', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (34, 1, 5, 24, '下列几项中，不符合RISC指令系统的特点是', '指令功能尽可能强', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (35, 1, 5, 21, '输入/输出指令的功能是（    ）', '在CPU和I/O端口之间进行数据传送', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (36, 1, 4, 15, '下面有关半导体存储器的叙述中，错误的是（    ）', 'ROM芯片属于半导体随机存储器芯片', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (37, 1, 5, 21, '下列指令中，可改变程序执行顺序的指令是（    ）', '子程序调用指令', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (38, 1, 4, 17, '动态RAM的特点是（    ）', '每隔一定时间刷新一遍', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (39, 1, 4, 15, '下面关于主存储器和辅助存储器的描述正确的是（    ）', '主存储器存放计算机运行期间的大量程序和数据；', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (40, 1, 4, 15, '在多级存储体系中，“cache——主存”结构的作用是解决（    ）的问题', '主存与CPU速度不匹配', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (41, 1, 4, 15, '关于虚拟存储器，以下叙述中正确的是（    ）', '虚拟存储器每次访问主存时，必须进行虚实地址的变换', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (42, 1, 4, 15, '用存储容量为16K×1位的存储器芯片组成一个64K×8位的存储器，则在字方向和位方向上分别扩展了（    ）倍', '4和8', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (43, 1, 4, 15, '变址寻址的主要作用是（    ）', '支持向量、数组的运算寻址', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (44, 1, 4, 15, '相联存储器是按照（    ）进行寻址方式访问的存储器', '内容指定方式', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (45, 1, 4, 15, '在存储器分层体系结构中，存储器从容量最大到最小的排列顺序是（    ）', '辅存—主存—cache—寄存器', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (46, 1, 4, 15, '在主存和CPU之间增加cache的目的是（    ）', '加快信息访问速度', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (47, 1, 4, 15, '以下列关于存储器的叙述中，正确的是（    ）', 'cache的功能全由硬件完成', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (48, 1, 10, 48, '在多重中断情况下，CPU现场信息可保存到（    ）', '堆栈', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (49, 1, 4, 15, '虚拟存储器主要由（    ）组成', '磁盘区域与主存', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (50, 1, 10, 48, '中断系统是由（    ）实现的', '软硬件结合', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (51, 1, 5, 21, '下面关于指令流水线的叙述中，错误的是（    ）', '采用指令流水线，使得一条指令执行的过程变短', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (52, 1, 4, 15, '虚拟存储器管理系统的基础是程序的局部性原理，因此虚存的目的是为了给每个用户提供比主存容量（    ）编程空间', '大得多的逻辑', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (53, 1, 7, 33, '内存的段式存储管理有许多优点。下面描述中，（    ）不是段式存储管理的优点', '地址变换速度快、内存碎片（零头）小', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (54, 1, 4, 15, '以下叙述正确的是（    ）', '辅存中的程序调入主存后才能运行', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (55, 1, 10, 48, '为了便于实现多级中断，保存现场信息最有效的办法是采用（    ）', '堆栈', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (56, 1, 6, 25, '在下面几种数据传送的控制方式中，不能实现CPU和输入输出设备并行工作的是（    ）', '程序直接控制方式', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (57, 1, 10, 48, '以下叙述中正确的是（    ）', '中断方式一般用于处理随机出现的服务请求', NULL, NULL, 1.00, 11711418060730, 1711418060730);
INSERT INTO `question` VALUES (58, 1, 10, 48, '在中断处理过程中，通常用来保存断点及现场信息的是（    ）', '堆栈', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (59, 1, 5, 21, '从一条指令的启动到下一条指令的启动的间隔时间称为（    ）', '指令周期', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (60, 1, 3, 10, '两个采用变型补码表示的数进行加减运算时，发生负溢出的特征是双符号位为（    ）', '10', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (61, 1, 6, 25, '运算器由（    ）等部件组成', 'ALU、累加器与通用寄存器', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (62, 1, 6, 25, '外部总线是用来连接（    ）', 'CPU与存储器、I/O系统之间的连线', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (63, 1, 3, 10, '采用变形码操作检测方法判溢时，负溢出时符号位为（    ）', '10', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (64, 1, 3, 10, '在每个操作数都采用两个符号位的补码加减法运算中，若运算结果的两个符号位的代码不一致，那么就表示（    ）', '运算结果发生溢出', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (65, 1, 5, 22, '采用间接寻址方式，则指令中的地址码是（    ）', '操作数的间接地址', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (66, 1, 10, 47, '以下I/O控制方式中，主要由硬件而不是软件实现数据传送的方式是（    ）', 'DMA方式', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (67, 1, 6, 26, '以下关于DMA方式的叙述，错误的是（    ）', 'DMA方式下整个I/O过程完全不需要CPU介入', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (68, 1, 3, 10, '在浮点数加减运算中（    ）', '阶码对齐后，尾数相加减运算', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (69, 1, 3, 14, '已知某字符的编码为0100101，若最高位增加一个偶校验位，则其编码变为（    ）', '10100101', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (70, 1, 8, 36, 'EPROM是指（    ）', '光擦除可编程只读存储器', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (71, 1, 7, 32, '下列因素下，与Cache的命中率无关的是（    ）', '主存的存取时间', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (72, 1, 4, 20, '双端口存储器所以能进行高速读/写操作，是因为采用（    ）', '两套相互独立的读写电路', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (73, 1, 4, 16, '存储单元是指（    ）', '存放1个机器字的所有存储元集合', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (74, 1, 3, 9, '操作数00000101与00000101执行逻辑（    ）操作后，运算结果为00000000', '异或', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (75, 1, 1, 3, '在当前微机中，比较常用的并且有较高数据传输率的总线结构是（    ）', 'PCI', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (76, 1, 1, 3, '从信息流的传输速度来看，（    ）系统工作效率最低', '单总线', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (77, 1, 1, 3, '在总线结构的CPU中，各个部件连接到总线上，在某一时间（    ）', '只有一个部件可以向总线发送信息，但可以有多个部件同时从总线上接收信息', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (78, 1, 1, 1, '在运算器中，既能存放操作数，又能存放运算结果的器件称为（    ）', '测试', NULL, '', 1.00, 1711418060730, 1713537130699);
INSERT INTO `question` VALUES (79, 1, 4, 16, 'CUP从内存读出的一条指令或一个数据字将先暂存于（    ）', '数据缓冲寄存器', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (80, 1, 1, 3, '在直接存储器存取的I/O方式中，控制数据传输的部件是（    ）', 'DMA控制器', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (81, 1, 5, 22, '在指令系统中，采用（    ）寻址方式的指令其长度最短', '寄存器', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (82, 1, 5, 22, '对一个区域内的成批数据采用循环逐个进行处理时，常用的指令寻址方式是（    ）', '变址寻址方式', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (83, 1, 5, 23, '若指令系统中设置了专用I/O操作指令，则I/O接口（    ）', '可以独立编址', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (84, 1, 4, 15, '下面关于主存储器和辅助存储器的描述正确的是（    ）', '辅助存储器存放系统程序和大型数据文件及数据库', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (85, 1, 3, 11, '原码乘法是指（    ）', '先取操作数绝对值相乘，符号位单独处理', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (86, 1, 5, 23, '堆栈操作的特点是（    ）', '只能在栈顶存取代码', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (87, 1, 5, 23, '从控制存储器中读取一条微指令并执行相应操作的时间叫（ ）', '微周期', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (88, 1, 5, 21, '扩展操作码是（    ）', '一种指令优化技术，即让操作码的长度随地址数的减少而增加，不同地址数的指令可以具有不同的操作码长度', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (89, 1, 3, 11, '两个n位数(包括1位符号位)相乘，乘积一般为2n-2位。一个采用原码一位乘法实现这两个数相乘的运算器，其加法器的位数一般为（    ）', 'n位', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (90, 1, 3, 10, '以下关于判溢的叙述不正确的是（    ）', '采用单符号位操作检测方法判溢时，当加数和被加数符号不同时，相加运算的结果有可能会溢出', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (91, 1, 5, 21, '某机器字长16位，存储器按字节编址，设PC当前值为1000H，当CPU读取一条双字长指令后，PC的值为（    ）', '1004H', NULL, NULL, 1.00, 1711418060730, 1711141806073);
INSERT INTO `question` VALUES (92, 1, 5, 24, 'RISC技术的特点不包括（    ）', '指令的功能强大', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (93, 1, 8, 36, '下列叙述中（    ）不是只读存储器（ROM）的优点', '运行程序时，ROM只能读出信息而不可能随机写入', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (94, 1, 5, 21, '以下关于机器指令与微指令的叙述中，正确的是（    ）', '一条机器指令的功能可用多条微指令组成的微程序实现', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (95, 1, 5, 21, '下面对于“重叠”与“流水”的描述不正确的是（    ）', '“流水”和“一次重叠”都可同时解释两条以上指令；', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (96, 1, 4, 16, '下列关于存储体的描述错误的是（    ）', '一台机器的所有存储单元的长度可能不同', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (97, 1, 6, 25, '总线的数据传输率是指（    ）', '单位时间内可传送的数据位数', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (98, 1, 4, 15, '以下存储器属于易失性的是（    ）', '静态存储器DRAM', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (99, 1, 4, 15, '下面关于虚拟存储器的说法错误的是（    ）', '虚拟存储器是一个实际的物理存储器', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (100, 1, 4, 15, 'DMA方式的数据交换不是由CPU执行一段程序来完成，而是在（    ）之间建立一条逻辑上的直接数据通路，由DMA控制器来实现的', '外设与主存', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (101, 2, 1, 3, '运算器和控制器合称中央处理单元CPU', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (102, 2, 11, 58, '计算机系统中各部件之间传输的信息流是数据流和控制流', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (103, 2, 2, 6, '奇偶校验法能检查出偶数个错', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (104, 2, 4, 18, '断电后仍能保存信息的存储器称为非易失性存储器', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (105, 2, 4, 19, '多体交叉存储器中，地址交叉排列的目的是为了便于分体同时工作', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (106, 2, 1, 3, '一般机器指令由操作码和地址码两部分组成', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (107, 2, 1, 3, '操作数地址在寄存器中，这是寄存器直接寻址方式', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (108, 2, 6, 27, '垂直型微指令的字长度比水平型微指令长', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (109, 2, 1, 3, '总线一般包括数据总线、地址总线和控制总线', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (110, 2, 11, 53, '接口通过执行中断处理程序实现数据的输入/输出', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (111, 2, 1, 3, '计算机硬件由运算器、控制器、存储器、输入设备和输出设备五大部件组成', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (112, 2, 3, 9, '进位制的两个基本要素是基数和位权', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (113, 2, 3, 13, '浮点数加减法运算时的对阶要满足大阶向小阶看齐的原则', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (114, 2, 2, 8, '只读存储器ROM属于易失性存储器', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (115, 2, 4, 17, '静态存储器和动态存储器的主要差别是动态存储器需再生', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (116, 2, 1, 3, '一台计算机中所有机器指令的集合称为这台计算机的指令系统', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (117, 2, 5, 22, '操作数地址在主存储器中，这是直接寻址方式', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (118, 2, 2, 7, '控制器中必有两个寄存器是程序计数器PC和地址寄存器', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (119, 2, 11, 54, 'DMA方式是在外设和CPU之间建立一条直接数据通路', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (120, 2, 6, 30, '在流水控制方式中有关的问题是：资源相关、数据相关和控制相关', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (121, 2, 1, 1, '目前普遍使用的微型计算机采用的电路是超大规模集成电路', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (122, 2, 3, 9, '二进制数左移一位，则数值减小一倍', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (123, 2, 1, 3, '一条指令的功能通过执行一条微指令来实现', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (124, 2, 2, 8, '系统的主存由RAM和ROM组成', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (125, 2, 4, 20, '多模块存储器中，各模块有独立的读写电路', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (126, 2, 7, 33, '段是逻辑结构上相对独立的程序块，因此段是可变长度的', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (127, 2, 11, 54, 'DMA方式的数据交换方式是建立在外设和CPU之间的', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (128, 2, 10, 51, 'I/O总线通常是标准总线，所以PCI总线是标准总线', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (129, 2, 11, 53, '程序中断的方法在外设的接口中增设了缓冲器，使信息交换在主存和缓冲区之间进行', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (130, 2, 4, 15, '控制存储器在断电之后信息全部丢失，属于易失性存储器', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (131, 2, 1, 1, '计算机主机中包含控制器和存储器', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (132, 2, 1, 4, '软件通常分为系统软件和应用软件两大类', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (133, 2, 4, 17, 'DRAM芯片需要定时刷新', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (134, 2, 1, 3, '每一条机器指令由一条微指令来执行', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (135, 2, 1, 3, '输入/输出指令的功能是在主存和I/O端口之间进行数据传送', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (136, 2, 4, 17, 'SRAM是半导体静态随机访问存储器，通常用作主存', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (137, 2, 7, 34, '相联存储器是按内容指定方式进行寻址的存储器', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (138, 2, 11, 53, '流水线方式能使整个程序的执行时间缩短', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (139, 2, 1, 3, '只要有中断请求发生，那么一条指令执行结束后CPU就进入中断响应周期', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (140, 2, 11, 54, '通常越靠近CPU的总线传输速率越高', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (141, 2, 1, 1, '主存储器存放计算机运行期间的大量程序和数据', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (142, 2, 4, 15, '在正常工作时，存储的内容是固定不变的，只能读出而不能写入新信息的半导体存储器称为RAM', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (143, 2, 5, 22, '操作数的地址在主存储器中，这是直接寻址方式', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (144, 2, 2, 7, '运算器中每次运算时既存放源操作数，又存放结果的寄存器称为累加器', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (145, 2, 1, 3, '完成一条指令的一系列微指令的有序集合称为程序', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (146, 2, 6, 28, '微指令分为两个字段，它们是控制字段和下址字段', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (147, 2, 3, 14, '数据01101101的奇校验位为0，偶校验位为1', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (148, 2, 1, 3, '动态RAM的特点是工作中存储的内容动态的变化', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (149, 2, 1, 3, '计算机在执行程序的过程中，控制器控制程序的运行总是处于取指令、分析指令和执行指令的循环中', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (150, 2, 4, 15, '断电后仍能保存信息的存储器称为易失性存储器', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (151, 2, 5, 22, '存储器间接寻址方式只需要访问1次存储器就可以取得数据', 'F', NULL, NULL, 1.00, 1711408060730, 1711418060730);
INSERT INTO `question` VALUES (152, 2, 1, 3, '程序计数器的作用是指出当前（或下一条）要执行的指令地址', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (153, 2, 10, 51, '从传送信息的类型来看，系统总线一般包括数据总线和控制总线两种', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (154, 2, 4, 19, '多体交叉编址方式连续的两个存储单元分布在同一个存储体内', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (155, 2, 4, 15, '辅存中的程序必须调入主存后才能运行', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (156, 2, 1, 3, '一段机器指令组成的工作程序可由一条微指令来解释执行', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (157, 2, 3, 10, '定点数作补码加减运算时，其符号位单独作加减运算', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (158, 2, 11, 53, 'Cache利用了程序的局部性原则，而虚拟存储器不是', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (159, 2, 1, 3, '立即寻址方式中，指令的地址码直接给出数据的地址', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (160, 2, 1, 3, '在CPU中，指令寄存器的作用是保存当前正在执行的一条指令', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (161, 2, 11, 53, '微程序设计技术是利用软件的方法设计操作控制器的一门技术', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (162, 2, 11, 54, '将CPU和存储器统称为主机', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (163, 2, 11, 54, '将运算器和控制器和在一起称为CPU', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (164, 2, 1, 1, '计算机存储器的最小单位是bit', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (165, 2, 2, 7, '在寄存器间接寻址方式中，操作数存放在寄存器中', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (166, 2, 1, 3, '条件转移、子程序调用指令、中断返回指令都属于程序控制类指令', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (167, 2, 1, 3, '在指令的执行阶段，存储器的直接寻址方式需要两次访问存储器', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (168, 2, 1, 3, '在CPU中，保存下一条指令地址的寄存器是指令寄存器', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (169, 2, 1, 3, '水平型微指令执行一条指令所用的时间比垂直型微指令长', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (170, 2, 6, 28, '控制存储器是只读存储器，用来存储微程序', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (171, 2, 1, 3, '控制器中必有两个寄存器是地址寄存器AR和指令寄存器IR', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (172, 2, 7, 32, '使用Cache是为了解决主存容量不足的问题', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (173, 2, 11, 53, '高速缓冲存储器cache的工作机制基于程序访问的局部性原则', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (174, 2, 11, 53, '虚拟存储器分为页式、段式两种', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (175, 2, 2, 7, '中断允许触发器用来表示外设是否提出了中断请求', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (176, 2, 10, 49, 'DMA技术的出现使得外围设备可以通过DMA控制器直接访问内存', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (177, 2, 10, 49, 'DMA方式是在外设和主存之间建立一条直接数据通路', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (178, 2, 10, 51, '多个系统部件之间信息传送的公共通路称为总线', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (179, 2, 1, 1, '1946年研制成功的第一台电子数字计算机称为ENIAC', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (180, 2, 1, 1, '汇编语言是计算机硬件能够直接识别的语言', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (181, 2, 4, 20, '双端口存储器所以能够高速读写，是因为采用两套相互独立的读写电路', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (182, 2, 1, 3, '指令系统中采用不同寻址方式的目的主要是可以直接访问外存', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (183, 2, 1, 3, '程序控制类指令的功能是改变程序执行的顺序', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (184, 2, 5, 22, '立即数寻址方式取得操作数的速度最快', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (185, 2, 1, 3, 'RISC的主要目标是减少指令数', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (186, 2, 1, 3, '指令周期是指CPU从主存中取出一条指令加上执行这条指令的时间', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (187, 2, 1, 3, '用程序计数器PC来产生后续微指令的地址', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (188, 2, 11, 53, 'Cache和虚拟存储器都利用了程序的局部性原则', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (189, 2, 1, 1, '计算机中的所有信息仍以二进制方式表示的理由是因为二进制运算速度快', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (190, 2, 3, 9, '存储单元是指存放一个二进制信息位的存储元', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (191, 2, 1, 3, '二地址指令中，操作数的物理位置必须是主存单元', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (192, 2, 4, 17, '堆栈是先进后出的随机存储器', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (193, 2, 5, 22, '采用跳跃的寻址方式，只能实现程序的条件转移，不能实现无条件转移', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (194, 2, 1, 3, '在CPU中跟踪下一条要执行的指令的地址的寄存器是指令寄存器', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (195, 2, 1, 3, '每一条机器指令由一段用微指令编成的微程序来解释执行', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (196, 2, 6, 29, '微程序控制方式比硬布线控制方式执行速度更快', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (197, 2, 1, 1, '虚拟存储器技术提高了计算机的速度', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (198, 2, 1, 1, '计算机的外围设备是指除了CPU和内存以外的其他设备', 'T', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (199, 2, 2, 7, 'RISC机中很少使用寄存器', 'F', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (200, 3, 3, 9, '将二进制数据11101110B转换成八进制数、十进制数和十六进制数。（要求写出详细步骤）', '解：356Q，238D，EEH', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (201, 3, 3, 9, '将十进制数47化成二进制数，再写出各自的原码、反码、补码表示（符号位1位，数值位7位，共8位）。', '解：47的二进制数为：0101111；原码00101111；反码00101111；补码：00101111', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (202, 3, 3, 9, '将十进制数－0.276和47化成二进制数，再写出各自的原码、反码、补码表示（符号位1位，数值位7位，共8位）。', '解：-0.276的二进制数为：-0.0100011；其原码为：10100011；反码为：11011100；补码为：11011101，47的二进制数为：0101111,；其原码为：0101111；反码为：0101111；补码为：0101111', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (203, 3, 3, 9, '将十进制数－0.288和49转换成二进制数，再写出各自的原码、反码、补码表示（符号位1位，数值位7位，共8位）。', '解：-0.288的二进制数为：0100100；原码为：10100100；反码为：11011011；补码为：11011100,49的二进制数为：0110001，原码为：00110001；反码为：00110001；补码为：00110001', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (204, 3, 3, 9, '将二进制数＋1100101B转换为十进制数，并用8421BCD码表示。', '解：＋1100101B＝101D，十进制数101的8421BCD码为：0001 0000 0001', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (205, 3, 3, 9, '今有两数00100110和01000111，求两数之和。（1）两数都是二进制码，结果用十进制表示；\r\n（2）两数都是BCD码，结果用十进制表示。\r\n', '解：（1）二进制码相加：00100110＋01000111＝01101101；用十进制表示的结果：＝64＋32＋8＋4＋1＝109。（2）BCD码相加：0010 0110＋0100 0111＝0110 1101；进行＋6修正：0110 1101＋0110＝0111 0011；用十进制表示的结果：＝73。\r\n', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (206, 3, 3, 13, '设X=0.11010，Y=-0.01111，请采用变形码操作检测方法计算[X+Y]补=？并判断运算结果是否溢出', '解：[X]补=0.11010，[Y]补=1.10001；00.11010+11.10001=00.01100，符号位的代码是00，两个符号位的代码一致，表示运算结果不溢出。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (207, 3, 3, 13, 'x＝－0.1011，y＝－0.1100，用两种运算方法判断x＋y是否溢出。', '解：①采用单符号位操作检测方法：[x]补＝1.0101，[y]补＝1.0100，1.0101+1.0100=0.1001，两个数均为负数，相加结果为正数，结果与两个操作数符号不一致，表示运算溢出；②采用变形码操作检测方法：[x]补＝11.0101，[y]补＝11.0100，11.0101+11.0100=10.1001，符号位的代码是10，两个符号位的代码不一致，表示运算结果溢出。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (208, 3, 3, 13, 'x＝＋0.1011，y＝＋0.1101，用两种运算方法判断x＋y是否溢出。', '解：①采用单符号位操作检测方法：[x]补＝0.1011，[y]补＝0.1101，0.1011+0.1101=1.1000，两个数均为正数，相加结果为负数，结果与两个操作数符号不一致，结果溢出。②采用变形码操作检测方法：[x]补＝00.1011，[y]补＝00.1101，00.1011+00.1101=01.1000，符号位的代码是01，两个符号位的代码不一致，表示运算结果溢出。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (209, 3, 3, 13, '已知x＝－0.1011，y＝0.0101，要求用补码减法计算x－y＝？，并给出计算过程，同时指出计算结果是否溢出？', '解：(1)X补=1.0101；(2)(-y)补=1.1011；(3)(x-y)补=x补+(-y)补=1.0101+1.1011=1.0000，x-y=-1；(4)没有溢出', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (210, 3, 3, 13, '对数据+10110B作规格化浮点数的编码，假定其中阶码采用5位补码（包括阶符1位），尾数采用11位补码（包括尾符1位），底数是2。请写出该数的规格化形式。', '解：10110B＝0.10110B×2^5（或0.10110B×2＋0101B）；浮点格式为：0  0101  0  1011000000', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (211, 3, 3, 10, '已知x＝＋0.1001，y＝－0.0111，用补码一位乘法（布斯算法）计算x×y＝？', '解：x×y＝－0.00111111', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (212, 3, 3, 10, '已知x＝＋0.1101，y＝－0.1011，用补码一位乘法（布斯算法）计算x×y＝？', '解：x×y＝－0.10001111', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (213, 3, 3, 11, '已知x＝－0.0101，y＝－0.0011，用补码一位乘法（布斯算法）计算x×y＝？', '解：x×y＝0.00001111', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (214, 3, 3, 11, '已知X=2^010•0.11011011,Y=2^100•(－0.10101100)，求X+Y', '解：X+Y=2^011•(－0.11101010)', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (215, 3, 3, 11, '今有以下两浮点数X和Y，阶码和尾数均以补码表示，已知：X的阶码为0010，尾数为0.1001；Y的阶码为1101，尾数为1.0111。求X×Y之值。', '解：（1）阶码相加：0010＋1101＝1111；（2）尾数相乘：X尾×Y尾＝－0.01010001，或[X尾×Y尾]补＝1.10101111；（3）向左规格化，左移1位，阶码－1，乘积的阶码＝阶码－1＝1111－1＝1110（补码），乘积的尾数＝1.01011110；（4）舍入（取4位结果）：1.0101＋0.0001＝1.0110（补码），结果：阶码1110，尾数1.0110，均已补码表示。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (216, 3, 2, 6, '设十进制数X =（+128.75）×2^-10（1）若(Y)2 = (X)10，用定点数表示Y值。（2）设用21个二进制位表示浮点数，阶码用5位，其中阶符用1位；尾数用16位，其中符号用1位。阶码的基数为2.写出阶码和尾数均用原码表示的Y的机器数。（3）写出阶码和尾数均用反码表示的Y的机器数。（4）写出阶码和尾数均用补码表示的Y的机器数。', '解：（1）Y = +10000000.11×2^-10 = 0.001000000011 = 0.1000000011×2^-2；（2）原码表示形式：尾符：0，阶符：1，阶码：0010，尾数：100000001100000；（3）反码表示形式：尾符：0，阶符：1，阶码：1101，尾数：100000001100000，（4）补码表示形式：尾符：0，阶符：1，阶码：1110，尾数：100000001100000.', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (217, 3, 3, 10, '假设指令中地址码的值是1000，寄存器R中的数值是1000，地址为1000的存储器中存储的数据为2000，地址为2000的存储单元中存储的数据是3000，PC的值是4000，说出下述各寻址方式取得的数据是什么？（1）直接寻址；（2）寄存器寻址；（3）寄存器间接寻址；（4）存储器间接寻址；（5）立即数寻址。', '答：（1）直接寻址：2000；（2）寄存器寻址：1000；（3）寄存器间接寻址：2000；（4）存储器间接寻址：3000；（5）立即数寻址：1000。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (218, 3, 3, 10, '有一条相对寻址的无条件转移指令，存于内存的01000000B单元中，指令给出的位移量D=011100B，要求：（1）计算指令的转移地址；（2）给出取该指令时PC的内容；（3）给出该指令执行结束时PC的内容。', '解：（1）转移地址＝（PC）＋D＝01011100B；（2）（PC）＝01000000B；（3）（PC）＝01011100B', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (219, 3, 3, 9, '设有单地址加法指令OP D，其中D为548AH；而(548AH)=32B9H，(32B9H)=3C5DH，(3C5DH)=67E1H，(AC)=2007H。试问：（1）若OP是立即数寻址加法指令，那么该指令执行后，AC的内容是什么?（2）若OP是直接寻址加法指令，那么该指令执行后，AC的内容是什么?（3）若OP是间接寻址加法指令，那么该指令执行后，AC的内容是什么?', '解：（1）AC的内容＝(AC)＋548AH＝2007H＋548AH＝7491H；（2）AC的内容＝(AC)＋(548AH)＝2007H＋32B9H＝52C0H；（3）AC的内容＝(AC)＋((548AH))＝2007H＋(32B9H)＝2007H＋3C5DH＝5C64H', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (220, 3, 4, 17, '有若干片1M×8位的SRAM芯片，采用字扩展方法构成4MB存储器，问：(1) 需要多少片RAM芯片？(2) 该4MB存储器需要多少地址位？', '解：(1) 需要4M/1M = 4片SRAM芯片；(2) 需要22条地址线；', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (221, 3, 4, 17, '设有若干片256K×8位的SRAM芯片，问：(1) 采用字扩展方法构成2048KB的存储器需要多少片SRAM芯片？(2) 该存储器需要多少字节地址位？', '解：(1)该存储器需要2048K/256K = 8片SRAM芯片；(2)需要21条地址线，因为2^21=2048K，其中高3位用于芯片选择，低18位作为每个存储器芯片的地址输入。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (222, 3, 8, 36, '设有若干片256K×8位的SRAM芯片，问：(1) 如何构成2048K×32位的存储器？(2) 需要多少片RAM芯片？(3) 该存储器需要多少字节地址位？', '解：(1)采用字位扩展的方法；(2)需要32片SRAM芯片；(3)需要23条地址线，因为2^21=2048K，其中高3位用于芯片选择，低18位作为每个存储器芯片的地址输入；每个字32位，即4字节，需要2位地址可以访问到字节。21+2=23位字节地址位。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (223, 3, 8, 36, '用“128K×8位”的SRAM芯片设计一个总容量为“512K×16位”的存储器，既能满足容量上的要求，又能满足字长的要求。问：（1）需要多少片“128K×8位”的存储器芯片？（2）应采用何种组织方式？（3）需要多少位地址线？其中多少位用于访问存储器芯片？多少位用于片选？', '答：（1）需要（512K/128K）×（16/8）=4×2=8片芯片；（2）既要扩展容量，又要扩展字长，应采用字位同时扩展的组织方式；（3）512K地址空间需要19位地址线，其中17位地址线用于访问存储器芯片（128K），另外2位地址线用于片选。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (224, 3, 5, 22, '设内存按字节编址，若8K×8bit存储空间的起始地址为7000H，则该存储空间的最大地址编号为多少？', '解：内存按字节编址，即内存字长为1字节=8位;8K=2^13，地址范围从0000000000000~1111111111111，即0000H~1FFFH;若存储空间的起始地址为7000H，则该存储空间的最大地址编号为7000H+1FFFH=8FFFH', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (225, 3, 5, 22, '若内存按字节编址，用存储容量32K×8bit的存储器芯片构成地址编号A0000H至DFFFFH的内存空间，则至少需要多少片？', '解：内存按字节编址，即内存字长为1字节=8位;内存空间地址编号从A0000H至DFFFFH，则内存空间容量为DFFFFH-A0000H+1=40000H=2^18=2^8K\r\n;2^8K/32K=8\r\n', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (226, 3, 5, 22, '若内存按字节编址，用存储容量8K×8bit的存储器芯片构成地址编号7000H至EFFFH的内存空间，则至少需要多少片？', '解：内存按字节编址，即内存字长为1字节=8位；内存空间地址编号从7000H至EFFFH，则内存空间容量为EFFFH-7000H+1=8000H=215=25K；\r\n25K/8K=4\r\n', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (227, 3, 5, 22, '某计算机内存按字节编址，内存地址区域从44000H到6BFFFH。（1）请问该内存共有多少K字节的存储容量？（2）若采用16K×4bit的SRAM芯片，构成该内存共需多少片？', '解：（1）内存按字节编址，即内存字长为1字节=8位，内存空间地址编号从44000H至6BFFFH，则内存空间容量为6BFFFH-44000H+1=28000H=160×2^10=160K；（2）（160K/16K）×（8/4）=20', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (228, 3, 5, 22, '某计算机的字长是32位，其内存容量是1GB，若内存空间按字编址，那么其地址范围是多少？（十六进制表示）', '解：0000000~FFFFFFF', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (229, 3, 5, 22, '若一内存地址从4000H到43FFH，请问：该内存共有多少个内存单元？', '解：内存空间地址从4000H至43FFH，则内存空间共有43FFH-4000H+1=400H=210=1024个存储单元\r\n', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (230, 3, 5, 22, '要构成4M×8bit的存储器，请问：（1）若采用256K×8bit的芯片，需多少片？（2）若采用512K×1bit的芯片，需多少片？\r\n', '解：（1）4M×1024/256K=16片（2）（4M×1024/512K）×（8/1）=64片\r\n', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (231, 3, 4, 17, '37.	有一个512K×16位的存储器，由64K×1位的RAM芯片构成（芯片内是4个128×128结构），问：（1）总共需要多少个RAM芯片？（2）采用分散刷新方式，如单元刷新间隔不超过2ms，则刷新信号的周期是多少？（3）采用集中刷新方式，设读/写周期T＝0.1μs，存储器刷新一遍最少用多少时间？', '答：（1）总共需要（512/64）×16＝128片；（2）分散刷新的刷新周期＝2ms/128＝15.625μs。（3）集中刷新一遍的时间＝0.1μs×128＝12.8μs。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (232, 3, 11, 54, '在CPU执行一段程序的过程中，Cache的存取次数为3800次，由主存完成的存取次数为200次。若Cache的存取周期为5ns，主存的存取周期为25ns，请问：（1）Cache的命中率为多少？（2）CPU的平均访问时间为多少ns？', '解：（1）3800/（3800+200）=0.95；（2）（5×3800 + 25×200）/4000 = 6ns', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (233, 3, 11, 54, '假设主存容量为“16M×32位”，cache容量为“64K×32位”，主存与cache之间以每块4×32位大小传送数据，若采用地址直接映射方式，问：（1）主存地址为多少位？其中块内地址为几位？块号为几位地址？主存标记（即组号）为几位地址？（2）cache地址为多少位？其中块内地址为几位？块号为几位地址？', '答：（1）主存：16M存储空间，需要24位地址；其中，块内4×32的容量需要2位地址；16M/64K=256组，每组64K/4=16K块，因此，块号为14位（满足16K块的访问）；主存标记（组号）为8位，满足对256组的访问。（2）cache：64K×32位，需要16位地址；其中，块内4×32的容量需要2位地址；64K/4=16K块，因此，块号为14位。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (234, 3, 11, 54, '假设主存容量为“16M×32位”，cache容量为“64K×32位”，主存与cache之间以每块4×32位大小传送数据，若采用全相联地址映射方式，问：（1）主存地址为多少位？其中块内地址为几位？主存标记（即块号）为几位地址？（2）cache地址为多少位？其中块内地址为几位？块号为几位地址？', '答：（1）主存：16M存储空间，需要24位地址；其中，块内4×32的容量需要2位地址；16M/4=4M块，因此，主存标记（即块号）为22位（满足对4M块的访问）。（2）cache：64K×32位，需要16位地址；其中，块内4×32的容量需要2位地址；64K/4=16K块，因此，块号为14位。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (235, 3, 5, 22, '主存储器容量为4MB，虚存容量为1GB，虚拟地址和物理地址各为多少位？根据寻址方式计算出来的有效地址是虚拟地址还是物理地址？如果页面大小为4kB，页表长度是多少？', '解：虚存容量＝1GB＝2^30B，主存容量＝4MB＝2^22B，所以虚拟地址和物理地址分别为30位和22位；根据寻址方式计算出来的有效地址是虚拟地址；4kB＝2^12B，2^30B/2^12B＝2^18，所以页表长度为2^18', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (236, 3, 7, 33, '一个有32位程序地址空间，页面容量为1KB，主存的容量为8MB的存储系统，问：（1）虚页号字段有多少位？页表将有多少行？（2）页表的每一行有多少位？页表的容量有多少字节？', '解：（1）2^32B/1KB=2^22，页表的长度为2^22 =4M行。（2）主存的容量为8MB=2^23B，主存中页框架的数量有2^23 / 2^10 = 2^13个。页表中主存页号字段是13位长，加上其它信息将超过16位。设页表的每一项为16位，页表的容量为4M×2 = 8MB。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (237, 3, 7, 33, '一个有30位程序地址空间，页面容量为1KB，主存的容量为8MB的存储系统，问：（1）虚页号字段有多少位？（2）页表将有多少行？（3）若页表的每一行包括实页号、装入位、有效位和替换位，问：页表的每一行有多少位？（4）页表的容量有多少字节？', '答：（1）2^30B/1KB=2^20，虚页号字段有20位；（2）页表的长度为2^20 =1M行。（3）主存的容量为8MB=2^23B，主存中页框架的数量有2^23 / 2^10 = 2^13个。页表中主存页号字段是13位长，加上其它信息位共16位。（4）设页表的每一项为16位，页表的容量为1M×2 = 2MB。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (238, 3, 7, 33, '设有一个具有12位地址和4位字长的存储器，问：（1）该存储器能存储多少字节信息？（2）如果存储器由1K×1位的RAM芯片组成，需要多少片该芯片？（3）该存储器采用何种组织方式？（串联、并联、串并联）（4）需要多少位地址位作为片选？多少位地址作为片内寻址？', '答：（1）该存储器为4K×4，能存储2K字节信息；（2）需要16片；（3）串并联；（4）2位片选，10位片内寻址。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (239, 4, 2, 6, '请写出8位定点原码整数中能表示的最大正数、最小正数、最大负数和最小负数的机器数形式，并用十进制表示其数值范围。', '答：最大正数=01111111，最小正数=00000001，最大负数=10000001，最小负数=11111111，数值表示范围：负的2的7次方减1～正的2的7次方加1', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (240, 4, 3, 13, '定点数的补码加减法运算如何判断溢出？', '答：补码加减法运算判断溢出的条件如下：（1）符号相同两数相加，结果符号与加数（或被加数）的符合不同，为溢出；（2）采用双符号位，即正数的符号位位00，负数的符号位为11，符号位参与运算，相加结果的两个符号位不同为溢出，10为负溢出，01为正溢出。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (241, 4, 8, 36, '只读存储器有哪些形式？分别有什么特点？', '答：只读存储器有以下几种形式：①只读存储器有：掩模ROM（MROM）：信息制作在芯片中，不可更改；②可编程ROM（PROM）：允许一次编程，此后不可更改；③可擦除ROM（EPROM）：用紫外光擦除，擦除后可编程，并允许用户多次擦除和编程；④电抹可编程 EEPROM（E2PROM）：采用加电方法在线进行擦除和编程，也可多次擦写；⑤Flash Memory（闪存）：能够快速擦写的EEPROM，但只能按块（Block）擦除。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (242, 4, 8, 36, '在计算机的主存中，常常设置一定的ROM区，试说明设置ROM区的目的。', '答：计算机加电时，需要执行一段程序和设置一些初始数据，如果这些程序和数据放在RAM区，那么断电后会丢失，所以把它放在ROM区。至于ROM区的大小则由操作系统决定，可以将操作系统中很小一段程序保存在ROM中，加电启动计算机后依靠这段程序将操作系统由磁盘调入主存。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (243, 4, 5, 21, '什么是指令？什么是指令系统？', '答：由操作码和地址码组成，能由计算机硬件执行其规定操作的一条命令，称之为指令。指令和数据在计算机中都是以二进制代码形式表示的，不同的操作码代表不同的指令。通常在一台计算机中有几十条乃至几百条指令。计算机中所有指令的集合称之为指令集或指令系统。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (244, 4, 5, 21, '一条指令包含那些信息？', '答：（1）操作码：指定操作内容，例如执行加法运算或控制程序流转移等；（2）操作数来源：指定操作数或操作数的地址；（3）操作结果地址：保存处理结果的地址；（4）下一条执行的指令地址：在大多数情况下，程序是顺序执行的，此时不需要指出下一条指令的地址，仅当执行改变程序流的转移类指令时，需要给出下一条执行的指令地址。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (245, 4, 5, 22, '什么是指令的立即寻址方式？说明其经常的用途。', '答：(1)指令中直接给出了操作数（或指令格式为：OP立即数）(2)立即寻址方式可用来提供常数，设置初值等。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (246, 4, 5, 22, '计算机中常用的寻址方式有哪些？其中哪些寻址速度较快？哪些速度较慢？', '答：常用的寻址方式有：立即数寻址、直接寻址、间接寻址、寄存器直接寻址、寄存器间接寻址、基址寻址、变址寻址、相对寻址。其中，立即数寻址方式速度最快，其次是寄存器直接寻址、直接寻址、寄存器间接寻址、间接寻址；基址寻址、变址寻址和相对寻址方式因为要通过加法运算才能得到数据的有效地址，因此速度比较慢一些。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (247, 4, 5, 24, '指令兼容有哪些的优缺点？什么是向上兼容？', '答：最主要优点：软件兼容；最主要缺点：指令字设计不尽合理，指令系统过于庞大。向上兼容：新机器可以兼容旧机器的所有软件，但旧机器不能兼容新机器上开发的软件。\r\n', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (248, 4, 5, 24, '什么是指令系统兼容和指令系统向上兼容？讨论兼容的优缺点。', '答：两种计算机的指令系统完全相同，称之为指令系统兼容。在研制系列计算机的新型号或高档产品时，指令系统可以有较大的扩充，但仍保留原来机种的全部指令，称之为指令系统向上兼容。兼容机的软件可以相互交互使用，因此软件也是兼容的。指令系统向上兼容则可将原有软件不作修改就可再新型号或高档产品上继续运行，称之为软件向上兼容。其优点是可以保护用户在软件上的投资，缺点是指令系统越来越庞大，新机种要保留原有机种的全部指令，即使是这些指令在新编写的程序中根本不使用。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (249, 4, 5, 24, 'RISC指令系统有何特点？', '答：指令种类少，选用使用频率比较高的指令，指令功能较简单，指令长度固定，指令格式种类少，寻址方式种类少。CPU中设置较多的寄存器。一般指令的操作数都在寄存器中，只有load和store指令访问存储器，可以减少访存次数。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (250, 4, 5, 24, '讨论RISC和CISC在指令系统方面的主要差别。', '答：（1）优先选取使用频率最高的一些简单指令，以及一些很有用但不复杂的指令。避免复杂指令。（2）指令长度固定，指令格式种类少，寻址方式种类少。指令之间各字段的划分比较一致，各字段的功能也比较规整。（3）只有取数/存数指令（load/store）访问存储器，其余指令的操作都在寄存器之间进行。（4）CPU中通用寄存器数量相当多。算术逻辑运算指令的操作数都在通用寄存器中存取。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (251, 4, 11, 54, '简答CPU控制执行一条ADD指令的过程。', '答：CPU控制执行一条ADD指令的过程为：首先将程序计数器PC的内容送到地址寄存器AR中；程序计数器内容加1，为取下一条指令做好准备；地址寄存器内容被放到地址总线上；所选存储单元的内容经过数据总线，传送到数据缓冲寄存器DR；缓冲寄存器的内容传送到指令寄存器IR；指令寄存器中的操作码被译码或测试；CPU识别出指令ADD；CPU将指令寄存器中的地址码部分装入到地址寄存器；将地址寄存器中的操作数的地址发送到地址总线上；由存储单元读出操作数，并经过数据总线传送到数据缓冲寄存器。执行加操作：由数据缓冲寄存器来的操作数送往ALU的一个输入端，已等候在累加器内的另一个操作数送往ALU的另一个输入端，于是ALU将两数相加，并将结果保存到累加寄存器中，同时置状态寄存器。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (252, 4, 11, 54, 'CPU中有哪些主要的寄存器？', '答：数据缓冲寄存器(DR)、指令寄存器(IR)、程序计数器(PC)、地址寄存器(AR)、累加器寄存器(AC)与通用寄存器、状态寄存器(或PSW)', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (253, 4, 8, 36, '程序和微程序、机器指令和微指令、主存储器和控制存储器这几个概念有何区别？', '答：（1）程序和微程序。程序是由程序员编写的，由指令组成，而微程序是用来控制指令的执行，它是由微指令组成的。（2）机器指令和微指令。机器指令是把程序员编写的程序经编译后成为机器能执行的以二进制码形式表示的指令；在微程序控制的计算机中通过执行一串微指令完成一条机器指令的功能。（3）主存储器和控制存储器。主存储器用来存放程序和数据。在运行程序时，CPU从主存储器取指令和存取数据，一般由随即存储器RAM组成。控制存储器用来存放微程序，用以解释指令的执行，一般由只读存储器ROM组成。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (254, 4, 8, 36, '微程序控制器与硬布线控制器相比较的主要优缺点是什么？', '答：微程序设计方法类似于程序，其优点是容易设计、容易修改、容易排除错误，从而方便地实现操作复杂地指令和实现新功能、增加新指令、缩短设计周期，但是由于实现一条指令要多次从控制存储器取微指令，所以处理一条指令地速度没有硬布线控制器快。\r\n硬布线控制器在设计复杂指令系统的计算机时比较难，因为需要写出各个操作命令的表达式，又经过了简化，假如发现设计有错，修改起来极为困难，导致设计周期的延长，而且很难更改指令的功能或增加新指令。由于以上特点RISC采用硬布线控制器，CISC采用微程序控制器。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (255, 4, 8, 36, '由M1、M2构成的二级存储体系中，若CPU访问的内容已在M1中，则其存取速度为T1；若不在M1中，其存取速度为T2.现设H为命中率（CPU能从M1中直接获取信息的比率），问：（1）该存储体系的平均存取时间TA的计算公式是什么？（2）命中率H越大，TA越接近于哪一级存储器速度？', '答：（1）TA＝H×T1＋（1－H）×T2；（2）H越大，1-H越小，故TA越接近M1的存取速度T1', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (256, 4, 8, 36, '采用存储器的分级结构如何解决了存储器的三大因素之间的矛盾？', '答：存储器的分级结构使得主－辅两级存储结构建立在存储器件分级且存储信息性质分级的基础上；主存容量因其价格受到限制，设立了大容量辅存解决了在尽可能低的价格下的容量问题；大容量的低速辅助存储器可以通过高速主存与CPU交换信息，不仅使计算机得到合理分配，而且CPU的高速效能仍能得到充分发挥；主－辅两级存储结构形成一个整体，速度接近于主存，容量是辅存，价格接近辅存，可以较好地统一协调了容量、速度、价格三者之间的矛盾。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (257, 4, 11, 54, '请比较说明三级存储体系中cache—主存和主存—辅存这两个存储层次的相同点和不同点。', '答：在cache和主存之间及主存和辅存之间分别有辅助硬件及辅助软硬件负责信息的调度，以便各级存储器能够组成有机的三级存储体系。cache和主存构成了系统的内存，而主存和辅存依靠辅助软硬件的支持构成了虚拟存储器。相同点：出发点相同：二者都是为了提高存储系统的性能价格比而构造的层次性存储体系，都力图使存储系统的性能接近高速存储器，而价格接近低速存储器；原理相同：都是利用了程序运行时的局部性原理，把最近常用的信息块从相对低速而大容量的存储器调入相对高速而小容量的存储器。不同点：目的不尽相同：cache主要解决主存与CPU的速度差异问题；儿辅存主要解决存储容量问题；数据通路不同：CPU与cache和主存直接均有直接访问通路，cache不命中时可直接忙问主存；而辅存与CPU之间不存在直接的数据通路，当主存不命中时只能通过调页解决，CPU最终还是要访问主存；透明性不同：cache的管理完全由硬件完成，对系统程序员和应用程序员均透明；虚拟管理由软件（操作系统）和硬件共同完成，对系统程序员不透明，对应用程序员透明；对未命名中的敏感度不同：由于主存的存取时间的cache的5至10倍，而辅存是主存的上千倍', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (258, 4, 8, 36, '在计算机中为何设置多层次的存储系统？常见的三层存储系统是怎样的？', '答：随着计算机应用、操作系统和CPU的发展，主存储器的速度和容量已跟不上客观的要求，因此希望在计算机的体系结构上有所突破。衡量计算机存储器有3个指标：速度、容量和价格/位。一般来讲，速度高的存储器，价格/位也高，在计算机中安装有多种类型存储器，相互配合，可以取得较理想的综合指标。由于CPU和主存之间存在一定的速度差异，为了弥补主存速度的不足，在CPU和主存之间设置了高速缓冲存储器（Cache），以此来解决主存存取速度的不足。由于主存的容量有限，因此设置了辅助存储器，来弥补主存容量的不足。于是就构成了三层次的存储系统：cache-主存储器-辅助存储器。在三层存储系统中，CPU取指或取数时，先访问Cache，如果指令或数据不在Cache中，再到主存中去取，取来后同时送CPU和Cache；如果指令或数据在Cache中，则从Cache中取，不再访问主存；如果指令或数据也不在主存中，则由操作系统将包含所需指令或数据的信息块调到主存，然后再执行取指或取数据操作。三层次存储系统在理想情况下，其最高速度取决于Cache的速度，而其存储容量则由辅助存储器决定，系统的价格/位接近于辅存的价格/位。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (259, 4, 11, 54, '多级存储体系中，（1）引入Cache是为了解决什么问题？（2）引入Cache的理论依据是什么？（3）采用哪些方法来保证在写入时使Cache与主存两者的内容一致？', '答：（1）为了解决主存与CPU之间的速度差异，或主存速度不足问题；（2）理论依据是程序访问的局部性原则；（3）可以采用写直达法、回写法、主存监控法和设置不可Cache区几种方法。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (260, 4, 11, 54, '计算机存储系统分哪几个层次？每一层次主要采用什么存储介质？其存储容量和存取速度的相对值如何变化？', '答：计算机存储系统层次为：cache――主存――辅存，或：寄存器组――cache――主存――辅存。存储介质分别为：寄存器――电路；cache――SRAM；主存――DRAM；辅存――磁表面存储，容量由小到大，速度由高到低。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (261, 4, 8, 36, '为什么DRAM芯片的地址一般要分两次接收？', '答：当芯片容量增大时，其地址线数量相应增加，分两次接收地址可将地址线的数量减少一半。引出端多，芯片面积大。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (262, 4, 7, 31, '什么是虚拟存储器？', '答：操作系统的形成和发展有可能让程序员摆脱主存和辅存之间数据调度问题的困扰，在“辅助硬件”的配合下，通过软件和硬件相结合，把主存和辅存统一成了一个整体，在系统中，应用程序员可用机器指令地址码对整个程序统一编址，如同程序员具有对应这个地址码宽度的全部空间一样。该空间可以比主存实际空间大得多，以致可以存得下整个程序。这种指令地址码称为虚拟地址或逻辑地址，其对应的存储容量称为虚存容量或虚存空间；而把实际主存的地址称为物理地址、实（存）地址，其对应的存储容量称为主存容量、实存容量或实（主）存空间。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (263, 4, 11, 54, '什么是Cache的命中率？', '答：在Cache—主存储器—辅助存储器的三级存储系统中，当CPU访问存储器时，如果被访问的对象在Cache中，叫做命中，Cache命中的次数与访问存储器总次数的比例称为Cache命中率。当CPU访问存储器时，如果被访问的对象在主存中，叫做存储器命中，否则需启动操作系统，将有关的页面（页式管理或段页式管理）或段（段式管理）从辅存调入主存。由于存储的局部性原理的存在，Cache的命中率和存储器的命中率都是很高的。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (264, 4, 11, 54, 'Cache的写入方法有哪机种？', '答：Cache中保持的字块是主存中相应字块的一个副本，如果要对该字块进行写操作，就会遇到如何保持Cache与主存数据的一致性问题。当命中的情况下，有两种写入方法：（1）写回法：暂时只向Cache写入，并用修改标志加以标注，直到经过修改的字块从Cache中被替换出来时才修改（写入）主存。其优点是某些中间结果可暂时保存着Cache中，减少访问主存的次数。其缺点是Cache中的数据可能与其相应主存中的数据不一致，这样在取数命中时要检查Cache的修改标志（当DMA外部设备访问存储器时），以确定是从Cache取数或者是从存储器取数。（2）写直达法：同时写入Cache和主存。其优缺点正好和写回法相反。由于每次写入时无论是否命中，都要向主存写入，其结果相当于降低了数据的命中率。当不命中的情况下，或者外部设备向存储器写入时，往往只写入主存，不写入Cache。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (265, 4, 11, 54, 'Cache的命中率与哪些因素有关？', '答：在其它因素不变的情况下，cache容量大，命中率高；块的大小要适中，其对命中率的影响与执行的程序有关；在地址映像方面，全相联的命中率最高，但因所需硬件太多，一般不采用，直接映像命中率最低，但是简单，比较理想的是组相联；在替换算法方面，LRU替换算法的命中率高于FIFO或随机替换算法。\r\n', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (266, 4, 7, 31, '虚拟存储器的主要特点是什么？', '答：（1）用户可以用比主存大得多的存储空间编写程序，而不必考虑如何在主存和辅存中传递数据；（2）CPU每次访存时，都要经过虚拟地址转换成物理地址的过程。如果访存内容不在主存中，计算机会自动将数据块从辅存调到主存。主存被替换时要注意该数据块是否被写入（或）修改过，是的话要先将其内容写入辅存，然后再被替换。（3）上述过程是在软件（操作系统）和硬件配合下完成的，对用户是透明的。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (267, 4, 8, 39, '试将硬盘、软盘、磁带、光盘等外存的访问时间、数据传输率按大小（或高低）排序，并列出各外存突出的优缺点、适用场合及共同的发展趋势。', '答：访问时间由少到多、数据传输率由高到底的顺序，都是硬盘、光盘、软盘、磁带；\r\n突出的优点：硬盘速度快，光盘和软盘盘片可替换，磁带容量大、便宜且磁带可替换；\r\n适用场合：硬盘是主存的后援，光盘存资料、文献档案，支持多媒体技术，磁带做为海量后备，软盘用于输入输出传递及小容量备份。\r\n', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (268, 4, 11, 54, '以下六种常用的存储器，寄存器组、主存、高速缓存cache、磁带存储器、软磁盘和硬磁盘，请回答下列问题：（1）按存储容量排出顺序（从小到大）（2）按读写时间排出顺序（从快到慢）', '答：（1）按存储容量排出顺序（从小到大）：寄存器组――cache――主存、软磁盘――硬盘――磁带；（2）按读写时间排出顺序（从快到慢）：寄存器组――cache――主存――硬盘――软磁盘－―磁带', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (269, 4, 10, 47, '在输入输出系统的发展中出现了哪几种输入输出方式？其中哪些主要由软件来实现？哪些由硬件来实现？', '答：输入输出方式的发展大致分为五种方式，即：程序控制的输入输出方式、中断方式、DMA方式、输入输出通道方式和I/O处理机方式。其中程序控制的输入输出方式和中断方式由软件来实现；DMA方式、输入输出通道方式和I/O处理机方式由硬件来实现。一般小型机和微机采用前3种方式，大型机采用I/O通道控制方式或外围处理机方式。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (270, 4, 10, 47, '输入输出接口的基本功能是什么？', '答：(1)数据缓冲，使主机与外围设备速度匹配。(2)数据格式转换。(3)提供外围设备和接口的状态供CPU读取，以便了解外围设备的工作情况。(4)实现主机与外围设备的通信联络。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (271, 4, 10, 47, '在I/O系统中试比较程序直接控制方式与程序中断方式的优缺点。', '答：(1)程序直接控制方式优点：硬设备接口少，控制简单。缺点：并行性差，效率低；无法处理错误或异常事件。(2)中断方式优点：CPU与I/O设备并行工作，提高了效率；可处理异常事件，提高了机器的可靠性。多台外设可并行工作。缺点：控制相应复杂一些，不能处理高速数据块的传送。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (272, 4, 10, 47, '中断控制输入输出较程序控制的输入输出有什么改进？', '答：程序控制输入输出方式外部设备的启动、停止等工作全部由CPU通过程序控制。外部设备和CPU不能同时工作，各外部设备之间也不能同时工作。虽然程序易编，程序简单，但系统效率很低。程序中断的方法在外设的接口中增设了缓冲器，使信息交换在主存和缓冲区之间进行，中央处理机和外部设备可以同时工作。当外部设备做好准备以后再请求中断CPU，因为外部设备的工作速度取决于机械动作，它远比CPU的速度要低，因此CPU可以同时启动多台外部设备使它们同时工作，而由CPU分别处理它们的中断请求，这样初步解决了CPU、主存和外部设备之间的速度匹配问题。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (273, 4, 11, 54, 'CPU响应中断应具备哪些条件？请说明中断处理过程的步骤。', '答：响应中断的条件：（1）在CPU内部设置的“中断屏蔽”触发器必须是开放的；（2）外设有中断请求，“中断请求”触发器处于“1”状态，保持中断请求信号；（3）外设（接口）“中断允许”触发器必须为“1”；（4）CPU完成当前指令的执行。中断处理过程的步骤：关中断；保存断点、保存现场；判断中断条件转入中断服务程序；开中断；执行中断服务程序；关中断；恢复现场、恢复断点；开中断；返回断点。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (274, 4, 10, 48, '请说明中断接口中以下几个触发器的主要作用。（1）中断请求触发器；（2）中断屏蔽触发器；（3）中断允许触发器；（4）准备就绪状态触发器；（5）忙状态触发器。', '答：中断接口各触发器的主要作用为：（1）中断请求触发器：暂存中断请求线上由设备发出的中断请求信号。此标志为“1”时表示设备发送了中断请求；（2）中断屏蔽触发器：CPU是否可以响应中断的标志。中断屏蔽触发器为“0”时，CPU可以响应外界的中断；（3）中断允许触发器：控制是否允许某设备发出中断请求，为“1”时，某设备可以向CPU发送中断请求；（4）准备就绪状态触发器：一旦设备做好一次数据的接收或发送，便发送一个设备动作完毕信号，使触发器标志为“1”；（5）忙状态触发器：该标志为“1”时设备正在工作。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (275, 4, 10, 48, '在单重中断方式下（即进入中断处理后不再响应其他中断请求），CPU响应中断的步骤是那些？在多重中断方式下CPU相应中断的步骤又是哪些？', '答：单重中断方式CPU响应中断的步骤为：关中断，保存现场，判断中断源，执行与设备有关的中断服务程序，恢复现场，开中断，返回原程序。多重中断方式CPU响应中断的步骤为：关中断，保存现场（包括保存原中断屏蔽字并取新屏蔽字），判断中断源，开中断，执行与设备有关的中断服务程序，关中断，恢复现场（包括恢复中断屏蔽字），开中断，返回原程序。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (276, 4, 10, 48, '某计算机系统共有五级中断，其中断响应优先级从高到低为1-->2-->3-->4-->5。但操作系统的中断处理部分作如下规定：处理1级中断时屏蔽2、3、4和5级中断；处理2级中断时屏蔽3、4、5级中断，处理4级中断时不屏蔽其它中断；处理3级中断时屏蔽4和5级中断；处理5级中断时屏蔽4级中断。试问中断处理优先级（从高到低）是什么？', '答：中断处理优先级从高到低是：1-->2-->3-->5-->4', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (277, 4, 10, 51, '单总线结构有何特点？计算机中采用多总线结构的主要原因何在？', '答：单总线的特点：分时性和共享性。单总线具有结构简单便于扩充等优点。但由于所有数据的传送都通过这一共享的总线，因此在此处可能成为计算机的瓶颈。另外也不允许两个以上模块在同一时刻交换信息，这对提高系统效率和充分利用子系统都是不利的。为了提高数据传输率，并解决I/O设备和CPU、主存之间传送速率的差异，解决总线数据传送的“瓶颈”问题，而采用多总线。', NULL, NULL, 1.00, 1711418060730, 1711418060730);
INSERT INTO `question` VALUES (278, 4, 1, 3, '你认为计算机的软件和硬件的逻辑功能等价吗？为什么？', '答：软件和硬件的逻辑功能是等效的，但性能不同。', NULL, NULL, 1.00, 1711418060730, 1711418060730);

-- ----------------------------
-- Table structure for question_type
-- ----------------------------
DROP TABLE IF EXISTS `question_type`;
CREATE TABLE `question_type`  (
  `question_type_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '题型id',
  `question_type_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '题型名称: 选择题、判断题、填空题 等',
  `subject_whether` tinyint(2) NOT NULL COMMENT '是否是主观题',
  PRIMARY KEY (`question_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '题型表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of question_type
-- ----------------------------
INSERT INTO `question_type` VALUES (1, '选择题', 0);
INSERT INTO `question_type` VALUES (2, '判断题', 0);
INSERT INTO `question_type` VALUES (3, '计算题', 1);
INSERT INTO `question_type` VALUES (4, '简答题', 1);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `role_id` int(8) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '角色表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'admin');
INSERT INTO `role` VALUES (2, 'student');
INSERT INTO `role` VALUES (3, 'teacher');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`  (
  `role_permission_id` int(8) NOT NULL AUTO_INCREMENT,
  `role_id` int(8) NULL DEFAULT NULL,
  `permission_id` int(8) NULL DEFAULT NULL,
  PRIMARY KEY (`role_permission_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '角色权限表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of role_permission
-- ----------------------------

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school`  (
  `school_id` int(8) NOT NULL AUTO_INCREMENT,
  `school_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '学校名称',
  `school_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '学校地址',
  `school_phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '学校电话',
  PRIMARY KEY (`school_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '学校表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES (1, '东莞城市学院', '广东省东莞市寮步镇', '076923382107');
INSERT INTO `school` VALUES (2, '东莞理工学院', '广东省东莞市松山湖', '076922861199');
INSERT INTO `school` VALUES (3, '清华大学', '北京市海淀区', '01062793001');
INSERT INTO `school` VALUES (4, '北京大学', '北京市海淀区', '01062751407');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `student_id` int(9) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `student_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '姓名',
  `gender` tinyint(2) NULL DEFAULT NULL COMMENT '性别，1-男 ， 2- 女',
  `student_no` char(12) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '学生编号',
  `class_id` int(8) NOT NULL COMMENT '班级id',
  `user_id` int(8) NOT NULL DEFAULT 2 COMMENT '用户id',
  `email` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`student_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '学生信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '张三', 1, '20240921', 1, 1, '12345678998@163.com');
INSERT INTO `student` VALUES (2, '李四', 1, '20240922', 1, 3, '12345678998@163.com');
INSERT INTO `student` VALUES (3, '赵六', 1, '19898989898', 1, 12, '19898989898@163.com');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `teacher_id` int(9) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `teacher_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '姓名',
  `school_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '学校id',
  `gender` tinyint(2) NULL DEFAULT NULL COMMENT '性别, 1-男 ， 2- 女',
  `employee_id` char(8) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '职工号',
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '邮箱',
  `user_id` int(16) NULL DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`teacher_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '教师信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, '李恒', '1', 1, NULL, NULL, 2);
INSERT INTO `teacher` VALUES (4, 'jone', '1', 1, NULL, '18473095331@163.com', 4);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(8) NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` int(2) NOT NULL COMMENT '是否过期的状态',
  `type` int(2) NOT NULL COMMENT '学生 or 老师',
  `allow_other_login` int(2) NULL DEFAULT NULL COMMENT '是否允许异地登录（1是，0否）',
  `expire_time` bigint(8) NOT NULL,
  `create_time` bigint(8) NOT NULL,
  `update_time` bigint(8) NOT NULL,
  `school_id` int(8) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '用户表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '18472613257', '$2a$10$4gaP0BKtVVRkpfeoK3j3L.Wu0TI442O5mPbFodoQ1uRBplPL12XQG', 0, 1, 1, 1742953756000, 1711418060730, 1711418060730, 1);
INSERT INTO `user` VALUES (2, '18888888888', '$2a$10$4gaP0BKtVVRkpfeoK3j3L.Wu0TI442O5mPbFodoQ1uRBplPL12XQG', 0, 2, 1, 1742953756000, 1711418060730, 1711418060730, 1);
INSERT INTO `user` VALUES (4, '18473095331', '$2a$10$4gaP0BKtVVRkpfeoK3j3L.Wu0TI442O5mPbFodoQ1uRBplPL12XQG', 0, 2, 1, 1743436800000, 1712671743792, 1712671743792, 1);
INSERT INTO `user` VALUES (5, '13838384381', '$2a$10$4gaP0BKtVVRkpfeoK3j3L.Wu0TI442O5mPbFodoQ1uRBplPL12XQG', 0, 3, 1, 1744603777965, 1713068044174, 1713068044175, 1);
INSERT INTO `user` VALUES (12, '19898989898', '$2a$10$5gzPd.aMTYOQhF1bzgJLn.Hm6AsEYKR9lj3SheT.5ZaPUH1rHRQ7C', 0, 1, 1, 1713715200000, 1713685322694, 1713685322694, 1);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `user_role_id` int(8) NOT NULL AUTO_INCREMENT,
  `user_id` int(8) NOT NULL COMMENT '用户id',
  `role_id` int(8) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`user_role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '用户角色表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 1, 2);
INSERT INTO `user_role` VALUES (2, 2, 3);
INSERT INTO `user_role` VALUES (3, 4, 2);
INSERT INTO `user_role` VALUES (4, 12, 2);

-- ----------------------------
-- Table structure for wrong_record
-- ----------------------------
DROP TABLE IF EXISTS `wrong_record`;
CREATE TABLE `wrong_record`  (
  `wrong_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '错题id',
  `student_id` int(8) NOT NULL COMMENT '学生id',
  `question_id` int(8) NOT NULL COMMENT '题目id',
  `wrong_time` int(8) NOT NULL COMMENT '错误次数',
  `module_id` int(8) NOT NULL COMMENT '模块id',
  `kps_id` int(8) NOT NULL COMMENT '知识点id',
  `question_type_id` int(8) NULL DEFAULT NULL COMMENT '题型id',
  `create_time` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` bigint(20) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`wrong_id`) USING BTREE,
  INDEX `Index_query_question`(`student_id`, `question_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '错题记录表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of wrong_record
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
