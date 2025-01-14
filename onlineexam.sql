/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 80200
Source Host           : localhost:3306
Source Database       : onlineexam

Target Server Type    : MYSQL
Target Server Version : 80200
File Encoding         : 65001

Date: 2024-04-26 12:17:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answer_details
-- ----------------------------
DROP TABLE IF EXISTS `answer_details`;
CREATE TABLE `answer_details` (
  `answer_detail_id` int NOT NULL AUTO_INCREMENT COMMENT '学生答题详情 id',
  `answer_situation_id` int NOT NULL COMMENT '考试答题情况 ld',
  `exam_paper_question_id` int NOT NULL COMMENT '试卷试题 id',
  `question_key_by_user` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT '学生答案',
  `score` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '得分',
  `status` int DEFAULT NULL,
  `student_id` int NOT NULL,
  PRIMARY KEY (`answer_detail_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=428 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT COMMENT='试卷 - 答题详情';

-- ----------------------------
-- Records of answer_details
-- ----------------------------
INSERT INTO `answer_details` VALUES ('216', '34', '382', 0xE5AD98E694BE31E4B8AAE4BA8CE8BF9BE588B6E4BFA1E681AFE4BD8DE79A84E5AD98E582A8E58583, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('217', '34', '383', 0xE6938DE4BD9CE695B0E79A84E69C89E69588E59CB0E59D80, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('218', '34', '384', 0x3031, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('219', '34', '385', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('220', '34', '386', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('221', '34', '387', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('222', '34', '388', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('223', '34', '389', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('224', '34', '390', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('225', '34', '391', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('226', '34', '392', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('227', '34', '393', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('228', '34', '394', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('229', '34', '395', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('230', '34', '396', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('231', '34', '397', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('232', '34', '398', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('233', '34', '399', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('234', '34', '400', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('235', '34', '401', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('236', '34', '402', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('237', '34', '403', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('238', '34', '404', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('239', '34', '405', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('240', '34', '406', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('241', '34', '407', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('242', '34', '408', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('243', '34', '409', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('244', '34', '410', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('245', '34', '411', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('246', '34', '412', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('247', '34', '413', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('248', '34', '414', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('249', '34', '415', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('250', '34', '416', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('251', '34', '417', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('252', '34', '418', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('253', '34', '419', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('254', '34', '420', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('255', '34', '421', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('256', '34', '422', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('257', '34', '423', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('258', '34', '424', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('259', '34', '425', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('260', '34', '426', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('261', '34', '427', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('262', '34', '428', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('263', '34', '429', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('264', '35', '430', 0xE58FAFE4BBA5E78BACE7AB8BE7BC96E59D80, '5.00', '1', '0');
INSERT INTO `answer_details` VALUES ('265', '35', '431', 0xE58FAAE883BDE59CA8E6A088E9A1B6E5AD98E58F96E4BBA3E7A081, '5.00', '1', '0');
INSERT INTO `answer_details` VALUES ('266', '35', '432', 0xE8BF9EE7BBADE79A84E4B8A4E4B8AAE5AD98E582A8E58D95E58583E58886E5B883E59CA8E5908CE4B880E4B8AAE5AD98E582A8E4BD93E58685EFBC8CE4BD86E59CB0E59D80E79BB8E99A9434, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('267', '35', '433', 0xE5AD98E694BE31E4B8AAE69CBAE599A8E5AD97E79A84E68980E69C89E5AD98E582A8E58583E99B86E59088, '5.00', '1', '0');
INSERT INTO `answer_details` VALUES ('268', '35', '434', 0x3130303248, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('269', '35', '435', 0x435055E591A8E69C9F, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('270', '35', '436', 0xE8BE85E5AD98E280946361636865E28094E4B8BBE5AD98E28094E5AF84E5AD98E599A8, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('271', '35', '437', 0xE8BE85E58AA9E5AD98E582A8E599A8E5AD98E694BEE7B3BBE7BB9FE7A88BE5BA8FE5928CE5A4A7E59E8BE695B0E68DAEE69687E4BBB6E58F8AE695B0E68DAEE5BA93, '5.00', '1', '0');
INSERT INTO `answer_details` VALUES ('272', '35', '438', 0xE5A086E6A088, '5.00', '1', '0');
INSERT INTO `answer_details` VALUES ('273', '35', '439', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('274', '35', '440', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('275', '35', '441', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('276', '35', '442', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('277', '35', '443', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('278', '35', '444', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('279', '35', '445', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('280', '35', '446', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('281', '35', '447', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('282', '35', '448', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('283', '35', '449', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('284', '35', '450', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('285', '35', '451', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('286', '35', '452', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('287', '35', '453', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('288', '35', '454', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('289', '35', '455', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('290', '35', '456', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('291', '35', '457', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('292', '35', '458', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('293', '35', '459', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('294', '35', '460', 0xE6ADA3E7A1AE, '5.00', '1', '0');
INSERT INTO `answer_details` VALUES ('295', '35', '461', 0xE99499E8AFAF, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('296', '35', '462', 0xE6ADA3E7A1AE, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('297', '35', '463', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('298', '35', '464', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('299', '35', '465', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('300', '35', '466', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('301', '35', '467', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('302', '35', '468', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('303', '35', '469', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('304', '35', '470', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('305', '35', '471', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('306', '35', '472', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('307', '35', '473', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('308', '35', '474', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('309', '35', '475', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('310', '35', '476', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('311', '36', '477', 0xE694AFE68C81E7A88BE5BA8FE79A84E6A8A1E59D97E58C96E8AEBEE8AEA1E5928CE5B9B6E8A18CE7BC96E7A88BE79A84E8A681E6B182, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('312', '36', '478', 0x444D41E68EA7E588B6E599A8E59091435055E8AFB7E6B182E79A84E698AFE680BBE7BABFE79A84E4BDBFE794A8E69D83, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('313', '36', '479', 0xE58AA033, '5.00', '1', '0');
INSERT INTO `answer_details` VALUES ('314', '36', '480', 0xE7A381E79B98E58CBAE59F9FE4B88EE4B8BBE5AD98, '5.00', '1', '0');
INSERT INTO `answer_details` VALUES ('315', '36', '481', 0x423248, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('316', '36', '482', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('317', '36', '483', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('318', '36', '484', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('319', '36', '485', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('320', '36', '486', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('321', '36', '487', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('322', '36', '488', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('323', '36', '489', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('324', '36', '490', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('325', '36', '491', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('326', '36', '492', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('327', '36', '493', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('328', '36', '494', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('329', '36', '495', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('330', '36', '496', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('331', '36', '497', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('332', '36', '498', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('333', '36', '499', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('334', '36', '500', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('335', '36', '501', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('336', '36', '502', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('337', '36', '503', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('338', '36', '504', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('339', '36', '505', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('340', '36', '506', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('341', '36', '507', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('342', '36', '508', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('343', '36', '509', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('344', '36', '510', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('345', '36', '511', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('346', '36', '512', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('347', '36', '513', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('348', '36', '514', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('349', '36', '515', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('350', '36', '516', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('351', '36', '517', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('352', '36', '518', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('353', '36', '519', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('354', '36', '520', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('355', '36', '521', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('356', '36', '522', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('357', '36', '523', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('358', '37', '524', 0xE8A2ABE4B998E695B0E794A8E58E9FE7A081E8A1A8E7A4BAEFBC8CE4B998E695B0E58F96E7BB9DE5AFB9E580BCEFBC8CE784B6E5908EE79BB8E4B998, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('359', '37', '525', 0x344548, '10.00', '1', '0');
INSERT INTO `answer_details` VALUES ('360', '37', '526', 0x326E2D32E4BD8D, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('361', '37', '527', 0x434548, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('362', '37', '528', 0x454E494143, '10.00', '1', '0');
INSERT INTO `answer_details` VALUES ('363', '37', '529', 0xE6ADA3E7A1AE, '10.00', '1', '0');
INSERT INTO `answer_details` VALUES ('364', '37', '530', 0xE6ADA3E7A1AE, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('365', '37', '531', 0xE6ADA3E7A1AE, '10.00', '1', '0');
INSERT INTO `answer_details` VALUES ('366', '37', '532', 0xE6ADA3E7A1AE, '10.00', '1', '0');
INSERT INTO `answer_details` VALUES ('367', '37', '533', 0xE6ADA3E7A1AE, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('368', '38', '534', 0xE4B8BBE5AD98EFBC8DE5A496E5AD98E79A84E5AD98E582A8E5B182E6ACA1EFBC8CE698AFE4B8BAE4BA86E5BCA5E8A1A5E4B8BBE5AD98E9809FE5BAA6E79A84E4B88DE8B6B3, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('369', '38', '535', 0xE5B0BEE695B0E58D95E78BACE58AA0E5878FEFBC8CE58EBBE4B8A4E695B0E4B8ADE69C80E5A4A7E998B6E7A081E580BCE4BD9CE4B8BAE7BB93E69E9CE79A84E998B6E7A081E580BC, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('370', '38', '536', 0xE58FAFE4BBA5E5AD98E694BEE695B0E68DAEE5928CE59CB0E59D80EFBC8CE8BF98E58FAFE4BBA5E794A8E5819AE7A88BE5BA8FE8AEA1E695B0E599A85043, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('371', '38', '537', 0x466C617368204D656D6F7279, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('372', '38', '538', 0xE5AD98E582A8E599A8E4B8ADE79A84E58685E5AEB9E698AFE8A2ABE9A284E58588E58699E5A5BDE79A84EFBC8CE5B9B6E4B894E696ADE794B5E5908EE4BB8DE883BDE995BFE69C9FE4BF9DE5AD98, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('373', '38', '539', 0xE6ADA3E7A1AE, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('374', '38', '540', 0xE6ADA3E7A1AE, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('375', '38', '541', 0xE6ADA3E7A1AE, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('376', '38', '542', 0xE6ADA3E7A1AE, '5.00', '1', '0');
INSERT INTO `answer_details` VALUES ('377', '38', '543', 0xE99499E8AFAF, '5.00', '1', '0');
INSERT INTO `answer_details` VALUES ('378', '38', '544', 0xE4B88DE79FA5E98193, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('379', '38', '545', 0x34E78987, '5.00', null, '0');
INSERT INTO `answer_details` VALUES ('380', '38', '546', 0x383025, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('381', '38', '547', 0x35, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('382', '38', '548', 0x3130303131, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('383', '38', '549', 0xE58F98E59D80E5AFBBE59D80, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('384', '38', '550', 0xE697A0, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('385', '38', '551', 0xE5A5BD, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('386', '38', '552', 0xE795A5, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('387', '38', '553', 0x353535353535, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('388', '39', '554', 0xE5B086E8A2ABE58AA0E695B0E79A84E998B6E7A081E8B083E695B4E588B0E4B88EE58AA0E695B0E79A84E998B6E7A081E79BB8E5908C, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('389', '39', '555', 0xEFBC8B3130313131303142, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('390', '39', '556', 0xE59FBAE59D80E5AFBBE59D80E696B9E5BC8F, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('391', '39', '557', 0xE9809AE8BF87E4BC98E58C96E7BC96E8AF91E7A88BE5BA8FE68F90E9AB98E5A484E79086E9809FE5BAA6, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('392', '39', '558', 0xE58FAAE883BDE59CA8E6A088E9A1B6E5AD98E58F96E4BBA3E7A081, '5.00', '1', '0');
INSERT INTO `answer_details` VALUES ('393', '39', '559', 0xE99499E8AFAF, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('394', '39', '560', 0xE99499E8AFAF, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('395', '39', '561', 0xE99499E8AFAF, '5.00', '1', '0');
INSERT INTO `answer_details` VALUES ('396', '39', '562', 0xE99499E8AFAF, '5.00', '1', '0');
INSERT INTO `answer_details` VALUES ('397', '39', '563', 0xE99499E8AFAF, '5.00', '1', '0');
INSERT INTO `answer_details` VALUES ('398', '39', '564', '', '5.00', null, '0');
INSERT INTO `answer_details` VALUES ('399', '39', '565', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('400', '39', '566', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('401', '39', '567', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('402', '39', '568', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('403', '39', '569', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('404', '39', '570', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('405', '39', '571', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('406', '39', '572', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('407', '39', '573', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('408', '40', '574', 0xE5A49AE680BBE7BABF, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('409', '40', '575', 0xE7B3BBE7BB9FE4B8ADE79A84E59084E4B8AAE58A9FE883BDE6A8A1E59D97E68896E8AEBEE5A487, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('410', '40', '576', 0x6E2B32E4BD8D, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('411', '40', '577', 0x302E31313031303130, '5.00', '1', '0');
INSERT INTO `answer_details` VALUES ('412', '40', '578', 0x423248, '5.00', '1', '0');
INSERT INTO `answer_details` VALUES ('413', '40', '579', 0xE6ADA3E7A1AE, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('414', '40', '580', 0xE6ADA3E7A1AE, '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('415', '40', '581', 0xE6ADA3E7A1AE, '5.00', '1', '0');
INSERT INTO `answer_details` VALUES ('416', '40', '582', 0xE6ADA3E7A1AE, '5.00', '1', '0');
INSERT INTO `answer_details` VALUES ('417', '40', '583', 0xE6ADA3E7A1AE, '5.00', '1', '0');
INSERT INTO `answer_details` VALUES ('418', '40', '584', '', '5.00', null, '0');
INSERT INTO `answer_details` VALUES ('419', '40', '585', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('420', '40', '586', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('421', '40', '587', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('422', '40', '588', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('423', '40', '589', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('424', '40', '590', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('425', '40', '591', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('426', '40', '592', '', '0.00', null, '0');
INSERT INTO `answer_details` VALUES ('427', '40', '593', '', '0.00', null, '0');

-- ----------------------------
-- Table structure for answer_record_bean
-- ----------------------------
DROP TABLE IF EXISTS `answer_record_bean`;
CREATE TABLE `answer_record_bean` (
  `answer_record_id` int NOT NULL AUTO_INCREMENT,
  `practice_detail_id` int NOT NULL COMMENT '试卷详情id',
  `student_id` int NOT NULL COMMENT '学生id',
  `question_key_by_user` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT '学生填写的答案',
  `correct` tinyint DEFAULT NULL COMMENT '是否正确',
  `create_time` bigint NOT NULL COMMENT '创建时间',
  `update_time` bigint NOT NULL COMMENT '修改时间',
  `question_type_id` int NOT NULL COMMENT '题型id',
  `kps_id` int NOT NULL COMMENT '知识点id',
  `module_id` int NOT NULL COMMENT '模块id',
  PRIMARY KEY (`answer_record_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=465 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT COMMENT='练习题 - 答题记录表';

-- ----------------------------
-- Records of answer_record_bean
-- ----------------------------
INSERT INTO `answer_record_bean` VALUES ('337', '4340', '1', 0x454E494143, '1', '1713867901129', '1713867901129', '1', '1', '1');
INSERT INTO `answer_record_bean` VALUES ('338', '4341', '1', 0xE69CBAE599A8E8AFADE8A880, '1', '1713867901129', '1713867901129', '1', '1', '1');
INSERT INTO `answer_record_bean` VALUES ('339', '4342', '1', 0xE5AD98E582A8E599A8, '0', '1713867901129', '1713867901129', '1', '1', '1');
INSERT INTO `answer_record_bean` VALUES ('340', '4343', '1', 0xE586AFE280A2E8AFBAE4BE9DE69BBC, '1', '1713867902375', '1713867902375', '1', '1', '1');
INSERT INTO `answer_record_bean` VALUES ('341', '4344', '1', 0xE4B998E695B0E794A8E58E9FE7A081E8A1A8E7A4BAEFBC8CE8A2ABE4B998E695B0E58F96E7BB9DE5AFB9E580BCEFBC8CE784B6E5908EE79BB8E4B998, '0', '1713867907069', '1713867907069', '1', '6', '2');
INSERT INTO `answer_record_bean` VALUES ('342', '4345', '1', 0xE58588E58F96E6938DE4BD9CE695B0E7BB9DE5AFB9E580BCE79BB8E4B998EFBC8CE7ACA6E58FB7E4BD8DE58D95E78BACE5A484E79086, '1', '1713867915323', '1713867915323', '1', '6', '2');
INSERT INTO `answer_record_bean` VALUES ('343', '4346', '1', 0xE6ADA3E7A1AE, '0', '1713867920170', '1713867920170', '2', '6', '2');
INSERT INTO `answer_record_bean` VALUES ('344', '4347', '1', 0xE58FAFE4BBA5E5AD98E694BEE695B0E68DAEE5928CE59CB0E59D80EFBC8CE8BF98E58FAFE4BBA5E794A8E5819AE68C87E4BBA4E5AF84E5AD98E599A84952, '0', '1713867934201', '1713867934201', '1', '7', '2');
INSERT INTO `answer_record_bean` VALUES ('345', '4348', '1', 0x466C617368204D656D6F7279, '0', '1713867934202', '1713867934202', '1', '7', '2');
INSERT INTO `answer_record_bean` VALUES ('346', '4349', '1', 0x4452414D, '1', '1713867934203', '1713867934203', '1', '7', '2');
INSERT INTO `answer_record_bean` VALUES ('347', '4350', '1', 0xE586AFE280A2E8AFBAE4BE9DE69BBC, '1', '1713868718096', '1713868718096', '1', '1', '1');
INSERT INTO `answer_record_bean` VALUES ('348', '4351', '1', 0x4452414D, '1', '1713868718096', '1713868718096', '1', '7', '2');
INSERT INTO `answer_record_bean` VALUES ('349', '4352', '1', 0x466C617368204D656D6F7279, '0', '1713868718096', '1713868718096', '1', '7', '2');
INSERT INTO `answer_record_bean` VALUES ('350', '4353', '1', 0x454E494143, '1', '1713868718099', '1713868718099', '1', '1', '1');
INSERT INTO `answer_record_bean` VALUES ('351', '4354', '1', 0xE7B4AFE58AA0E599A8, '1', '1713868718099', '1713868718099', '1', '1', '1');
INSERT INTO `answer_record_bean` VALUES ('352', '4355', '1', 0x2DEFBC88325E382D31EFBC89, '0', '1713868718099', '1713868718099', '1', '10', '3');
INSERT INTO `answer_record_bean` VALUES ('353', '4356', '1', 0xE58FAFE59CA8E6A088E9A1B6E5928CE6A088E5BA95E5AD98E58F96E4BBA3E7A081, '0', '1713868718101', '1713868718101', '1', '23', '5');
INSERT INTO `answer_record_bean` VALUES ('354', '4357', '1', 0xE58FAAE69C89E4B880E4B8AAE983A8E4BBB6E58FAFE4BBA5E59091E680BBE7BABFE58F91E98081E4BFA1E681AFEFBC8CE4BD86E58FAFE4BBA5E69C89E5A49AE4B8AAE983A8E4BBB6E5908CE697B6E4BB8EE680BBE7BABFE4B88AE68EA5E694B6E4BFA1E681AF, '1', '1713868718103', '1713868718103', '1', '3', '1');
INSERT INTO `answer_record_bean` VALUES ('355', '4358', '1', 0xE5A496E5AD98, '0', '1713868718103', '1713868718103', '1', '48', '10');
INSERT INTO `answer_record_bean` VALUES ('356', '4359', '1', 0xE99D99E68081E5AD98E582A8E599A84452414D, '1', '1713868718104', '1713868718104', '1', '15', '4');
INSERT INTO `answer_record_bean` VALUES ('357', '4360', '1', 0xE58D8AE5AFBCE4BD93E5AD98E582A8E599A8, '1', '1713885319634', '1713885319634', '1', '3', '1');
INSERT INTO `answer_record_bean` VALUES ('358', '4361', '1', 0xE680BBE7BABF, '0', '1713885319634', '1713885319634', '1', '3', '1');
INSERT INTO `answer_record_bean` VALUES ('359', '4362', '1', 0xE69CBAE599A8E8AFADE8A880, '1', '1713885319637', '1713885319637', '1', '1', '1');
INSERT INTO `answer_record_bean` VALUES ('360', '4363', '1', 0xE883BDE4B880E6ACA1E5B9B6E8A18CE4BCA0E98081E79A84E695B0E68DAEE69C80E5A4A7E580BC, '0', '1713885319637', '1713885319637', '1', '3', '1');
INSERT INTO `answer_record_bean` VALUES ('361', '4364', '1', 0x454E494143, '1', '1713885319640', '1713885319640', '1', '1', '1');
INSERT INTO `answer_record_bean` VALUES ('362', '4365', '1', 0xE68C87E4BBA4E5AF84E5AD98E599A8, '0', '1713885319640', '1713885319640', '1', '1', '1');
INSERT INTO `answer_record_bean` VALUES ('363', '4366', '1', 0xE586AFE280A2E8AFBAE4BE9DE69BBC, '1', '1713885319641', '1713885319641', '1', '1', '1');
INSERT INTO `answer_record_bean` VALUES ('364', '4367', '1', 0xE5A49AE680BBE7BABF, '0', '1713885319641', '1713885319641', '1', '3', '1');
INSERT INTO `answer_record_bean` VALUES ('365', '4368', '1', 0xE6938DE4BD9CE695B0E79A84E5BDA2E5BC8FE59CB0E59D80, '0', '1713885319642', '1713885319642', '1', '3', '1');
INSERT INTO `answer_record_bean` VALUES ('366', '4369', '1', 0x504349, '1', '1713885319643', '1713885319643', '1', '3', '1');
INSERT INTO `answer_record_bean` VALUES ('367', '4370', '1', 0x34E5928C38, '1', '1713941774922', '1713941774922', '1', '15', '4');
INSERT INTO `answer_record_bean` VALUES ('368', '4371', '1', 0x2D325E37, '0', '1713941774922', '1713941774922', '1', '10', '3');
INSERT INTO `answer_record_bean` VALUES ('369', '4372', '1', 0xE4B8BBE5AD98E794B1524F4DE69E84E68890, '0', '1713941775406', '1713941775406', '1', '15', '4');
INSERT INTO `answer_record_bean` VALUES ('370', '4373', '1', 0xE58AA031, '0', '1713941775408', '1713941775408', '1', '10', '3');
INSERT INTO `answer_record_bean` VALUES ('371', '4374', '1', 0xE5AD98E582A8E58D95E58583E7AE80E58D95EFBC8CE99B86E68890E5BAA6E9AB98, '0', '1713941775409', '1713941775409', '1', '36', '8');
INSERT INTO `answer_record_bean` VALUES ('372', '4375', '1', 0xE6AF8FE4B880E69DA1E69CBAE599A8E68C87E4BBA4E794B1E4B880E6AEB5E794A8E5BEAEE68C87E4BBA4E7BC96E68890E79A84E5BEAEE7A88BE5BA8FE69DA5E8A7A3E9878AE689A7E8A18C, '1', '1713941775410', '1713941775410', '1', '21', '5');
INSERT INTO `answer_record_bean` VALUES ('373', '4376', '1', 0xE5AF84E5AD98E599A8E997B4E68EA5E5AFBBE59D80E696B9E5BC8F, '1', '1713941775410', '1713941775410', '1', '22', '5');
INSERT INTO `answer_record_bean` VALUES ('374', '4377', '1', 0xE997B4E68EA5, '0', '1713941775410', '1713941775410', '1', '22', '5');
INSERT INTO `answer_record_bean` VALUES ('375', '4378', '1', 0x312E30303130313130, '0', '1713941775411', '1713941775411', '1', '10', '3');
INSERT INTO `answer_record_bean` VALUES ('376', '4379', '1', 0xE59BBAE4BBB6, '0', '1713941775412', '1713941775412', '1', '48', '10');
INSERT INTO `answer_record_bean` VALUES ('377', '4390', '1', 0xE7BD91E7BB9CE8AFADE8A880, '0', '1713946599473', '1713946599473', '1', '1', '1');
INSERT INTO `answer_record_bean` VALUES ('378', '4391', '1', 0xE4B8BBE5AD98E794B1524F4DE69E84E68890, '0', '1713946599490', '1713946599490', '1', '15', '4');
INSERT INTO `answer_record_bean` VALUES ('379', '4392', '1', 0xE695B0E68DAEE4BCA0E98081E68C87E4BBA4, '0', '1713946599496', '1713946599496', '1', '21', '5');
INSERT INTO `answer_record_bean` VALUES ('380', '4393', '1', 0x444D41E68EA7E588B6E599A8, '1', '1713946599501', '1713946599501', '1', '3', '1');
INSERT INTO `answer_record_bean` VALUES ('381', '4394', '1', 0xE59CA8435055E5928C492F4FE7ABAFE58FA3E4B98BE997B4E8BF9BE8A18CE695B0E68DAEE4BCA0E98081, '1', '1713946599501', '1713946599501', '1', '21', '5');
INSERT INTO `answer_record_bean` VALUES ('382', '4395', '1', 0xE58588E58F96E6938DE4BD9CE695B0E7BB9DE5AFB9E580BCE79BB8E4B998EFBC8CE7ACA6E58FB7E4BD8DE58D95E78BACE5A484E79086, '1', '1713946599501', '1713946599501', '1', '11', '3');
INSERT INTO `answer_record_bean` VALUES ('383', '4396', '1', 0xE68C87E4BBA4E689A7E8A18CE9809FE5BAA6E5BFABEFBC8CE68C87E4BBA4E58A9FE883BDE79A84E4BFAEE694B9E5928CE689A9E5B195E5AEB9E69893, '0', '1713946599501', '1713946599501', '1', '29', '6');
INSERT INTO `answer_record_bean` VALUES ('384', '4397', '1', 0xE8BF9EE7BBADE79A84E4B8A4E4B8AAE5AD98E582A8E58D95E58583E58886E5B883E59CA8E5908CE4B880E4B8AAE5AD98E582A8E4BD93E58685EFBC8CE4BD86E59CB0E59D80E79BB8E99A9434, '0', '1713946599504', '1713946599504', '1', '19', '4');
INSERT INTO `answer_record_bean` VALUES ('385', '4398', '1', 0xE585B7E69C89E4B88DE69893E5A4B1E680A7EFBC8CE58DB3E4BDBFE698AFE794B5E6BA90E8A2ABE58887E696ADEFBC8C524F4DE79A84E4BFA1E681AFE4B99FE4B88DE4BC9AE4B8A2E5A4B1, '0', '1713946599506', '1713946599506', '1', '8', '2');
INSERT INTO `answer_record_bean` VALUES ('386', '4399', '1', 0x302E363448, '0', '1713946599509', '1713946599509', '1', '9', '3');
INSERT INTO `answer_record_bean` VALUES ('387', '4400', '1', 0xE58D95E680BBE7BABF, '1', '1714016746622', '1714016746622', '1', '3', '1');
INSERT INTO `answer_record_bean` VALUES ('388', '4401', '1', 0xE58685E5AEB9E68C87E5AE9AE696B9E5BC8F, '1', '1714016746622', '1714016746622', '1', '15', '4');
INSERT INTO `answer_record_bean` VALUES ('389', '4402', '1', 0x524F4DE88AAFE78987E5B19EE4BA8EE58D8AE5AFBCE4BD93E99A8FE69CBAE5AD98E582A8E599A8E88AAFE78987, '1', '1714016746622', '1714016746622', '1', '15', '4');
INSERT INTO `answer_record_bean` VALUES ('390', '4403', '1', 0x302E363448, '0', '1714016746622', '1714016746622', '1', '9', '3');
INSERT INTO `answer_record_bean` VALUES ('391', '4404', '1', 0xE4B8BBE5AD98E4B88EE8BE85E5AD98E9809FE5BAA6E4B88DE58CB9E9858D, '0', '1714016746640', '1714016746640', '1', '15', '4');
INSERT INTO `answer_record_bean` VALUES ('392', '4405', '1', 0x414C55E38081E9809AE794A8E5AF84E5AD98E599A8E5928CE4B8BBE5AD98, '0', '1714016746643', '1714016746643', '1', '25', '6');
INSERT INTO `answer_record_bean` VALUES ('393', '4406', '1', 0xE5B7A5E4BD9CE4B8ADE99C80E8A681E58AA8E68081E59CB0E694B9E58F98E8AEBFE5AD98E59CB0E59D80, '0', '1714016746645', '1714016746645', '1', '17', '4');
INSERT INTO `answer_record_bean` VALUES ('394', '4407', '1', 0xE7A88BE5BA8FE4B8ADE696ADE696B9E5BC8F, '0', '1714016746649', '1714016746649', '1', '47', '10');
INSERT INTO `answer_record_bean` VALUES ('395', '4408', '1', 0xE6B581E6B0B4E68A80E69CAF, '0', '1714016746651', '1714016746651', '1', '20', '4');
INSERT INTO `answer_record_bean` VALUES ('396', '4409', '1', 0xE695B0E68DAEE7BC93E586B2E5AF84E5AD98E599A8, '1', '1714016746656', '1714016746656', '1', '16', '4');
INSERT INTO `answer_record_bean` VALUES ('397', '4410', '1', 0xE6ADA3E7A1AE, '0', '1714051923260', '1714051923260', '2', '7', '2');
INSERT INTO `answer_record_bean` VALUES ('398', '4411', '1', 0xE6ADA3E7A1AE, '1', '1714051923314', '1714051923314', '2', '7', '2');
INSERT INTO `answer_record_bean` VALUES ('399', '4412', '1', 0xE6ADA3E7A1AE, '0', '1714051923314', '1714051923314', '2', '6', '2');
INSERT INTO `answer_record_bean` VALUES ('400', '4413', '1', 0xE6ADA3E7A1AE, '0', '1714051923317', '1714051923317', '2', '7', '2');
INSERT INTO `answer_record_bean` VALUES ('401', '4414', '1', 0xE6ADA3E7A1AE, '0', '1714051923320', '1714051923320', '2', '8', '2');
INSERT INTO `answer_record_bean` VALUES ('402', '4415', '1', 0xE6ADA3E7A1AE, '0', '1714051923327', '1714051923327', '2', '7', '2');
INSERT INTO `answer_record_bean` VALUES ('403', '4416', '1', 0xE6ADA3E7A1AE, '0', '1714051923334', '1714051923334', '2', '7', '2');
INSERT INTO `answer_record_bean` VALUES ('404', '4417', '1', 0xE6ADA3E7A1AE, '1', '1714051923337', '1714051923337', '2', '8', '2');
INSERT INTO `answer_record_bean` VALUES ('405', '4418', '1', 0xEFBC88EFBC8852EFBC89EFBC892BEFBC88EFBC884164EFBC89EFBC892D2D3E4164, '0', '1714053847867', '1714053847867', '1', '21', '5');
INSERT INTO `answer_record_bean` VALUES ('406', '4419', '1', 0xE6938DE4BD9CE695B0E79A84E997B4E68EA5E59CB0E59D80, '1', '1714053847872', '1714053847872', '1', '22', '5');
INSERT INTO `answer_record_bean` VALUES ('407', '4420', '1', 0xE2809CE6B581E6B0B4E2809DE5928CE2809CE4B880E6ACA1E9878DE58FA0E2809DE983BDE58FAFE5908CE697B6E8A7A3E9878AE4B8A4E69DA1E4BBA5E4B88AE68C87E4BBA4, '0', '1714053847872', '1714053847872', '1', '21', '5');
INSERT INTO `answer_record_bean` VALUES ('408', '4421', '1', 0xE58FAAE883BDE59CA8E6A088E9A1B6E5AD98E58F96E4BBA3E7A081, '1', '1714053847880', '1714053847880', '1', '23', '5');
INSERT INTO `answer_record_bean` VALUES ('409', '4422', '1', 0xE7A7BBE4BD8DE68C87E4BBA4, '0', '1714053847880', '1714053847880', '1', '21', '5');
INSERT INTO `answer_record_bean` VALUES ('410', '4423', '1', 0xE68C87E4BBA4E6B581E6B0B4E7BABFE4B8ADE79A84E6AF8FE4B8AAE6B581E6B0B4E6AEB5E79A84E697B6E997B4E79BB8E5908C, '0', '1714053847887', '1714053847887', '1', '21', '5');
INSERT INTO `answer_record_bean` VALUES ('411', '4424', '1', 0xE69CBAE599A8E591A8E69C9F, '0', '1714053847897', '1714053847897', '1', '23', '5');
INSERT INTO `answer_record_bean` VALUES ('412', '4425', '1', 0xE68C87E4BBA4E79A84E58A9FE883BDE5BCBAE5A4A7, '1', '1714053847902', '1714053847902', '1', '24', '5');
INSERT INTO `answer_record_bean` VALUES ('413', '4426', '1', 0xE68C87E4BBA4E591A8E69C9F, '1', '1714053847902', '1714053847902', '1', '21', '5');
INSERT INTO `answer_record_bean` VALUES ('414', '4427', '1', 0xE79BB8E5AFB9E5AFBBE59D80E696B9E5BC8F, '0', '1714053847902', '1714053847902', '1', '22', '5');
INSERT INTO `answer_record_bean` VALUES ('415', '4428', '1', 0xE5A086E6A088, '1', '1714054621977', '1714054621977', '1', '48', '10');
INSERT INTO `answer_record_bean` VALUES ('416', '4429', '1', 0xE4B8ADE696ADE696B9E5BC8FE58FAFE794A8E4BA8E435055E59091E5A496E983A8E8AEBEE5A487E79A84E8AFB7E6B182, '0', '1714054621977', '1714054621977', '1', '48', '10');
INSERT INTO `answer_record_bean` VALUES ('417', '4430', '1', 0xE8BDAFE7A1ACE4BBB6E7BB93E59088, '1', '1714054621980', '1714054621980', '1', '48', '10');
INSERT INTO `answer_record_bean` VALUES ('418', '4431', '1', 0xE697A0E69DA1E4BBB6E7A88BE5BA8FE68EA7E588B6E696B9E5BC8F, '0', '1714054621980', '1714054621980', '1', '47', '10');
INSERT INTO `answer_record_bean` VALUES ('419', '4432', '1', 0xE5A496E5AD98, '0', '1714054621983', '1714054621983', '1', '48', '10');
INSERT INTO `answer_record_bean` VALUES ('420', '4433', '1', 0xE5A496E8AEBEE68EA5E58FA3, '0', '1714054621987', '1714054621987', '1', '48', '10');
INSERT INTO `answer_record_bean` VALUES ('421', '4434', '1', 0xE6ADA3E7A1AE, '0', '1714061353892', '1714061353892', '2', '27', '6');
INSERT INTO `answer_record_bean` VALUES ('422', '4435', '1', 0xE6ADA3E7A1AE, '0', '1714061353903', '1714061353903', '2', '22', '5');
INSERT INTO `answer_record_bean` VALUES ('423', '4436', '1', 0xE6ADA3E7A1AE, '1', '1714061353906', '1714061353906', '2', '18', '4');
INSERT INTO `answer_record_bean` VALUES ('424', '4437', '1', 0xE6ADA3E7A1AE, '0', '1714061353906', '1714061353906', '2', '10', '3');
INSERT INTO `answer_record_bean` VALUES ('425', '4438', '1', 0xE6ADA3E7A1AE, '1', '1714061353908', '1714061353908', '2', '28', '6');
INSERT INTO `answer_record_bean` VALUES ('426', '4439', '1', 0xE6ADA3E7A1AE, '0', '1714061353908', '1714061353908', '2', '3', '1');
INSERT INTO `answer_record_bean` VALUES ('427', '4440', '1', 0xE6ADA3E7A1AE, '0', '1714061353911', '1714061353911', '2', '22', '5');
INSERT INTO `answer_record_bean` VALUES ('428', '4441', '1', 0xE6ADA3E7A1AE, '1', '1714061353916', '1714061353916', '2', '51', '10');
INSERT INTO `answer_record_bean` VALUES ('429', '4442', '1', 0xE6ADA3E7A1AE, '0', '1714061353916', '1714061353916', '2', '22', '5');
INSERT INTO `answer_record_bean` VALUES ('430', '4443', '1', 0xE6ADA3E7A1AE, '0', '1714061353918', '1714061353918', '2', '54', '11');
INSERT INTO `answer_record_bean` VALUES ('431', '4444', '1', 0x454E494143, '1', '1714100526817', '1714100526817', '1', '1', '1');
INSERT INTO `answer_record_bean` VALUES ('432', '4445', '1', 0xE586AFE280A2E8AFBAE4BE9DE69BBC, '1', '1714100526817', '1714100526817', '1', '1', '1');
INSERT INTO `answer_record_bean` VALUES ('433', '4446', '1', 0xE68C87E4BBA4E5AF84E5AD98E599A8, '0', '1714100526817', '1714100526817', '1', '1', '1');
INSERT INTO `answer_record_bean` VALUES ('434', '4447', '1', 0xE69CBAE599A8E8AFADE8A880, '1', '1714100527134', '1714100527134', '1', '1', '1');
INSERT INTO `answer_record_bean` VALUES ('435', '4448', '1', 0x31, null, '1714100545351', '1714100545351', '3', '10', '3');
INSERT INTO `answer_record_bean` VALUES ('436', '4449', '1', 0x32, null, '1714100553223', '1714100553223', '3', '10', '3');
INSERT INTO `answer_record_bean` VALUES ('437', '4450', '1', 0x33, null, '1714100558982', '1714100558982', '3', '10', '3');
INSERT INTO `answer_record_bean` VALUES ('438', '4451', '1', 0x34, null, '1714100562052', '1714100562052', '3', '10', '3');
INSERT INTO `answer_record_bean` VALUES ('439', '4452', '1', 0x504349, '1', '1714101122343', '1714101122343', '1', '3', '1');
INSERT INTO `answer_record_bean` VALUES ('440', '4453', '1', 0xE8BDAFE7A1ACE4BBB6E7BB93E59088, '1', '1714101122343', '1714101122343', '1', '48', '10');
INSERT INTO `answer_record_bean` VALUES ('441', '4454', '1', 0x454E494143, '1', '1714101122343', '1714101122343', '1', '1', '1');
INSERT INTO `answer_record_bean` VALUES ('442', '4455', '1', 0xE58FAFE4BBA5E5AD98E694BEE695B0E68DAEE5928CE59CB0E59D80EFBC8CE8BF98E58FAFE4BBA5E794A8E5819AE68C87E4BBA4E5AF84E5AD98E599A84952, '0', '1714101122343', '1714101122343', '1', '7', '2');
INSERT INTO `answer_record_bean` VALUES ('443', '4456', '1', 0xE69CBAE599A8E591A8E69C9F, '0', '1714101122346', '1714101122346', '1', '23', '5');
INSERT INTO `answer_record_bean` VALUES ('444', '4457', '1', 0xE6AF8FE99A94E4B880E5AE9AE697B6E997B4E588B7E696B0E4B880E9818D, '1', '1714101122348', '1714101122348', '1', '17', '4');
INSERT INTO `answer_record_bean` VALUES ('445', '4458', '1', 0x444D41E68EA7E588B6E599A8E59091435055E8AFB7E6B182E79A84E698AFE680BBE7BABFE79A84E4BDBFE794A8E69D83, '0', '1714101122348', '1714101122348', '1', '26', '6');
INSERT INTO `answer_record_bean` VALUES ('446', '4459', '1', 0xE59CB0E59D80E58F98E68DA2E9809FE5BAA6E5BFABE38081E58685E5AD98E7A28EE78987EFBC88E99BB6E5A4B4EFBC89E5B08F, '1', '1714101122353', '1714101122353', '1', '33', '7');
INSERT INTO `answer_record_bean` VALUES ('447', '4460', '1', 0x3031303030313130, '0', '1714101122353', '1714101122353', '1', '14', '3');
INSERT INTO `answer_record_bean` VALUES ('448', '4461', '1', 0xE58589E693A6E999A4E58FAFE7BC96E7A88BE58FAAE8AFBBE5AD98E582A8E599A8, '1', '1714101122356', '1714101122356', '1', '36', '8');
INSERT INTO `answer_record_bean` VALUES ('449', '4462', '1', 0x454E494143, '1', '1714101365135', '1714101365135', '1', '1', '1');
INSERT INTO `answer_record_bean` VALUES ('450', '4463', '1', 0xE883BDE4B880E6ACA1E5B9B6E8A18CE4BCA0E98081E79A84E695B0E68DAEE69C80E5A4A7E580BC, '0', '1714101365135', '1714101365135', '1', '3', '1');
INSERT INTO `answer_record_bean` VALUES ('451', '4464', '1', 0xE58D8AE5AFBCE4BD93E5AD98E582A8E599A8, '1', '1714101365140', '1714101365140', '1', '3', '1');
INSERT INTO `answer_record_bean` VALUES ('452', '4465', '1', 0xE680BBE7BABF, '0', '1714101365140', '1714101365140', '1', '3', '1');
INSERT INTO `answer_record_bean` VALUES ('453', '4466', '1', 0xE6938DE4BD9CE695B0E79A84E5BDA2E5BC8FE59CB0E59D80, '0', '1714101365143', '1714101365143', '1', '3', '1');
INSERT INTO `answer_record_bean` VALUES ('454', '4467', '1', 0xE58FAAE69C89E4B880E4B8AAE983A8E4BBB6E58FAFE4BBA5E59091E680BBE7BABFE58F91E98081E4BFA1E681AFEFBC8CE4BD86E58FAFE4BBA5E69C89E5A49AE4B8AAE983A8E4BBB6E5908CE697B6E4BB8EE680BBE7BABFE4B88AE68EA5E694B6E4BFA1E681AF, '1', '1714101365145', '1714101365145', '1', '3', '1');
INSERT INTO `answer_record_bean` VALUES ('455', '4468', '1', 0xE58D95E680BBE7BABF, '1', '1714101365145', '1714101365145', '1', '3', '1');
INSERT INTO `answer_record_bean` VALUES ('456', '4469', '1', 0x414C55, '0', '1714101365145', '1714101365145', '1', '1', '1');
INSERT INTO `answer_record_bean` VALUES ('457', '4470', '1', 0xE586AFE280A2E8AFBAE4BE9DE69BBC, '1', '1714101365148', '1714101365148', '1', '1', '1');
INSERT INTO `answer_record_bean` VALUES ('458', '4471', '1', 0xE69CBAE599A8E8AFADE8A880, '1', '1714101365148', '1714101365148', '1', '1', '1');
INSERT INTO `answer_record_bean` VALUES ('459', '4472', '1', 0xE4B998E695B0E794A8E58E9FE7A081E8A1A8E7A4BAEFBC8CE8A2ABE4B998E695B0E58F96E7BB9DE5AFB9E580BCEFBC8CE784B6E5908EE79BB8E4B998, '0', '1714103306664', '1714103306664', '1', '6', '2');
INSERT INTO `answer_record_bean` VALUES ('460', '4473', '1', 0x466C617368204D656D6F7279, '0', '1714103306670', '1714103306670', '1', '7', '2');
INSERT INTO `answer_record_bean` VALUES ('461', '4474', '1', 0xE58FAFE4BBA5E5AD98E694BEE695B0E68DAEE5928CE59CB0E59D80EFBC8CE8BF98E58FAFE4BBA5E794A8E5819AE7A88BE5BA8FE8AEA1E695B0E599A85043, '0', '1714103306676', '1714103306676', '1', '7', '2');
INSERT INTO `answer_record_bean` VALUES ('462', '4475', '1', 0xE5AD98E582A8E599A8E4B8ADE79A84E58685E5AEB9E698AFE8A2ABE9A284E58588E58699E5A5BDE79A84EFBC8CE5B9B6E4B894E696ADE794B5E5908EE4BB8DE883BDE995BFE69C9FE4BF9DE5AD98, '0', '1714103306679', '1714103306679', '1', '8', '2');
INSERT INTO `answer_record_bean` VALUES ('463', '4476', '1', 0x4452414D, '1', '1714103306682', '1714103306682', '1', '7', '2');
INSERT INTO `answer_record_bean` VALUES ('464', '4477', '1', 0xE5A29EE5A4A7E68EA7E588B6E5AD98E582A8E599A8E79A84E5AEB9E9878F, '1', '1714103306682', '1714103306682', '1', '8', '2');

-- ----------------------------
-- Table structure for answer_situation
-- ----------------------------
DROP TABLE IF EXISTS `answer_situation`;
CREATE TABLE `answer_situation` (
  `answer_situation_id` int NOT NULL AUTO_INCREMENT COMMENT '考试答题情况 ld',
  `exam_id` int NOT NULL COMMENT '考试 id',
  `student_id` int NOT NULL COMMENT '学生 id',
  `answer_time` bigint DEFAULT NULL COMMENT '答题时间',
  `submit_time` bigint DEFAULT NULL COMMENT '交卷时间',
  `total_score` decimal(10,2) DEFAULT '0.00' COMMENT '总分',
  `reviewed` tinyint DEFAULT NULL COMMENT '是否已批阅，1是0否',
  PRIMARY KEY (`answer_situation_id`) USING BTREE,
  UNIQUE KEY `unique_index` (`exam_id`,`student_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT COMMENT='试卷 - 答题情况表';

-- ----------------------------
-- Records of answer_situation
-- ----------------------------
INSERT INTO `answer_situation` VALUES ('34', '40', '1', '1713946637037', '1713946652297', '0.00', null);
INSERT INTO `answer_situation` VALUES ('35', '41', '1', '1713946666751', '1713946696122', '30.00', null);
INSERT INTO `answer_situation` VALUES ('36', '42', '1', '1714016783097', '1714016829511', '10.00', null);
INSERT INTO `answer_situation` VALUES ('37', '43', '1', '1714017591505', '1714017618622', '100.00', '1');
INSERT INTO `answer_situation` VALUES ('38', '45', '1', '1714048709336', '1714048802000', '25.00', '1');
INSERT INTO `answer_situation` VALUES ('39', '46', '1', '1714049265238', '1714049293015', '45.00', '1');
INSERT INTO `answer_situation` VALUES ('40', '47', '1', '1714050283845', '1714050307155', '30.00', '1');
INSERT INTO `answer_situation` VALUES ('41', '48', '1', '1714102743791', null, '0.00', null);

-- ----------------------------
-- Table structure for class_table
-- ----------------------------
DROP TABLE IF EXISTS `class_table`;
CREATE TABLE `class_table` (
  `class_id` int NOT NULL AUTO_INCREMENT,
  `class_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '班级名称',
  `teacher_id` int NOT NULL COMMENT '老师id',
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT COMMENT='班级表';

-- ----------------------------
-- Records of class_table
-- ----------------------------
INSERT INTO `class_table` VALUES ('1', '计科2019-1', '1');
INSERT INTO `class_table` VALUES ('2', '计科2019-2', '1');
INSERT INTO `class_table` VALUES ('3', '计科2019-3', '1');
INSERT INTO `class_table` VALUES ('4', '计科专升本2022-1', '1');
INSERT INTO `class_table` VALUES ('5', '计科专升本2022-2', '1');
INSERT INTO `class_table` VALUES ('6', '计科专升本2022-3', '1');
INSERT INTO `class_table` VALUES ('7', '计科专升本2022-4', '1');
INSERT INTO `class_table` VALUES ('8', '计科专升本2022-5', '1');

-- ----------------------------
-- Table structure for compose_of_exam
-- ----------------------------
DROP TABLE IF EXISTS `compose_of_exam`;
CREATE TABLE `compose_of_exam` (
  `compose_of_exam_id` int NOT NULL AUTO_INCREMENT COMMENT '试卷组成 id',
  `exam_paper_id` int NOT NULL COMMENT '试卷 id',
  `number` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '题型序号',
  `question_type_id` int NOT NULL COMMENT '题型',
  `quantity` int NOT NULL COMMENT '数量',
  `score_for_each_question` decimal(10,2) NOT NULL COMMENT '每道题分数',
  PRIMARY KEY (`compose_of_exam_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT COMMENT='试卷组成表';

-- ----------------------------
-- Records of compose_of_exam
-- ----------------------------
INSERT INTO `compose_of_exam` VALUES ('63', '36', '一', '1', '20', '5.00');
INSERT INTO `compose_of_exam` VALUES ('64', '36', '二', '2', '10', '5.00');
INSERT INTO `compose_of_exam` VALUES ('65', '36', '三', '3', '3', '10.00');
INSERT INTO `compose_of_exam` VALUES ('66', '36', '四', '4', '4', '10.00');
INSERT INTO `compose_of_exam` VALUES ('67', '37', '一', '1', '30', '5.00');
INSERT INTO `compose_of_exam` VALUES ('68', '37', '二', '2', '10', '5.00');
INSERT INTO `compose_of_exam` VALUES ('69', '37', '三', '3', '3', '10.00');
INSERT INTO `compose_of_exam` VALUES ('70', '37', '四', '4', '5', '10.00');
INSERT INTO `compose_of_exam` VALUES ('71', '38', '一', '1', '30', '5.00');
INSERT INTO `compose_of_exam` VALUES ('72', '38', '二', '2', '10', '5.00');
INSERT INTO `compose_of_exam` VALUES ('73', '38', '三', '3', '3', '10.00');
INSERT INTO `compose_of_exam` VALUES ('74', '38', '四', '4', '4', '10.00');
INSERT INTO `compose_of_exam` VALUES ('75', '39', '一', '1', '30', '5.00');
INSERT INTO `compose_of_exam` VALUES ('76', '39', '二', '2', '10', '5.00');
INSERT INTO `compose_of_exam` VALUES ('77', '39', '三', '3', '3', '10.00');
INSERT INTO `compose_of_exam` VALUES ('78', '39', '四', '4', '4', '5.00');
INSERT INTO `compose_of_exam` VALUES ('79', '40', '一', '1', '5', '10.00');
INSERT INTO `compose_of_exam` VALUES ('80', '40', '二', '2', '5', '10.00');
INSERT INTO `compose_of_exam` VALUES ('81', '42', '一', '1', '5', '5.00');
INSERT INTO `compose_of_exam` VALUES ('82', '42', '二', '2', '5', '5.00');
INSERT INTO `compose_of_exam` VALUES ('83', '42', '三', '3', '5', '5.00');
INSERT INTO `compose_of_exam` VALUES ('84', '42', '四', '4', '5', '5.00');
INSERT INTO `compose_of_exam` VALUES ('85', '43', '一', '1', '5', '5.00');
INSERT INTO `compose_of_exam` VALUES ('86', '43', '二', '2', '5', '5.00');
INSERT INTO `compose_of_exam` VALUES ('87', '43', '三', '3', '5', '5.00');
INSERT INTO `compose_of_exam` VALUES ('88', '43', '四', '4', '5', '5.00');
INSERT INTO `compose_of_exam` VALUES ('89', '44', '一', '1', '5', '5.00');
INSERT INTO `compose_of_exam` VALUES ('90', '44', '二', '2', '5', '5.00');
INSERT INTO `compose_of_exam` VALUES ('91', '44', '三', '3', '5', '5.00');
INSERT INTO `compose_of_exam` VALUES ('92', '44', '四', '4', '5', '5.00');
INSERT INTO `compose_of_exam` VALUES ('93', '45', '一', '1', '2', '10.00');
INSERT INTO `compose_of_exam` VALUES ('94', '45', '二', '2', '5', '10.00');
INSERT INTO `compose_of_exam` VALUES ('95', '45', '三', '3', '1', '15.00');
INSERT INTO `compose_of_exam` VALUES ('96', '45', '四', '4', '1', '15.00');

-- ----------------------------
-- Table structure for exams
-- ----------------------------
DROP TABLE IF EXISTS `exams`;
CREATE TABLE `exams` (
  `exam_id` int NOT NULL AUTO_INCREMENT,
  `opening_hours` bigint NOT NULL COMMENT '考试开放时间',
  `deadline` bigint NOT NULL COMMENT '考试截止时间',
  `duration` int NOT NULL COMMENT '考试时长（分钟）',
  `explain_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT '考试说明',
  `announce_the_result` tinyint NOT NULL COMMENT '是否公布成绩',
  `exam_paper_id` int NOT NULL COMMENT '试卷id',
  `teacher_id` int NOT NULL COMMENT '考试安排人（老师id）',
  `class_id` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '班级id',
  PRIMARY KEY (`exam_id`) USING BTREE,
  UNIQUE KEY `unique_index` (`exam_paper_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT COMMENT='考试表';

-- ----------------------------
-- Records of exams
-- ----------------------------
INSERT INTO `exams` VALUES ('39', '1713801600000', '1714147200000', '60', '', '1', '36', '1', ',4,');
INSERT INTO `exams` VALUES ('40', '1713888000000', '1714202105000', '60', '', '1', '37', '1', ',1,');
INSERT INTO `exams` VALUES ('41', '1713801600000', '1714406400000', '60', '', '1', '38', '1', ',1,');
INSERT INTO `exams` VALUES ('42', '1713888000000', '1714147200000', '60', '', '0', '39', '1', ',1,');
INSERT INTO `exams` VALUES ('43', '1714017563000', '1714320000000', '60', '', '1', '40', '1', ',1,');
INSERT INTO `exams` VALUES ('44', '1714021868000', '1714406400000', '10', '', '0', '41', '1', ',1,');
INSERT INTO `exams` VALUES ('45', '1714047707000', '1714320000000', '30', 0xE697A0, '1', '42', '1', ',1,');
INSERT INTO `exams` VALUES ('46', '1714049237000', '1714320000000', '20', '', '1', '43', '1', ',1,');
INSERT INTO `exams` VALUES ('47', '1714050254000', '1714406400000', '60', '', '1', '44', '1', ',1,');
INSERT INTO `exams` VALUES ('48', '1714095361000', '1714406400000', '10', '', '1', '45', '1', ',1,');

-- ----------------------------
-- Table structure for exam_paper
-- ----------------------------
DROP TABLE IF EXISTS `exam_paper`;
CREATE TABLE `exam_paper` (
  `exam_paper_id` int NOT NULL AUTO_INCREMENT COMMENT '试卷 id',
  `paper_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '试卷名称',
  `teacher_id` int NOT NULL COMMENT '组卷人(老师id)',
  `status` tinyint NOT NULL COMMENT '状态（是否禁用，1-是， 0-否）',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT '试卷描述',
  PRIMARY KEY (`exam_paper_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT COMMENT='试卷表';

-- ----------------------------
-- Records of exam_paper
-- ----------------------------
INSERT INTO `exam_paper` VALUES ('36', '计算机组成原理测试题', '1', '0', '');
INSERT INTO `exam_paper` VALUES ('37', '计算机组成原理测试题', '1', '0', '');
INSERT INTO `exam_paper` VALUES ('38', '计算机组成原理测试卷2', '1', '0', '');
INSERT INTO `exam_paper` VALUES ('39', '计算机组成原理测试3', '1', '0', '');
INSERT INTO `exam_paper` VALUES ('40', '客观题测试', '1', '0', 0xE697A0);
INSERT INTO `exam_paper` VALUES ('41', '无', '1', '0', '');
INSERT INTO `exam_paper` VALUES ('42', '测试', '1', '0', 0xE6B58BE8AF95);
INSERT INTO `exam_paper` VALUES ('43', '测试2', '1', '0', '');
INSERT INTO `exam_paper` VALUES ('44', 'jsjces', '1', '0', '');
INSERT INTO `exam_paper` VALUES ('45', 'test', '1', '0', '');

-- ----------------------------
-- Table structure for exam_paper_question
-- ----------------------------
DROP TABLE IF EXISTS `exam_paper_question`;
CREATE TABLE `exam_paper_question` (
  `exam_paper_question_id` int NOT NULL AUTO_INCREMENT COMMENT '试卷试题 id',
  `compose_of_exam_id` int NOT NULL COMMENT '试卷组成 id',
  `number` int NOT NULL COMMENT '题目序号',
  `question_id` int NOT NULL COMMENT '题目 id',
  PRIMARY KEY (`exam_paper_question_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=603 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT COMMENT='试卷试题表';

-- ----------------------------
-- Records of exam_paper_question
-- ----------------------------
INSERT INTO `exam_paper_question` VALUES ('345', '63', '1', '5');
INSERT INTO `exam_paper_question` VALUES ('346', '63', '2', '100');
INSERT INTO `exam_paper_question` VALUES ('347', '63', '3', '14');
INSERT INTO `exam_paper_question` VALUES ('348', '63', '4', '90');
INSERT INTO `exam_paper_question` VALUES ('349', '63', '5', '77');
INSERT INTO `exam_paper_question` VALUES ('350', '63', '6', '9');
INSERT INTO `exam_paper_question` VALUES ('351', '63', '7', '39');
INSERT INTO `exam_paper_question` VALUES ('352', '63', '8', '49');
INSERT INTO `exam_paper_question` VALUES ('353', '63', '9', '30');
INSERT INTO `exam_paper_question` VALUES ('354', '63', '10', '82');
INSERT INTO `exam_paper_question` VALUES ('355', '63', '11', '69');
INSERT INTO `exam_paper_question` VALUES ('356', '63', '12', '57');
INSERT INTO `exam_paper_question` VALUES ('357', '63', '13', '70');
INSERT INTO `exam_paper_question` VALUES ('358', '63', '14', '68');
INSERT INTO `exam_paper_question` VALUES ('359', '63', '15', '97');
INSERT INTO `exam_paper_question` VALUES ('360', '63', '16', '99');
INSERT INTO `exam_paper_question` VALUES ('361', '63', '17', '75');
INSERT INTO `exam_paper_question` VALUES ('362', '63', '18', '93');
INSERT INTO `exam_paper_question` VALUES ('363', '63', '19', '83');
INSERT INTO `exam_paper_question` VALUES ('364', '63', '20', '61');
INSERT INTO `exam_paper_question` VALUES ('365', '64', '1', '139');
INSERT INTO `exam_paper_question` VALUES ('366', '64', '2', '143');
INSERT INTO `exam_paper_question` VALUES ('367', '64', '3', '190');
INSERT INTO `exam_paper_question` VALUES ('368', '64', '4', '146');
INSERT INTO `exam_paper_question` VALUES ('369', '64', '5', '195');
INSERT INTO `exam_paper_question` VALUES ('370', '64', '6', '188');
INSERT INTO `exam_paper_question` VALUES ('371', '64', '7', '109');
INSERT INTO `exam_paper_question` VALUES ('372', '64', '8', '187');
INSERT INTO `exam_paper_question` VALUES ('373', '64', '9', '107');
INSERT INTO `exam_paper_question` VALUES ('374', '64', '10', '142');
INSERT INTO `exam_paper_question` VALUES ('375', '65', '1', '205');
INSERT INTO `exam_paper_question` VALUES ('376', '65', '2', '203');
INSERT INTO `exam_paper_question` VALUES ('377', '65', '3', '225');
INSERT INTO `exam_paper_question` VALUES ('378', '66', '1', '243');
INSERT INTO `exam_paper_question` VALUES ('379', '66', '2', '276');
INSERT INTO `exam_paper_question` VALUES ('380', '66', '3', '244');
INSERT INTO `exam_paper_question` VALUES ('381', '66', '4', '267');
INSERT INTO `exam_paper_question` VALUES ('382', '67', '1', '73');
INSERT INTO `exam_paper_question` VALUES ('383', '67', '2', '65');
INSERT INTO `exam_paper_question` VALUES ('384', '67', '3', '63');
INSERT INTO `exam_paper_question` VALUES ('385', '67', '4', '62');
INSERT INTO `exam_paper_question` VALUES ('386', '67', '5', '75');
INSERT INTO `exam_paper_question` VALUES ('387', '67', '6', '29');
INSERT INTO `exam_paper_question` VALUES ('388', '67', '7', '87');
INSERT INTO `exam_paper_question` VALUES ('389', '67', '8', '94');
INSERT INTO `exam_paper_question` VALUES ('390', '67', '9', '95');
INSERT INTO `exam_paper_question` VALUES ('391', '67', '10', '64');
INSERT INTO `exam_paper_question` VALUES ('392', '67', '11', '35');
INSERT INTO `exam_paper_question` VALUES ('393', '67', '12', '20');
INSERT INTO `exam_paper_question` VALUES ('394', '67', '13', '83');
INSERT INTO `exam_paper_question` VALUES ('395', '67', '14', '23');
INSERT INTO `exam_paper_question` VALUES ('396', '67', '15', '48');
INSERT INTO `exam_paper_question` VALUES ('397', '67', '16', '15');
INSERT INTO `exam_paper_question` VALUES ('398', '67', '17', '61');
INSERT INTO `exam_paper_question` VALUES ('399', '67', '18', '92');
INSERT INTO `exam_paper_question` VALUES ('400', '67', '19', '2');
INSERT INTO `exam_paper_question` VALUES ('401', '67', '20', '70');
INSERT INTO `exam_paper_question` VALUES ('402', '67', '21', '59');
INSERT INTO `exam_paper_question` VALUES ('403', '67', '22', '66');
INSERT INTO `exam_paper_question` VALUES ('404', '67', '23', '74');
INSERT INTO `exam_paper_question` VALUES ('405', '67', '24', '36');
INSERT INTO `exam_paper_question` VALUES ('406', '67', '25', '39');
INSERT INTO `exam_paper_question` VALUES ('407', '67', '26', '17');
INSERT INTO `exam_paper_question` VALUES ('408', '67', '27', '50');
INSERT INTO `exam_paper_question` VALUES ('409', '67', '28', '37');
INSERT INTO `exam_paper_question` VALUES ('410', '67', '29', '72');
INSERT INTO `exam_paper_question` VALUES ('411', '67', '30', '25');
INSERT INTO `exam_paper_question` VALUES ('412', '68', '1', '170');
INSERT INTO `exam_paper_question` VALUES ('413', '68', '2', '110');
INSERT INTO `exam_paper_question` VALUES ('414', '68', '3', '122');
INSERT INTO `exam_paper_question` VALUES ('415', '68', '4', '163');
INSERT INTO `exam_paper_question` VALUES ('416', '68', '5', '192');
INSERT INTO `exam_paper_question` VALUES ('417', '68', '6', '121');
INSERT INTO `exam_paper_question` VALUES ('418', '68', '7', '156');
INSERT INTO `exam_paper_question` VALUES ('419', '68', '8', '141');
INSERT INTO `exam_paper_question` VALUES ('420', '68', '9', '155');
INSERT INTO `exam_paper_question` VALUES ('421', '68', '10', '178');
INSERT INTO `exam_paper_question` VALUES ('422', '69', '1', '210');
INSERT INTO `exam_paper_question` VALUES ('423', '69', '2', '221');
INSERT INTO `exam_paper_question` VALUES ('424', '69', '3', '224');
INSERT INTO `exam_paper_question` VALUES ('425', '70', '1', '263');
INSERT INTO `exam_paper_question` VALUES ('426', '70', '2', '243');
INSERT INTO `exam_paper_question` VALUES ('427', '70', '3', '264');
INSERT INTO `exam_paper_question` VALUES ('428', '70', '4', '268');
INSERT INTO `exam_paper_question` VALUES ('429', '70', '5', '274');
INSERT INTO `exam_paper_question` VALUES ('430', '71', '1', '83');
INSERT INTO `exam_paper_question` VALUES ('431', '71', '2', '86');
INSERT INTO `exam_paper_question` VALUES ('432', '71', '3', '30');
INSERT INTO `exam_paper_question` VALUES ('433', '71', '4', '73');
INSERT INTO `exam_paper_question` VALUES ('434', '71', '5', '91');
INSERT INTO `exam_paper_question` VALUES ('435', '71', '6', '87');
INSERT INTO `exam_paper_question` VALUES ('436', '71', '7', '45');
INSERT INTO `exam_paper_question` VALUES ('437', '71', '8', '84');
INSERT INTO `exam_paper_question` VALUES ('438', '71', '9', '55');
INSERT INTO `exam_paper_question` VALUES ('439', '71', '10', '38');
INSERT INTO `exam_paper_question` VALUES ('440', '71', '11', '13');
INSERT INTO `exam_paper_question` VALUES ('441', '71', '12', '34');
INSERT INTO `exam_paper_question` VALUES ('442', '71', '13', '89');
INSERT INTO `exam_paper_question` VALUES ('443', '71', '14', '53');
INSERT INTO `exam_paper_question` VALUES ('444', '71', '15', '21');
INSERT INTO `exam_paper_question` VALUES ('445', '71', '16', '10');
INSERT INTO `exam_paper_question` VALUES ('446', '71', '17', '54');
INSERT INTO `exam_paper_question` VALUES ('447', '71', '18', '36');
INSERT INTO `exam_paper_question` VALUES ('448', '71', '19', '76');
INSERT INTO `exam_paper_question` VALUES ('449', '71', '20', '6');
INSERT INTO `exam_paper_question` VALUES ('450', '71', '21', '33');
INSERT INTO `exam_paper_question` VALUES ('451', '71', '22', '66');
INSERT INTO `exam_paper_question` VALUES ('452', '71', '23', '70');
INSERT INTO `exam_paper_question` VALUES ('453', '71', '24', '7');
INSERT INTO `exam_paper_question` VALUES ('454', '71', '25', '51');
INSERT INTO `exam_paper_question` VALUES ('455', '71', '26', '32');
INSERT INTO `exam_paper_question` VALUES ('456', '71', '27', '9');
INSERT INTO `exam_paper_question` VALUES ('457', '71', '28', '56');
INSERT INTO `exam_paper_question` VALUES ('458', '71', '29', '63');
INSERT INTO `exam_paper_question` VALUES ('459', '71', '30', '80');
INSERT INTO `exam_paper_question` VALUES ('460', '72', '1', '105');
INSERT INTO `exam_paper_question` VALUES ('461', '72', '2', '176');
INSERT INTO `exam_paper_question` VALUES ('462', '72', '3', '168');
INSERT INTO `exam_paper_question` VALUES ('463', '72', '4', '108');
INSERT INTO `exam_paper_question` VALUES ('464', '72', '5', '184');
INSERT INTO `exam_paper_question` VALUES ('465', '72', '6', '156');
INSERT INTO `exam_paper_question` VALUES ('466', '72', '7', '160');
INSERT INTO `exam_paper_question` VALUES ('467', '72', '8', '147');
INSERT INTO `exam_paper_question` VALUES ('468', '72', '9', '120');
INSERT INTO `exam_paper_question` VALUES ('469', '72', '10', '197');
INSERT INTO `exam_paper_question` VALUES ('470', '73', '1', '232');
INSERT INTO `exam_paper_question` VALUES ('471', '73', '2', '223');
INSERT INTO `exam_paper_question` VALUES ('472', '73', '3', '209');
INSERT INTO `exam_paper_question` VALUES ('473', '74', '1', '273');
INSERT INTO `exam_paper_question` VALUES ('474', '74', '2', '247');
INSERT INTO `exam_paper_question` VALUES ('475', '74', '3', '242');
INSERT INTO `exam_paper_question` VALUES ('476', '74', '4', '267');
INSERT INTO `exam_paper_question` VALUES ('477', '75', '1', '53');
INSERT INTO `exam_paper_question` VALUES ('478', '75', '2', '67');
INSERT INTO `exam_paper_question` VALUES ('479', '75', '3', '7');
INSERT INTO `exam_paper_question` VALUES ('480', '75', '4', '49');
INSERT INTO `exam_paper_question` VALUES ('481', '75', '5', '6');
INSERT INTO `exam_paper_question` VALUES ('482', '75', '6', '57');
INSERT INTO `exam_paper_question` VALUES ('483', '75', '7', '97');
INSERT INTO `exam_paper_question` VALUES ('484', '75', '8', '24');
INSERT INTO `exam_paper_question` VALUES ('485', '75', '9', '77');
INSERT INTO `exam_paper_question` VALUES ('486', '75', '10', '71');
INSERT INTO `exam_paper_question` VALUES ('487', '75', '11', '100');
INSERT INTO `exam_paper_question` VALUES ('488', '75', '12', '62');
INSERT INTO `exam_paper_question` VALUES ('489', '75', '13', '55');
INSERT INTO `exam_paper_question` VALUES ('490', '75', '14', '20');
INSERT INTO `exam_paper_question` VALUES ('491', '75', '15', '84');
INSERT INTO `exam_paper_question` VALUES ('492', '75', '16', '11');
INSERT INTO `exam_paper_question` VALUES ('493', '75', '17', '43');
INSERT INTO `exam_paper_question` VALUES ('494', '75', '18', '15');
INSERT INTO `exam_paper_question` VALUES ('495', '75', '19', '92');
INSERT INTO `exam_paper_question` VALUES ('496', '75', '20', '31');
INSERT INTO `exam_paper_question` VALUES ('497', '75', '21', '59');
INSERT INTO `exam_paper_question` VALUES ('498', '75', '22', '3');
INSERT INTO `exam_paper_question` VALUES ('499', '75', '23', '68');
INSERT INTO `exam_paper_question` VALUES ('500', '75', '24', '94');
INSERT INTO `exam_paper_question` VALUES ('501', '75', '25', '35');
INSERT INTO `exam_paper_question` VALUES ('502', '75', '26', '91');
INSERT INTO `exam_paper_question` VALUES ('503', '75', '27', '69');
INSERT INTO `exam_paper_question` VALUES ('504', '75', '28', '52');
INSERT INTO `exam_paper_question` VALUES ('505', '75', '29', '19');
INSERT INTO `exam_paper_question` VALUES ('506', '75', '30', '66');
INSERT INTO `exam_paper_question` VALUES ('507', '76', '1', '103');
INSERT INTO `exam_paper_question` VALUES ('508', '76', '2', '166');
INSERT INTO `exam_paper_question` VALUES ('509', '76', '3', '107');
INSERT INTO `exam_paper_question` VALUES ('510', '76', '4', '127');
INSERT INTO `exam_paper_question` VALUES ('511', '76', '5', '113');
INSERT INTO `exam_paper_question` VALUES ('512', '76', '6', '114');
INSERT INTO `exam_paper_question` VALUES ('513', '76', '7', '154');
INSERT INTO `exam_paper_question` VALUES ('514', '76', '8', '148');
INSERT INTO `exam_paper_question` VALUES ('515', '76', '9', '164');
INSERT INTO `exam_paper_question` VALUES ('516', '76', '10', '170');
INSERT INTO `exam_paper_question` VALUES ('517', '77', '1', '234');
INSERT INTO `exam_paper_question` VALUES ('518', '77', '2', '233');
INSERT INTO `exam_paper_question` VALUES ('519', '77', '3', '208');
INSERT INTO `exam_paper_question` VALUES ('520', '78', '1', '270');
INSERT INTO `exam_paper_question` VALUES ('521', '78', '2', '252');
INSERT INTO `exam_paper_question` VALUES ('522', '78', '3', '251');
INSERT INTO `exam_paper_question` VALUES ('523', '78', '4', '250');
INSERT INTO `exam_paper_question` VALUES ('524', '79', '1', '14');
INSERT INTO `exam_paper_question` VALUES ('525', '79', '2', '6');
INSERT INTO `exam_paper_question` VALUES ('526', '79', '3', '89');
INSERT INTO `exam_paper_question` VALUES ('527', '79', '4', '11');
INSERT INTO `exam_paper_question` VALUES ('528', '79', '5', '3');
INSERT INTO `exam_paper_question` VALUES ('529', '80', '1', '129');
INSERT INTO `exam_paper_question` VALUES ('530', '80', '2', '172');
INSERT INTO `exam_paper_question` VALUES ('531', '80', '3', '125');
INSERT INTO `exam_paper_question` VALUES ('532', '80', '4', '198');
INSERT INTO `exam_paper_question` VALUES ('533', '80', '5', '180');
INSERT INTO `exam_paper_question` VALUES ('534', '81', '1', '47');
INSERT INTO `exam_paper_question` VALUES ('535', '81', '2', '68');
INSERT INTO `exam_paper_question` VALUES ('536', '81', '3', '27');
INSERT INTO `exam_paper_question` VALUES ('537', '81', '4', '17');
INSERT INTO `exam_paper_question` VALUES ('538', '81', '5', '13');
INSERT INTO `exam_paper_question` VALUES ('539', '82', '1', '157');
INSERT INTO `exam_paper_question` VALUES ('540', '82', '2', '172');
INSERT INTO `exam_paper_question` VALUES ('541', '82', '3', '167');
INSERT INTO `exam_paper_question` VALUES ('542', '82', '4', '161');
INSERT INTO `exam_paper_question` VALUES ('543', '82', '5', '180');
INSERT INTO `exam_paper_question` VALUES ('544', '83', '1', '227');
INSERT INTO `exam_paper_question` VALUES ('545', '83', '2', '226');
INSERT INTO `exam_paper_question` VALUES ('546', '83', '3', '232');
INSERT INTO `exam_paper_question` VALUES ('547', '83', '4', '215');
INSERT INTO `exam_paper_question` VALUES ('548', '83', '5', '201');
INSERT INTO `exam_paper_question` VALUES ('549', '84', '1', '246');
INSERT INTO `exam_paper_question` VALUES ('550', '84', '2', '251');
INSERT INTO `exam_paper_question` VALUES ('551', '84', '3', '266');
INSERT INTO `exam_paper_question` VALUES ('552', '84', '4', '265');
INSERT INTO `exam_paper_question` VALUES ('553', '84', '5', '271');
INSERT INTO `exam_paper_question` VALUES ('554', '85', '1', '20');
INSERT INTO `exam_paper_question` VALUES ('555', '85', '2', '2');
INSERT INTO `exam_paper_question` VALUES ('556', '85', '3', '82');
INSERT INTO `exam_paper_question` VALUES ('557', '85', '4', '92');
INSERT INTO `exam_paper_question` VALUES ('558', '85', '5', '86');
INSERT INTO `exam_paper_question` VALUES ('559', '86', '1', '163');
INSERT INTO `exam_paper_question` VALUES ('560', '86', '2', '155');
INSERT INTO `exam_paper_question` VALUES ('561', '86', '3', '194');
INSERT INTO `exam_paper_question` VALUES ('562', '86', '4', '197');
INSERT INTO `exam_paper_question` VALUES ('563', '86', '5', '123');
INSERT INTO `exam_paper_question` VALUES ('564', '87', '1', '207');
INSERT INTO `exam_paper_question` VALUES ('565', '87', '2', '232');
INSERT INTO `exam_paper_question` VALUES ('566', '87', '3', '212');
INSERT INTO `exam_paper_question` VALUES ('567', '87', '4', '201');
INSERT INTO `exam_paper_question` VALUES ('568', '87', '5', '210');
INSERT INTO `exam_paper_question` VALUES ('569', '88', '1', '259');
INSERT INTO `exam_paper_question` VALUES ('570', '88', '2', '249');
INSERT INTO `exam_paper_question` VALUES ('571', '88', '3', '243');
INSERT INTO `exam_paper_question` VALUES ('572', '88', '4', '278');
INSERT INTO `exam_paper_question` VALUES ('573', '88', '5', '250');
INSERT INTO `exam_paper_question` VALUES ('574', '89', '1', '76');
INSERT INTO `exam_paper_question` VALUES ('575', '89', '2', '21');
INSERT INTO `exam_paper_question` VALUES ('576', '89', '3', '89');
INSERT INTO `exam_paper_question` VALUES ('577', '89', '4', '5');
INSERT INTO `exam_paper_question` VALUES ('578', '89', '5', '11');
INSERT INTO `exam_paper_question` VALUES ('579', '90', '1', '130');
INSERT INTO `exam_paper_question` VALUES ('580', '90', '2', '151');
INSERT INTO `exam_paper_question` VALUES ('581', '90', '3', '132');
INSERT INTO `exam_paper_question` VALUES ('582', '90', '4', '147');
INSERT INTO `exam_paper_question` VALUES ('583', '90', '5', '198');
INSERT INTO `exam_paper_question` VALUES ('584', '91', '1', '202');
INSERT INTO `exam_paper_question` VALUES ('585', '91', '2', '204');
INSERT INTO `exam_paper_question` VALUES ('586', '91', '3', '209');
INSERT INTO `exam_paper_question` VALUES ('587', '91', '4', '231');
INSERT INTO `exam_paper_question` VALUES ('588', '91', '5', '234');
INSERT INTO `exam_paper_question` VALUES ('589', '92', '1', '266');
INSERT INTO `exam_paper_question` VALUES ('590', '92', '2', '275');
INSERT INTO `exam_paper_question` VALUES ('591', '92', '3', '270');
INSERT INTO `exam_paper_question` VALUES ('592', '92', '4', '265');
INSERT INTO `exam_paper_question` VALUES ('593', '92', '5', '267');
INSERT INTO `exam_paper_question` VALUES ('594', '93', '1', '27');
INSERT INTO `exam_paper_question` VALUES ('595', '93', '2', '88');
INSERT INTO `exam_paper_question` VALUES ('596', '94', '1', '108');
INSERT INTO `exam_paper_question` VALUES ('597', '94', '2', '146');
INSERT INTO `exam_paper_question` VALUES ('598', '94', '3', '139');
INSERT INTO `exam_paper_question` VALUES ('599', '94', '4', '160');
INSERT INTO `exam_paper_question` VALUES ('600', '94', '5', '181');
INSERT INTO `exam_paper_question` VALUES ('601', '95', '1', '220');
INSERT INTO `exam_paper_question` VALUES ('602', '96', '1', '243');

-- ----------------------------
-- Table structure for kps
-- ----------------------------
DROP TABLE IF EXISTS `kps`;
CREATE TABLE `kps` (
  `kps_id` int NOT NULL AUTO_INCREMENT,
  `kps_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '知识点',
  `module_id` int NOT NULL COMMENT '模块id',
  PRIMARY KEY (`kps_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT COMMENT='知识点表';

-- ----------------------------
-- Records of kps
-- ----------------------------
INSERT INTO `kps` VALUES ('1', '计算机的发展历程', '1');
INSERT INTO `kps` VALUES ('2', '计算机的分类', '1');
INSERT INTO `kps` VALUES ('3', '计算机的硬件', '1');
INSERT INTO `kps` VALUES ('4', '计算机的软件', '1');
INSERT INTO `kps` VALUES ('5', '计算机的网络基础', '1');
INSERT INTO `kps` VALUES ('6', '组合逻辑电路', '2');
INSERT INTO `kps` VALUES ('7', '时序逻辑电路', '2');
INSERT INTO `kps` VALUES ('8', '阵列逻辑电路', '2');
INSERT INTO `kps` VALUES ('9', '数值的表示和转换', '3');
INSERT INTO `kps` VALUES ('10', '带符号位的二进制数据的表示和运算', '3');
INSERT INTO `kps` VALUES ('11', '二进制乘法运算', '3');
INSERT INTO `kps` VALUES ('12', '二进制除法运算', '3');
INSERT INTO `kps` VALUES ('13', '浮点的预算方法', '3');
INSERT INTO `kps` VALUES ('14', '数据校验码', '3');
INSERT INTO `kps` VALUES ('15', '主存储器的主要技术指标', '4');
INSERT INTO `kps` VALUES ('16', '主存储器的组成', '4');
INSERT INTO `kps` VALUES ('17', '随机读写存储器RAM的分类', '4');
INSERT INTO `kps` VALUES ('18', '存储器的组成', '4');
INSERT INTO `kps` VALUES ('19', '多体交叉存储器', '4');
INSERT INTO `kps` VALUES ('20', '双端口存储器', '4');
INSERT INTO `kps` VALUES ('21', '指令格式', '5');
INSERT INTO `kps` VALUES ('22', '寻址方式', '5');
INSERT INTO `kps` VALUES ('23', '指令类型', '5');
INSERT INTO `kps` VALUES ('24', '精简指令系统计算机和复杂指令系统', '5');
INSERT INTO `kps` VALUES ('25', 'CPU的组成和功能', '6');
INSERT INTO `kps` VALUES ('26', '控制器的组成和功能', '6');
INSERT INTO `kps` VALUES ('27', '微程序控制计算机', '6');
INSERT INTO `kps` VALUES ('28', '微程序设计技术', '6');
INSERT INTO `kps` VALUES ('29', '硬布线控制的计算机', '6');
INSERT INTO `kps` VALUES ('30', '流水线工作原理', '6');
INSERT INTO `kps` VALUES ('31', '存储系统的层次结构', '7');
INSERT INTO `kps` VALUES ('32', '高速缓冲存储器（cache）', '7');
INSERT INTO `kps` VALUES ('33', '虚拟存储器', '7');
INSERT INTO `kps` VALUES ('34', '相联存储器', '7');
INSERT INTO `kps` VALUES ('35', '存储保护', '7');
INSERT INTO `kps` VALUES ('36', '存储器分类', '8');
INSERT INTO `kps` VALUES ('37', '辅助存储器分类', '8');
INSERT INTO `kps` VALUES ('38', '固态硬盘', '8');
INSERT INTO `kps` VALUES ('39', '硬盘、软盘、磁带和光盘', '8');
INSERT INTO `kps` VALUES ('40', 'I/O设备分类', '9');
INSERT INTO `kps` VALUES ('41', '键盘', '9');
INSERT INTO `kps` VALUES ('42', '鼠标', '9');
INSERT INTO `kps` VALUES ('43', '扫描仪与光学符识别', '9');
INSERT INTO `kps` VALUES ('44', '触摸屏', '9');
INSERT INTO `kps` VALUES ('45', '显示器', '9');
INSERT INTO `kps` VALUES ('46', '打印机', '9');
INSERT INTO `kps` VALUES ('47', '输入输出系统概述', '10');
INSERT INTO `kps` VALUES ('48', '程序中断输入输出方式', '10');
INSERT INTO `kps` VALUES ('49', 'DMA输入输出方式', '10');
INSERT INTO `kps` VALUES ('50', 'I/O通道控制方式', '10');
INSERT INTO `kps` VALUES ('51', '总线结构', '10');
INSERT INTO `kps` VALUES ('52', '外设接口', '10');
INSERT INTO `kps` VALUES ('53', '计算机换代的标志', '11');
INSERT INTO `kps` VALUES ('54', '如何提高计算机系统的运算速度', '11');
INSERT INTO `kps` VALUES ('55', '计算机系统的分类', '11');
INSERT INTO `kps` VALUES ('56', '封闭系统与开放系统', '11');
INSERT INTO `kps` VALUES ('57', '并行性', '11');
INSERT INTO `kps` VALUES ('58', '并行处理机', '11');
INSERT INTO `kps` VALUES ('59', '多机系统', '11');
INSERT INTO `kps` VALUES ('60', '新一代计算机', '11');

-- ----------------------------
-- Table structure for module
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `module_id` int NOT NULL AUTO_INCREMENT COMMENT '章节模块id',
  `module_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '章节模块名称',
  `module_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT '模块描述',
  `create_time` bigint NOT NULL COMMENT '创建时间',
  `update_time` bigint NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`module_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT COMMENT='章节模块表';

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES ('1', '第一章 计算机系统概述', null, '1711546587917', '1711546587917');
INSERT INTO `module` VALUES ('2', '第二章 计算机的逻辑部件', null, '1711546587917', '1711546587917');
INSERT INTO `module` VALUES ('3', '第三章 运算方法和运算部件', null, '1711546587917', '1711546587917');
INSERT INTO `module` VALUES ('4', '第四章 主存储器', null, '1711546587917', '1711546587917');
INSERT INTO `module` VALUES ('5', '第五章 指令系统', null, '1711546587917', '1711546587917');
INSERT INTO `module` VALUES ('6', '第六章 中央处理部件CPU', null, '1711546587917', '1711546587917');
INSERT INTO `module` VALUES ('7', '第七章 存储系统', null, '1711546587917', '1711546587917');
INSERT INTO `module` VALUES ('8', '第八章 辅助存储器', null, '1711546587917', '1711546587917');
INSERT INTO `module` VALUES ('9', '第九章 输入输出设备', null, '1711546587917', '1711546587917');
INSERT INTO `module` VALUES ('10', '第十章 输入输出系统', null, '1711546587917', '1711546587917');
INSERT INTO `module` VALUES ('11', '第十一章 计算机系统', null, '1711546587917', '1711546587917');

-- ----------------------------
-- Table structure for option_table
-- ----------------------------
DROP TABLE IF EXISTS `option_table`;
CREATE TABLE `option_table` (
  `option_id` int NOT NULL AUTO_INCREMENT COMMENT '选项id',
  `option_number` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '选项编号',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '内容',
  `key_whether` tinyint NOT NULL COMMENT '是否为答案',
  `question_id` int NOT NULL COMMENT '所属题目id',
  PRIMARY KEY (`option_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=599 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT COMMENT='选项表';

-- ----------------------------
-- Records of option_table
-- ----------------------------
INSERT INTO `option_table` VALUES ('1', 'A', 0xE7BD91E7BB9CE8AFADE8A880, '0', '1');
INSERT INTO `option_table` VALUES ('2', 'B', 0xE6938DE4BD9CE7B3BBE7BB9F, '0', '1');
INSERT INTO `option_table` VALUES ('3', 'C', 0xE69CBAE599A8E8AFADE8A880, '1', '1');
INSERT INTO `option_table` VALUES ('4', 'D', 0xE9AB98E7BAA7E8AFADE8A880, '0', '1');
INSERT INTO `option_table` VALUES ('5', 'A', 0xEFBC8B3031303030313142, '0', '2');
INSERT INTO `option_table` VALUES ('6', 'B', 0xEFBC8D3031303030313142, '1', '2');
INSERT INTO `option_table` VALUES ('7', 'C', 0xEFBC8B3130313131303142, '0', '2');
INSERT INTO `option_table` VALUES ('8', 'D', 0xEFBC8D3130313131303142, '0', '2');
INSERT INTO `option_table` VALUES ('9', 'A', 0x4544564143, '0', '3');
INSERT INTO `option_table` VALUES ('10', 'B', 0x454E494143, '1', '3');
INSERT INTO `option_table` VALUES ('11', 'C', 0x4544534143, '0', '3');
INSERT INTO `option_table` VALUES ('12', 'D', 0x4D41524B49, '0', '3');
INSERT INTO `option_table` VALUES ('13', 'A', 0xE5AE9EE697B6E5A484E79086, '0', '4');
INSERT INTO `option_table` VALUES ('14', 'B', 0xE699BAE883BDE58C96, '0', '4');
INSERT INTO `option_table` VALUES ('15', 'C', 0xE5B9B6E8A18C, '0', '4');
INSERT INTO `option_table` VALUES ('16', 'D', 0xE586AFE280A2E8AFBAE4BE9DE69BBC, '1', '4');
INSERT INTO `option_table` VALUES ('17', 'A', 0x312E303031303130, '0', '5');
INSERT INTO `option_table` VALUES ('18', 'B', 0x312E30303130313130, '0', '5');
INSERT INTO `option_table` VALUES ('19', 'C', 0x302E30303130313130, '0', '5');
INSERT INTO `option_table` VALUES ('20', 'D', 0x302E31313031303130, '1', '5');
INSERT INTO `option_table` VALUES ('21', 'A', 0x423248, '0', '6');
INSERT INTO `option_table` VALUES ('22', 'B', 0x302E394348, '0', '6');
INSERT INTO `option_table` VALUES ('23', 'C', 0x302E363448, '0', '6');
INSERT INTO `option_table` VALUES ('24', 'D', 0x344548, '1', '6');
INSERT INTO `option_table` VALUES ('25', 'A', 0xE58AA031, '0', '7');
INSERT INTO `option_table` VALUES ('26', 'B', 0xE5878F31, '0', '7');
INSERT INTO `option_table` VALUES ('27', 'C', 0xE58AA033, '1', '7');
INSERT INTO `option_table` VALUES ('28', 'D', 0xE5878F33, '0', '7');
INSERT INTO `option_table` VALUES ('29', 'A', 0xEFBC88EFBC8852EFBC89EFBC892BEFBC884164EFBC892D2D3EEFBC884164EFBC89, '0', '8');
INSERT INTO `option_table` VALUES ('30', 'B', 0xEFBC88EFBC8852EFBC89EFBC892BEFBC88EFBC884164EFBC89EFBC892D2D3E4164, '0', '8');
INSERT INTO `option_table` VALUES ('31', 'C', 0xEFBC8852EFBC892BEFBC88EFBC884164EFBC89EFBC892D2D3EEFBC884164EFBC89, '0', '8');
INSERT INTO `option_table` VALUES ('32', 'D', 0xEFBC88EFBC8852EFBC89EFBC892BEFBC884164EFBC892D2D3E4164, '1', '8');
INSERT INTO `option_table` VALUES ('33', 'A', 0x32312E33, '0', '9');
INSERT INTO `option_table` VALUES ('34', 'B', 0x38342E43, '1', '9');
INSERT INTO `option_table` VALUES ('35', 'C', 0x32342E36, '0', '9');
INSERT INTO `option_table` VALUES ('36', 'D', 0x38342E36, '0', '9');
INSERT INTO `option_table` VALUES ('37', 'A', 0x312E30303130313031, '0', '10');
INSERT INTO `option_table` VALUES ('38', 'B', 0x312E30303130313130, '0', '10');
INSERT INTO `option_table` VALUES ('39', 'C', 0x302E30303130313130, '0', '10');
INSERT INTO `option_table` VALUES ('40', 'D', 0x302E31313031303130, '1', '10');
INSERT INTO `option_table` VALUES ('41', 'A', 0x423248, '1', '11');
INSERT INTO `option_table` VALUES ('42', 'B', 0x312E394348, '0', '11');
INSERT INTO `option_table` VALUES ('43', 'C', 0x312E363448, '0', '11');
INSERT INTO `option_table` VALUES ('44', 'D', 0x434548, '0', '11');
INSERT INTO `option_table` VALUES ('45', 'A', 0xE5B7A6E8A784E6A0BCE58C96, '0', '12');
INSERT INTO `option_table` VALUES ('46', 'B', 0xE58FB3E8A784E6A0BCE58C96, '1', '12');
INSERT INTO `option_table` VALUES ('47', 'C', 0xE4BFAEE694B9E998B6E7A081, '0', '12');
INSERT INTO `option_table` VALUES ('48', 'D', 0xE7BB93E69D9FE6B5AEE782B9E8BF90E7AE97, '0', '12');
INSERT INTO `option_table` VALUES ('49', 'A', 0xE58FAAE98082E794A8E4BA8EE5AD98E582A8E982A3E4BA9BE59BBAE5AE9AE695B0E68DAEE79A84E59CBAE59088EFBC9B, '1', '13');
INSERT INTO `option_table` VALUES ('50', 'B', 0xE585B7E69C89E4B88DE69893E5A4B1E680A7EFBC8CE58DB3E4BDBFE698AFE794B5E6BA90E8A2ABE58887E696ADEFBC8C524F4DE79A84E4BFA1E681AFE4B99FE4B88DE4BC9AE4B8A2E5A4B1, '0', '13');
INSERT INTO `option_table` VALUES ('51', 'C', 0xE5AD98E582A8E58D95E58583E7AE80E58D95EFBC8CE99B86E68890E5BAA6E9AB98, '0', '13');
INSERT INTO `option_table` VALUES ('52', 'D', 0xE5AD98E582A8E599A8E4B8ADE79A84E58685E5AEB9E698AFE8A2ABE9A284E58588E58699E5A5BDE79A84EFBC8CE5B9B6E4B894E696ADE794B5E5908EE4BB8DE883BDE995BFE69C9FE4BF9DE5AD98, '0', '13');
INSERT INTO `option_table` VALUES ('53', 'A', 0xE794A8E58E9FE7A081E8A1A8E7A4BAE6938DE4BD9CE695B0EFBC8CE784B6E5908EE79BB4E68EA5E79BB8E4B998, '0', '14');
INSERT INTO `option_table` VALUES ('54', 'B', 0xE8A2ABE4B998E695B0E794A8E58E9FE7A081E8A1A8E7A4BAEFBC8CE4B998E695B0E58F96E7BB9DE5AFB9E580BCEFBC8CE784B6E5908EE79BB8E4B998, '0', '14');
INSERT INTO `option_table` VALUES ('55', 'C', 0xE4B998E695B0E794A8E58E9FE7A081E8A1A8E7A4BAEFBC8CE8A2ABE4B998E695B0E58F96E7BB9DE5AFB9E580BCEFBC8CE784B6E5908EE79BB8E4B998, '0', '14');
INSERT INTO `option_table` VALUES ('56', 'D', 0xE58588E58F96E6938DE4BD9CE695B0E7BB9DE5AFB9E580BCE79BB8E4B998EFBC8CE7ACA6E58FB7E4BD8DE58D95E78BACE5A484E79086, '1', '14');
INSERT INTO `option_table` VALUES ('57', 'A', 0xE6AF8FE4B880E69DA1E69CBAE599A8E68C87E4BBA4E794B1E4B880E69DA1E5BEAEE68C87E4BBA4E69DA5E689A7E8A18C, '0', '15');
INSERT INTO `option_table` VALUES ('58', 'B', 0xE6AF8FE4B880E69DA1E69CBAE599A8E68C87E4BBA4E794B1E4B880E6AEB5E794A8E5BEAEE68C87E4BBA4E7BC96E68890E79A84E5BEAEE7A88BE5BA8FE69DA5E8A7A3E9878AE689A7E8A18C, '1', '15');
INSERT INTO `option_table` VALUES ('59', 'C', 0xE4B880E6AEB5E69CBAE599A8E68C87E4BBA4E7BB84E68890E79A84E7A88BE5BA8FE58FAFE794B1E4B880E69DA1E5BEAEE68C87E4BBA4E69DA5E689A7E8A18C, '0', '15');
INSERT INTO `option_table` VALUES ('60', 'D', 0xE4B880E69DA1E5BEAEE68C87E4BBA4E794B1E88BA5E5B9B2E69DA1E69CBAE599A8E68C87E4BBA4E7BB84E68890, '0', '15');
INSERT INTO `option_table` VALUES ('61', 'A', 0x414C55, '0', '16');
INSERT INTO `option_table` VALUES ('62', 'B', 0xE68EA7E588B6E599A8, '0', '16');
INSERT INTO `option_table` VALUES ('63', 'C', 0xE5AF84E5AD98E599A8, '0', '16');
INSERT INTO `option_table` VALUES ('64', 'D', 0x4452414D, '1', '16');
INSERT INTO `option_table` VALUES ('65', 'A', 0x5352414D, '0', '17');
INSERT INTO `option_table` VALUES ('66', 'B', 0x4452414D, '1', '17');
INSERT INTO `option_table` VALUES ('67', 'C', 0x4550524F4D, '0', '17');
INSERT INTO `option_table` VALUES ('68', 'D', 0x466C617368204D656D6F7279, '0', '17');
INSERT INTO `option_table` VALUES ('69', 'A', 0xE68F90E9AB98E5BEAEE7A88BE5BA8FE79A84E689A7E8A18CE9809FE5BAA6, '0', '18');
INSERT INTO `option_table` VALUES ('70', 'B', 0xE68F90E9AB98E5BEAEE7A88BE5BA8FE8AEBEE8AEA1E79A84E781B5E6B4BBE680A7, '0', '18');
INSERT INTO `option_table` VALUES ('71', 'C', 0xE7BCA9E79FADE5BEAEE68C87E4BBA4E79A84E995BFE5BAA6, '0', '18');
INSERT INTO `option_table` VALUES ('72', 'D', 0xE5A29EE5A4A7E68EA7E588B6E5AD98E582A8E599A8E79A84E5AEB9E9878F, '1', '18');
INSERT INTO `option_table` VALUES ('73', 'A', 0x302E30313030313130C397325E34, '0', '19');
INSERT INTO `option_table` VALUES ('74', 'B', 0x302E30313130303131C397325E34, '0', '19');
INSERT INTO `option_table` VALUES ('75', 'C', 0x312E30313030303131C397325E34, '0', '19');
INSERT INTO `option_table` VALUES ('76', 'D', 0x312E31313030313130C397325E34, '1', '19');
INSERT INTO `option_table` VALUES ('77', 'A', 0xE5B086E8BE83E5B08FE79A84E4B880E4B8AAE998B6E7A081E8B083E695B4E588B0E4B88EE8BE83E5A4A7E79A84E4B880E4B8AAE998B6E7A081E79BB8E5908C, '1', '20');
INSERT INTO `option_table` VALUES ('78', 'B', 0xE5B086E8BE83E5A4A7E79A84E4B880E4B8AAE998B6E7A081E8B083E695B4E588B0E4B88EE8BE83E5B08FE79A84E4B880E4B8AAE998B6E7A081E79BB8E5908C, '0', '20');
INSERT INTO `option_table` VALUES ('79', 'C', 0xE5B086E8A2ABE58AA0E695B0E79A84E998B6E7A081E8B083E695B4E588B0E4B88EE58AA0E695B0E79A84E998B6E7A081E79BB8E5908C, '0', '20');
INSERT INTO `option_table` VALUES ('80', 'D', 0xE5B086E58AA0E695B0E79A84E998B6E7A081E8B083E695B4E588B0E4B88EE8A2ABE58AA0E695B0E79A84E998B6E7A081E79BB8E5908C, '0', '20');
INSERT INTO `option_table` VALUES ('81', 'A', 0x435055E58685E983A8E59084E983A8E4BBB6, '1', '21');
INSERT INTO `option_table` VALUES ('82', 'B', 0x435055E4B88EE5AD98E582A8E599A8E38081492F4FE7B3BBE7BB9FE4B98BE997B4E79A84E8BF9EE7BABF, '0', '21');
INSERT INTO `option_table` VALUES ('83', 'C', 0xE4B8BBE69CBAE7B3BBE7BB9FE69DBFE4B88AE79A84E59084E4B8AAE88AAFE78987, '0', '21');
INSERT INTO `option_table` VALUES ('84', 'D', 0xE7B3BBE7BB9FE4B8ADE79A84E59084E4B8AAE58A9FE883BDE6A8A1E59D97E68896E8AEBEE5A487, '0', '21');
INSERT INTO `option_table` VALUES ('85', 'A', 0xE6938DE4BD9CE695B0E79A84E69C89E69588E59CB0E59D80, '1', '22');
INSERT INTO `option_table` VALUES ('86', 'B', 0xE6938DE4BD9CE695B0, '0', '22');
INSERT INTO `option_table` VALUES ('87', 'C', 0xE6938DE4BD9CE695B0E79A84E997B4E68EA5E59CB0E59D80, '0', '22');
INSERT INTO `option_table` VALUES ('88', 'D', 0xE6938DE4BD9CE695B0E79A84E5BDA2E5BC8FE59CB0E59D80, '0', '22');
INSERT INTO `option_table` VALUES ('89', 'A', 0xE7A1ACE79B98, '0', '23');
INSERT INTO `option_table` VALUES ('90', 'B', 0xE58589E79B98, '0', '23');
INSERT INTO `option_table` VALUES ('91', 'C', 0xE7A381E5B8A6, '0', '23');
INSERT INTO `option_table` VALUES ('92', 'D', 0xE58D8AE5AFBCE4BD93E5AD98E582A8E599A8, '1', '23');
INSERT INTO `option_table` VALUES ('93', 'A', 0xE883BDE4B880E6ACA1E5B9B6E8A18CE4BCA0E98081E79A84E695B0E68DAEE4BD8DE695B0, '1', '24');
INSERT INTO `option_table` VALUES ('94', 'B', 0xE58FAFE4BE9DE6ACA1E4B8B2E8A18CE4BCA0E98081E79A84E695B0E68DAEE4BD8DE695B0, '0', '24');
INSERT INTO `option_table` VALUES ('95', 'C', 0xE58D95E4BD8DE697B6E997B4E58685E58FAFE4BCA0E98081E79A84E695B0E68DAEE4BD8DE695B0, '0', '24');
INSERT INTO `option_table` VALUES ('96', 'D', 0xE883BDE4B880E6ACA1E5B9B6E8A18CE4BCA0E98081E79A84E695B0E68DAEE69C80E5A4A7E580BC, '0', '24');
INSERT INTO `option_table` VALUES ('97', 'A', 0x3136332E33313235, '1', '25');
INSERT INTO `option_table` VALUES ('98', 'B', 0x3137322E35, '0', '25');
INSERT INTO `option_table` VALUES ('99', 'C', 0x3137392E3735, '0', '25');
INSERT INTO `option_table` VALUES ('100', 'D', 0x3138382E35, '0', '25');
INSERT INTO `option_table` VALUES ('101', 'A', 0x33, '0', '26');
INSERT INTO `option_table` VALUES ('102', 'B', 0x36, '0', '26');
INSERT INTO `option_table` VALUES ('103', 'C', 0x39, '1', '26');
INSERT INTO `option_table` VALUES ('104', 'D', 0x31, '0', '26');
INSERT INTO `option_table` VALUES ('105', 'A', 0xE58FAAE883BDE5AD98E694BEE695B0E68DAEEFBC8CE4B88DE883BDE5AD98E694BEE59CB0E59D80, '0', '27');
INSERT INTO `option_table` VALUES ('106', 'B', 0xE58FAFE4BBA5E5AD98E694BEE695B0E68DAEE5928CE59CB0E59D80, '1', '27');
INSERT INTO `option_table` VALUES ('107', 'C', 0xE58FAFE4BBA5E5AD98E694BEE695B0E68DAEE5928CE59CB0E59D80EFBC8CE8BF98E58FAFE4BBA5E794A8E5819AE68C87E4BBA4E5AF84E5AD98E599A84952, '0', '27');
INSERT INTO `option_table` VALUES ('108', 'D', 0xE58FAFE4BBA5E5AD98E694BEE695B0E68DAEE5928CE59CB0E59D80EFBC8CE8BF98E58FAFE4BBA5E794A8E5819AE7A88BE5BA8FE8AEA1E695B0E599A85043, '0', '27');
INSERT INTO `option_table` VALUES ('109', 'A', 0x423248, '0', '28');
INSERT INTO `option_table` VALUES ('110', 'B', 0x302E394348, '0', '28');
INSERT INTO `option_table` VALUES ('111', 'C', 0x302E363448, '0', '28');
INSERT INTO `option_table` VALUES ('112', 'D', 0x344548, '1', '28');
INSERT INTO `option_table` VALUES ('113', 'A', 0x2DEFBC88325E372D31EFBC89, '1', '29');
INSERT INTO `option_table` VALUES ('114', 'B', 0x2DEFBC88325E382D31EFBC89, '0', '29');
INSERT INTO `option_table` VALUES ('115', 'C', 0x2D325E37, '0', '29');
INSERT INTO `option_table` VALUES ('116', 'D', 0x2D325E38, '0', '29');
INSERT INTO `option_table` VALUES ('117', 'A', 0xE8BF9EE7BBADE79A84E4B8A4E4B8AAE5AD98E582A8E58D95E58583E58886E5B883E59CA8E79BB8E982BBE4B8A4E4B8AAE5AD98E582A8E58886E4BD93E4B8AD, '1', '30');
INSERT INTO `option_table` VALUES ('118', 'B', 0xE8BF9EE7BBADE79A84E4B8A4E4B8AAE5AD98E582A8E58D95E58583E58886E5B883E59CA8E5908CE4B880E4B8AAE5AD98E582A8E4BD93E58685EFBC8CE4BD86E59CB0E59D80E79BB8E99A9434, '0', '30');
INSERT INTO `option_table` VALUES ('119', 'C', 0xE59CB0E59D80E68C89E5B9B6E8A18CE58886E4BD93E7BAB5E59091E9A1BAE5BA8FE7BC96E58FB7, '0', '30');
INSERT INTO `option_table` VALUES ('120', 'D', 0xE59CB0E59D80E68C89E5B9B6E8A18CE58886E4BD93E6A8AAE59091E59CB0E59D80E79BB8E99A9434E7BC96E58FB7, '0', '30');
INSERT INTO `option_table` VALUES ('121', 'A', 0xE8BF90E7AE97E7BB93E69E9CE79A84E7BB9DE5AFB9E580BCE5B08FE4BA8EE69CBAE599A8E68980E883BDE8A1A8E7A4BAE79A84E69C80E5B08FE7BB9DE5AFB9E580BC, '0', '31');
INSERT INTO `option_table` VALUES ('122', 'B', 0xE8BF90E7AE97E7BB93E69E9CE5B08FE4BA8EE69CBAE599A8E68980E883BDE8A1A8E7A4BAE79A84E69C80E5B08FE8B49FE695B0, '1', '31');
INSERT INTO `option_table` VALUES ('123', 'C', 0xE8BF90E7AE97E7BB93E69E9CE5B08FE4BA8EE69CBAE599A8E68980E883BDE8A1A8E7A4BAE79A84E69C80E5B08FE6ADA3E695B0, '0', '31');
INSERT INTO `option_table` VALUES ('124', 'D', 0xE8BF90E7AE97E7BB93E69E9CE79A84E69C80E4BD8EE69C89E69588E4BD8DE4BAA7E7949FE99499E8AFAF, '0', '31');
INSERT INTO `option_table` VALUES ('125', 'A', 0xE68C87E4BBA4E689A7E8A18CE9809FE5BAA6E685A2EFBC8CE68C87E4BBA4E58A9FE883BDE79A84E4BFAEE694B9E5928CE689A9E5B195E5AEB9E69893, '0', '32');
INSERT INTO `option_table` VALUES ('126', 'B', 0xE68C87E4BBA4E689A7E8A18CE9809FE5BAA6E685A2EFBC8CE68C87E4BBA4E58A9FE883BDE79A84E4BFAEE694B9E5928CE689A9E5B195E99ABE, '0', '32');
INSERT INTO `option_table` VALUES ('127', 'C', 0xE68C87E4BBA4E689A7E8A18CE9809FE5BAA6E5BFABEFBC8CE68C87E4BBA4E58A9FE883BDE79A84E4BFAEE694B9E5928CE689A9E5B195E5AEB9E69893, '0', '32');
INSERT INTO `option_table` VALUES ('128', 'D', 0xE68C87E4BBA4E689A7E8A18CE9809FE5BAA6E5BFABEFBC8CE68C87E4BBA4E58A9FE883BDE79A84E4BFAEE694B9E5928CE689A9E5B195E99ABE, '1', '32');
INSERT INTO `option_table` VALUES ('129', 'A', 0xE5AF84E5AD98E599A8E79BB4E68EA5E5AFBBE59D80E696B9E5BC8F, '0', '33');
INSERT INTO `option_table` VALUES ('130', 'B', 0xE5AF84E5AD98E599A8E997B4E68EA5E5AFBBE59D80E696B9E5BC8F, '1', '33');
INSERT INTO `option_table` VALUES ('131', 'C', 0xE58F98E59D80E5AF84E5AD98E599A8E5AFBBE59D80E696B9E5BC8F, '0', '33');
INSERT INTO `option_table` VALUES ('132', 'D', 0xE79BB8E5AFB9E5AFBBE59D80E696B9E5BC8F, '0', '33');
INSERT INTO `option_table` VALUES ('133', 'A', 0xE68C87E4BBA4E995BFE5BAA6E59BBAE5AE9AEFBC8CE68C87E4BBA4E7A78DE7B1BBE5B091, '0', '34');
INSERT INTO `option_table` VALUES ('134', 'B', 0xE68C87E4BBA4E58A9FE883BDE5B0BDE58FAFE883BDE5BCBA, '1', '34');
INSERT INTO `option_table` VALUES ('135', 'C', 0xE5A29EE58AA0E5AF84E5AD98E599A8E79A84E695B0E79BAEEFBC8CE4BBA5E5B0BDE9878FE5878FE5B091E8AEBFE5AD98E6ACA1E695B0, '0', '34');
INSERT INTO `option_table` VALUES ('136', 'D', 0xE98089E58F96E4BDBFE794A8E9A291E78E87E69C80E9AB98E79A84E4B880E4BA9BE7AE80E58D95E68C87E4BBA4EFBC8CE4BBA5E58F8AE5BE88E69C89E794A8E4BD86E4B88DE5A48DE69D82E79A84E68C87E4BBA4, '0', '34');
INSERT INTO `option_table` VALUES ('137', 'A', 0xE59CA8E4B8BBE5AD98E4B88E435055E4B98BE997B4E8BF9BE8A18CE695B0E68DAEE4BCA0E98081, '0', '35');
INSERT INTO `option_table` VALUES ('138', 'B', 0xE59CA8E4B8BBE5AD98E5928C492F4FE7ABAFE58FA3E4B98BE997B4E8BF9BE8A18CE79BB8E997B4E4BCA0E98081, '0', '35');
INSERT INTO `option_table` VALUES ('139', 'C', 0xE59CA8435055E5928C492F4FE7ABAFE58FA3E4B98BE997B4E8BF9BE8A18CE695B0E68DAEE4BCA0E98081, '1', '35');
INSERT INTO `option_table` VALUES ('140', 'D', 0xE59CA8492F4FE7ABAFE58FA3E5928C492F4FE7ABAFE58FA3E4B98BE997B4E8BF9BE8A18CE695B0E68DAEE4BCA0E98081, '0', '35');
INSERT INTO `option_table` VALUES ('141', 'A', 0xE983BDE98787E794A8E59CB0E59D80E68C87E5AE9AE696B9E5BC8FE8BF9BE8A18CE8AFBBE58699, '0', '36');
INSERT INTO `option_table` VALUES ('142', 'B', 0x524F4DE88AAFE78987E5B19EE4BA8EE58D8AE5AFBCE4BD93E99A8FE69CBAE5AD98E582A8E599A8E88AAFE78987, '1', '36');
INSERT INTO `option_table` VALUES ('143', 'C', 0x5352414DE698AFE99D99E68081E99A8FE69CBAE8AEBFE997AEE5AD98E582A8E599A8EFBC8CE58FAFE794A8E4BD9C6361636865, '0', '36');
INSERT INTO `option_table` VALUES ('144', 'D', 0x4452414DE698AFE58AA8E68081E99A8FE69CBAE8AEBFE997AEE5AD98E582A8E599A8EFBC8CE58FAFE794A8E4BD9CE4B8BBE5AD98, '0', '36');
INSERT INTO `option_table` VALUES ('145', 'A', 0xE980BBE8BE91E8BF90E7AE97E68C87E4BBA4, '0', '37');
INSERT INTO `option_table` VALUES ('146', 'B', 0xE695B0E68DAEE4BCA0E98081E68C87E4BBA4, '0', '37');
INSERT INTO `option_table` VALUES ('147', 'C', 0xE7A7BBE4BD8DE68C87E4BBA4, '0', '37');
INSERT INTO `option_table` VALUES ('148', 'D', 0xE5AD90E7A88BE5BA8FE8B083E794A8E68C87E4BBA4, '1', '37');
INSERT INTO `option_table` VALUES ('149', 'A', 0xE5B7A5E4BD9CE4B8ADE5AD98E582A8E79A84E58685E5AEB9E58AA8E68081E79A84E58F98E58C96, '0', '38');
INSERT INTO `option_table` VALUES ('150', 'B', 0xE5B7A5E4BD9CE4B8ADE99C80E8A681E58AA8E68081E59CB0E694B9E58F98E8AEBFE5AD98E59CB0E59D80, '0', '38');
INSERT INTO `option_table` VALUES ('151', 'C', 0xE6AF8FE99A94E4B880E5AE9AE697B6E997B4E588B7E696B0E4B880E9818D, '1', '38');
INSERT INTO `option_table` VALUES ('152', 'D', 0xE6AF8FE6ACA1E8AFBBE587BAE5908EE99C80E6A0B9E68DAEE58E9FE5AD98E58685E5AEB9E585A8E983A8E588B7E696B0E4B880E9818D, '0', '38');
INSERT INTO `option_table` VALUES ('153', 'A', 0xE4B8BBE5AD98E582A8E599A8E5AD98E694BEE8AEA1E7AE97E69CBAE8BF90E8A18CE69C9FE997B4E79A84E5A4A7E9878FE7A88BE5BA8FE5928CE695B0E68DAEEFBC9B, '1', '39');
INSERT INTO `option_table` VALUES ('154', 'B', 0xE8BE85E58AA9E5AD98E582A8E599A8E4B8ADE79A84E4BFA1E681AFE99C80E8A681E794B1E8AEA1E7AE97E69CBAE4B893E997A8E79A84E5AD98E582A8E7AEA1E79086E983A8E4BBB6E8B083E585A5E4B8BBE5AD98EFBC8CE784B6E5908EE6898DE8A2AB435055E8AEBFE997AEEFBC9B, '0', '39');
INSERT INTO `option_table` VALUES ('155', 'C', 0xE4B8BBE5AD98E582A8E599A8E5A484E4BA8EE8A2ABE4B8ADE5A4AEE5A484E79086E69CBA435055E79BB4E68EA5E8AEBFE997AEE79A84E4BD8DE7BDAEEFBC8CE794B1E58FAAE8AFBBE5AD98E582A8E599A8524F4DE7BB84E68890EFBC9B, '0', '39');
INSERT INTO `option_table` VALUES ('156', 'D', 0xE8BE85E58AA9E5AD98E582A8E599A8E794B1E99A8FE69CBAE5AD98E582A8E599A852414DE7BB84E68890EFBC9B, '0', '39');
INSERT INTO `option_table` VALUES ('157', 'A', 0xE4B8BBE5AD98E5AEB9E9878FE4B88DE8B6B3, '0', '40');
INSERT INTO `option_table` VALUES ('158', 'B', 0xE4B8BBE5AD98E4B88EE8BE85E5AD98E9809FE5BAA6E4B88DE58CB9E9858D, '0', '40');
INSERT INTO `option_table` VALUES ('159', 'C', 0xE8BE85E5AD98E4B88E435055E9809FE5BAA6E4B88DE58CB9E9858D, '0', '40');
INSERT INTO `option_table` VALUES ('160', 'D', 0xE4B8BBE5AD98E4B88E435055E9809FE5BAA6E4B88DE58CB9E9858D, '1', '40');
INSERT INTO `option_table` VALUES ('161', 'A', 0xE8999AE68B9FE5AD98E582A8E599A8E79A84E980BBE8BE91E59CB0E59D80E7A9BAE997B4E6AF94E789A9E79086E59CB0E59D80E7A9BAE997B4E5B08F, '0', '41');
INSERT INTO `option_table` VALUES ('162', 'B', 0xE8999AE68B9FE5AD98E582A8E599A8E79A84E980BBE8BE91E59CB0E59D80E7A081E5B0B1E698AFE4B8BBE5AD98E79A84E59CB0E59D80E7A081, '0', '41');
INSERT INTO `option_table` VALUES ('163', 'C', 0xE8999AE68B9FE5AD98E582A8E599A8E59CA8E5AD98E58F96E695B0E68DAEE697B6E79BB4E68EA5E8AEBFE997AEE5A496E5AD98, '0', '41');
INSERT INTO `option_table` VALUES ('164', 'D', 0xE8999AE68B9FE5AD98E582A8E599A8E6AF8FE6ACA1E8AEBFE997AEE4B8BBE5AD98E697B6EFBC8CE5BF85E9A1BBE8BF9BE8A18CE8999AE5AE9EE59CB0E59D80E79A84E58F98E68DA2, '1', '41');
INSERT INTO `option_table` VALUES ('165', 'A', 0x34E5928C32, '0', '42');
INSERT INTO `option_table` VALUES ('166', 'B', 0x34E5928C38, '1', '42');
INSERT INTO `option_table` VALUES ('167', 'C', 0x32E5928C34, '0', '42');
INSERT INTO `option_table` VALUES ('168', 'D', 0x38E5928C34, '0', '42');
INSERT INTO `option_table` VALUES ('169', 'A', 0xE694AFE68C81E7A88BE5BA8FE79A84E58AA8E68081E5AE9AE4BD8D, '0', '43');
INSERT INTO `option_table` VALUES ('170', 'B', 0xE694AFE68C81E8AEBFE5AD98E59CB0E59D80E79A84E8B68AE7958CE6A380E69FA5, '0', '43');
INSERT INTO `option_table` VALUES ('171', 'C', 0xE694AFE68C81E59091E9878FE38081E695B0E7BB84E79A84E8BF90E7AE97E5AFBBE59D80, '1', '43');
INSERT INTO `option_table` VALUES ('172', 'D', 0xE694AFE68C81E7A88BE5BA8FE59CA8E5AD98E582A8E599A8E4B8ADE79A84E5AE9AE4BD8DE5928CE689A9E5A4A7E5AFBBE59D80E88C83E59BB4, '0', '43');
INSERT INTO `option_table` VALUES ('173', 'A', 0xE59CB0E59D80E68C87E5AE9AE696B9E5BC8F, '0', '44');
INSERT INTO `option_table` VALUES ('174', 'B', 0xE58685E5AEB9E68C87E5AE9AE696B9E5BC8F, '1', '44');
INSERT INTO `option_table` VALUES ('175', 'C', 0xE5A086E6A088E8AEBFE997AEE696B9E5BC8F, '0', '44');
INSERT INTO `option_table` VALUES ('176', 'D', 0xE9989FE58897E8AEBFE997AEE696B9E5BC8F, '0', '44');
INSERT INTO `option_table` VALUES ('177', 'A', 0xE4B8BBE5AD98E28094E8BE85E5AD98E280946361636865E28094E5AF84E5AD98E599A8, '0', '45');
INSERT INTO `option_table` VALUES ('178', 'B', 0xE8BE85E5AD98E280946361636865E28094E4B8BBE5AD98E28094E5AF84E5AD98E599A8, '0', '45');
INSERT INTO `option_table` VALUES ('179', 'C', 0xE8BE85E5AD98E28094E4B8BBE5AD98E280946361636865E28094E5AF84E5AD98E599A8, '1', '45');
INSERT INTO `option_table` VALUES ('180', 'D', 0xE8BE85E5AD98E28094E4B8BBE5AD98E28094E5AF84E5AD98E599A8E280946361636865, '0', '45');
INSERT INTO `option_table` VALUES ('181', 'A', 0xE5A29EE58AA0E58685E5AD98E5AEB9E9878F, '0', '46');
INSERT INTO `option_table` VALUES ('182', 'B', 0xE68F90E9AB98E58685E5AD98E58FAFE99DA0E680A7, '0', '46');
INSERT INTO `option_table` VALUES ('183', 'C', 0xE58AA0E5BFABE4BFA1E681AFE8AEBFE997AEE9809FE5BAA6, '1', '46');
INSERT INTO `option_table` VALUES ('184', 'D', 0xE5A29EE58AA0E58685E5AD98E5AEB9E9878FEFBC8CE5908CE697B6E58AA0E5BFABE8AEBFE997AEE9809FE5BAA6, '0', '46');
INSERT INTO `option_table` VALUES ('185', 'A', 0xE5A49AE4BD93E4BAA4E58F89E5AD98E582A8E599A8E4B8BBE8A681E8A7A3E586B3E689A9E58585E5AEB9E9878FE997AEE9A298, '0', '47');
INSERT INTO `option_table` VALUES ('186', 'B', 0x6361636865E79A84E58A9FE883BDE585A8E794B1E7A1ACE4BBB6E5AE8CE68890, '1', '47');
INSERT INTO `option_table` VALUES ('187', 'C', 0x6361636865E4B88EE4B8BBE5AD98E5908CE4B880E7BC96E59D80EFBC8CE58DB3E4B8BBE5AD98E7A9BAE997B4E79A84E69F90E4B880E983A8E58886E5B19EE4BA8E6361636865, '0', '47');
INSERT INTO `option_table` VALUES ('188', 'D', 0xE4B8BBE5AD98EFBC8DE5A496E5AD98E79A84E5AD98E582A8E5B182E6ACA1EFBC8CE698AFE4B8BAE4BA86E5BCA5E8A1A5E4B8BBE5AD98E9809FE5BAA6E79A84E4B88DE8B6B3, '0', '47');
INSERT INTO `option_table` VALUES ('189', 'A', 0xE9809AE794A8E5AF84E5AD98E599A8, '0', '48');
INSERT INTO `option_table` VALUES ('190', 'B', 0xE68EA7E588B6E5AD98E582A8E599A8, '0', '48');
INSERT INTO `option_table` VALUES ('191', 'C', 0xE5A086E6A088, '1', '48');
INSERT INTO `option_table` VALUES ('192', 'D', 0xE5A496E8AEBEE68EA5E58FA3, '0', '48');
INSERT INTO `option_table` VALUES ('193', 'A', 0xE5AF84E5AD98E599A8E5928CE8BDAFE79B98, '0', '49');
INSERT INTO `option_table` VALUES ('194', 'B', 0xE8BDAFE79B98E5928CE7A1ACE79B98, '0', '49');
INSERT INTO `option_table` VALUES ('195', 'C', 0xE7A381E79B98E58CBAE59F9FE4B88EE4B8BBE5AD98, '1', '49');
INSERT INTO `option_table` VALUES ('196', 'D', 0x4344524F4DE5928CE4B8BBE5AD98, '0', '49');
INSERT INTO `option_table` VALUES ('197', 'A', 0xE8BDAFE4BBB6, '0', '50');
INSERT INTO `option_table` VALUES ('198', 'B', 0xE7A1ACE4BBB6, '0', '50');
INSERT INTO `option_table` VALUES ('199', 'C', 0xE59BBAE4BBB6, '0', '50');
INSERT INTO `option_table` VALUES ('200', 'D', 0xE8BDAFE7A1ACE4BBB6E7BB93E59088, '1', '50');
INSERT INTO `option_table` VALUES ('201', 'A', 0xE98787E794A8E68C87E4BBA4E6B581E6B0B4E7BABFEFBC8CE4BDBFE5BE97E4B880E69DA1E68C87E4BBA4E689A7E8A18CE79A84E8BF87E7A88BE58F98E79FAD, '1', '51');
INSERT INTO `option_table` VALUES ('202', 'B', 0xE68C87E4BBA4E6B581E6B0B4E7BABFE58FAFE4BBA5E5A4A7E5A4A7E58AA0E5BFABE7A88BE5BA8FE689A7E8A18CE79A84E9809FE5BAA6, '0', '51');
INSERT INTO `option_table` VALUES ('203', 'C', 0xE68C87E4BBA4E6B581E6B0B4E7BABFE59CA8E8AEB8E5A49AE68385E586B5E4B88BE4BC9AE981ADE588B0E7A0B4E59D8F, '0', '51');
INSERT INTO `option_table` VALUES ('204', 'D', 0xE68C87E4BBA4E6B581E6B0B4E7BABFE4B8ADE79A84E6AF8FE4B8AAE6B581E6B0B4E6AEB5E79A84E697B6E997B4E79BB8E5908C, '0', '51');
INSERT INTO `option_table` VALUES ('205', 'A', 0xE5B08FE5BE97E5A49AE79A84E980BBE8BE91, '0', '52');
INSERT INTO `option_table` VALUES ('206', 'B', 0xE5A4A7E5BE97E5A49AE79A84E980BBE8BE91, '1', '52');
INSERT INTO `option_table` VALUES ('207', 'C', 0xE5B08FE5BE97E5A49AE79A84E789A9E79086, '0', '52');
INSERT INTO `option_table` VALUES ('208', 'D', 0xE5A4A7E5BE97E5A49AE79A84E789A9E79086, '0', '52');
INSERT INTO `option_table` VALUES ('209', 'A', 0xE694AFE68C81E7A88BE5BA8FE79A84E6A8A1E59D97E58C96E8AEBEE8AEA1E5928CE5B9B6E8A18CE7BC96E7A88BE79A84E8A681E6B182, '0', '53');
INSERT INTO `option_table` VALUES ('210', 'B', 0xE59084E6AEB5E7A88BE5BA8FE79A84E4BFAEE694B9E4BA92E4B88DE5BDB1E5938D, '0', '53');
INSERT INTO `option_table` VALUES ('211', 'C', 0xE59CB0E59D80E58F98E68DA2E9809FE5BAA6E5BFABE38081E58685E5AD98E7A28EE78987EFBC88E99BB6E5A4B4EFBC89E5B08F, '1', '53');
INSERT INTO `option_table` VALUES ('212', 'D', 0xE4BEBFE4BA8EE5A49AE98193E7A88BE5BA8FE585B1E4BAABE58685E5AD98E79A84E69F90E4BA9BE6AEB5, '0', '53');
INSERT INTO `option_table` VALUES ('213', 'A', 0xE4B8BBE5AD98E79A84E5AD98E58F96E9809FE5BAA6E58FAFE4BBA5E4B88E435055E58CB9E9858D, '0', '54');
INSERT INTO `option_table` VALUES ('214', 'B', 0xE4B8BBE5AD98E794B1524F4DE69E84E68890, '0', '54');
INSERT INTO `option_table` VALUES ('215', 'C', 0xE8BE85E5AD98E4B8ADE79A84E7A88BE5BA8FE8B083E585A5E4B8BBE5AD98E5908EE6898DE883BDE8BF90E8A18C, '1', '54');
INSERT INTO `option_table` VALUES ('216', 'D', 0xE6B187E7BC96E8AFADE8A880E7A88BE5BA8FE8AEBEE8AEA1E4B88DE99C80E8A681E4BA86E8A7A3E8AEA1E7AE97E69CBAE79A84E7A1ACE4BBB6E7BB93E69E84, '0', '54');
INSERT INTO `option_table` VALUES ('217', 'A', 0xE9809AE794A8E5AF84E5AD98E599A8, '0', '55');
INSERT INTO `option_table` VALUES ('218', 'B', 0xE5A086E6A088, '1', '55');
INSERT INTO `option_table` VALUES ('219', 'C', 0xE5AD98E582A8E599A8, '0', '55');
INSERT INTO `option_table` VALUES ('220', 'D', 0xE5A496E5AD98, '0', '55');
INSERT INTO `option_table` VALUES ('221', 'A', 0xE7A88BE5BA8FE79BB4E68EA5E68EA7E588B6E696B9E5BC8F, '1', '56');
INSERT INTO `option_table` VALUES ('222', 'B', 0xE7A88BE5BA8FE4B8ADE696ADE696B9E5BC8F, '0', '56');
INSERT INTO `option_table` VALUES ('223', 'C', 0x444D41E8BE93E585A5E8BE93E587BAE696B9E5BC8F, '0', '56');
INSERT INTO `option_table` VALUES ('224', 'D', 0xE9809AE98193E68EA7E588B6E696B9E5BC8F, '0', '56');
INSERT INTO `option_table` VALUES ('225', 'A', 0xE4B8ADE696ADE696B9E5BC8FE4B880E888ACE794A8E4BA8EE5A484E79086E99A8FE69CBAE587BAE78EB0E79A84E69C8DE58AA1E8AFB7E6B182, '1', '57');
INSERT INTO `option_table` VALUES ('226', 'B', 0xE5A496E983A8E8AEBEE5A487E58F91E587BAE4B8ADE696ADE5BA94E7AB8BE58DB3E5BE97E588B0435055E79A84E5938DE5BA94, '0', '57');
INSERT INTO `option_table` VALUES ('227', 'C', 0xE4B8ADE696ADE696B9E5BC8FE58FAFE794A8E4BA8E435055E59091E5A496E983A8E8AEBEE5A487E79A84E8AFB7E6B182, '0', '57');
INSERT INTO `option_table` VALUES ('228', 'D', 0x444D41E4B99FE58FAFE794A8E4BA8EE59CA8E4B8BBE5AD98E4B88EE4B8BBE5AD98E4B98BE997B4E4BCA0E98081E695B0E68DAE, '0', '57');
INSERT INTO `option_table` VALUES ('229', 'A', 0xE4B8ADE696ADE59091E9878FE8A1A8, '0', '58');
INSERT INTO `option_table` VALUES ('230', 'B', 0xE9809AE794A8E5AF84E5AD98E599A8, '0', '58');
INSERT INTO `option_table` VALUES ('231', 'C', 0xE5A086E6A088, '1', '58');
INSERT INTO `option_table` VALUES ('232', 'D', 0xE695B0E68DAEE7BC93E586B2E5AF84E5AD98E599A8, '0', '58');
INSERT INTO `option_table` VALUES ('233', 'A', 0xE697B6E9929FE591A8E69C9F, '0', '59');
INSERT INTO `option_table` VALUES ('234', 'B', 0xE69CBAE599A8E591A8E69C9F, '0', '59');
INSERT INTO `option_table` VALUES ('235', 'C', 0xE5B7A5E4BD9CE591A8E69C9F, '0', '59');
INSERT INTO `option_table` VALUES ('236', 'D', 0xE68C87E4BBA4E591A8E69C9F, '1', '59');
INSERT INTO `option_table` VALUES ('237', 'A', 0x3031, '0', '60');
INSERT INTO `option_table` VALUES ('238', 'B', 0x3030, '0', '60');
INSERT INTO `option_table` VALUES ('239', 'C', 0x3130, '1', '60');
INSERT INTO `option_table` VALUES ('240', 'D', 0x3131, '0', '60');
INSERT INTO `option_table` VALUES ('241', 'A', 0x414C55E4B88EE4B8BBE5AD98, '0', '61');
INSERT INTO `option_table` VALUES ('242', 'B', 0x414C55E38081E7B4AFE58AA0E599A8E4B88EE4B8BBE5AD98, '0', '61');
INSERT INTO `option_table` VALUES ('243', 'C', 0x414C55E38081E9809AE794A8E5AF84E5AD98E599A8E5928CE4B8BBE5AD98, '0', '61');
INSERT INTO `option_table` VALUES ('244', 'D', 0x414C55E38081E7B4AFE58AA0E599A8E4B88EE9809AE794A8E5AF84E5AD98E599A8, '1', '61');
INSERT INTO `option_table` VALUES ('245', 'A', 0x435055E58685E983A8E59084E983A8E4BBB6, '0', '62');
INSERT INTO `option_table` VALUES ('246', 'B', 0x435055E4B88EE5AD98E582A8E599A8E38081492F4FE7B3BBE7BB9FE4B98BE997B4E79A84E8BF9EE7BABF, '1', '62');
INSERT INTO `option_table` VALUES ('247', 'C', 0xE4B8BBE69CBAE7B3BBE7BB9FE69DBFE4B88AE79A84E59084E4B8AAE88AAFE78987, '0', '62');
INSERT INTO `option_table` VALUES ('248', 'D', 0xE7B3BBE7BB9FE4B8ADE79A84E59084E4B8AAE58A9FE883BDE6A8A1E59D97E68896E8AEBEE5A487, '0', '62');
INSERT INTO `option_table` VALUES ('249', 'A', 0x3030, '0', '63');
INSERT INTO `option_table` VALUES ('250', 'B', 0x3031, '0', '63');
INSERT INTO `option_table` VALUES ('251', 'C', 0x3130, '1', '63');
INSERT INTO `option_table` VALUES ('252', 'D', 0x3131, '0', '63');
INSERT INTO `option_table` VALUES ('253', 'A', 0xE8BF90E7AE97E7BB93E69E9CE6B2A1E69C89E6BAA2E587BA, '0', '64');
INSERT INTO `option_table` VALUES ('254', 'B', 0xE8BF90E7AE97E7BB93E69E9CE58F91E7949FE6BAA2E587BA, '1', '64');
INSERT INTO `option_table` VALUES ('255', 'C', 0xE8BF90E7AE97E7BB93E69E9CE698AFE6ADA3E695B0, '0', '64');
INSERT INTO `option_table` VALUES ('256', 'D', 0xE8BF90E7AE97E7BB93E69E9CE698AFE8B49FE695B0, '0', '64');
INSERT INTO `option_table` VALUES ('257', 'A', 0xE6938DE4BD9CE695B0E79A84E5BDA2E5BC8FE59CB0E59D80, '0', '65');
INSERT INTO `option_table` VALUES ('258', 'B', 0xE6938DE4BD9CE695B0E79A84E69C89E69588E59CB0E59D80, '0', '65');
INSERT INTO `option_table` VALUES ('259', 'C', 0xE6938DE4BD9CE695B0E79A84E997B4E68EA5E59CB0E59D80, '1', '65');
INSERT INTO `option_table` VALUES ('260', 'D', 0xE6938DE4BD9CE695B0, '0', '65');
INSERT INTO `option_table` VALUES ('261', 'A', 0xE7A88BE5BA8FE69FA5E8AFA2E696B9E5BC8F, '0', '66');
INSERT INTO `option_table` VALUES ('262', 'B', 0xE7A88BE5BA8FE4B8ADE696ADE696B9E5BC8F, '0', '66');
INSERT INTO `option_table` VALUES ('263', 'C', 0x444D41E696B9E5BC8F, '1', '66');
INSERT INTO `option_table` VALUES ('264', 'D', 0xE697A0E69DA1E4BBB6E7A88BE5BA8FE68EA7E588B6E696B9E5BC8F, '0', '66');
INSERT INTO `option_table` VALUES ('265', 'A', 0x444D41E68EA7E588B6E599A8E5928C435055E983BDE58FAFE4BBA5E4BD9CE4B8BAE680BBE7BABFE79A84E4B8BBE68EA7E8AEBEE5A487, '0', '67');
INSERT INTO `option_table` VALUES ('266', 'B', 0x444D41E696B9E5BC8FE4B88BE695B4E4B8AA492F4FE8BF87E7A88BE5AE8CE585A8E4B88DE99C80E8A681435055E4BB8BE585A5, '1', '67');
INSERT INTO `option_table` VALUES ('267', 'C', 0x444D41E68EA7E588B6E599A8E59091435055E8AFB7E6B182E79A84E698AFE680BBE7BABFE79A84E4BDBFE794A8E69D83, '0', '67');
INSERT INTO `option_table` VALUES ('268', 'D', 0x444D41E696B9E5BC8FE99C80E8A681E794A8E4B8ADE696ADE5A484E79086E8BF9BE8A18CE8BE85E58AA9E6938DE4BD9C, '0', '67');
INSERT INTO `option_table` VALUES ('269', 'A', 0xE998B6E7A081E983A8E58886E4B88EE5B0BEE695B0E983A8E58886E58886E588ABE8BF9BE8A18CE58AA0E5878FE8BF90E7AE97, '0', '68');
INSERT INTO `option_table` VALUES ('270', 'B', 0xE998B6E7A081E4B88EE5B0BEE695B0E4BD9CE4B8BAE4B880E4B8AAE695B4E4BD93E8BF9BE8A18CE58AA0E5878FE8BF90E7AE97, '0', '68');
INSERT INTO `option_table` VALUES ('271', 'C', 0xE998B6E7A081E5AFB9E9BD90E5908EEFBC8CE5B0BEE695B0E79BB8E58AA0E5878FE8BF90E7AE97, '1', '68');
INSERT INTO `option_table` VALUES ('272', 'D', 0xE5B0BEE695B0E58D95E78BACE58AA0E5878FEFBC8CE58EBBE4B8A4E695B0E4B8ADE69C80E5A4A7E998B6E7A081E580BCE4BD9CE4B8BAE7BB93E69E9CE79A84E998B6E7A081E580BC, '0', '68');
INSERT INTO `option_table` VALUES ('273', 'A', 0x3130313030313031, '1', '69');
INSERT INTO `option_table` VALUES ('274', 'B', 0x3131303031303130, '0', '69');
INSERT INTO `option_table` VALUES ('275', 'C', 0x3031303030313130, '0', '69');
INSERT INTO `option_table` VALUES ('276', 'D', 0x3031303130313031, '0', '69');
INSERT INTO `option_table` VALUES ('277', 'A', 0xE8AFBBE58699E5AD98E582A8E599A8, '0', '70');
INSERT INTO `option_table` VALUES ('278', 'B', 0xE58FAAE8AFBBE5AD98E582A8E599A8, '0', '70');
INSERT INTO `option_table` VALUES ('279', 'C', 0xE997AAE9809FE5AD98E582A8E599A8, '0', '70');
INSERT INTO `option_table` VALUES ('280', 'D', 0xE58589E693A6E999A4E58FAFE7BC96E7A88BE58FAAE8AFBBE5AD98E582A8E599A8, '1', '70');
INSERT INTO `option_table` VALUES ('281', 'A', 0xE4B8BBE5AD98E79A84E5AD98E58F96E697B6E997B4, '1', '71');
INSERT INTO `option_table` VALUES ('282', 'B', 0xE59D97E79A84E5A4A7E5B08F, '0', '71');
INSERT INTO `option_table` VALUES ('283', 'C', 0x4361636865E79A84E7BB84E7BB87E696B9E5BC8F, '0', '71');
INSERT INTO `option_table` VALUES ('284', 'D', 0x4361636865E79A84E5AEB9E9878F, '0', '71');
INSERT INTO `option_table` VALUES ('285', 'A', 0xE9AB98E9809FE88AAFE78987, '0', '72');
INSERT INTO `option_table` VALUES ('286', 'B', 0xE696B0E59E8BE599A8E4BBB6, '0', '72');
INSERT INTO `option_table` VALUES ('287', 'C', 0xE6B581E6B0B4E68A80E69CAF, '0', '72');
INSERT INTO `option_table` VALUES ('288', 'D', 0xE4B8A4E5A597E79BB8E4BA92E78BACE7AB8BE79A84E8AFBBE58699E794B5E8B7AF, '1', '72');
INSERT INTO `option_table` VALUES ('289', 'A', 0xE5AD98E694BE31E4B8AAE4BA8CE8BF9BE588B6E4BFA1E681AFE4BD8DE79A84E5AD98E582A8E58583, '0', '73');
INSERT INTO `option_table` VALUES ('290', 'B', 0xE5AD98E694BE31E4B8AAE69CBAE599A8E5AD97E79A84E68980E69C89E5AD98E582A8E58583E99B86E59088, '1', '73');
INSERT INTO `option_table` VALUES ('291', 'C', 0xE5AD98E694BE31E5AD97E88A82E79A84E68980E69C89E5AD98E582A8E58583E99B86E59088, '0', '73');
INSERT INTO `option_table` VALUES ('292', 'D', 0xE5AD98E694BE32E5AD97E88A82E79A84E68980E69C89E5AD98E582A8E58583E99B86E59088, '0', '73');
INSERT INTO `option_table` VALUES ('293', 'A', 0xE68896, '0', '74');
INSERT INTO `option_table` VALUES ('294', 'B', 0xE4B88E, '0', '74');
INSERT INTO `option_table` VALUES ('295', 'C', 0xE5BC82E68896, '1', '74');
INSERT INTO `option_table` VALUES ('296', 'D', 0xE4B88EE99D9E, '0', '74');
INSERT INTO `option_table` VALUES ('297', 'A', 0x495341, '0', '75');
INSERT INTO `option_table` VALUES ('298', 'B', 0x45495341, '0', '75');
INSERT INTO `option_table` VALUES ('299', 'C', 0x56455341, '0', '75');
INSERT INTO `option_table` VALUES ('300', 'D', 0x504349, '1', '75');
INSERT INTO `option_table` VALUES ('301', 'A', 0xE58D95E680BBE7BABF, '1', '76');
INSERT INTO `option_table` VALUES ('302', 'B', 0xE58F8CE680BBE7BABF, '0', '76');
INSERT INTO `option_table` VALUES ('303', 'C', 0xE4B889E680BBE7BABF, '0', '76');
INSERT INTO `option_table` VALUES ('304', 'D', 0xE5A49AE680BBE7BABF, '0', '76');
INSERT INTO `option_table` VALUES ('305', 'A', 0xE58FAAE69C89E4B880E4B8AAE983A8E4BBB6E58FAFE4BBA5E59091E680BBE7BABFE58F91E98081E4BFA1E681AFEFBC8CE5B9B6E4B894E58FAAE69C89E4B880E4B8AAE983A8E4BBB6E883BDE4BB8EE680BBE7BABFE4B88AE68EA5E694B6E4BFA1E681AF, '0', '77');
INSERT INTO `option_table` VALUES ('306', 'B', 0xE58FAAE69C89E4B880E4B8AAE983A8E4BBB6E58FAFE4BBA5E59091E680BBE7BABFE58F91E98081E4BFA1E681AFEFBC8CE4BD86E58FAFE4BBA5E69C89E5A49AE4B8AAE983A8E4BBB6E5908CE697B6E4BB8EE680BBE7BABFE4B88AE68EA5E694B6E4BFA1E681AF, '1', '77');
INSERT INTO `option_table` VALUES ('307', 'C', 0xE58FAFE4BBA5E69C89E4B880E4B8AAE4BBA5E4B88AE983A8E4BBB6E59091E680BBE7BABFE58F91E98081E4BFA1E681AFEFBC8CE4BD86E58FAAE69C89E4B880E4B8AAE983A8E4BBB6E58FAFE4BB8EE680BBE7BABFE4B88AE68EA5E694B6E4BFA1E681AF, '0', '77');
INSERT INTO `option_table` VALUES ('308', 'D', 0xE58FAFE4BBA5E69C89E4B880E4B8AAE4BBA5E4B88AE983A8E4BBB6E59091E680BBE7BABFE58F91E98081E4BFA1E681AFEFBC8CE5B9B6E4B894E58FAFE4BBA5E69C89E5A49AE4B8AAE983A8E4BBB6E5908CE697B6E4BB8EE680BBE7BABFE4B88AE68EA5E694B6E4BFA1E681AF, '0', '77');
INSERT INTO `option_table` VALUES ('309', 'A', 0xE68C87E4BBA4E5AF84E5AD98E599A8, '0', '78');
INSERT INTO `option_table` VALUES ('310', 'B', 0xE7B4AFE58AA0E599A8, '1', '78');
INSERT INTO `option_table` VALUES ('311', 'C', 0xE5AD98E582A8E599A8, '0', '78');
INSERT INTO `option_table` VALUES ('312', 'D', 0x414C55, '0', '78');
INSERT INTO `option_table` VALUES ('313', 'A', 0xE68C87E4BBA4E5AF84E5AD98E599A8, '0', '79');
INSERT INTO `option_table` VALUES ('314', 'B', 0xE59CB0E59D80E5AF84E5AD98E599A8, '0', '79');
INSERT INTO `option_table` VALUES ('315', 'C', 0xE695B0E68DAEE7BC93E586B2E5AF84E5AD98E599A8, '1', '79');
INSERT INTO `option_table` VALUES ('316', 'D', 0xE7B4AFE58AA0E5AF84E5AD98E599A8, '0', '79');
INSERT INTO `option_table` VALUES ('317', 'A', 0x435055, '0', '80');
INSERT INTO `option_table` VALUES ('318', 'B', 0x444D41E68EA7E588B6E599A8, '1', '80');
INSERT INTO `option_table` VALUES ('319', 'C', 0xE5AD98E582A8E599A8, '0', '80');
INSERT INTO `option_table` VALUES ('320', 'D', 0xE680BBE7BABF, '0', '80');
INSERT INTO `option_table` VALUES ('321', 'A', 0xE7AB8BE58DB3E695B0, '0', '81');
INSERT INTO `option_table` VALUES ('322', 'B', 0xE5AF84E5AD98E599A8, '1', '81');
INSERT INTO `option_table` VALUES ('323', 'C', 0xE79BB4E68EA5, '0', '81');
INSERT INTO `option_table` VALUES ('324', 'D', 0xE997B4E68EA5, '0', '81');
INSERT INTO `option_table` VALUES ('325', 'A', 0xE58F98E59D80E5AFBBE59D80E696B9E5BC8F, '1', '82');
INSERT INTO `option_table` VALUES ('326', 'B', 0xE79BB8E5AFB9E5AFBBE59D80E696B9E5BC8F, '0', '82');
INSERT INTO `option_table` VALUES ('327', 'C', 0xE59FBAE59D80E5AFBBE59D80E696B9E5BC8F, '0', '82');
INSERT INTO `option_table` VALUES ('328', 'D', 0xE997B4E68EA5E5AFBBE59D80E696B9E5BC8F, '0', '82');
INSERT INTO `option_table` VALUES ('329', 'A', 0xE4B88EE58685E5AD98E58D95E58583E5BF85E9A1BBE7BB9FE4B880E7BC96E59D80, '0', '83');
INSERT INTO `option_table` VALUES ('330', 'B', 0xE58FAFE4BBA5E78BACE7AB8BE7BC96E59D80, '1', '83');
INSERT INTO `option_table` VALUES ('331', 'C', 0xE5BF85E9A1BBE98787E794A8444D41E696B9E5BC8FE4B88EE58685E5AD98E4BAA4E68DA2E695B0E68DAE, '0', '83');
INSERT INTO `option_table` VALUES ('332', 'D', 0xE5BF85E9A1BBE98787E794A8E4B8ADE696ADE696B9E5BC8FE4B88EE58685E5AD98E4BAA4E68DA2E695B0E68DAE, '0', '83');
INSERT INTO `option_table` VALUES ('333', 'A', 0xE4B8BBE5AD98E582A8E599A8E5AD98E694BEE79A84E698AFE5A4A7E9878FE99D99E6ADA2E38081E5BE85E591BDE79A84E4BFA1E681AF, '0', '84');
INSERT INTO `option_table` VALUES ('334', 'B', 0xE8BE85E58AA9E5AD98E582A8E599A8E5AD98E694BEE7B3BBE7BB9FE7A88BE5BA8FE5928CE5A4A7E59E8BE695B0E68DAEE69687E4BBB6E58F8AE695B0E68DAEE5BA93, '1', '84');
INSERT INTO `option_table` VALUES ('335', 'C', 0xE8BE85E58AA9E5AD98E582A8E599A8E4B8ADE79A84E4BFA1E681AFE58FAFE79BB4E68EA5E8A2AB435055E8AEBFE997AE, '0', '84');
INSERT INTO `option_table` VALUES ('336', 'D', 0xE4B8BBE5AD98E582A8E599A8E5A484E4BA8EE8A2ABE4B8ADE5A4AEE5A484E79086E69CBA435055E79BB4E68EA5E8AEBFE997AEE79A84E4BD8DE7BDAEEFBC8CE794B1E58FAAE8AFBBE5AD98E582A8E599A8524F4DE7BB84E68890, '0', '84');
INSERT INTO `option_table` VALUES ('337', 'A', 0xE794A8E58E9FE7A081E8A1A8E7A4BAE4B998E695B0E4B88EE8A2ABE4B998E695B0EFBC8CE79BB4E68EA5E79BB8E4B998, '0', '85');
INSERT INTO `option_table` VALUES ('338', 'B', 0xE58588E58F96E6938DE4BD9CE695B0E7BB9DE5AFB9E580BCE79BB8E4B998EFBC8CE7ACA6E58FB7E4BD8DE58D95E78BACE5A484E79086, '1', '85');
INSERT INTO `option_table` VALUES ('339', 'C', 0xE7ACA6E58FB7E4BD8DE8BF9EE5908CE7BB9DE5AFB9E580BCE4B880E8B5B7E79BB8E4B998, '0', '85');
INSERT INTO `option_table` VALUES ('340', 'D', 0xE58F96E6938DE4BD9CE695B0E7BB9DE5AFB9E580BCE79BB8E4B998EFBC8CE4B998E7A7AFE7ACA6E58FB7E4B88EE4B998E695B0E7ACA6E58FB7E79BB8E5908C, '0', '85');
INSERT INTO `option_table` VALUES ('341', 'A', 0xE58FAFE5AFB9E6A088E58685E4BBBBE4B880E58D95E58583E5AD98E58F96E4BBA3E7A081, '0', '86');
INSERT INTO `option_table` VALUES ('342', 'B', 0xE58FAAE883BDE59CA8E6A088E5BA95E5AD98E58F96E4BBA3E7A081, '0', '86');
INSERT INTO `option_table` VALUES ('343', 'C', 0xE58FAAE883BDE59CA8E6A088E9A1B6E5AD98E58F96E4BBA3E7A081, '1', '86');
INSERT INTO `option_table` VALUES ('344', 'D', 0xE58FAFE59CA8E6A088E9A1B6E5928CE6A088E5BA95E5AD98E58F96E4BBA3E7A081, '0', '86');
INSERT INTO `option_table` VALUES ('345', 'A', 0x435055E591A8E69C9F, '0', '87');
INSERT INTO `option_table` VALUES ('346', 'B', 0xE5BEAEE591A8E69C9F, '1', '87');
INSERT INTO `option_table` VALUES ('347', 'C', 0xE697B6E9929FE591A8E69C9F, '0', '87');
INSERT INTO `option_table` VALUES ('348', 'D', 0xE69CBAE599A8E591A8E69C9F, '0', '87');
INSERT INTO `option_table` VALUES ('349', 'A', 0xE6938DE4BD9CE7A081E5AD97E6AEB5E4BBA5E5A496E79A84E8BE85E58AA9E6938DE4BD9CE5AD97E6AEB5E79A84E4BBA3E7A081, '0', '88');
INSERT INTO `option_table` VALUES ('350', 'B', 0xE68C87E4BBA4E6A0BCE5BC8FE4B8ADE4B88DE5908CE5AD97E6AEB5E8AEBEE7BDAEE79A84E6938DE4BD9CE7A081, '0', '88');
INSERT INTO `option_table` VALUES ('351', 'C', 0xE4B880E7A78DE68C87E4BBA4E4BC98E58C96E68A80E69CAFEFBC8CE58DB3E8AEA9E6938DE4BD9CE7A081E79A84E995BFE5BAA6E99A8FE59CB0E59D80E695B0E79A84E5878FE5B091E8808CE5A29EE58AA0EFBC8CE4B88DE5908CE59CB0E59D80E695B0E79A84E68C87E4BBA4E58FAFE4BBA5E585B7E69C89E4B88DE5908CE79A84E6938DE4BD9CE7A081E995BFE5BAA6, '1', '88');
INSERT INTO `option_table` VALUES ('352', 'D', 0xE68C87E689A9E5A4A7E6938DE4BD9CE7A081E5AD97E6AEB5E79A84E4BD8DE695B0, '0', '88');
INSERT INTO `option_table` VALUES ('353', 'A', 0x326EE4BD8D, '0', '89');
INSERT INTO `option_table` VALUES ('354', 'B', 0x326E2D32E4BD8D, '0', '89');
INSERT INTO `option_table` VALUES ('355', 'C', 0x6EE4BD8D, '1', '89');
INSERT INTO `option_table` VALUES ('356', 'D', 0x6E2B32E4BD8D, '0', '89');
INSERT INTO `option_table` VALUES ('357', 'A', 0xE98787E794A8E58D95E7ACA6E58FB7E4BD8DE6938DE4BD9CE6A380E6B58BE696B9E6B395E588A4E6BAA2E697B6EFBC8CE5BD93E6938DE4BD9CE695B0E4B8ADE79A84E58AA0E695B0E4B88EE8A2ABE58AA0E695B0E7ACA6E58FB7E79BB8E5908CE697B6EFBC8CE88BA5E8BF90E7AE97E7BB93E69E9CE79A84E7ACA6E58FB7E4B88EE6938DE4BD9CE695B0E79A84E7ACA6E58FB7E4B88DE4B880E887B4EFBC8CE8A1A8E7A4BAE6BAA2E587BAEFBC9BE590A6E58899EFBC8CE8A1A8E7A4BAE6B2A1E69C89E6BAA2E587BA, '0', '90');
INSERT INTO `option_table` VALUES ('358', 'B', 0xE98787E794A8E58D95E7ACA6E58FB7E4BD8DE6938DE4BD9CE6A380E6B58BE696B9E6B395E588A4E6BAA2E697B6EFBC8CE5BD93E58AA0E695B0E5928CE8A2ABE58AA0E695B0E7ACA6E58FB7E4B88DE5908CE697B6EFBC8CE79BB8E58AA0E8BF90E7AE97E79A84E7BB93E69E9CE69C89E58FAFE883BDE4BC9AE6BAA2E587BA, '1', '90');
INSERT INTO `option_table` VALUES ('359', 'C', 0xE98787E794A8E58F98E5BDA2E7A081E6938DE4BD9CE6A380E6B58BE696B9E6B395E588A4E6BAA2E697B6EFBC8CE88BA5E8BF90E7AE97E7BB93E69E9CE79A84E4B8A4E4B8AAE7ACA6E58FB7E4BD8DE79A84E4BBA3E7A081E4B88DE4B880E887B4E697B6E8A1A8E7A4BAE6BAA2E587BA, '0', '90');
INSERT INTO `option_table` VALUES ('360', 'D', 0xE98787E794A8E58F98E5BDA2E7A081E6938DE4BD9CE6A380E6B58BE696B9E6B395E588A4E6BAA2E697B6EFBC8CE69C80E9AB98E7ACA6E58FB7E4BD8DE6B0B8E8BF9CE8A1A8E7A4BAE7BB93E69E9CE79A84E6ADA3E7A1AEE7ACA6E58FB7, '0', '90');
INSERT INTO `option_table` VALUES ('361', 'A', 0x3130303148, '0', '91');
INSERT INTO `option_table` VALUES ('362', 'B', 0x3130303248, '0', '91');
INSERT INTO `option_table` VALUES ('363', 'C', 0x3130303348, '0', '91');
INSERT INTO `option_table` VALUES ('364', 'D', 0x3130303448, '1', '91');
INSERT INTO `option_table` VALUES ('365', 'A', 0xE68980E69C89E79A84E7AE80E58D95E68C87E4BBA4E59CA8E4B880E4B8AAE69CBAE599A8E591A8E69C9FE58685E689A7E8A18CE5AE8C, '0', '92');
INSERT INTO `option_table` VALUES ('366', 'B', 0xE98787E794A8E5A4A7E9878FE79A84E5AF84E5AD98E599A8E5928CE9AB98E9809FE7BC93E586B2E5AD98E582A8E599A8E68A80E69CAF, '0', '92');
INSERT INTO `option_table` VALUES ('367', 'C', 0xE9809AE8BF87E4BC98E58C96E7BC96E8AF91E7A88BE5BA8FE68F90E9AB98E5A484E79086E9809FE5BAA6, '0', '92');
INSERT INTO `option_table` VALUES ('368', 'D', 0xE68C87E4BBA4E79A84E58A9FE883BDE5BCBAE5A4A7, '1', '92');
INSERT INTO `option_table` VALUES ('369', 'A', 0xE5AD98E582A8E599A8E4B8ADE79A84E58685E5AEB9E698AFE8A2ABE9A284E58588E58699E5A5BDE79A84EFBC8CE5B9B6E4B894E696ADE794B5E5908EE4BB8DE883BDE995BFE69C9FE4BF9DE5AD98, '0', '93');
INSERT INTO `option_table` VALUES ('370', 'B', 0xE8BF90E8A18CE7A88BE5BA8FE697B6EFBC8C524F4DE58FAAE883BDE8AFBBE587BAE4BFA1E681AFE8808CE4B88DE58FAFE883BDE99A8FE69CBAE58699E585A5, '1', '93');
INSERT INTO `option_table` VALUES ('371', 'C', 0xE5AD98E582A8E58D95E58583E7AE80E58D95EFBC8CE99B86E68890E5BAA6E9AB98, '0', '93');
INSERT INTO `option_table` VALUES ('372', 'D', 0xE585B7E69C89E4B88DE69893E5A4B1E680A7EFBC8CE58DB3E4BDBFE698AFE794B5E6BA90E8A2ABE58887E696ADEFBC8C524F4DE79A84E4BFA1E681AFE4B99FE4B88DE4BC9AE4B8A2E5A4B1, '0', '93');
INSERT INTO `option_table` VALUES ('373', 'A', 0xE8AEA1E7AE97E69CBAE8BF90E8A18CE697B6EFBC8CE69CBAE599A8E68C87E4BBA4E4B88EE5BEAEE68C87E4BBA4E983BDE5AD98E694BEE59CA8E4B8BBE5AD98E4B8AD, '0', '94');
INSERT INTO `option_table` VALUES ('374', 'B', 0xE5BE85E689A7E8A18CE79A84E5BEAEE68C87E4BBA4E79A84E59CB0E59D80E5AD98E694BEE59CA8E7A88BE5BA8FE8AEA1E695B0E599A8EFBC885043EFBC89E4B8AD, '0', '94');
INSERT INTO `option_table` VALUES ('375', 'C', 0xE4B880E69DA1E5BEAEE68C87E4BBA4E79A84E58A9FE883BDE58FAFE794A8E5A49AE69DA1E69CBAE599A8E68C87E4BBA4E7BB84E68890E79A84E7A88BE5BA8FE5AE9EE78EB0, '0', '94');
INSERT INTO `option_table` VALUES ('376', 'D', 0xE4B880E69DA1E69CBAE599A8E68C87E4BBA4E79A84E58A9FE883BDE58FAFE794A8E5A49AE69DA1E5BEAEE68C87E4BBA4E7BB84E68890E79A84E5BEAEE7A88BE5BA8FE5AE9EE78EB0, '1', '94');
INSERT INTO `option_table` VALUES ('377', 'A', 0xE9878DE58FA0E68EA7E588B6E696B9E5BC8FE8A681E7A094E7A9B6E79A84E698AFE5A682E4BD95E58AA0E5BFABE68C87E4BBA4E689A7E8A18CE8BF87E7A88B, '0', '95');
INSERT INTO `option_table` VALUES ('378', 'B', 0xE9878DE58FA0E8A7A3E9878AE5B9B6E4B88DE883BDE58AA0E5BFABE68C87E4BBA4E79A84E5AE9EE78EB0EFBC8CE4BD86E883BDE58AA0E5BFABE79BB8E982BBE4B8A4E69DA1E68C87E4BBA4E4BBA5E887B3E4B880E6AEB5E7A88BE5BA8FE79A84E8A7A3E9878A, '0', '95');
INSERT INTO `option_table` VALUES ('379', 'C', 0xE2809CE6B581E6B0B4E2809DE5928CE2809CE4B880E6ACA1E9878DE58FA0E2809DE983BDE58FAFE5908CE697B6E8A7A3E9878AE4B8A4E69DA1E4BBA5E4B88AE68C87E4BBA4, '1', '95');
INSERT INTO `option_table` VALUES ('380', 'D', 0xE2809CE6B581E6B0B4E2809DE68A8AE4B880E69DA1E68C87E4BBA4E79A84E8A7A3E9878AE8BF87E7A88BE58886E8A7A3E68890E5BE88E5A49AE4B8AAE79A84E5AD90E8BF87E7A88B, '0', '95');
INSERT INTO `option_table` VALUES ('381', 'A', 0xE4B880E4B8AAE8AEB0E5BF86E58D95E58583E58FAAE883BDE5AD98E582A831E4BD8DE4BA8CE8BF9BE588B6E695B0EFBC8CE698AFE4BFA1E681AFE79A84E69C80E5B08FE58D95E58583, '0', '96');
INSERT INTO `option_table` VALUES ('382', 'B', 0xE5AD98E582A8E599A8E79A84E6A0B8E5BF83E698AFE5AD98E582A8E998B5E58897EFBC8CE5AE83E698AFE794B1E4B880E4B8AAE4B8AAE59FBAE69CACE8AEB0E5BF86E58D95E58583E7BB84E68890E79A84, '0', '96');
INSERT INTO `option_table` VALUES ('383', 'C', 0xE4B880E58FB0E69CBAE599A8E79A84E68980E69C89E5AD98E582A8E58D95E58583E79A84E995BFE5BAA6E58FAFE883BDE4B88DE5908C, '1', '96');
INSERT INTO `option_table` VALUES ('384', 'D', 0xE4B880E4B8AAE5AD98E582A8E58D95E58583E79A84E6AF8FE4B8AAE4BA8CE8BF9BE588B6E5BF85E9A1BBE5B9B6E8A18CE5B7A5E4BD9CEFBC8CE5908CE697B6E8AFBBE587BAE68896E5908CE697B6E58699E585A5E4BFA1E681AF, '0', '96');
INSERT INTO `option_table` VALUES ('385', 'A', 0xE883BDE4B880E6ACA1E5B9B6E8A18CE4BCA0E98081E79A84E695B0E68DAEE4BD8DE695B0, '0', '97');
INSERT INTO `option_table` VALUES ('386', 'B', 0xE58FAFE4B880E6ACA1E4B8B2E8A18CE4BCA0E98081E79A84E695B0E68DAEE4BD8DE695B0, '0', '97');
INSERT INTO `option_table` VALUES ('387', 'C', 0xE58FAFE4B880E6ACA1E5B9B6E8A18CE4BCA0E98081E79A84E695B0E68DAEE79A84E69C80E5A4A7E580BC, '0', '97');
INSERT INTO `option_table` VALUES ('388', 'D', 0xE58D95E4BD8DE697B6E997B4E58685E58FAFE4BCA0E98081E79A84E695B0E68DAEE4BD8DE695B0, '1', '97');
INSERT INTO `option_table` VALUES ('389', 'A', 0xE7A381E79B98E5AD98E582A8E599A8, '0', '98');
INSERT INTO `option_table` VALUES ('390', 'B', 0xE58FAAE8AFBBE5AD98E582A8E599A8, '0', '98');
INSERT INTO `option_table` VALUES ('391', 'C', 0xE58589E79B98, '0', '98');
INSERT INTO `option_table` VALUES ('392', 'D', 0xE99D99E68081E5AD98E582A8E599A84452414D, '1', '98');
INSERT INTO `option_table` VALUES ('393', 'A', 0xE8999AE68B9FE5AD98E582A8E599A8E698AFE5BBBAE7AB8BE59CA8E4B8BBE5AD98EFBC8DE8BE85E5AD98E789A9E79086E7BB93E69E84E79A84E59FBAE7A180E4B98BE4B88AE79A84, '0', '99');
INSERT INTO `option_table` VALUES ('394', 'B', 0xE8999AE68B9FE5AD98E582A8E599A8E698AFE5809FE58AA9E4BA8EE7A381E79B98E7AD89E8BE85E58AA9E5AD98E582A8E599A8E69DA5E689A9E5A4A7E4B8BBE5AD98E5AEB9E9878FE79A84, '0', '99');
INSERT INTO `option_table` VALUES ('395', 'C', 0xE8999AE68B9FE5AD98E582A8E599A8E8A7A3E586B3E4BA86E5AD98E582A8E5AEB9E9878FE38081E5AD98E58F96E9809FE5BAA6E5928CE4BBB7E6A0BCE4B98BE997B4E79A84E79F9BE79BBEEFBC8CE698AFE7AEA1E79086E5AD98E582A8E8AEBEE5A487E79A84E69C89E69588E696B9E6B395, '0', '99');
INSERT INTO `option_table` VALUES ('396', 'D', 0xE8999AE68B9FE5AD98E582A8E599A8E698AFE4B880E4B8AAE5AE9EE99985E79A84E789A9E79086E5AD98E582A8E599A8, '1', '99');
INSERT INTO `option_table` VALUES ('397', 'A', 0x435055E4B88EE4B8BBE5AD98, '0', '100');
INSERT INTO `option_table` VALUES ('398', 'B', 0xE5A496E8AEBEE4B88EE5A496E8AEBE, '0', '100');
INSERT INTO `option_table` VALUES ('399', 'C', 0xE5A496E8AEBEE4B88E435055, '0', '100');
INSERT INTO `option_table` VALUES ('400', 'D', 0xE5A496E8AEBEE4B88EE4B8BBE5AD98, '1', '100');
INSERT INTO `option_table` VALUES ('401', 'A', 0xE6ADA3E7A1AE, '1', '101');
INSERT INTO `option_table` VALUES ('402', 'B', 0xE99499E8AFAF, '0', '101');
INSERT INTO `option_table` VALUES ('403', 'A', 0xE6ADA3E7A1AE, '1', '102');
INSERT INTO `option_table` VALUES ('404', 'B', 0xE99499E8AFAF, '0', '102');
INSERT INTO `option_table` VALUES ('405', 'A', 0xE6ADA3E7A1AE, '0', '103');
INSERT INTO `option_table` VALUES ('406', 'B', 0xE99499E8AFAF, '1', '103');
INSERT INTO `option_table` VALUES ('407', 'A', 0xE6ADA3E7A1AE, '1', '104');
INSERT INTO `option_table` VALUES ('408', 'B', 0xE99499E8AFAF, '0', '104');
INSERT INTO `option_table` VALUES ('409', 'A', 0xE6ADA3E7A1AE, '1', '105');
INSERT INTO `option_table` VALUES ('410', 'B', 0xE99499E8AFAF, '0', '105');
INSERT INTO `option_table` VALUES ('411', 'A', 0xE6ADA3E7A1AE, '1', '106');
INSERT INTO `option_table` VALUES ('412', 'B', 0xE99499E8AFAF, '0', '106');
INSERT INTO `option_table` VALUES ('413', 'A', 0xE6ADA3E7A1AE, '0', '107');
INSERT INTO `option_table` VALUES ('414', 'B', 0xE99499E8AFAF, '1', '107');
INSERT INTO `option_table` VALUES ('415', 'A', 0xE6ADA3E7A1AE, '0', '108');
INSERT INTO `option_table` VALUES ('416', 'B', 0xE99499E8AFAF, '1', '108');
INSERT INTO `option_table` VALUES ('417', 'A', 0xE6ADA3E7A1AE, '1', '109');
INSERT INTO `option_table` VALUES ('418', 'B', 0xE99499E8AFAF, '0', '109');
INSERT INTO `option_table` VALUES ('419', 'A', 0xE6ADA3E7A1AE, '0', '110');
INSERT INTO `option_table` VALUES ('420', 'B', 0xE99499E8AFAF, '1', '110');
INSERT INTO `option_table` VALUES ('421', 'A', 0xE6ADA3E7A1AE, '1', '111');
INSERT INTO `option_table` VALUES ('422', 'B', 0xE99499E8AFAF, '0', '111');
INSERT INTO `option_table` VALUES ('423', 'A', 0xE6ADA3E7A1AE, '1', '112');
INSERT INTO `option_table` VALUES ('424', 'B', 0xE99499E8AFAF, '0', '112');
INSERT INTO `option_table` VALUES ('425', 'A', 0xE6ADA3E7A1AE, '0', '113');
INSERT INTO `option_table` VALUES ('426', 'B', 0xE99499E8AFAF, '1', '113');
INSERT INTO `option_table` VALUES ('427', 'A', 0xE6ADA3E7A1AE, '0', '114');
INSERT INTO `option_table` VALUES ('428', 'B', 0xE99499E8AFAF, '1', '114');
INSERT INTO `option_table` VALUES ('429', 'A', 0xE6ADA3E7A1AE, '1', '115');
INSERT INTO `option_table` VALUES ('430', 'B', 0xE99499E8AFAF, '0', '115');
INSERT INTO `option_table` VALUES ('431', 'A', 0xE6ADA3E7A1AE, '1', '116');
INSERT INTO `option_table` VALUES ('432', 'B', 0xE99499E8AFAF, '0', '116');
INSERT INTO `option_table` VALUES ('433', 'A', 0xE6ADA3E7A1AE, '0', '117');
INSERT INTO `option_table` VALUES ('434', 'B', 0xE99499E8AFAF, '1', '117');
INSERT INTO `option_table` VALUES ('435', 'A', 0xE6ADA3E7A1AE, '0', '118');
INSERT INTO `option_table` VALUES ('436', 'B', 0xE99499E8AFAF, '1', '118');
INSERT INTO `option_table` VALUES ('437', 'A', 0xE6ADA3E7A1AE, '0', '119');
INSERT INTO `option_table` VALUES ('438', 'B', 0xE99499E8AFAF, '1', '119');
INSERT INTO `option_table` VALUES ('439', 'A', 0xE6ADA3E7A1AE, '1', '120');
INSERT INTO `option_table` VALUES ('440', 'B', 0xE99499E8AFAF, '0', '120');
INSERT INTO `option_table` VALUES ('441', 'A', 0xE6ADA3E7A1AE, '1', '121');
INSERT INTO `option_table` VALUES ('442', 'B', 0xE99499E8AFAF, '0', '121');
INSERT INTO `option_table` VALUES ('443', 'A', 0xE6ADA3E7A1AE, '0', '122');
INSERT INTO `option_table` VALUES ('444', 'B', 0xE99499E8AFAF, '1', '122');
INSERT INTO `option_table` VALUES ('445', 'A', 0xE6ADA3E7A1AE, '0', '123');
INSERT INTO `option_table` VALUES ('446', 'B', 0xE99499E8AFAF, '1', '123');
INSERT INTO `option_table` VALUES ('447', 'A', 0xE6ADA3E7A1AE, '1', '124');
INSERT INTO `option_table` VALUES ('448', 'B', 0xE99499E8AFAF, '0', '124');
INSERT INTO `option_table` VALUES ('449', 'A', 0xE6ADA3E7A1AE, '1', '125');
INSERT INTO `option_table` VALUES ('450', 'B', 0xE99499E8AFAF, '0', '125');
INSERT INTO `option_table` VALUES ('451', 'A', 0xE6ADA3E7A1AE, '1', '126');
INSERT INTO `option_table` VALUES ('452', 'B', 0xE99499E8AFAF, '0', '126');
INSERT INTO `option_table` VALUES ('453', 'A', 0xE6ADA3E7A1AE, '0', '127');
INSERT INTO `option_table` VALUES ('454', 'B', 0xE99499E8AFAF, '1', '127');
INSERT INTO `option_table` VALUES ('455', 'A', 0xE6ADA3E7A1AE, '1', '128');
INSERT INTO `option_table` VALUES ('456', 'B', 0xE99499E8AFAF, '0', '128');
INSERT INTO `option_table` VALUES ('457', 'A', 0xE6ADA3E7A1AE, '1', '129');
INSERT INTO `option_table` VALUES ('458', 'B', 0xE99499E8AFAF, '0', '129');
INSERT INTO `option_table` VALUES ('459', 'A', 0xE6ADA3E7A1AE, '0', '130');
INSERT INTO `option_table` VALUES ('460', 'B', 0xE99499E8AFAF, '1', '130');
INSERT INTO `option_table` VALUES ('461', 'A', 0xE6ADA3E7A1AE, '0', '131');
INSERT INTO `option_table` VALUES ('462', 'B', 0xE99499E8AFAF, '1', '131');
INSERT INTO `option_table` VALUES ('463', 'A', 0xE6ADA3E7A1AE, '1', '132');
INSERT INTO `option_table` VALUES ('464', 'B', 0xE99499E8AFAF, '0', '132');
INSERT INTO `option_table` VALUES ('465', 'A', 0xE6ADA3E7A1AE, '1', '133');
INSERT INTO `option_table` VALUES ('466', 'B', 0xE99499E8AFAF, '0', '133');
INSERT INTO `option_table` VALUES ('467', 'A', 0xE6ADA3E7A1AE, '0', '134');
INSERT INTO `option_table` VALUES ('468', 'B', 0xE99499E8AFAF, '1', '134');
INSERT INTO `option_table` VALUES ('469', 'A', 0xE6ADA3E7A1AE, '0', '135');
INSERT INTO `option_table` VALUES ('470', 'B', 0xE99499E8AFAF, '1', '135');
INSERT INTO `option_table` VALUES ('471', 'A', 0xE6ADA3E7A1AE, '0', '136');
INSERT INTO `option_table` VALUES ('472', 'B', 0xE99499E8AFAF, '1', '136');
INSERT INTO `option_table` VALUES ('473', 'A', 0xE6ADA3E7A1AE, '1', '137');
INSERT INTO `option_table` VALUES ('474', 'B', 0xE99499E8AFAF, '0', '137');
INSERT INTO `option_table` VALUES ('475', 'A', 0xE6ADA3E7A1AE, '1', '138');
INSERT INTO `option_table` VALUES ('476', 'B', 0xE99499E8AFAF, '0', '138');
INSERT INTO `option_table` VALUES ('477', 'A', 0xE6ADA3E7A1AE, '0', '139');
INSERT INTO `option_table` VALUES ('478', 'B', 0xE99499E8AFAF, '1', '139');
INSERT INTO `option_table` VALUES ('479', 'A', 0xE6ADA3E7A1AE, '1', '140');
INSERT INTO `option_table` VALUES ('480', 'B', 0xE99499E8AFAF, '0', '140');
INSERT INTO `option_table` VALUES ('481', 'A', 0xE6ADA3E7A1AE, '1', '141');
INSERT INTO `option_table` VALUES ('482', 'B', 0xE99499E8AFAF, '0', '141');
INSERT INTO `option_table` VALUES ('483', 'A', 0xE6ADA3E7A1AE, '0', '142');
INSERT INTO `option_table` VALUES ('484', 'B', 0xE99499E8AFAF, '1', '142');
INSERT INTO `option_table` VALUES ('485', 'A', 0xE6ADA3E7A1AE, '0', '143');
INSERT INTO `option_table` VALUES ('486', 'B', 0xE99499E8AFAF, '1', '143');
INSERT INTO `option_table` VALUES ('487', 'A', 0xE6ADA3E7A1AE, '1', '144');
INSERT INTO `option_table` VALUES ('488', 'B', 0xE99499E8AFAF, '0', '144');
INSERT INTO `option_table` VALUES ('489', 'A', 0xE6ADA3E7A1AE, '0', '145');
INSERT INTO `option_table` VALUES ('490', 'B', 0xE99499E8AFAF, '1', '145');
INSERT INTO `option_table` VALUES ('491', 'A', 0xE6ADA3E7A1AE, '1', '146');
INSERT INTO `option_table` VALUES ('492', 'B', 0xE99499E8AFAF, '0', '146');
INSERT INTO `option_table` VALUES ('493', 'A', 0xE6ADA3E7A1AE, '1', '147');
INSERT INTO `option_table` VALUES ('494', 'B', 0xE99499E8AFAF, '0', '147');
INSERT INTO `option_table` VALUES ('495', 'A', 0xE6ADA3E7A1AE, '0', '148');
INSERT INTO `option_table` VALUES ('496', 'B', 0xE99499E8AFAF, '1', '148');
INSERT INTO `option_table` VALUES ('497', 'A', 0xE6ADA3E7A1AE, '1', '149');
INSERT INTO `option_table` VALUES ('498', 'B', 0xE99499E8AFAF, '0', '149');
INSERT INTO `option_table` VALUES ('499', 'A', 0xE6ADA3E7A1AE, '0', '150');
INSERT INTO `option_table` VALUES ('500', 'B', 0xE99499E8AFAF, '1', '150');
INSERT INTO `option_table` VALUES ('501', 'A', 0xE6ADA3E7A1AE, '0', '151');
INSERT INTO `option_table` VALUES ('502', 'B', 0xE99499E8AFAF, '1', '151');
INSERT INTO `option_table` VALUES ('503', 'A', 0xE6ADA3E7A1AE, '1', '152');
INSERT INTO `option_table` VALUES ('504', 'B', 0xE99499E8AFAF, '0', '152');
INSERT INTO `option_table` VALUES ('505', 'A', 0xE6ADA3E7A1AE, '0', '153');
INSERT INTO `option_table` VALUES ('506', 'B', 0xE99499E8AFAF, '1', '153');
INSERT INTO `option_table` VALUES ('507', 'A', 0xE6ADA3E7A1AE, '0', '154');
INSERT INTO `option_table` VALUES ('508', 'B', 0xE99499E8AFAF, '1', '154');
INSERT INTO `option_table` VALUES ('509', 'A', 0xE6ADA3E7A1AE, '1', '155');
INSERT INTO `option_table` VALUES ('510', 'B', 0xE99499E8AFAF, '0', '155');
INSERT INTO `option_table` VALUES ('511', 'A', 0xE6ADA3E7A1AE, '0', '156');
INSERT INTO `option_table` VALUES ('512', 'B', 0xE99499E8AFAF, '1', '156');
INSERT INTO `option_table` VALUES ('513', 'A', 0xE6ADA3E7A1AE, '0', '157');
INSERT INTO `option_table` VALUES ('514', 'B', 0xE99499E8AFAF, '1', '157');
INSERT INTO `option_table` VALUES ('515', 'A', 0xE6ADA3E7A1AE, '0', '158');
INSERT INTO `option_table` VALUES ('516', 'B', 0xE99499E8AFAF, '1', '158');
INSERT INTO `option_table` VALUES ('517', 'A', 0xE6ADA3E7A1AE, '0', '159');
INSERT INTO `option_table` VALUES ('518', 'B', 0xE99499E8AFAF, '1', '159');
INSERT INTO `option_table` VALUES ('519', 'A', 0xE6ADA3E7A1AE, '1', '160');
INSERT INTO `option_table` VALUES ('520', 'B', 0xE99499E8AFAF, '0', '160');
INSERT INTO `option_table` VALUES ('521', 'A', 0xE6ADA3E7A1AE, '1', '161');
INSERT INTO `option_table` VALUES ('522', 'B', 0xE99499E8AFAF, '0', '161');
INSERT INTO `option_table` VALUES ('523', 'A', 0xE6ADA3E7A1AE, '1', '162');
INSERT INTO `option_table` VALUES ('524', 'B', 0xE99499E8AFAF, '0', '162');
INSERT INTO `option_table` VALUES ('525', 'A', 0xE6ADA3E7A1AE, '1', '163');
INSERT INTO `option_table` VALUES ('526', 'B', 0xE99499E8AFAF, '0', '163');
INSERT INTO `option_table` VALUES ('527', 'A', 0xE6ADA3E7A1AE, '1', '164');
INSERT INTO `option_table` VALUES ('528', 'B', 0xE99499E8AFAF, '0', '164');
INSERT INTO `option_table` VALUES ('529', 'A', 0xE6ADA3E7A1AE, '0', '165');
INSERT INTO `option_table` VALUES ('530', 'B', 0xE99499E8AFAF, '1', '165');
INSERT INTO `option_table` VALUES ('531', 'A', 0xE6ADA3E7A1AE, '1', '166');
INSERT INTO `option_table` VALUES ('532', 'B', 0xE99499E8AFAF, '0', '166');
INSERT INTO `option_table` VALUES ('533', 'A', 0xE6ADA3E7A1AE, '0', '167');
INSERT INTO `option_table` VALUES ('534', 'B', 0xE99499E8AFAF, '1', '167');
INSERT INTO `option_table` VALUES ('535', 'A', 0xE6ADA3E7A1AE, '0', '168');
INSERT INTO `option_table` VALUES ('536', 'B', 0xE99499E8AFAF, '1', '168');
INSERT INTO `option_table` VALUES ('537', 'A', 0xE6ADA3E7A1AE, '0', '169');
INSERT INTO `option_table` VALUES ('538', 'B', 0xE99499E8AFAF, '1', '169');
INSERT INTO `option_table` VALUES ('539', 'A', 0xE6ADA3E7A1AE, '1', '170');
INSERT INTO `option_table` VALUES ('540', 'B', 0xE99499E8AFAF, '0', '170');
INSERT INTO `option_table` VALUES ('541', 'A', 0xE6ADA3E7A1AE, '0', '171');
INSERT INTO `option_table` VALUES ('542', 'B', 0xE99499E8AFAF, '1', '171');
INSERT INTO `option_table` VALUES ('543', 'A', 0xE6ADA3E7A1AE, '0', '172');
INSERT INTO `option_table` VALUES ('544', 'B', 0xE99499E8AFAF, '1', '172');
INSERT INTO `option_table` VALUES ('545', 'A', 0xE6ADA3E7A1AE, '1', '173');
INSERT INTO `option_table` VALUES ('546', 'B', 0xE99499E8AFAF, '0', '173');
INSERT INTO `option_table` VALUES ('547', 'A', 0xE6ADA3E7A1AE, '0', '174');
INSERT INTO `option_table` VALUES ('548', 'B', 0xE99499E8AFAF, '1', '174');
INSERT INTO `option_table` VALUES ('549', 'A', 0xE6ADA3E7A1AE, '0', '175');
INSERT INTO `option_table` VALUES ('550', 'B', 0xE99499E8AFAF, '1', '175');
INSERT INTO `option_table` VALUES ('551', 'A', 0xE6ADA3E7A1AE, '1', '176');
INSERT INTO `option_table` VALUES ('552', 'B', 0xE99499E8AFAF, '0', '176');
INSERT INTO `option_table` VALUES ('553', 'A', 0xE6ADA3E7A1AE, '1', '177');
INSERT INTO `option_table` VALUES ('554', 'B', 0xE99499E8AFAF, '0', '177');
INSERT INTO `option_table` VALUES ('555', 'A', 0xE6ADA3E7A1AE, '1', '178');
INSERT INTO `option_table` VALUES ('556', 'B', 0xE99499E8AFAF, '0', '178');
INSERT INTO `option_table` VALUES ('557', 'A', 0xE6ADA3E7A1AE, '1', '179');
INSERT INTO `option_table` VALUES ('558', 'B', 0xE99499E8AFAF, '0', '179');
INSERT INTO `option_table` VALUES ('559', 'A', 0xE6ADA3E7A1AE, '0', '180');
INSERT INTO `option_table` VALUES ('560', 'B', 0xE99499E8AFAF, '1', '180');
INSERT INTO `option_table` VALUES ('561', 'A', 0xE6ADA3E7A1AE, '1', '181');
INSERT INTO `option_table` VALUES ('562', 'B', 0xE99499E8AFAF, '0', '181');
INSERT INTO `option_table` VALUES ('563', 'A', 0xE6ADA3E7A1AE, '0', '182');
INSERT INTO `option_table` VALUES ('564', 'B', 0xE99499E8AFAF, '1', '182');
INSERT INTO `option_table` VALUES ('565', 'A', 0xE6ADA3E7A1AE, '1', '183');
INSERT INTO `option_table` VALUES ('566', 'B', 0xE99499E8AFAF, '0', '183');
INSERT INTO `option_table` VALUES ('567', 'A', 0xE6ADA3E7A1AE, '1', '184');
INSERT INTO `option_table` VALUES ('568', 'B', 0xE99499E8AFAF, '0', '184');
INSERT INTO `option_table` VALUES ('569', 'A', 0xE6ADA3E7A1AE, '1', '185');
INSERT INTO `option_table` VALUES ('570', 'B', 0xE99499E8AFAF, '0', '185');
INSERT INTO `option_table` VALUES ('571', 'A', 0xE6ADA3E7A1AE, '1', '186');
INSERT INTO `option_table` VALUES ('572', 'B', 0xE99499E8AFAF, '0', '186');
INSERT INTO `option_table` VALUES ('573', 'A', 0xE6ADA3E7A1AE, '0', '187');
INSERT INTO `option_table` VALUES ('574', 'B', 0xE99499E8AFAF, '1', '187');
INSERT INTO `option_table` VALUES ('575', 'A', 0xE6ADA3E7A1AE, '1', '188');
INSERT INTO `option_table` VALUES ('576', 'B', 0xE99499E8AFAF, '0', '188');
INSERT INTO `option_table` VALUES ('577', 'A', 0xE6ADA3E7A1AE, '0', '189');
INSERT INTO `option_table` VALUES ('578', 'B', 0xE99499E8AFAF, '1', '189');
INSERT INTO `option_table` VALUES ('579', 'A', 0xE6ADA3E7A1AE, '0', '190');
INSERT INTO `option_table` VALUES ('580', 'B', 0xE99499E8AFAF, '1', '190');
INSERT INTO `option_table` VALUES ('581', 'A', 0xE6ADA3E7A1AE, '0', '191');
INSERT INTO `option_table` VALUES ('582', 'B', 0xE99499E8AFAF, '1', '191');
INSERT INTO `option_table` VALUES ('583', 'A', 0xE6ADA3E7A1AE, '1', '192');
INSERT INTO `option_table` VALUES ('584', 'B', 0xE99499E8AFAF, '0', '192');
INSERT INTO `option_table` VALUES ('585', 'A', 0xE6ADA3E7A1AE, '0', '193');
INSERT INTO `option_table` VALUES ('586', 'B', 0xE99499E8AFAF, '1', '193');
INSERT INTO `option_table` VALUES ('587', 'A', 0xE6ADA3E7A1AE, '0', '194');
INSERT INTO `option_table` VALUES ('588', 'B', 0xE99499E8AFAF, '1', '194');
INSERT INTO `option_table` VALUES ('589', 'A', 0xE6ADA3E7A1AE, '1', '195');
INSERT INTO `option_table` VALUES ('590', 'B', 0xE99499E8AFAF, '0', '195');
INSERT INTO `option_table` VALUES ('591', 'A', 0xE6ADA3E7A1AE, '0', '196');
INSERT INTO `option_table` VALUES ('592', 'B', 0xE99499E8AFAF, '1', '196');
INSERT INTO `option_table` VALUES ('593', 'A', 0xE6ADA3E7A1AE, '0', '197');
INSERT INTO `option_table` VALUES ('594', 'B', 0xE99499E8AFAF, '1', '197');
INSERT INTO `option_table` VALUES ('595', 'A', 0xE6ADA3E7A1AE, '1', '198');
INSERT INTO `option_table` VALUES ('596', 'B', 0xE99499E8AFAF, '0', '198');
INSERT INTO `option_table` VALUES ('597', 'A', 0xE6ADA3E7A1AE, '0', '199');
INSERT INTO `option_table` VALUES ('598', 'B', 0xE99499E8AFAF, '1', '199');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `permission_id` int NOT NULL,
  `permission_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT COMMENT='权限表';

-- ----------------------------
-- Records of permission
-- ----------------------------

-- ----------------------------
-- Table structure for practice_detail
-- ----------------------------
DROP TABLE IF EXISTS `practice_detail`;
CREATE TABLE `practice_detail` (
  `practice_detail_id` int NOT NULL AUTO_INCREMENT,
  `practice_info_id` int NOT NULL COMMENT '属于哪个试卷/练习题记录',
  `question_id` int NOT NULL COMMENT '题目id',
  `question_type_id` int NOT NULL COMMENT '题型id',
  `create_time` bigint NOT NULL COMMENT '创建时间',
  `update_time` bigint NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`practice_detail_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4478 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT COMMENT='练习题详情表';

-- ----------------------------
-- Records of practice_detail
-- ----------------------------
INSERT INTO `practice_detail` VALUES ('4300', '478', '4', '1', '1713804168226', '1713804168226');
INSERT INTO `practice_detail` VALUES ('4301', '478', '22', '1', '1713804168226', '1713804168226');
INSERT INTO `practice_detail` VALUES ('4302', '478', '75', '1', '1713804168226', '1713804168226');
INSERT INTO `practice_detail` VALUES ('4303', '478', '24', '1', '1713804168226', '1713804168226');
INSERT INTO `practice_detail` VALUES ('4304', '478', '23', '1', '1713804168226', '1713804168226');
INSERT INTO `practice_detail` VALUES ('4305', '478', '76', '1', '1713804168226', '1713804168226');
INSERT INTO `practice_detail` VALUES ('4306', '478', '77', '1', '1713804168226', '1713804168226');
INSERT INTO `practice_detail` VALUES ('4307', '478', '1', '1', '1713804168226', '1713804168226');
INSERT INTO `practice_detail` VALUES ('4308', '478', '80', '1', '1713804168226', '1713804168226');
INSERT INTO `practice_detail` VALUES ('4309', '478', '3', '1', '1713804168226', '1713804168226');
INSERT INTO `practice_detail` VALUES ('4310', '479', '189', '2', '1713804172063', '1713804172063');
INSERT INTO `practice_detail` VALUES ('4311', '479', '159', '2', '1713804172063', '1713804172063');
INSERT INTO `practice_detail` VALUES ('4312', '479', '101', '2', '1713804172063', '1713804172063');
INSERT INTO `practice_detail` VALUES ('4313', '479', '116', '2', '1713804172063', '1713804172063');
INSERT INTO `practice_detail` VALUES ('4314', '479', '167', '2', '1713804172063', '1713804172063');
INSERT INTO `practice_detail` VALUES ('4315', '479', '186', '2', '1713804172063', '1713804172063');
INSERT INTO `practice_detail` VALUES ('4316', '479', '194', '2', '1713804172063', '1713804172063');
INSERT INTO `practice_detail` VALUES ('4317', '479', '107', '2', '1713804172063', '1713804172063');
INSERT INTO `practice_detail` VALUES ('4318', '479', '134', '2', '1713804172063', '1713804172063');
INSERT INTO `practice_detail` VALUES ('4319', '479', '145', '2', '1713804172063', '1713804172063');
INSERT INTO `practice_detail` VALUES ('4320', '480', '278', '4', '1713804176536', '1713804176536');
INSERT INTO `practice_detail` VALUES ('4321', '481', '17', '1', '1713804178875', '1713804178875');
INSERT INTO `practice_detail` VALUES ('4322', '481', '18', '1', '1713804178876', '1713804178876');
INSERT INTO `practice_detail` VALUES ('4323', '481', '14', '1', '1713804178876', '1713804178876');
INSERT INTO `practice_detail` VALUES ('4324', '481', '16', '1', '1713804178876', '1713804178876');
INSERT INTO `practice_detail` VALUES ('4325', '481', '27', '1', '1713804178876', '1713804178876');
INSERT INTO `practice_detail` VALUES ('4326', '481', '13', '1', '1713804178876', '1713804178876');
INSERT INTO `practice_detail` VALUES ('4327', '482', '175', '2', '1713804180409', '1713804180409');
INSERT INTO `practice_detail` VALUES ('4328', '482', '124', '2', '1713804180409', '1713804180409');
INSERT INTO `practice_detail` VALUES ('4329', '482', '118', '2', '1713804180409', '1713804180409');
INSERT INTO `practice_detail` VALUES ('4330', '482', '114', '2', '1713804180409', '1713804180409');
INSERT INTO `practice_detail` VALUES ('4331', '482', '165', '2', '1713804180409', '1713804180409');
INSERT INTO `practice_detail` VALUES ('4332', '482', '144', '2', '1713804180409', '1713804180409');
INSERT INTO `practice_detail` VALUES ('4333', '482', '199', '2', '1713804180409', '1713804180409');
INSERT INTO `practice_detail` VALUES ('4334', '482', '103', '2', '1713804180409', '1713804180409');
INSERT INTO `practice_detail` VALUES ('4335', '483', '216', '3', '1713804181637', '1713804181637');
INSERT INTO `practice_detail` VALUES ('4336', '484', '78', '1', '1713804454264', '1713804454264');
INSERT INTO `practice_detail` VALUES ('4337', '484', '1', '1', '1713804454264', '1713804454264');
INSERT INTO `practice_detail` VALUES ('4338', '484', '3', '1', '1713804454264', '1713804454264');
INSERT INTO `practice_detail` VALUES ('4339', '484', '4', '1', '1713804454264', '1713804454264');
INSERT INTO `practice_detail` VALUES ('4340', '485', '3', '1', '1713867893443', '1713867893443');
INSERT INTO `practice_detail` VALUES ('4341', '485', '1', '1', '1713867893445', '1713867893445');
INSERT INTO `practice_detail` VALUES ('4342', '485', '78', '1', '1713867893445', '1713867893445');
INSERT INTO `practice_detail` VALUES ('4343', '485', '4', '1', '1713867893445', '1713867893445');
INSERT INTO `practice_detail` VALUES ('4344', '486', '14', '1', '1713867905773', '1713867905773');
INSERT INTO `practice_detail` VALUES ('4345', '487', '14', '1', '1713867913107', '1713867913107');
INSERT INTO `practice_detail` VALUES ('4346', '488', '103', '2', '1713867918077', '1713867918077');
INSERT INTO `practice_detail` VALUES ('4347', '489', '27', '1', '1713867931061', '1713867931061');
INSERT INTO `practice_detail` VALUES ('4348', '489', '17', '1', '1713867931061', '1713867931061');
INSERT INTO `practice_detail` VALUES ('4349', '489', '16', '1', '1713867931061', '1713867931061');
INSERT INTO `practice_detail` VALUES ('4350', '490', '4', '1', '1713868697721', '1713868697721');
INSERT INTO `practice_detail` VALUES ('4351', '490', '16', '1', '1713868697721', '1713868697721');
INSERT INTO `practice_detail` VALUES ('4352', '490', '17', '1', '1713868697721', '1713868697721');
INSERT INTO `practice_detail` VALUES ('4353', '490', '3', '1', '1713868697721', '1713868697721');
INSERT INTO `practice_detail` VALUES ('4354', '490', '78', '1', '1713868697721', '1713868697721');
INSERT INTO `practice_detail` VALUES ('4355', '490', '29', '1', '1713868697721', '1713868697721');
INSERT INTO `practice_detail` VALUES ('4356', '490', '86', '1', '1713868697721', '1713868697721');
INSERT INTO `practice_detail` VALUES ('4357', '490', '77', '1', '1713868697721', '1713868697721');
INSERT INTO `practice_detail` VALUES ('4358', '490', '55', '1', '1713868697721', '1713868697721');
INSERT INTO `practice_detail` VALUES ('4359', '490', '98', '1', '1713868697721', '1713868697721');
INSERT INTO `practice_detail` VALUES ('4360', '491', '23', '1', '1713885300871', '1713885300871');
INSERT INTO `practice_detail` VALUES ('4361', '491', '80', '1', '1713885300871', '1713885300871');
INSERT INTO `practice_detail` VALUES ('4362', '491', '1', '1', '1713885300871', '1713885300871');
INSERT INTO `practice_detail` VALUES ('4363', '491', '24', '1', '1713885300871', '1713885300871');
INSERT INTO `practice_detail` VALUES ('4364', '491', '3', '1', '1713885300871', '1713885300871');
INSERT INTO `practice_detail` VALUES ('4365', '491', '78', '1', '1713885300871', '1713885300871');
INSERT INTO `practice_detail` VALUES ('4366', '491', '4', '1', '1713885300871', '1713885300871');
INSERT INTO `practice_detail` VALUES ('4367', '491', '76', '1', '1713885300871', '1713885300871');
INSERT INTO `practice_detail` VALUES ('4368', '491', '22', '1', '1713885300871', '1713885300871');
INSERT INTO `practice_detail` VALUES ('4369', '491', '75', '1', '1713885300871', '1713885300871');
INSERT INTO `practice_detail` VALUES ('4370', '492', '42', '1', '1713941758118', '1713941758118');
INSERT INTO `practice_detail` VALUES ('4371', '492', '29', '1', '1713941758121', '1713941758121');
INSERT INTO `practice_detail` VALUES ('4372', '492', '54', '1', '1713941758121', '1713941758121');
INSERT INTO `practice_detail` VALUES ('4373', '492', '7', '1', '1713941758121', '1713941758121');
INSERT INTO `practice_detail` VALUES ('4374', '492', '93', '1', '1713941758122', '1713941758122');
INSERT INTO `practice_detail` VALUES ('4375', '492', '15', '1', '1713941758122', '1713941758122');
INSERT INTO `practice_detail` VALUES ('4376', '492', '33', '1', '1713941758122', '1713941758122');
INSERT INTO `practice_detail` VALUES ('4377', '492', '81', '1', '1713941758122', '1713941758122');
INSERT INTO `practice_detail` VALUES ('4378', '492', '10', '1', '1713941758122', '1713941758122');
INSERT INTO `practice_detail` VALUES ('4379', '492', '50', '1', '1713941758122', '1713941758122');
INSERT INTO `practice_detail` VALUES ('4380', '493', '44', '1', '1713941781100', '1713941781100');
INSERT INTO `practice_detail` VALUES ('4381', '493', '39', '1', '1713941781100', '1713941781100');
INSERT INTO `practice_detail` VALUES ('4382', '493', '16', '1', '1713941781100', '1713941781100');
INSERT INTO `practice_detail` VALUES ('4383', '493', '100', '1', '1713941781100', '1713941781100');
INSERT INTO `practice_detail` VALUES ('4384', '493', '66', '1', '1713941781100', '1713941781100');
INSERT INTO `practice_detail` VALUES ('4385', '493', '96', '1', '1713941781100', '1713941781100');
INSERT INTO `practice_detail` VALUES ('4386', '493', '74', '1', '1713941781100', '1713941781100');
INSERT INTO `practice_detail` VALUES ('4387', '493', '62', '1', '1713941781100', '1713941781100');
INSERT INTO `practice_detail` VALUES ('4388', '493', '8', '1', '1713941781100', '1713941781100');
INSERT INTO `practice_detail` VALUES ('4389', '493', '37', '1', '1713941781100', '1713941781100');
INSERT INTO `practice_detail` VALUES ('4390', '494', '1', '1', '1713946566789', '1713946566789');
INSERT INTO `practice_detail` VALUES ('4391', '494', '54', '1', '1713946566790', '1713946566790');
INSERT INTO `practice_detail` VALUES ('4392', '494', '37', '1', '1713946566790', '1713946566790');
INSERT INTO `practice_detail` VALUES ('4393', '494', '80', '1', '1713946566790', '1713946566790');
INSERT INTO `practice_detail` VALUES ('4394', '494', '35', '1', '1713946566790', '1713946566790');
INSERT INTO `practice_detail` VALUES ('4395', '494', '85', '1', '1713946566790', '1713946566790');
INSERT INTO `practice_detail` VALUES ('4396', '494', '32', '1', '1713946566790', '1713946566790');
INSERT INTO `practice_detail` VALUES ('4397', '494', '30', '1', '1713946566790', '1713946566790');
INSERT INTO `practice_detail` VALUES ('4398', '494', '13', '1', '1713946566790', '1713946566790');
INSERT INTO `practice_detail` VALUES ('4399', '494', '28', '1', '1713946566790', '1713946566790');
INSERT INTO `practice_detail` VALUES ('4400', '495', '76', '1', '1714016680604', '1714016680604');
INSERT INTO `practice_detail` VALUES ('4401', '495', '44', '1', '1714016680606', '1714016680606');
INSERT INTO `practice_detail` VALUES ('4402', '495', '36', '1', '1714016680606', '1714016680606');
INSERT INTO `practice_detail` VALUES ('4403', '495', '6', '1', '1714016680606', '1714016680606');
INSERT INTO `practice_detail` VALUES ('4404', '495', '40', '1', '1714016680606', '1714016680606');
INSERT INTO `practice_detail` VALUES ('4405', '495', '61', '1', '1714016680606', '1714016680606');
INSERT INTO `practice_detail` VALUES ('4406', '495', '38', '1', '1714016680606', '1714016680606');
INSERT INTO `practice_detail` VALUES ('4407', '495', '66', '1', '1714016680606', '1714016680606');
INSERT INTO `practice_detail` VALUES ('4408', '495', '72', '1', '1714016680606', '1714016680606');
INSERT INTO `practice_detail` VALUES ('4409', '495', '79', '1', '1714016680606', '1714016680606');
INSERT INTO `practice_detail` VALUES ('4410', '496', '175', '2', '1714051910532', '1714051910532');
INSERT INTO `practice_detail` VALUES ('4411', '496', '144', '2', '1714051910534', '1714051910534');
INSERT INTO `practice_detail` VALUES ('4412', '496', '103', '2', '1714051910534', '1714051910534');
INSERT INTO `practice_detail` VALUES ('4413', '496', '165', '2', '1714051910535', '1714051910535');
INSERT INTO `practice_detail` VALUES ('4414', '496', '114', '2', '1714051910535', '1714051910535');
INSERT INTO `practice_detail` VALUES ('4415', '496', '199', '2', '1714051910535', '1714051910535');
INSERT INTO `practice_detail` VALUES ('4416', '496', '118', '2', '1714051910535', '1714051910535');
INSERT INTO `practice_detail` VALUES ('4417', '496', '124', '2', '1714051910535', '1714051910535');
INSERT INTO `practice_detail` VALUES ('4418', '497', '8', '1', '1714053836239', '1714053836239');
INSERT INTO `practice_detail` VALUES ('4419', '497', '65', '1', '1714053836240', '1714053836240');
INSERT INTO `practice_detail` VALUES ('4420', '497', '95', '1', '1714053836240', '1714053836240');
INSERT INTO `practice_detail` VALUES ('4421', '497', '86', '1', '1714053836240', '1714053836240');
INSERT INTO `practice_detail` VALUES ('4422', '497', '37', '1', '1714053836240', '1714053836240');
INSERT INTO `practice_detail` VALUES ('4423', '497', '51', '1', '1714053836240', '1714053836240');
INSERT INTO `practice_detail` VALUES ('4424', '497', '87', '1', '1714053836240', '1714053836240');
INSERT INTO `practice_detail` VALUES ('4425', '497', '92', '1', '1714053836240', '1714053836240');
INSERT INTO `practice_detail` VALUES ('4426', '497', '59', '1', '1714053836240', '1714053836240');
INSERT INTO `practice_detail` VALUES ('4427', '497', '33', '1', '1714053836240', '1714053836240');
INSERT INTO `practice_detail` VALUES ('4428', '498', '58', '1', '1714054615898', '1714054615898');
INSERT INTO `practice_detail` VALUES ('4429', '498', '57', '1', '1714054615898', '1714054615898');
INSERT INTO `practice_detail` VALUES ('4430', '498', '50', '1', '1714054615898', '1714054615898');
INSERT INTO `practice_detail` VALUES ('4431', '498', '66', '1', '1714054615898', '1714054615898');
INSERT INTO `practice_detail` VALUES ('4432', '498', '55', '1', '1714054615898', '1714054615898');
INSERT INTO `practice_detail` VALUES ('4433', '498', '48', '1', '1714054615898', '1714054615898');
INSERT INTO `practice_detail` VALUES ('4434', '499', '108', '2', '1714061344978', '1714061344978');
INSERT INTO `practice_detail` VALUES ('4435', '499', '151', '2', '1714061344979', '1714061344979');
INSERT INTO `practice_detail` VALUES ('4436', '499', '104', '2', '1714061344979', '1714061344979');
INSERT INTO `practice_detail` VALUES ('4437', '499', '157', '2', '1714061344979', '1714061344979');
INSERT INTO `practice_detail` VALUES ('4438', '499', '170', '2', '1714061344979', '1714061344979');
INSERT INTO `practice_detail` VALUES ('4439', '499', '135', '2', '1714061344979', '1714061344979');
INSERT INTO `practice_detail` VALUES ('4440', '499', '117', '2', '1714061344979', '1714061344979');
INSERT INTO `practice_detail` VALUES ('4441', '499', '178', '2', '1714061344979', '1714061344979');
INSERT INTO `practice_detail` VALUES ('4442', '499', '143', '2', '1714061344979', '1714061344979');
INSERT INTO `practice_detail` VALUES ('4443', '499', '127', '2', '1714061344979', '1714061344979');
INSERT INTO `practice_detail` VALUES ('4444', '500', '3', '1', '1714100517245', '1714100517245');
INSERT INTO `practice_detail` VALUES ('4445', '500', '4', '1', '1714100517246', '1714100517246');
INSERT INTO `practice_detail` VALUES ('4446', '500', '78', '1', '1714100517246', '1714100517246');
INSERT INTO `practice_detail` VALUES ('4447', '500', '1', '1', '1714100517246', '1714100517246');
INSERT INTO `practice_detail` VALUES ('4448', '501', '211', '3', '1714100538410', '1714100538410');
INSERT INTO `practice_detail` VALUES ('4449', '501', '218', '3', '1714100538410', '1714100538410');
INSERT INTO `practice_detail` VALUES ('4450', '501', '217', '3', '1714100538410', '1714100538410');
INSERT INTO `practice_detail` VALUES ('4451', '501', '212', '3', '1714100538410', '1714100538410');
INSERT INTO `practice_detail` VALUES ('4452', '502', '75', '1', '1714101105279', '1714101105279');
INSERT INTO `practice_detail` VALUES ('4453', '502', '50', '1', '1714101105279', '1714101105279');
INSERT INTO `practice_detail` VALUES ('4454', '502', '3', '1', '1714101105279', '1714101105279');
INSERT INTO `practice_detail` VALUES ('4455', '502', '27', '1', '1714101105279', '1714101105279');
INSERT INTO `practice_detail` VALUES ('4456', '502', '87', '1', '1714101105279', '1714101105279');
INSERT INTO `practice_detail` VALUES ('4457', '502', '38', '1', '1714101105279', '1714101105279');
INSERT INTO `practice_detail` VALUES ('4458', '502', '67', '1', '1714101105280', '1714101105280');
INSERT INTO `practice_detail` VALUES ('4459', '502', '53', '1', '1714101105280', '1714101105280');
INSERT INTO `practice_detail` VALUES ('4460', '502', '69', '1', '1714101105280', '1714101105280');
INSERT INTO `practice_detail` VALUES ('4461', '502', '70', '1', '1714101105280', '1714101105280');
INSERT INTO `practice_detail` VALUES ('4462', '503', '3', '1', '1714101351338', '1714101351338');
INSERT INTO `practice_detail` VALUES ('4463', '503', '24', '1', '1714101351338', '1714101351338');
INSERT INTO `practice_detail` VALUES ('4464', '503', '23', '1', '1714101351338', '1714101351338');
INSERT INTO `practice_detail` VALUES ('4465', '503', '80', '1', '1714101351338', '1714101351338');
INSERT INTO `practice_detail` VALUES ('4466', '503', '22', '1', '1714101351338', '1714101351338');
INSERT INTO `practice_detail` VALUES ('4467', '503', '77', '1', '1714101351338', '1714101351338');
INSERT INTO `practice_detail` VALUES ('4468', '503', '76', '1', '1714101351338', '1714101351338');
INSERT INTO `practice_detail` VALUES ('4469', '503', '78', '1', '1714101351338', '1714101351338');
INSERT INTO `practice_detail` VALUES ('4470', '503', '4', '1', '1714101351338', '1714101351338');
INSERT INTO `practice_detail` VALUES ('4471', '503', '1', '1', '1714101351338', '1714101351338');
INSERT INTO `practice_detail` VALUES ('4472', '504', '14', '1', '1714103300695', '1714103300695');
INSERT INTO `practice_detail` VALUES ('4473', '504', '17', '1', '1714103300695', '1714103300695');
INSERT INTO `practice_detail` VALUES ('4474', '504', '27', '1', '1714103300696', '1714103300696');
INSERT INTO `practice_detail` VALUES ('4475', '504', '13', '1', '1714103300696', '1714103300696');
INSERT INTO `practice_detail` VALUES ('4476', '504', '16', '1', '1714103300696', '1714103300696');
INSERT INTO `practice_detail` VALUES ('4477', '504', '18', '1', '1714103300696', '1714103300696');

-- ----------------------------
-- Table structure for practice_info
-- ----------------------------
DROP TABLE IF EXISTS `practice_info`;
CREATE TABLE `practice_info` (
  `practice_info_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '名称',
  `student_id` bigint DEFAULT NULL COMMENT '学生id',
  `score` decimal(10,2) NOT NULL COMMENT '总分值',
  `expire_time` bigint NOT NULL COMMENT '到期时间',
  `create_time` bigint NOT NULL COMMENT '创建时间',
  `update_time` bigint NOT NULL COMMENT '修改时间',
  `accuracy` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`practice_info_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=505 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT COMMENT='练习题表';

-- ----------------------------
-- Records of practice_info
-- ----------------------------
INSERT INTO `practice_info` VALUES ('478', '按模块推荐练习题	选择题	2024-04-23 12-42', null, '10.00', '1713805968225', '1713804167987', '1713804167987', null);
INSERT INTO `practice_info` VALUES ('479', '按模块推荐练习题	判断题	2024-04-23 12-42', null, '10.00', '1713805972063', '1713804172063', '1713804172063', null);
INSERT INTO `practice_info` VALUES ('480', '按模块推荐练习题	简答题	2024-04-23 12-42', null, '1.00', '1713805976536', '1713804176536', '1713804176536', null);
INSERT INTO `practice_info` VALUES ('481', '按模块推荐练习题	选择题	2024-04-23 12-42', null, '6.00', '1713805978875', '1713804178875', '1713804178875', null);
INSERT INTO `practice_info` VALUES ('482', '按模块推荐练习题	判断题	2024-04-23 12-43', null, '8.00', '1713805980409', '1713804180409', '1713804180409', null);
INSERT INTO `practice_info` VALUES ('483', '按模块推荐练习题	计算题	2024-04-23 12-43', null, '1.00', '1713805981637', '1713804181637', '1713804181637', null);
INSERT INTO `practice_info` VALUES ('484', '按模块知识点推荐练习题	选择题	2024-04-23 12-47', null, '4.00', '1713806254264', '1713804454264', '1713804454264', null);
INSERT INTO `practice_info` VALUES ('485', '按模块知识点推荐练习题	选择题	2024-04-23 06-24', null, '4.00', '1713869693443', '1713867893286', '1713867902398', '1.00');
INSERT INTO `practice_info` VALUES ('486', '按模块知识点推荐练习题	选择题	2024-04-23 06-25', null, '1.00', '1713869705773', '1713867905773', '1713867907072', '0.00');
INSERT INTO `practice_info` VALUES ('487', '按模块知识点推荐练习题	选择题	2024-04-23 06-25', null, '1.00', '1713869713107', '1713867913107', '1713867915325', '1.00');
INSERT INTO `practice_info` VALUES ('488', '按模块知识点推荐练习题	判断题	2024-04-23 06-25', null, '1.00', '1713869718077', '1713867918077', '1713867920175', '0.00');
INSERT INTO `practice_info` VALUES ('489', '按模块知识点推荐练习题	选择题	2024-04-23 06-25', null, '3.00', '1713869731061', '1713867931061', '1713867934206', '0.00');
INSERT INTO `practice_info` VALUES ('490', '系统推荐练习	选择题	2024-04-23 06-38', null, '10.00', '1713870497721', '1713868697721', '1713868718118', '1.00');
INSERT INTO `practice_info` VALUES ('491', '按模块推荐练习题	选择题	2024-04-23 11-15', null, '10.00', '1713887100871', '1713885300871', '1713885319653', '1.00');
INSERT INTO `practice_info` VALUES ('492', '系统推荐练习	选择题	2024-04-24 02-55', null, '10.00', '1713943558117', '1713941758115', '1713941775440', '0.00');
INSERT INTO `practice_info` VALUES ('493', '系统推荐练习	选择题	2024-04-24 02-56', null, '10.00', '1713943581100', '1713941781100', '1713941781100', null);
INSERT INTO `practice_info` VALUES ('494', '系统推荐练习	选择题	2024-04-24 04-16', null, '10.00', '1713948366789', '1713946566787', '1713946599530', '0.00');
INSERT INTO `practice_info` VALUES ('495', '系统推荐练习	选择题	2024-04-25 11-44', null, '10.00', '1714018480604', '1714016680603', '1714016746676', '0.00');
INSERT INTO `practice_info` VALUES ('496', '按模块推荐练习题	判断题	2024-04-25 09-31', null, '8.00', '1714053710532', '1714051910465', '1714051923379', '0.00');
INSERT INTO `practice_info` VALUES ('497', '按模块推荐练习题	选择题	2024-04-25 10-03', null, '10.00', '1714055636239', '1714053836239', '1714053847927', '0.00');
INSERT INTO `practice_info` VALUES ('498', '按模块推荐练习题	选择题	2024-04-25 10-16', null, '6.00', '1714056415898', '1714054615898', '1714054621996', '0.33');
INSERT INTO `practice_info` VALUES ('499', '随机练习	判断题	2024-04-26 12-09', '1', '10.00', '1714063144978', '1714061344978', '1714061353938', '0.30');
INSERT INTO `practice_info` VALUES ('500', '按模块知识点推荐练习题	选择题	2024-04-26 11-01', '1', '4.00', '1714102317244', '1714100517235', '1714100527152', '0.75');
INSERT INTO `practice_info` VALUES ('501', '按模块知识点推荐练习题	计算题	2024-04-26 11-02', '1', '4.00', '1714102338410', '1714100538410', '1714100538410', null);
INSERT INTO `practice_info` VALUES ('502', '系统推荐练习	选择题	2024-04-26 11-11', '1', '10.00', '1714102905279', '1714101105279', '1714101122366', '0.60');
INSERT INTO `practice_info` VALUES ('503', '按模块推荐练习题	选择题	2024-04-26 11-15', '1', '10.00', '1714103151338', '1714101351338', '1714101365159', '0.60');
INSERT INTO `practice_info` VALUES ('504', '按模块推荐练习题	选择题	2024-04-26 11-48', '1', '6.00', '1714105100695', '1714103300694', '1714103306694', '0.33');

-- ----------------------------
-- Table structure for practice_record
-- ----------------------------
DROP TABLE IF EXISTS `practice_record`;
CREATE TABLE `practice_record` (
  `parctice_id` int NOT NULL AUTO_INCREMENT,
  `practice_detail_id` int NOT NULL COMMENT '练习试卷详情id',
  `student_id` int NOT NULL COMMENT '学生id',
  `accuracy` decimal(10,2) DEFAULT NULL COMMENT '正确率',
  `practice_time` bigint NOT NULL COMMENT '答题时间',
  `status` tinyint DEFAULT NULL COMMENT '状态：1-已完成, 0-未完成',
  PRIMARY KEY (`parctice_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT COMMENT='练习记录题';

-- ----------------------------
-- Records of practice_record
-- ----------------------------

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `question_id` bigint NOT NULL AUTO_INCREMENT,
  `question_type_id` int NOT NULL COMMENT '题型id',
  `module_id` bigint DEFAULT NULL COMMENT '模块id',
  `kps_id` bigint NOT NULL COMMENT '知识点',
  `question` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '题干',
  `question_key` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '参考答案',
  `difficulty` int DEFAULT NULL COMMENT '难易程度',
  `analysis` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT '解析',
  `score` decimal(10,2) DEFAULT NULL COMMENT '分值',
  `create_time` bigint NOT NULL COMMENT '创建时间',
  `update_time` bigint NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`question_id`) USING BTREE,
  KEY `Idex_query` (`question_type_id`,`module_id`,`kps_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=282 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT COMMENT='题目表';

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '1', '1', '1', 0xE8AEA1E7AE97E69CBAE8AFADE8A880E69C89E8AEB8E5A49AE7A78DEFBC8CE585B6E4B8ADE4B88EE7A1ACE4BBB6E79BB4E68EA5E79BB8E585B3E79A84E698AFEFBC8820202020EFBC89, 0xE69CBAE599A8E8AFADE8A880, null, '', '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('2', '1', '3', '10', 0x38E4BD8DE5AE9AE782B9E58E9FE7A081E695B4E695B0313031303030313142E79A84E79C9FE580BCE4B8BAEFBC8820202020EFBC89, 0xEFBC8D3031303030313142, null, '', '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('3', '1', '1', '1', 0x31393436E5B9B4E7A094E588B6E68890E58A9FE79A84E7ACACE4B880E58FB0E794B5E5AD90E695B0E5AD97E8AEA1E7AE97E69CBAE7A7B0E4B8BAEFBC8820202020EFBC89, 0x454E494143, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('4', '1', '1', '1', 0xE8AEA1E7AE97E69CBAE7BB8FE58E86E4BA86E4BB8EE599A8E4BBB6E8A792E5BAA6E58892E58886E79A84E59B9BE4BBA3E58F91E5B195E58E86E7A88BEFBC8CE4BD86E4BB8EE7B3BBE7BB9FE7BB93E69E84E69DA5E79C8BEFBC8CE887B3E4BB8AE4B8BAE6ADA2E7BB9DE5A4A7E5A49AE695B0E8AEA1E7AE97E69CBAE4BB8DE698AFEFBC8820202020EFBC89E5BC8FE8AEA1E7AE97E69CBA, 0xE586AFE280A2E8AFBAE4BE9DE69BBC, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('5', '1', '3', '10', 0xE88BA558E8A1A53D302E31313031303130EFBC8CE58899E585B658E58E9F3DEFBC8820202020EFBC89, 0x302E31313031303130, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('6', '1', '3', '9', 0xE88BA558E79A84E79C9FE580BCE698AF302E31303031313142EFBC8CE58899E585B6E8A1A5E7A081E5BDA2E5BC8FE79A84E58D81E585ADE8BF9BE588B6E695B0E8A1A8E7A4BAE4B8BAEFBC8820202020EFBC89, 0x344548, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('7', '1', '3', '10', 0xE59CA8E5BA95E695B0E4B8BA32E79A84E6B5AEE782B9E695B0E4B8ADEFBC8CE4B8BAE4BA86E4BF9DE68C81E695B0E580BCE4B88DE58F98EFBC8CE5B0BEE695B0E58FB3E7A7BB33E4BD8DEFBC8CE998B6E7A081E8A681EFBC8820202020EFBC89, 0xE58AA033, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('8', '1', '5', '21', 0xE59CA8E68C87E4BBA4E2809C414444204052EFBC8C204164E2809DE4B8ADEFBC8CE6BA90E6938DE4BD9CE695B0E59CA8E5898DEFBC8CE79BAEE79A84E6938DE4BD9CE695B0E59CA8E5908EEFBC8CE8AFA5E68C87E4BBA4E689A7E8A18CE79A84E6938DE4BD9CE698AFEFBC8820202020EFBC89, 0xEFBC88EFBC8852EFBC89EFBC892BEFBC884164EFBC892D2D3E4164, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('9', '1', '3', '9', 0xE88BA5E58D81E8BF9BE588B6E695B0E4B8BA313332EFBC8E3735EFBC8CE58899E585B6E58D81E585ADE8BF9BE588B6E695B0E4B8BAEFBC8820202020EFBC89, 0x38342E43, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('10', '1', '3', '10', 0xE88BA558E58E9F3D302E31313031303130EFBC8CE5889958E8A1A53DEFBC8820202020EFBC89, 0x302E31313031303130, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('11', '1', '3', '9', 0xE88BA558E79A84E79C9FE580BCE698AFEFBC8D302E31303031313142EFBC8CE58899E585B6E8A1A5E7A081E5BDA2E5BC8FE79A84E58D81E585ADE8BF9BE588B6E695B0E8A1A8E7A4BAE4B8BAEFBC8820202020EFBC89, 0x423248, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('12', '1', '3', '10', 0xE59CA8E6B5AEE782B9E58AA0E5878FE8BF90E7AE97E697B6EFBC8CE88BA5E5B0BEE695B0E6B182E5928CE5908EE7BB93E69E9CE6BAA2E587BAEFBC8CE982A3E4B988E68EA5E4B88BE69DA5E79A84E8BF90E7AE97E698AFEFBC8820202020EFBC89, 0xE58FB3E8A784E6A0BCE58C96, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('13', '1', '2', '8', 0xE4B88BE58897E58F99E8BFB0E4B8ADEFBC8820202020EFBC89E4B88DE698AFE58FAAE8AFBBE5AD98E582A8E599A8EFBC88524F4DEFBC89E79A84E4BC98E782B9, 0xE58FAAE98082E794A8E4BA8EE5AD98E582A8E982A3E4BA9BE59BBAE5AE9AE695B0E68DAEE79A84E59CBAE59088EFBC9B, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('14', '1', '2', '6', 0xE58E9FE7A081E4B998E6B395E698AFEFBC882020202020EFBC89, 0xE58588E58F96E6938DE4BD9CE695B0E7BB9DE5AFB9E580BCE79BB8E4B998EFBC8CE7ACA6E58FB7E4BD8DE58D95E78BACE5A484E79086, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('15', '1', '5', '21', 0xE5BEAEE7A88BE5BA8FE68EA7E588B6E599A8E4B8ADEFBC8CE69CBAE599A8E68C87E4BBA4E4B88EE5BEAEE68C87E4BBA4E79A84E585B3E7B3BBE698AFEFBC8820202020EFBC89, 0xE6AF8FE4B880E69DA1E69CBAE599A8E68C87E4BBA4E794B1E4B880E6AEB5E794A8E5BEAEE68C87E4BBA4E7BC96E68890E79A84E5BEAEE7A88BE5BA8FE69DA5E8A7A3E9878AE689A7E8A18C, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('16', '1', '2', '7', 0xE9809AE5B8B8E68385E586B5E4B88BEFBC8CE4B88BE58897EFBC8820202020EFBC89E983A8E4BBB6E4B88DE58C85E68BACE59CA8E4B8ADE5A4AEE5A484E79086E599A8435055E88AAFE78987E4B8AD, 0x4452414D, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('17', '1', '2', '7', 0xE99C80E8A681E5AE9AE697B6E588B7E696B0E79A84E58D8AE5AFBCE4BD93E5AD98E582A8E599A8E88AAFE78987E698AFEFBC8820202020EFBC89, 0x4452414D, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('18', '1', '2', '8', 0xE4B88BE58897E59084E69DA1E4B8ADEFBC8CE4B88DE5B19EE4BA8EE5BEAEE68C87E4BBA4E7BB93E69E84E8AEBEE8AEA1E68980E8BFBDE6B182E79A84E79BAEE6A087E698AFEFBC8820202020EFBC89, 0xE5A29EE5A4A7E68EA7E588B6E5AD98E582A8E599A8E79A84E5AEB9E9878F, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('19', '1', '3', '10', 0xE4B88BE58897E5BA95E695B0E4B8BA32E79A84E6B5AEE782B9E695B0E8A1A8E7A4BAE4B8ADEFBC8CE5B0BEE695B0E698AFE58E9FE7A081E8A1A8E7A4BAEFBC8CE982A3E4B988E7ACA6E59088E8A784E6A0BCE58C96E8A681E6B182E79A84E698AFEFBC8820202020EFBC89, 0x312E31313030313130C397325E34, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('20', '1', '3', '10', 0xE6B5AEE782B9E58AA0E5878FE4B8ADE79A84E5AFB9E998B6EFBC8820202020EFBC89, 0xE5B086E8BE83E5B08FE79A84E4B880E4B8AAE998B6E7A081E8B083E695B4E588B0E4B88EE8BE83E5A4A7E79A84E4B880E4B8AAE998B6E7A081E79BB8E5908C, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('21', '1', '4', '15', 0xE58685E983A8E680BBE7BABFE698AFE794A8E69DA5E8BF9EE68EA5EFBC8820202020EFBC89, 0x435055E58685E983A8E59084E983A8E4BBB6, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('22', '1', '1', '3', 0xE98787E794A8E79BB4E68EA5E5AFBBE59D80E696B9E5BC8FEFBC8CE58899E68C87E4BBA4E4B8ADE79A84E59CB0E59D80E7A081E698AFEFBC8820202020EFBC89, 0xE6938DE4BD9CE695B0E79A84E69C89E69588E59CB0E59D80, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('23', '1', '1', '3', 0xE4B88BE58897E5AD98E582A8E599A8E4B8ADEFBC8CEFBC8820202020EFBC89E9809FE5BAA6E69C80E5BFAB, 0xE58D8AE5AFBCE4BD93E5AD98E582A8E599A8, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('24', '1', '1', '3', 0xE680BBE7BABFE79A84E695B0E68DAEE9809AE8B7AFE5AEBDE5BAA6E698AFE68C87EFBC8820202020EFBC89, 0xE883BDE4B880E6ACA1E5B9B6E8A18CE4BCA0E98081E79A84E695B0E68DAEE4BD8DE695B0, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('25', '1', '3', '9', 0xE88BA5E58D81E585ADE8BF9BE588B6E695B0E4B8BA41332E35EFBC8CE58899E585B6E58D81E8BF9BE588B6E695B0E4B8BAEFBC8820202020EFBC89, 0x3136332E33313235, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('26', '1', '3', '9', 0xE59CA838343231E7A081E8A1A8E7A4BAE79A84E4BA8CE28094E58D81E8BF9BE588B6E695B0E4B8ADEFBC8CE4BBA3E7A08131303031E8A1A8E7A4BAEFBC8820202020EFBC89, 0x39, '2', '', '1.00', '1711418060730', '1713024882529');
INSERT INTO `question` VALUES ('27', '1', '2', '7', 0xE9809AE794A8E5AF84E5AD98E599A8EFBC8820202020EFBC89, 0xE58FAFE4BBA5E5AD98E694BEE695B0E68DAEE5928CE59CB0E59D80, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('28', '1', '3', '9', 0xE88BA558E79A84E79C9FE580BCE698AF302E31303031313142EFBC8CE58899E585B6E585ABE4BD8DE4BA8CE8BF9BE588B6E5AE9AE782B9E5B08FE695B0E79A84E8A1A5E7A081E5BDA2E5BC8FE79A84E58D81E585ADE8BF9BE588B6E695B0E8A1A8E7A4BAE4B8BAEFBC8820202020EFBC89, 0x344548, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('29', '1', '3', '10', 0xE69F90E5AE9AE782B9E695B4E695B038E4BD8DEFBC8CE590ABE4B880E4BD8DE7ACA6E58FB7E4BD8DEFBC8CE58E9FE7A081E8A1A8E7A4BAEFBC8CE58899E585B6E7BB9DE5AFB9E580BCE69C80E5A4A7E8B49FE695B0E4B8BAEFBC8820202020EFBC89, 0x2DEFBC88325E372D31EFBC89, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('30', '1', '4', '19', 0xE5A49AE4BD93E4BAA4E58F89E7BC96E59D80E696B9E5BC8FEFBC88E8AEBEE4B8BA34E4BD93EFBC89E4B8ADE59CB0E59D80E5BA8FE58FB7E7BC96E68E92E8A784E58899E698AFEFBC8820202020EFBC89, 0xE8BF9EE7BBADE79A84E4B8A4E4B8AAE5AD98E582A8E58D95E58583E58886E5B883E59CA8E79BB8E982BBE4B8A4E4B8AAE5AD98E582A8E58886E4BD93E4B8AD, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('31', '1', '3', '10', 0xE4B88BE6BAA2E68C87E79A84E698AFEFBC8820202020EFBC89, 0xE8BF90E7AE97E7BB93E69E9CE5B08FE4BA8EE69CBAE599A8E68980E883BDE8A1A8E7A4BAE79A84E69C80E5B08FE8B49FE695B0, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('32', '1', '6', '29', 0xE79BB8E5AFB9E4BA8EE5BEAEE7A88BE5BA8FE68EA7E588B6E599A8EFBC8CE7A1ACE5B883E7BABFE68EA7E588B6E599A8E79A84E789B9E782B9E698AFEFBC8820202020EFBC89, 0xE68C87E4BBA4E689A7E8A18CE9809FE5BAA6E5BFABEFBC8CE68C87E4BBA4E58A9FE883BDE79A84E4BFAEE694B9E5928CE689A9E5B195E99ABE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('33', '1', '5', '22', 0xE5A682E69E9CE69F90E68C87E4BBA4E79A84E59CB0E59D80E7A081E4B8ADE7BB99E587BAE79A84E698AFE5AF84E5AD98E599A8E7BC96E58FB7EFBC8CE88BA5E8AFA5E5AF84E5AD98E599A8E79A84E58685E5AEB9E68C87E6988EE4BA86E6938DE4BD9CE695B0E79A84E59CB0E59D80EFBC8CE58899E8BF99E7A78DE68C87E4BBA4E79A84E5AFBBE59D80E696B9E5BC8FE698AFEFBC8820202020EFBC89, 0xE5AF84E5AD98E599A8E997B4E68EA5E5AFBBE59D80E696B9E5BC8F, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('34', '1', '5', '24', 0xE4B88BE58897E587A0E9A1B9E4B8ADEFBC8CE4B88DE7ACA6E5908852495343E68C87E4BBA4E7B3BBE7BB9FE79A84E789B9E782B9E698AF, 0xE68C87E4BBA4E58A9FE883BDE5B0BDE58FAFE883BDE5BCBA, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('35', '1', '5', '21', 0xE8BE93E585A52FE8BE93E587BAE68C87E4BBA4E79A84E58A9FE883BDE698AFEFBC8820202020EFBC89, 0xE59CA8435055E5928C492F4FE7ABAFE58FA3E4B98BE997B4E8BF9BE8A18CE695B0E68DAEE4BCA0E98081, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('36', '1', '4', '15', 0xE4B88BE99DA2E69C89E585B3E58D8AE5AFBCE4BD93E5AD98E582A8E599A8E79A84E58F99E8BFB0E4B8ADEFBC8CE99499E8AFAFE79A84E698AFEFBC8820202020EFBC89, 0x524F4DE88AAFE78987E5B19EE4BA8EE58D8AE5AFBCE4BD93E99A8FE69CBAE5AD98E582A8E599A8E88AAFE78987, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('37', '1', '5', '21', 0xE4B88BE58897E68C87E4BBA4E4B8ADEFBC8CE58FAFE694B9E58F98E7A88BE5BA8FE689A7E8A18CE9A1BAE5BA8FE79A84E68C87E4BBA4E698AFEFBC8820202020EFBC89, 0xE5AD90E7A88BE5BA8FE8B083E794A8E68C87E4BBA4, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('38', '1', '4', '17', 0xE58AA8E6808152414DE79A84E789B9E782B9E698AFEFBC8820202020EFBC89, 0xE6AF8FE99A94E4B880E5AE9AE697B6E997B4E588B7E696B0E4B880E9818D, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('39', '1', '4', '15', 0xE4B88BE99DA2E585B3E4BA8EE4B8BBE5AD98E582A8E599A8E5928CE8BE85E58AA9E5AD98E582A8E599A8E79A84E68F8FE8BFB0E6ADA3E7A1AEE79A84E698AFEFBC8820202020EFBC89, 0xE4B8BBE5AD98E582A8E599A8E5AD98E694BEE8AEA1E7AE97E69CBAE8BF90E8A18CE69C9FE997B4E79A84E5A4A7E9878FE7A88BE5BA8FE5928CE695B0E68DAEEFBC9B, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('40', '1', '4', '15', 0xE59CA8E5A49AE7BAA7E5AD98E582A8E4BD93E7B3BBE4B8ADEFBC8CE2809C6361636865E28094E28094E4B8BBE5AD98E2809DE7BB93E69E84E79A84E4BD9CE794A8E698AFE8A7A3E586B3EFBC8820202020EFBC89E79A84E997AEE9A298, 0xE4B8BBE5AD98E4B88E435055E9809FE5BAA6E4B88DE58CB9E9858D, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('41', '1', '4', '15', 0xE585B3E4BA8EE8999AE68B9FE5AD98E582A8E599A8EFBC8CE4BBA5E4B88BE58F99E8BFB0E4B8ADE6ADA3E7A1AEE79A84E698AFEFBC8820202020EFBC89, 0xE8999AE68B9FE5AD98E582A8E599A8E6AF8FE6ACA1E8AEBFE997AEE4B8BBE5AD98E697B6EFBC8CE5BF85E9A1BBE8BF9BE8A18CE8999AE5AE9EE59CB0E59D80E79A84E58F98E68DA2, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('42', '1', '4', '15', 0xE794A8E5AD98E582A8E5AEB9E9878FE4B8BA31364BC39731E4BD8DE79A84E5AD98E582A8E599A8E88AAFE78987E7BB84E68890E4B880E4B8AA36344BC39738E4BD8DE79A84E5AD98E582A8E599A8EFBC8CE58899E59CA8E5AD97E696B9E59091E5928CE4BD8DE696B9E59091E4B88AE58886E588ABE689A9E5B195E4BA86EFBC8820202020EFBC89E5808D, 0x34E5928C38, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('43', '1', '4', '15', 0xE58F98E59D80E5AFBBE59D80E79A84E4B8BBE8A681E4BD9CE794A8E698AFEFBC8820202020EFBC89, 0xE694AFE68C81E59091E9878FE38081E695B0E7BB84E79A84E8BF90E7AE97E5AFBBE59D80, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('44', '1', '4', '15', 0xE79BB8E88194E5AD98E582A8E599A8E698AFE68C89E785A7EFBC8820202020EFBC89E8BF9BE8A18CE5AFBBE59D80E696B9E5BC8FE8AEBFE997AEE79A84E5AD98E582A8E599A8, 0xE58685E5AEB9E68C87E5AE9AE696B9E5BC8F, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('45', '1', '4', '15', 0xE59CA8E5AD98E582A8E599A8E58886E5B182E4BD93E7B3BBE7BB93E69E84E4B8ADEFBC8CE5AD98E582A8E599A8E4BB8EE5AEB9E9878FE69C80E5A4A7E588B0E69C80E5B08FE79A84E68E92E58897E9A1BAE5BA8FE698AFEFBC8820202020EFBC89, 0xE8BE85E5AD98E28094E4B8BBE5AD98E280946361636865E28094E5AF84E5AD98E599A8, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('46', '1', '4', '15', 0xE59CA8E4B8BBE5AD98E5928C435055E4B98BE997B4E5A29EE58AA06361636865E79A84E79BAEE79A84E698AFEFBC8820202020EFBC89, 0xE58AA0E5BFABE4BFA1E681AFE8AEBFE997AEE9809FE5BAA6, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('47', '1', '4', '15', 0xE4BBA5E4B88BE58897E585B3E4BA8EE5AD98E582A8E599A8E79A84E58F99E8BFB0E4B8ADEFBC8CE6ADA3E7A1AEE79A84E698AFEFBC8820202020EFBC89, 0x6361636865E79A84E58A9FE883BDE585A8E794B1E7A1ACE4BBB6E5AE8CE68890, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('48', '1', '10', '48', 0xE59CA8E5A49AE9878DE4B8ADE696ADE68385E586B5E4B88BEFBC8C435055E78EB0E59CBAE4BFA1E681AFE58FAFE4BF9DE5AD98E588B0EFBC8820202020EFBC89, 0xE5A086E6A088, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('49', '1', '4', '15', 0xE8999AE68B9FE5AD98E582A8E599A8E4B8BBE8A681E794B1EFBC8820202020EFBC89E7BB84E68890, 0xE7A381E79B98E58CBAE59F9FE4B88EE4B8BBE5AD98, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('50', '1', '10', '48', 0xE4B8ADE696ADE7B3BBE7BB9FE698AFE794B1EFBC8820202020EFBC89E5AE9EE78EB0E79A84, 0xE8BDAFE7A1ACE4BBB6E7BB93E59088, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('51', '1', '5', '21', 0xE4B88BE99DA2E585B3E4BA8EE68C87E4BBA4E6B581E6B0B4E7BABFE79A84E58F99E8BFB0E4B8ADEFBC8CE99499E8AFAFE79A84E698AFEFBC8820202020EFBC89, 0xE98787E794A8E68C87E4BBA4E6B581E6B0B4E7BABFEFBC8CE4BDBFE5BE97E4B880E69DA1E68C87E4BBA4E689A7E8A18CE79A84E8BF87E7A88BE58F98E79FAD, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('52', '1', '4', '15', 0xE8999AE68B9FE5AD98E582A8E599A8E7AEA1E79086E7B3BBE7BB9FE79A84E59FBAE7A180E698AFE7A88BE5BA8FE79A84E5B180E983A8E680A7E58E9FE79086EFBC8CE59BA0E6ADA4E8999AE5AD98E79A84E79BAEE79A84E698AFE4B8BAE4BA86E7BB99E6AF8FE4B8AAE794A8E688B7E68F90E4BE9BE6AF94E4B8BBE5AD98E5AEB9E9878FEFBC8820202020EFBC89E7BC96E7A88BE7A9BAE997B4, 0xE5A4A7E5BE97E5A49AE79A84E980BBE8BE91, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('53', '1', '7', '33', 0xE58685E5AD98E79A84E6AEB5E5BC8FE5AD98E582A8E7AEA1E79086E69C89E8AEB8E5A49AE4BC98E782B9E38082E4B88BE99DA2E68F8FE8BFB0E4B8ADEFBC8CEFBC8820202020EFBC89E4B88DE698AFE6AEB5E5BC8FE5AD98E582A8E7AEA1E79086E79A84E4BC98E782B9, 0xE59CB0E59D80E58F98E68DA2E9809FE5BAA6E5BFABE38081E58685E5AD98E7A28EE78987EFBC88E99BB6E5A4B4EFBC89E5B08F, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('54', '1', '4', '15', 0xE4BBA5E4B88BE58F99E8BFB0E6ADA3E7A1AEE79A84E698AFEFBC8820202020EFBC89, 0xE8BE85E5AD98E4B8ADE79A84E7A88BE5BA8FE8B083E585A5E4B8BBE5AD98E5908EE6898DE883BDE8BF90E8A18C, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('55', '1', '10', '48', 0xE4B8BAE4BA86E4BEBFE4BA8EE5AE9EE78EB0E5A49AE7BAA7E4B8ADE696ADEFBC8CE4BF9DE5AD98E78EB0E59CBAE4BFA1E681AFE69C80E69C89E69588E79A84E58A9EE6B395E698AFE98787E794A8EFBC8820202020EFBC89, 0xE5A086E6A088, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('56', '1', '6', '25', 0xE59CA8E4B88BE99DA2E587A0E7A78DE695B0E68DAEE4BCA0E98081E79A84E68EA7E588B6E696B9E5BC8FE4B8ADEFBC8CE4B88DE883BDE5AE9EE78EB0435055E5928CE8BE93E585A5E8BE93E587BAE8AEBEE5A487E5B9B6E8A18CE5B7A5E4BD9CE79A84E698AFEFBC8820202020EFBC89, 0xE7A88BE5BA8FE79BB4E68EA5E68EA7E588B6E696B9E5BC8F, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('57', '1', '10', '48', 0xE4BBA5E4B88BE58F99E8BFB0E4B8ADE6ADA3E7A1AEE79A84E698AFEFBC8820202020EFBC89, 0xE4B8ADE696ADE696B9E5BC8FE4B880E888ACE794A8E4BA8EE5A484E79086E99A8FE69CBAE587BAE78EB0E79A84E69C8DE58AA1E8AFB7E6B182, null, null, '1.00', '11711418060730', '1711418060730');
INSERT INTO `question` VALUES ('58', '1', '10', '48', 0xE59CA8E4B8ADE696ADE5A484E79086E8BF87E7A88BE4B8ADEFBC8CE9809AE5B8B8E794A8E69DA5E4BF9DE5AD98E696ADE782B9E58F8AE78EB0E59CBAE4BFA1E681AFE79A84E698AFEFBC8820202020EFBC89, 0xE5A086E6A088, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('59', '1', '5', '21', 0xE4BB8EE4B880E69DA1E68C87E4BBA4E79A84E590AFE58AA8E588B0E4B88BE4B880E69DA1E68C87E4BBA4E79A84E590AFE58AA8E79A84E997B4E99A94E697B6E997B4E7A7B0E4B8BAEFBC8820202020EFBC89, 0xE68C87E4BBA4E591A8E69C9F, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('60', '1', '3', '10', 0xE4B8A4E4B8AAE98787E794A8E58F98E59E8BE8A1A5E7A081E8A1A8E7A4BAE79A84E695B0E8BF9BE8A18CE58AA0E5878FE8BF90E7AE97E697B6EFBC8CE58F91E7949FE8B49FE6BAA2E587BAE79A84E789B9E5BE81E698AFE58F8CE7ACA6E58FB7E4BD8DE4B8BAEFBC8820202020EFBC89, 0x3130, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('61', '1', '6', '25', 0xE8BF90E7AE97E599A8E794B1EFBC8820202020EFBC89E7AD89E983A8E4BBB6E7BB84E68890, 0x414C55E38081E7B4AFE58AA0E599A8E4B88EE9809AE794A8E5AF84E5AD98E599A8, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('62', '1', '6', '25', 0xE5A496E983A8E680BBE7BABFE698AFE794A8E69DA5E8BF9EE68EA5EFBC8820202020EFBC89, 0x435055E4B88EE5AD98E582A8E599A8E38081492F4FE7B3BBE7BB9FE4B98BE997B4E79A84E8BF9EE7BABF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('63', '1', '3', '10', 0xE98787E794A8E58F98E5BDA2E7A081E6938DE4BD9CE6A380E6B58BE696B9E6B395E588A4E6BAA2E697B6EFBC8CE8B49FE6BAA2E587BAE697B6E7ACA6E58FB7E4BD8DE4B8BAEFBC8820202020EFBC89, 0x3130, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('64', '1', '3', '10', 0xE59CA8E6AF8FE4B8AAE6938DE4BD9CE695B0E983BDE98787E794A8E4B8A4E4B8AAE7ACA6E58FB7E4BD8DE79A84E8A1A5E7A081E58AA0E5878FE6B395E8BF90E7AE97E4B8ADEFBC8CE88BA5E8BF90E7AE97E7BB93E69E9CE79A84E4B8A4E4B8AAE7ACA6E58FB7E4BD8DE79A84E4BBA3E7A081E4B88DE4B880E887B4EFBC8CE982A3E4B988E5B0B1E8A1A8E7A4BAEFBC8820202020EFBC89, 0xE8BF90E7AE97E7BB93E69E9CE58F91E7949FE6BAA2E587BA, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('65', '1', '5', '22', 0xE98787E794A8E997B4E68EA5E5AFBBE59D80E696B9E5BC8FEFBC8CE58899E68C87E4BBA4E4B8ADE79A84E59CB0E59D80E7A081E698AFEFBC8820202020EFBC89, 0xE6938DE4BD9CE695B0E79A84E997B4E68EA5E59CB0E59D80, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('66', '1', '10', '47', 0xE4BBA5E4B88B492F4FE68EA7E588B6E696B9E5BC8FE4B8ADEFBC8CE4B8BBE8A681E794B1E7A1ACE4BBB6E8808CE4B88DE698AFE8BDAFE4BBB6E5AE9EE78EB0E695B0E68DAEE4BCA0E98081E79A84E696B9E5BC8FE698AFEFBC8820202020EFBC89, 0x444D41E696B9E5BC8F, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('67', '1', '6', '26', 0xE4BBA5E4B88BE585B3E4BA8E444D41E696B9E5BC8FE79A84E58F99E8BFB0EFBC8CE99499E8AFAFE79A84E698AFEFBC8820202020EFBC89, 0x444D41E696B9E5BC8FE4B88BE695B4E4B8AA492F4FE8BF87E7A88BE5AE8CE585A8E4B88DE99C80E8A681435055E4BB8BE585A5, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('68', '1', '3', '10', 0xE59CA8E6B5AEE782B9E695B0E58AA0E5878FE8BF90E7AE97E4B8ADEFBC8820202020EFBC89, 0xE998B6E7A081E5AFB9E9BD90E5908EEFBC8CE5B0BEE695B0E79BB8E58AA0E5878FE8BF90E7AE97, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('69', '1', '3', '14', 0xE5B7B2E79FA5E69F90E5AD97E7ACA6E79A84E7BC96E7A081E4B8BA30313030313031EFBC8CE88BA5E69C80E9AB98E4BD8DE5A29EE58AA0E4B880E4B8AAE581B6E6A0A1E9AA8CE4BD8DEFBC8CE58899E585B6E7BC96E7A081E58F98E4B8BAEFBC8820202020EFBC89, 0x3130313030313031, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('70', '1', '8', '36', 0x4550524F4DE698AFE68C87EFBC8820202020EFBC89, 0xE58589E693A6E999A4E58FAFE7BC96E7A88BE58FAAE8AFBBE5AD98E582A8E599A8, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('71', '1', '7', '32', 0xE4B88BE58897E59BA0E7B4A0E4B88BEFBC8CE4B88E4361636865E79A84E591BDE4B8ADE78E87E697A0E585B3E79A84E698AFEFBC8820202020EFBC89, 0xE4B8BBE5AD98E79A84E5AD98E58F96E697B6E997B4, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('72', '1', '4', '20', 0xE58F8CE7ABAFE58FA3E5AD98E582A8E599A8E68980E4BBA5E883BDE8BF9BE8A18CE9AB98E9809FE8AFBB2FE58699E6938DE4BD9CEFBC8CE698AFE59BA0E4B8BAE98787E794A8EFBC8820202020EFBC89, 0xE4B8A4E5A597E79BB8E4BA92E78BACE7AB8BE79A84E8AFBBE58699E794B5E8B7AF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('73', '1', '4', '16', 0xE5AD98E582A8E58D95E58583E698AFE68C87EFBC8820202020EFBC89, 0xE5AD98E694BE31E4B8AAE69CBAE599A8E5AD97E79A84E68980E69C89E5AD98E582A8E58583E99B86E59088, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('74', '1', '3', '9', 0xE6938DE4BD9CE695B03030303030313031E4B88E3030303030313031E689A7E8A18CE980BBE8BE91EFBC8820202020EFBC89E6938DE4BD9CE5908EEFBC8CE8BF90E7AE97E7BB93E69E9CE4B8BA3030303030303030, 0xE5BC82E68896, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('75', '1', '1', '3', 0xE59CA8E5BD93E5898DE5BEAEE69CBAE4B8ADEFBC8CE6AF94E8BE83E5B8B8E794A8E79A84E5B9B6E4B894E69C89E8BE83E9AB98E695B0E68DAEE4BCA0E8BE93E78E87E79A84E680BBE7BABFE7BB93E69E84E698AFEFBC8820202020EFBC89, 0x504349, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('76', '1', '1', '3', 0xE4BB8EE4BFA1E681AFE6B581E79A84E4BCA0E8BE93E9809FE5BAA6E69DA5E79C8BEFBC8CEFBC8820202020EFBC89E7B3BBE7BB9FE5B7A5E4BD9CE69588E78E87E69C80E4BD8E, 0xE58D95E680BBE7BABF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('77', '1', '1', '3', 0xE59CA8E680BBE7BABFE7BB93E69E84E79A84435055E4B8ADEFBC8CE59084E4B8AAE983A8E4BBB6E8BF9EE68EA5E588B0E680BBE7BABFE4B88AEFBC8CE59CA8E69F90E4B880E697B6E997B4EFBC8820202020EFBC89, 0xE58FAAE69C89E4B880E4B8AAE983A8E4BBB6E58FAFE4BBA5E59091E680BBE7BABFE58F91E98081E4BFA1E681AFEFBC8CE4BD86E58FAFE4BBA5E69C89E5A49AE4B8AAE983A8E4BBB6E5908CE697B6E4BB8EE680BBE7BABFE4B88AE68EA5E694B6E4BFA1E681AF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('78', '1', '1', '1', 0xE59CA8E8BF90E7AE97E599A8E4B8ADEFBC8CE697A2E883BDE5AD98E694BEE6938DE4BD9CE695B0EFBC8CE58F88E883BDE5AD98E694BEE8BF90E7AE97E7BB93E69E9CE79A84E599A8E4BBB6E7A7B0E4B8BAEFBC8820202020EFBC89, 0xE7B4AFE58AA0E599A8, null, '', '1.00', '1711418060730', '1713581736925');
INSERT INTO `question` VALUES ('79', '1', '4', '16', 0x435550E4BB8EE58685E5AD98E8AFBBE587BAE79A84E4B880E69DA1E68C87E4BBA4E68896E4B880E4B8AAE695B0E68DAEE5AD97E5B086E58588E69A82E5AD98E4BA8EEFBC8820202020EFBC89, 0xE695B0E68DAEE7BC93E586B2E5AF84E5AD98E599A8, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('80', '1', '1', '3', 0xE59CA8E79BB4E68EA5E5AD98E582A8E599A8E5AD98E58F96E79A84492F4FE696B9E5BC8FE4B8ADEFBC8CE68EA7E588B6E695B0E68DAEE4BCA0E8BE93E79A84E983A8E4BBB6E698AFEFBC8820202020EFBC89, 0x444D41E68EA7E588B6E599A8, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('81', '1', '5', '22', 0xE59CA8E68C87E4BBA4E7B3BBE7BB9FE4B8ADEFBC8CE98787E794A8EFBC8820202020EFBC89E5AFBBE59D80E696B9E5BC8FE79A84E68C87E4BBA4E585B6E995BFE5BAA6E69C80E79FAD, 0xE5AF84E5AD98E599A8, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('82', '1', '5', '22', 0xE5AFB9E4B880E4B8AAE58CBAE59F9FE58685E79A84E68890E689B9E695B0E68DAEE98787E794A8E5BEAAE78EAFE98090E4B8AAE8BF9BE8A18CE5A484E79086E697B6EFBC8CE5B8B8E794A8E79A84E68C87E4BBA4E5AFBBE59D80E696B9E5BC8FE698AFEFBC8820202020EFBC89, 0xE58F98E59D80E5AFBBE59D80E696B9E5BC8F, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('83', '1', '5', '23', 0xE88BA5E68C87E4BBA4E7B3BBE7BB9FE4B8ADE8AEBEE7BDAEE4BA86E4B893E794A8492F4FE6938DE4BD9CE68C87E4BBA4EFBC8CE58899492F4FE68EA5E58FA3EFBC8820202020EFBC89, 0xE58FAFE4BBA5E78BACE7AB8BE7BC96E59D80, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('84', '1', '4', '15', 0xE4B88BE99DA2E585B3E4BA8EE4B8BBE5AD98E582A8E599A8E5928CE8BE85E58AA9E5AD98E582A8E599A8E79A84E68F8FE8BFB0E6ADA3E7A1AEE79A84E698AFEFBC8820202020EFBC89, 0xE8BE85E58AA9E5AD98E582A8E599A8E5AD98E694BEE7B3BBE7BB9FE7A88BE5BA8FE5928CE5A4A7E59E8BE695B0E68DAEE69687E4BBB6E58F8AE695B0E68DAEE5BA93, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('85', '1', '3', '11', 0xE58E9FE7A081E4B998E6B395E698AFE68C87EFBC8820202020EFBC89, 0xE58588E58F96E6938DE4BD9CE695B0E7BB9DE5AFB9E580BCE79BB8E4B998EFBC8CE7ACA6E58FB7E4BD8DE58D95E78BACE5A484E79086, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('86', '1', '5', '23', 0xE5A086E6A088E6938DE4BD9CE79A84E789B9E782B9E698AFEFBC8820202020EFBC89, 0xE58FAAE883BDE59CA8E6A088E9A1B6E5AD98E58F96E4BBA3E7A081, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('87', '1', '5', '23', 0xE4BB8EE68EA7E588B6E5AD98E582A8E599A8E4B8ADE8AFBBE58F96E4B880E69DA1E5BEAEE68C87E4BBA4E5B9B6E689A7E8A18CE79BB8E5BA94E6938DE4BD9CE79A84E697B6E997B4E58FABEFBC8820EFBC89, 0xE5BEAEE591A8E69C9F, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('88', '1', '5', '21', 0xE689A9E5B195E6938DE4BD9CE7A081E698AFEFBC8820202020EFBC89, 0xE4B880E7A78DE68C87E4BBA4E4BC98E58C96E68A80E69CAFEFBC8CE58DB3E8AEA9E6938DE4BD9CE7A081E79A84E995BFE5BAA6E99A8FE59CB0E59D80E695B0E79A84E5878FE5B091E8808CE5A29EE58AA0EFBC8CE4B88DE5908CE59CB0E59D80E695B0E79A84E68C87E4BBA4E58FAFE4BBA5E585B7E69C89E4B88DE5908CE79A84E6938DE4BD9CE7A081E995BFE5BAA6, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('89', '1', '3', '11', 0xE4B8A4E4B8AA6EE4BD8DE695B028E58C85E68BAC31E4BD8DE7ACA6E58FB7E4BD8D29E79BB8E4B998EFBC8CE4B998E7A7AFE4B880E888ACE4B8BA326E2D32E4BD8DE38082E4B880E4B8AAE98787E794A8E58E9FE7A081E4B880E4BD8DE4B998E6B395E5AE9EE78EB0E8BF99E4B8A4E4B8AAE695B0E79BB8E4B998E79A84E8BF90E7AE97E599A8EFBC8CE585B6E58AA0E6B395E599A8E79A84E4BD8DE695B0E4B880E888ACE4B8BAEFBC8820202020EFBC89, 0x6EE4BD8D, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('90', '1', '3', '10', 0xE4BBA5E4B88BE585B3E4BA8EE588A4E6BAA2E79A84E58F99E8BFB0E4B88DE6ADA3E7A1AEE79A84E698AFEFBC8820202020EFBC89, 0xE98787E794A8E58D95E7ACA6E58FB7E4BD8DE6938DE4BD9CE6A380E6B58BE696B9E6B395E588A4E6BAA2E697B6EFBC8CE5BD93E58AA0E695B0E5928CE8A2ABE58AA0E695B0E7ACA6E58FB7E4B88DE5908CE697B6EFBC8CE79BB8E58AA0E8BF90E7AE97E79A84E7BB93E69E9CE69C89E58FAFE883BDE4BC9AE6BAA2E587BA, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('91', '1', '5', '21', 0xE69F90E69CBAE599A8E5AD97E995BF3136E4BD8DEFBC8CE5AD98E582A8E599A8E68C89E5AD97E88A82E7BC96E59D80EFBC8CE8AEBE5043E5BD93E5898DE580BCE4B8BA3130303048EFBC8CE5BD93435055E8AFBBE58F96E4B880E69DA1E58F8CE5AD97E995BFE68C87E4BBA4E5908EEFBC8C5043E79A84E580BCE4B8BAEFBC8820202020EFBC89, 0x3130303448, null, null, '1.00', '1711418060730', '1711141806073');
INSERT INTO `question` VALUES ('92', '1', '5', '24', 0x52495343E68A80E69CAFE79A84E789B9E782B9E4B88DE58C85E68BACEFBC8820202020EFBC89, 0xE68C87E4BBA4E79A84E58A9FE883BDE5BCBAE5A4A7, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('93', '1', '8', '36', 0xE4B88BE58897E58F99E8BFB0E4B8ADEFBC8820202020EFBC89E4B88DE698AFE58FAAE8AFBBE5AD98E582A8E599A8EFBC88524F4DEFBC89E79A84E4BC98E782B9, 0xE8BF90E8A18CE7A88BE5BA8FE697B6EFBC8C524F4DE58FAAE883BDE8AFBBE587BAE4BFA1E681AFE8808CE4B88DE58FAFE883BDE99A8FE69CBAE58699E585A5, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('94', '1', '5', '21', 0xE4BBA5E4B88BE585B3E4BA8EE69CBAE599A8E68C87E4BBA4E4B88EE5BEAEE68C87E4BBA4E79A84E58F99E8BFB0E4B8ADEFBC8CE6ADA3E7A1AEE79A84E698AFEFBC8820202020EFBC89, 0xE4B880E69DA1E69CBAE599A8E68C87E4BBA4E79A84E58A9FE883BDE58FAFE794A8E5A49AE69DA1E5BEAEE68C87E4BBA4E7BB84E68890E79A84E5BEAEE7A88BE5BA8FE5AE9EE78EB0, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('95', '1', '5', '21', 0xE4B88BE99DA2E5AFB9E4BA8EE2809CE9878DE58FA0E2809DE4B88EE2809CE6B581E6B0B4E2809DE79A84E68F8FE8BFB0E4B88DE6ADA3E7A1AEE79A84E698AFEFBC8820202020EFBC89, 0xE2809CE6B581E6B0B4E2809DE5928CE2809CE4B880E6ACA1E9878DE58FA0E2809DE983BDE58FAFE5908CE697B6E8A7A3E9878AE4B8A4E69DA1E4BBA5E4B88AE68C87E4BBA4EFBC9B, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('96', '1', '4', '16', 0xE4B88BE58897E585B3E4BA8EE5AD98E582A8E4BD93E79A84E68F8FE8BFB0E99499E8AFAFE79A84E698AFEFBC8820202020EFBC89, 0xE4B880E58FB0E69CBAE599A8E79A84E68980E69C89E5AD98E582A8E58D95E58583E79A84E995BFE5BAA6E58FAFE883BDE4B88DE5908C, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('97', '1', '6', '25', 0xE680BBE7BABFE79A84E695B0E68DAEE4BCA0E8BE93E78E87E698AFE68C87EFBC8820202020EFBC89, 0xE58D95E4BD8DE697B6E997B4E58685E58FAFE4BCA0E98081E79A84E695B0E68DAEE4BD8DE695B0, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('98', '1', '4', '15', 0xE4BBA5E4B88BE5AD98E582A8E599A8E5B19EE4BA8EE69893E5A4B1E680A7E79A84E698AFEFBC8820202020EFBC89, 0xE99D99E68081E5AD98E582A8E599A84452414D, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('99', '1', '4', '15', 0xE4B88BE99DA2E585B3E4BA8EE8999AE68B9FE5AD98E582A8E599A8E79A84E8AFB4E6B395E99499E8AFAFE79A84E698AFEFBC8820202020EFBC89, 0xE8999AE68B9FE5AD98E582A8E599A8E698AFE4B880E4B8AAE5AE9EE99985E79A84E789A9E79086E5AD98E582A8E599A8, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('100', '1', '4', '15', 0x444D41E696B9E5BC8FE79A84E695B0E68DAEE4BAA4E68DA2E4B88DE698AFE794B1435055E689A7E8A18CE4B880E6AEB5E7A88BE5BA8FE69DA5E5AE8CE68890EFBC8CE8808CE698AFE59CA8EFBC8820202020EFBC89E4B98BE997B4E5BBBAE7AB8BE4B880E69DA1E980BBE8BE91E4B88AE79A84E79BB4E68EA5E695B0E68DAEE9809AE8B7AFEFBC8CE794B1444D41E68EA7E588B6E599A8E69DA5E5AE9EE78EB0E79A84, 0xE5A496E8AEBEE4B88EE4B8BBE5AD98, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('101', '2', '1', '3', 0xE8BF90E7AE97E599A8E5928CE68EA7E588B6E599A8E59088E7A7B0E4B8ADE5A4AEE5A484E79086E58D95E58583435055, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('102', '2', '11', '58', 0xE8AEA1E7AE97E69CBAE7B3BBE7BB9FE4B8ADE59084E983A8E4BBB6E4B98BE997B4E4BCA0E8BE93E79A84E4BFA1E681AFE6B581E698AFE695B0E68DAEE6B581E5928CE68EA7E588B6E6B581, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('103', '2', '2', '6', 0xE5A587E581B6E6A0A1E9AA8CE6B395E883BDE6A380E69FA5E587BAE581B6E695B0E4B8AAE99499, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('104', '2', '4', '18', 0xE696ADE794B5E5908EE4BB8DE883BDE4BF9DE5AD98E4BFA1E681AFE79A84E5AD98E582A8E599A8E7A7B0E4B8BAE99D9EE69893E5A4B1E680A7E5AD98E582A8E599A8, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('105', '2', '4', '19', 0xE5A49AE4BD93E4BAA4E58F89E5AD98E582A8E599A8E4B8ADEFBC8CE59CB0E59D80E4BAA4E58F89E68E92E58897E79A84E79BAEE79A84E698AFE4B8BAE4BA86E4BEBFE4BA8EE58886E4BD93E5908CE697B6E5B7A5E4BD9C, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('106', '2', '1', '3', 0xE4B880E888ACE69CBAE599A8E68C87E4BBA4E794B1E6938DE4BD9CE7A081E5928CE59CB0E59D80E7A081E4B8A4E983A8E58886E7BB84E68890, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('107', '2', '1', '3', 0xE6938DE4BD9CE695B0E59CB0E59D80E59CA8E5AF84E5AD98E599A8E4B8ADEFBC8CE8BF99E698AFE5AF84E5AD98E599A8E79BB4E68EA5E5AFBBE59D80E696B9E5BC8F, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('108', '2', '6', '27', 0xE59E82E79BB4E59E8BE5BEAEE68C87E4BBA4E79A84E5AD97E995BFE5BAA6E6AF94E6B0B4E5B9B3E59E8BE5BEAEE68C87E4BBA4E995BF, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('109', '2', '1', '3', 0xE680BBE7BABFE4B880E888ACE58C85E68BACE695B0E68DAEE680BBE7BABFE38081E59CB0E59D80E680BBE7BABFE5928CE68EA7E588B6E680BBE7BABF, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('110', '2', '11', '53', 0xE68EA5E58FA3E9809AE8BF87E689A7E8A18CE4B8ADE696ADE5A484E79086E7A88BE5BA8FE5AE9EE78EB0E695B0E68DAEE79A84E8BE93E585A52FE8BE93E587BA, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('111', '2', '1', '3', 0xE8AEA1E7AE97E69CBAE7A1ACE4BBB6E794B1E8BF90E7AE97E599A8E38081E68EA7E588B6E599A8E38081E5AD98E582A8E599A8E38081E8BE93E585A5E8AEBEE5A487E5928CE8BE93E587BAE8AEBEE5A487E4BA94E5A4A7E983A8E4BBB6E7BB84E68890, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('112', '2', '3', '9', 0xE8BF9BE4BD8DE588B6E79A84E4B8A4E4B8AAE59FBAE69CACE8A681E7B4A0E698AFE59FBAE695B0E5928CE4BD8DE69D83, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('113', '2', '3', '13', 0xE6B5AEE782B9E695B0E58AA0E5878FE6B395E8BF90E7AE97E697B6E79A84E5AFB9E998B6E8A681E6BBA1E8B6B3E5A4A7E998B6E59091E5B08FE998B6E79C8BE9BD90E79A84E58E9FE58899, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('114', '2', '2', '8', 0xE58FAAE8AFBBE5AD98E582A8E599A8524F4DE5B19EE4BA8EE69893E5A4B1E680A7E5AD98E582A8E599A8, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('115', '2', '4', '17', 0xE99D99E68081E5AD98E582A8E599A8E5928CE58AA8E68081E5AD98E582A8E599A8E79A84E4B8BBE8A681E5B7AEE588ABE698AFE58AA8E68081E5AD98E582A8E599A8E99C80E5868DE7949F, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('116', '2', '1', '3', 0xE4B880E58FB0E8AEA1E7AE97E69CBAE4B8ADE68980E69C89E69CBAE599A8E68C87E4BBA4E79A84E99B86E59088E7A7B0E4B8BAE8BF99E58FB0E8AEA1E7AE97E69CBAE79A84E68C87E4BBA4E7B3BBE7BB9F, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('117', '2', '5', '22', 0xE6938DE4BD9CE695B0E59CB0E59D80E59CA8E4B8BBE5AD98E582A8E599A8E4B8ADEFBC8CE8BF99E698AFE79BB4E68EA5E5AFBBE59D80E696B9E5BC8F, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('118', '2', '2', '7', 0xE68EA7E588B6E599A8E4B8ADE5BF85E69C89E4B8A4E4B8AAE5AF84E5AD98E599A8E698AFE7A88BE5BA8FE8AEA1E695B0E599A85043E5928CE59CB0E59D80E5AF84E5AD98E599A8, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('119', '2', '11', '54', 0x444D41E696B9E5BC8FE698AFE59CA8E5A496E8AEBEE5928C435055E4B98BE997B4E5BBBAE7AB8BE4B880E69DA1E79BB4E68EA5E695B0E68DAEE9809AE8B7AF, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('120', '2', '6', '30', 0xE59CA8E6B581E6B0B4E68EA7E588B6E696B9E5BC8FE4B8ADE69C89E585B3E79A84E997AEE9A298E698AFEFBC9AE8B584E6BA90E79BB8E585B3E38081E695B0E68DAEE79BB8E585B3E5928CE68EA7E588B6E79BB8E585B3, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('121', '2', '1', '1', 0xE79BAEE5898DE699AEE9818DE4BDBFE794A8E79A84E5BEAEE59E8BE8AEA1E7AE97E69CBAE98787E794A8E79A84E794B5E8B7AFE698AFE8B685E5A4A7E8A784E6A8A1E99B86E68890E794B5E8B7AF, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('122', '2', '3', '9', 0xE4BA8CE8BF9BE588B6E695B0E5B7A6E7A7BBE4B880E4BD8DEFBC8CE58899E695B0E580BCE5878FE5B08FE4B880E5808D, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('123', '2', '1', '3', 0xE4B880E69DA1E68C87E4BBA4E79A84E58A9FE883BDE9809AE8BF87E689A7E8A18CE4B880E69DA1E5BEAEE68C87E4BBA4E69DA5E5AE9EE78EB0, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('124', '2', '2', '8', 0xE7B3BBE7BB9FE79A84E4B8BBE5AD98E794B152414DE5928C524F4DE7BB84E68890, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('125', '2', '4', '20', 0xE5A49AE6A8A1E59D97E5AD98E582A8E599A8E4B8ADEFBC8CE59084E6A8A1E59D97E69C89E78BACE7AB8BE79A84E8AFBBE58699E794B5E8B7AF, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('126', '2', '7', '33', 0xE6AEB5E698AFE980BBE8BE91E7BB93E69E84E4B88AE79BB8E5AFB9E78BACE7AB8BE79A84E7A88BE5BA8FE59D97EFBC8CE59BA0E6ADA4E6AEB5E698AFE58FAFE58F98E995BFE5BAA6E79A84, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('127', '2', '11', '54', 0x444D41E696B9E5BC8FE79A84E695B0E68DAEE4BAA4E68DA2E696B9E5BC8FE698AFE5BBBAE7AB8BE59CA8E5A496E8AEBEE5928C435055E4B98BE997B4E79A84, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('128', '2', '10', '51', 0x492F4FE680BBE7BABFE9809AE5B8B8E698AFE6A087E58786E680BBE7BABFEFBC8CE68980E4BBA5504349E680BBE7BABFE698AFE6A087E58786E680BBE7BABF, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('129', '2', '11', '53', 0xE7A88BE5BA8FE4B8ADE696ADE79A84E696B9E6B395E59CA8E5A496E8AEBEE79A84E68EA5E58FA3E4B8ADE5A29EE8AEBEE4BA86E7BC93E586B2E599A8EFBC8CE4BDBFE4BFA1E681AFE4BAA4E68DA2E59CA8E4B8BBE5AD98E5928CE7BC93E586B2E58CBAE4B98BE997B4E8BF9BE8A18C, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('130', '2', '4', '15', 0xE68EA7E588B6E5AD98E582A8E599A8E59CA8E696ADE794B5E4B98BE5908EE4BFA1E681AFE585A8E983A8E4B8A2E5A4B1EFBC8CE5B19EE4BA8EE69893E5A4B1E680A7E5AD98E582A8E599A8, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('131', '2', '1', '1', 0xE8AEA1E7AE97E69CBAE4B8BBE69CBAE4B8ADE58C85E590ABE68EA7E588B6E599A8E5928CE5AD98E582A8E599A8, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('132', '2', '1', '4', 0xE8BDAFE4BBB6E9809AE5B8B8E58886E4B8BAE7B3BBE7BB9FE8BDAFE4BBB6E5928CE5BA94E794A8E8BDAFE4BBB6E4B8A4E5A4A7E7B1BB, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('133', '2', '4', '17', 0x4452414DE88AAFE78987E99C80E8A681E5AE9AE697B6E588B7E696B0, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('134', '2', '1', '3', 0xE6AF8FE4B880E69DA1E69CBAE599A8E68C87E4BBA4E794B1E4B880E69DA1E5BEAEE68C87E4BBA4E69DA5E689A7E8A18C, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('135', '2', '1', '3', 0xE8BE93E585A52FE8BE93E587BAE68C87E4BBA4E79A84E58A9FE883BDE698AFE59CA8E4B8BBE5AD98E5928C492F4FE7ABAFE58FA3E4B98BE997B4E8BF9BE8A18CE695B0E68DAEE4BCA0E98081, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('136', '2', '4', '17', 0x5352414DE698AFE58D8AE5AFBCE4BD93E99D99E68081E99A8FE69CBAE8AEBFE997AEE5AD98E582A8E599A8EFBC8CE9809AE5B8B8E794A8E4BD9CE4B8BBE5AD98, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('137', '2', '7', '34', 0xE79BB8E88194E5AD98E582A8E599A8E698AFE68C89E58685E5AEB9E68C87E5AE9AE696B9E5BC8FE8BF9BE8A18CE5AFBBE59D80E79A84E5AD98E582A8E599A8, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('138', '2', '11', '53', 0xE6B581E6B0B4E7BABFE696B9E5BC8FE883BDE4BDBFE695B4E4B8AAE7A88BE5BA8FE79A84E689A7E8A18CE697B6E997B4E7BCA9E79FAD, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('139', '2', '1', '3', 0xE58FAAE8A681E69C89E4B8ADE696ADE8AFB7E6B182E58F91E7949FEFBC8CE982A3E4B988E4B880E69DA1E68C87E4BBA4E689A7E8A18CE7BB93E69D9FE5908E435055E5B0B1E8BF9BE585A5E4B8ADE696ADE5938DE5BA94E591A8E69C9F, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('140', '2', '11', '54', 0xE9809AE5B8B8E8B68AE99DA0E8BF91435055E79A84E680BBE7BABFE4BCA0E8BE93E9809FE78E87E8B68AE9AB98, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('141', '2', '1', '1', 0xE4B8BBE5AD98E582A8E599A8E5AD98E694BEE8AEA1E7AE97E69CBAE8BF90E8A18CE69C9FE997B4E79A84E5A4A7E9878FE7A88BE5BA8FE5928CE695B0E68DAE, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('142', '2', '4', '15', 0xE59CA8E6ADA3E5B8B8E5B7A5E4BD9CE697B6EFBC8CE5AD98E582A8E79A84E58685E5AEB9E698AFE59BBAE5AE9AE4B88DE58F98E79A84EFBC8CE58FAAE883BDE8AFBBE587BAE8808CE4B88DE883BDE58699E585A5E696B0E4BFA1E681AFE79A84E58D8AE5AFBCE4BD93E5AD98E582A8E599A8E7A7B0E4B8BA52414D, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('143', '2', '5', '22', 0xE6938DE4BD9CE695B0E79A84E59CB0E59D80E59CA8E4B8BBE5AD98E582A8E599A8E4B8ADEFBC8CE8BF99E698AFE79BB4E68EA5E5AFBBE59D80E696B9E5BC8F, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('144', '2', '2', '7', 0xE8BF90E7AE97E599A8E4B8ADE6AF8FE6ACA1E8BF90E7AE97E697B6E697A2E5AD98E694BEE6BA90E6938DE4BD9CE695B0EFBC8CE58F88E5AD98E694BEE7BB93E69E9CE79A84E5AF84E5AD98E599A8E7A7B0E4B8BAE7B4AFE58AA0E599A8, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('145', '2', '1', '3', 0xE5AE8CE68890E4B880E69DA1E68C87E4BBA4E79A84E4B880E7B3BBE58897E5BEAEE68C87E4BBA4E79A84E69C89E5BA8FE99B86E59088E7A7B0E4B8BAE7A88BE5BA8F, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('146', '2', '6', '28', 0xE5BEAEE68C87E4BBA4E58886E4B8BAE4B8A4E4B8AAE5AD97E6AEB5EFBC8CE5AE83E4BBACE698AFE68EA7E588B6E5AD97E6AEB5E5928CE4B88BE59D80E5AD97E6AEB5, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('147', '2', '3', '14', 0xE695B0E68DAE3031313031313031E79A84E5A587E6A0A1E9AA8CE4BD8DE4B8BA30EFBC8CE581B6E6A0A1E9AA8CE4BD8DE4B8BA31, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('148', '2', '1', '3', 0xE58AA8E6808152414DE79A84E789B9E782B9E698AFE5B7A5E4BD9CE4B8ADE5AD98E582A8E79A84E58685E5AEB9E58AA8E68081E79A84E58F98E58C96, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('149', '2', '1', '3', 0xE8AEA1E7AE97E69CBAE59CA8E689A7E8A18CE7A88BE5BA8FE79A84E8BF87E7A88BE4B8ADEFBC8CE68EA7E588B6E599A8E68EA7E588B6E7A88BE5BA8FE79A84E8BF90E8A18CE680BBE698AFE5A484E4BA8EE58F96E68C87E4BBA4E38081E58886E69E90E68C87E4BBA4E5928CE689A7E8A18CE68C87E4BBA4E79A84E5BEAAE78EAFE4B8AD, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('150', '2', '4', '15', 0xE696ADE794B5E5908EE4BB8DE883BDE4BF9DE5AD98E4BFA1E681AFE79A84E5AD98E582A8E599A8E7A7B0E4B8BAE69893E5A4B1E680A7E5AD98E582A8E599A8, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('151', '2', '5', '22', 0xE5AD98E582A8E599A8E997B4E68EA5E5AFBBE59D80E696B9E5BC8FE58FAAE99C80E8A681E8AEBFE997AE31E6ACA1E5AD98E582A8E599A8E5B0B1E58FAFE4BBA5E58F96E5BE97E695B0E68DAE, 0xE99499E8AFAF, null, null, '1.00', '1711408060730', '1711418060730');
INSERT INTO `question` VALUES ('152', '2', '1', '3', 0xE7A88BE5BA8FE8AEA1E695B0E599A8E79A84E4BD9CE794A8E698AFE68C87E587BAE5BD93E5898DEFBC88E68896E4B88BE4B880E69DA1EFBC89E8A681E689A7E8A18CE79A84E68C87E4BBA4E59CB0E59D80, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('153', '2', '10', '51', 0xE4BB8EE4BCA0E98081E4BFA1E681AFE79A84E7B1BBE59E8BE69DA5E79C8BEFBC8CE7B3BBE7BB9FE680BBE7BABFE4B880E888ACE58C85E68BACE695B0E68DAEE680BBE7BABFE5928CE68EA7E588B6E680BBE7BABFE4B8A4E7A78D, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('154', '2', '4', '19', 0xE5A49AE4BD93E4BAA4E58F89E7BC96E59D80E696B9E5BC8FE8BF9EE7BBADE79A84E4B8A4E4B8AAE5AD98E582A8E58D95E58583E58886E5B883E59CA8E5908CE4B880E4B8AAE5AD98E582A8E4BD93E58685, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('155', '2', '4', '15', 0xE8BE85E5AD98E4B8ADE79A84E7A88BE5BA8FE5BF85E9A1BBE8B083E585A5E4B8BBE5AD98E5908EE6898DE883BDE8BF90E8A18C, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('156', '2', '1', '3', 0xE4B880E6AEB5E69CBAE599A8E68C87E4BBA4E7BB84E68890E79A84E5B7A5E4BD9CE7A88BE5BA8FE58FAFE794B1E4B880E69DA1E5BEAEE68C87E4BBA4E69DA5E8A7A3E9878AE689A7E8A18C, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('157', '2', '3', '10', 0xE5AE9AE782B9E695B0E4BD9CE8A1A5E7A081E58AA0E5878FE8BF90E7AE97E697B6EFBC8CE585B6E7ACA6E58FB7E4BD8DE58D95E78BACE4BD9CE58AA0E5878FE8BF90E7AE97, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('158', '2', '11', '53', 0x4361636865E588A9E794A8E4BA86E7A88BE5BA8FE79A84E5B180E983A8E680A7E58E9FE58899EFBC8CE8808CE8999AE68B9FE5AD98E582A8E599A8E4B88DE698AF, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('159', '2', '1', '3', 0xE7AB8BE58DB3E5AFBBE59D80E696B9E5BC8FE4B8ADEFBC8CE68C87E4BBA4E79A84E59CB0E59D80E7A081E79BB4E68EA5E7BB99E587BAE695B0E68DAEE79A84E59CB0E59D80, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('160', '2', '1', '3', 0xE59CA8435055E4B8ADEFBC8CE68C87E4BBA4E5AF84E5AD98E599A8E79A84E4BD9CE794A8E698AFE4BF9DE5AD98E5BD93E5898DE6ADA3E59CA8E689A7E8A18CE79A84E4B880E69DA1E68C87E4BBA4, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('161', '2', '11', '53', 0xE5BEAEE7A88BE5BA8FE8AEBEE8AEA1E68A80E69CAFE698AFE588A9E794A8E8BDAFE4BBB6E79A84E696B9E6B395E8AEBEE8AEA1E6938DE4BD9CE68EA7E588B6E599A8E79A84E4B880E997A8E68A80E69CAF, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('162', '2', '11', '54', 0xE5B086435055E5928CE5AD98E582A8E599A8E7BB9FE7A7B0E4B8BAE4B8BBE69CBA, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('163', '2', '11', '54', 0xE5B086E8BF90E7AE97E599A8E5928CE68EA7E588B6E599A8E5928CE59CA8E4B880E8B5B7E7A7B0E4B8BA435055, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('164', '2', '1', '1', 0xE8AEA1E7AE97E69CBAE5AD98E582A8E599A8E79A84E69C80E5B08FE58D95E4BD8DE698AF626974, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('165', '2', '2', '7', 0xE59CA8E5AF84E5AD98E599A8E997B4E68EA5E5AFBBE59D80E696B9E5BC8FE4B8ADEFBC8CE6938DE4BD9CE695B0E5AD98E694BEE59CA8E5AF84E5AD98E599A8E4B8AD, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('166', '2', '1', '3', 0xE69DA1E4BBB6E8BDACE7A7BBE38081E5AD90E7A88BE5BA8FE8B083E794A8E68C87E4BBA4E38081E4B8ADE696ADE8BF94E59B9EE68C87E4BBA4E983BDE5B19EE4BA8EE7A88BE5BA8FE68EA7E588B6E7B1BBE68C87E4BBA4, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('167', '2', '1', '3', 0xE59CA8E68C87E4BBA4E79A84E689A7E8A18CE998B6E6AEB5EFBC8CE5AD98E582A8E599A8E79A84E79BB4E68EA5E5AFBBE59D80E696B9E5BC8FE99C80E8A681E4B8A4E6ACA1E8AEBFE997AEE5AD98E582A8E599A8, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('168', '2', '1', '3', 0xE59CA8435055E4B8ADEFBC8CE4BF9DE5AD98E4B88BE4B880E69DA1E68C87E4BBA4E59CB0E59D80E79A84E5AF84E5AD98E599A8E698AFE68C87E4BBA4E5AF84E5AD98E599A8, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('169', '2', '1', '3', 0xE6B0B4E5B9B3E59E8BE5BEAEE68C87E4BBA4E689A7E8A18CE4B880E69DA1E68C87E4BBA4E68980E794A8E79A84E697B6E997B4E6AF94E59E82E79BB4E59E8BE5BEAEE68C87E4BBA4E995BF, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('170', '2', '6', '28', 0xE68EA7E588B6E5AD98E582A8E599A8E698AFE58FAAE8AFBBE5AD98E582A8E599A8EFBC8CE794A8E69DA5E5AD98E582A8E5BEAEE7A88BE5BA8F, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('171', '2', '1', '3', 0xE68EA7E588B6E599A8E4B8ADE5BF85E69C89E4B8A4E4B8AAE5AF84E5AD98E599A8E698AFE59CB0E59D80E5AF84E5AD98E599A84152E5928CE68C87E4BBA4E5AF84E5AD98E599A84952, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('172', '2', '7', '32', 0xE4BDBFE794A84361636865E698AFE4B8BAE4BA86E8A7A3E586B3E4B8BBE5AD98E5AEB9E9878FE4B88DE8B6B3E79A84E997AEE9A298, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('173', '2', '11', '53', 0xE9AB98E9809FE7BC93E586B2E5AD98E582A8E599A86361636865E79A84E5B7A5E4BD9CE69CBAE588B6E59FBAE4BA8EE7A88BE5BA8FE8AEBFE997AEE79A84E5B180E983A8E680A7E58E9FE58899, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('174', '2', '11', '53', 0xE8999AE68B9FE5AD98E582A8E599A8E58886E4B8BAE9A1B5E5BC8FE38081E6AEB5E5BC8FE4B8A4E7A78D, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('175', '2', '2', '7', 0xE4B8ADE696ADE58581E8AEB8E8A7A6E58F91E599A8E794A8E69DA5E8A1A8E7A4BAE5A496E8AEBEE698AFE590A6E68F90E587BAE4BA86E4B8ADE696ADE8AFB7E6B182, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('176', '2', '10', '49', 0x444D41E68A80E69CAFE79A84E587BAE78EB0E4BDBFE5BE97E5A496E59BB4E8AEBEE5A487E58FAFE4BBA5E9809AE8BF87444D41E68EA7E588B6E599A8E79BB4E68EA5E8AEBFE997AEE58685E5AD98, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('177', '2', '10', '49', 0x444D41E696B9E5BC8FE698AFE59CA8E5A496E8AEBEE5928CE4B8BBE5AD98E4B98BE997B4E5BBBAE7AB8BE4B880E69DA1E79BB4E68EA5E695B0E68DAEE9809AE8B7AF, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('178', '2', '10', '51', 0xE5A49AE4B8AAE7B3BBE7BB9FE983A8E4BBB6E4B98BE997B4E4BFA1E681AFE4BCA0E98081E79A84E585ACE585B1E9809AE8B7AFE7A7B0E4B8BAE680BBE7BABF, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('179', '2', '1', '1', 0x31393436E5B9B4E7A094E588B6E68890E58A9FE79A84E7ACACE4B880E58FB0E794B5E5AD90E695B0E5AD97E8AEA1E7AE97E69CBAE7A7B0E4B8BA454E494143, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('180', '2', '1', '1', 0xE6B187E7BC96E8AFADE8A880E698AFE8AEA1E7AE97E69CBAE7A1ACE4BBB6E883BDE5A49FE79BB4E68EA5E8AF86E588ABE79A84E8AFADE8A880, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('181', '2', '4', '20', 0xE58F8CE7ABAFE58FA3E5AD98E582A8E599A8E68980E4BBA5E883BDE5A49FE9AB98E9809FE8AFBBE58699EFBC8CE698AFE59BA0E4B8BAE98787E794A8E4B8A4E5A597E79BB8E4BA92E78BACE7AB8BE79A84E8AFBBE58699E794B5E8B7AF, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('182', '2', '1', '3', 0xE68C87E4BBA4E7B3BBE7BB9FE4B8ADE98787E794A8E4B88DE5908CE5AFBBE59D80E696B9E5BC8FE79A84E79BAEE79A84E4B8BBE8A681E698AFE58FAFE4BBA5E79BB4E68EA5E8AEBFE997AEE5A496E5AD98, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('183', '2', '1', '3', 0xE7A88BE5BA8FE68EA7E588B6E7B1BBE68C87E4BBA4E79A84E58A9FE883BDE698AFE694B9E58F98E7A88BE5BA8FE689A7E8A18CE79A84E9A1BAE5BA8F, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('184', '2', '5', '22', 0xE7AB8BE58DB3E695B0E5AFBBE59D80E696B9E5BC8FE58F96E5BE97E6938DE4BD9CE695B0E79A84E9809FE5BAA6E69C80E5BFAB, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('185', '2', '1', '3', 0x52495343E79A84E4B8BBE8A681E79BAEE6A087E698AFE5878FE5B091E68C87E4BBA4E695B0, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('186', '2', '1', '3', 0xE68C87E4BBA4E591A8E69C9FE698AFE68C87435055E4BB8EE4B8BBE5AD98E4B8ADE58F96E587BAE4B880E69DA1E68C87E4BBA4E58AA0E4B88AE689A7E8A18CE8BF99E69DA1E68C87E4BBA4E79A84E697B6E997B4, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('187', '2', '1', '3', 0xE794A8E7A88BE5BA8FE8AEA1E695B0E599A85043E69DA5E4BAA7E7949FE5908EE7BBADE5BEAEE68C87E4BBA4E79A84E59CB0E59D80, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('188', '2', '11', '53', 0x4361636865E5928CE8999AE68B9FE5AD98E582A8E599A8E983BDE588A9E794A8E4BA86E7A88BE5BA8FE79A84E5B180E983A8E680A7E58E9FE58899, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('189', '2', '1', '1', 0xE8AEA1E7AE97E69CBAE4B8ADE79A84E68980E69C89E4BFA1E681AFE4BB8DE4BBA5E4BA8CE8BF9BE588B6E696B9E5BC8FE8A1A8E7A4BAE79A84E79086E794B1E698AFE59BA0E4B8BAE4BA8CE8BF9BE588B6E8BF90E7AE97E9809FE5BAA6E5BFAB, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('190', '2', '3', '9', 0xE5AD98E582A8E58D95E58583E698AFE68C87E5AD98E694BEE4B880E4B8AAE4BA8CE8BF9BE588B6E4BFA1E681AFE4BD8DE79A84E5AD98E582A8E58583, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('191', '2', '1', '3', 0xE4BA8CE59CB0E59D80E68C87E4BBA4E4B8ADEFBC8CE6938DE4BD9CE695B0E79A84E789A9E79086E4BD8DE7BDAEE5BF85E9A1BBE698AFE4B8BBE5AD98E58D95E58583, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('192', '2', '4', '17', 0xE5A086E6A088E698AFE58588E8BF9BE5908EE587BAE79A84E99A8FE69CBAE5AD98E582A8E599A8, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('193', '2', '5', '22', 0xE98787E794A8E8B7B3E8B783E79A84E5AFBBE59D80E696B9E5BC8FEFBC8CE58FAAE883BDE5AE9EE78EB0E7A88BE5BA8FE79A84E69DA1E4BBB6E8BDACE7A7BBEFBC8CE4B88DE883BDE5AE9EE78EB0E697A0E69DA1E4BBB6E8BDACE7A7BB, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('194', '2', '1', '3', 0xE59CA8435055E4B8ADE8B79FE8B8AAE4B88BE4B880E69DA1E8A681E689A7E8A18CE79A84E68C87E4BBA4E79A84E59CB0E59D80E79A84E5AF84E5AD98E599A8E698AFE68C87E4BBA4E5AF84E5AD98E599A8, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('195', '2', '1', '3', 0xE6AF8FE4B880E69DA1E69CBAE599A8E68C87E4BBA4E794B1E4B880E6AEB5E794A8E5BEAEE68C87E4BBA4E7BC96E68890E79A84E5BEAEE7A88BE5BA8FE69DA5E8A7A3E9878AE689A7E8A18C, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('196', '2', '6', '29', 0xE5BEAEE7A88BE5BA8FE68EA7E588B6E696B9E5BC8FE6AF94E7A1ACE5B883E7BABFE68EA7E588B6E696B9E5BC8FE689A7E8A18CE9809FE5BAA6E69BB4E5BFAB, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('197', '2', '1', '1', 0xE8999AE68B9FE5AD98E582A8E599A8E68A80E69CAFE68F90E9AB98E4BA86E8AEA1E7AE97E69CBAE79A84E9809FE5BAA6, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('198', '2', '1', '1', 0xE8AEA1E7AE97E69CBAE79A84E5A496E59BB4E8AEBEE5A487E698AFE68C87E999A4E4BA86435055E5928CE58685E5AD98E4BBA5E5A496E79A84E585B6E4BB96E8AEBEE5A487, 0xE6ADA3E7A1AE, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('199', '2', '2', '7', 0x52495343E69CBAE4B8ADE5BE88E5B091E4BDBFE794A8E5AF84E5AD98E599A8, 0xE99499E8AFAF, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('200', '3', '3', '9', 0xE5B086E4BA8CE8BF9BE588B6E695B0E68DAE313131303131313042E8BDACE68DA2E68890E585ABE8BF9BE588B6E695B0E38081E58D81E8BF9BE588B6E695B0E5928CE58D81E585ADE8BF9BE588B6E695B0E38082EFBC88E8A681E6B182E58699E587BAE8AFA6E7BB86E6ADA5E9AAA4EFBC89, 0xE8A7A3EFBC9A33353651EFBC8C32333844EFBC8C454548, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('201', '3', '3', '9', 0xE5B086E58D81E8BF9BE588B6E695B03437E58C96E68890E4BA8CE8BF9BE588B6E695B0EFBC8CE5868DE58699E587BAE59084E887AAE79A84E58E9FE7A081E38081E58F8DE7A081E38081E8A1A5E7A081E8A1A8E7A4BAEFBC88E7ACA6E58FB7E4BD8D31E4BD8DEFBC8CE695B0E580BCE4BD8D37E4BD8DEFBC8CE585B138E4BD8DEFBC89E38082, 0xE8A7A3EFBC9A3437E79A84E4BA8CE8BF9BE588B6E695B0E4B8BAEFBC9A30313031313131EFBC9BE58E9FE7A0813030313031313131EFBC9BE58F8DE7A0813030313031313131EFBC9BE8A1A5E7A081EFBC9A3030313031313131, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('202', '3', '3', '9', 0xE5B086E58D81E8BF9BE588B6E695B0EFBC8D302E323736E5928C3437E58C96E68890E4BA8CE8BF9BE588B6E695B0EFBC8CE5868DE58699E587BAE59084E887AAE79A84E58E9FE7A081E38081E58F8DE7A081E38081E8A1A5E7A081E8A1A8E7A4BAEFBC88E7ACA6E58FB7E4BD8D31E4BD8DEFBC8CE695B0E580BCE4BD8D37E4BD8DEFBC8CE585B138E4BD8DEFBC89E38082, 0xE8A7A3EFBC9A2D302E323736E79A84E4BA8CE8BF9BE588B6E695B0E4B8BAEFBC9A2D302E30313030303131EFBC9BE585B6E58E9FE7A081E4B8BAEFBC9A3130313030303131EFBC9BE58F8DE7A081E4B8BAEFBC9A3131303131313030EFBC9BE8A1A5E7A081E4B8BAEFBC9A3131303131313031EFBC8C3437E79A84E4BA8CE8BF9BE588B6E695B0E4B8BAEFBC9A303130313131312CEFBC9BE585B6E58E9FE7A081E4B8BAEFBC9A30313031313131EFBC9BE58F8DE7A081E4B8BAEFBC9A30313031313131EFBC9BE8A1A5E7A081E4B8BAEFBC9A30313031313131, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('203', '3', '3', '9', 0xE5B086E58D81E8BF9BE588B6E695B0EFBC8D302E323838E5928C3439E8BDACE68DA2E68890E4BA8CE8BF9BE588B6E695B0EFBC8CE5868DE58699E587BAE59084E887AAE79A84E58E9FE7A081E38081E58F8DE7A081E38081E8A1A5E7A081E8A1A8E7A4BAEFBC88E7ACA6E58FB7E4BD8D31E4BD8DEFBC8CE695B0E580BCE4BD8D37E4BD8DEFBC8CE585B138E4BD8DEFBC89E38082, 0xE8A7A3EFBC9A2D302E323838E79A84E4BA8CE8BF9BE588B6E695B0E4B8BAEFBC9A30313030313030EFBC9BE58E9FE7A081E4B8BAEFBC9A3130313030313030EFBC9BE58F8DE7A081E4B8BAEFBC9A3131303131303131EFBC9BE8A1A5E7A081E4B8BAEFBC9A31313031313130302C3439E79A84E4BA8CE8BF9BE588B6E695B0E4B8BAEFBC9A30313130303031EFBC8CE58E9FE7A081E4B8BAEFBC9A3030313130303031EFBC9BE58F8DE7A081E4B8BAEFBC9A3030313130303031EFBC9BE8A1A5E7A081E4B8BAEFBC9A3030313130303031, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('204', '3', '3', '9', 0xE5B086E4BA8CE8BF9BE588B6E695B0EFBC8B3131303031303142E8BDACE68DA2E4B8BAE58D81E8BF9BE588B6E695B0EFBC8CE5B9B6E794A838343231424344E7A081E8A1A8E7A4BAE38082, 0xE8A7A3EFBC9AEFBC8B3131303031303142EFBC9D31303144EFBC8CE58D81E8BF9BE588B6E695B0313031E79A8438343231424344E7A081E4B8BAEFBC9A3030303120303030302030303031, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('205', '3', '3', '9', 0xE4BB8AE69C89E4B8A4E695B03030313030313130E5928C3031303030313131EFBC8CE6B182E4B8A4E695B0E4B98BE5928CE38082EFBC8831EFBC89E4B8A4E695B0E983BDE698AFE4BA8CE8BF9BE588B6E7A081EFBC8CE7BB93E69E9CE794A8E58D81E8BF9BE588B6E8A1A8E7A4BAEFBC9B0D0AEFBC8832EFBC89E4B8A4E695B0E983BDE698AF424344E7A081EFBC8CE7BB93E69E9CE794A8E58D81E8BF9BE588B6E8A1A8E7A4BAE380820D0A, 0xE8A7A3EFBC9AEFBC8831EFBC89E4BA8CE8BF9BE588B6E7A081E79BB8E58AA0EFBC9A3030313030313130EFBC8B3031303030313131EFBC9D3031313031313031EFBC9BE794A8E58D81E8BF9BE588B6E8A1A8E7A4BAE79A84E7BB93E69E9CEFBC9AEFBC9D3634EFBC8B3332EFBC8B38EFBC8B34EFBC8B31EFBC9D313039E38082EFBC8832EFBC89424344E7A081E79BB8E58AA0EFBC9A303031302030313130EFBC8B303130302030313131EFBC9D303131302031313031EFBC9BE8BF9BE8A18CEFBC8B36E4BFAEE6ADA3EFBC9A303131302031313031EFBC8B30313130EFBC9D303131312030303131EFBC9BE794A8E58D81E8BF9BE588B6E8A1A8E7A4BAE79A84E7BB93E69E9CEFBC9AEFBC9D3733E380820D0A, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('206', '3', '3', '13', 0xE8AEBE583D302E3131303130EFBC8C593D2D302E3031313131EFBC8CE8AFB7E98787E794A8E58F98E5BDA2E7A081E6938DE4BD9CE6A380E6B58BE696B9E6B395E8AEA1E7AE975B582B595DE8A1A53DEFBC9FE5B9B6E588A4E696ADE8BF90E7AE97E7BB93E69E9CE698AFE590A6E6BAA2E587BA, 0xE8A7A3EFBC9A5B585DE8A1A53D302E3131303130EFBC8C5B595DE8A1A53D312E3130303031EFBC9B30302E31313031302B31312E31303030313D30302E3031313030EFBC8CE7ACA6E58FB7E4BD8DE79A84E4BBA3E7A081E698AF3030EFBC8CE4B8A4E4B8AAE7ACA6E58FB7E4BD8DE79A84E4BBA3E7A081E4B880E887B4EFBC8CE8A1A8E7A4BAE8BF90E7AE97E7BB93E69E9CE4B88DE6BAA2E587BAE38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('207', '3', '3', '13', 0x78EFBC9DEFBC8D302E31303131EFBC8C79EFBC9DEFBC8D302E31313030EFBC8CE794A8E4B8A4E7A78DE8BF90E7AE97E696B9E6B395E588A4E696AD78EFBC8B79E698AFE590A6E6BAA2E587BAE38082, 0xE8A7A3EFBC9AE291A0E98787E794A8E58D95E7ACA6E58FB7E4BD8DE6938DE4BD9CE6A380E6B58BE696B9E6B395EFBC9A5B785DE8A1A5EFBC9D312E30313031EFBC8C5B795DE8A1A5EFBC9D312E30313030EFBC8C312E303130312B312E303130303D302E31303031EFBC8CE4B8A4E4B8AAE695B0E59D87E4B8BAE8B49FE695B0EFBC8CE79BB8E58AA0E7BB93E69E9CE4B8BAE6ADA3E695B0EFBC8CE7BB93E69E9CE4B88EE4B8A4E4B8AAE6938DE4BD9CE695B0E7ACA6E58FB7E4B88DE4B880E887B4EFBC8CE8A1A8E7A4BAE8BF90E7AE97E6BAA2E587BAEFBC9BE291A1E98787E794A8E58F98E5BDA2E7A081E6938DE4BD9CE6A380E6B58BE696B9E6B395EFBC9A5B785DE8A1A5EFBC9D31312E30313031EFBC8C5B795DE8A1A5EFBC9D31312E30313030EFBC8C31312E303130312B31312E303130303D31302E31303031EFBC8CE7ACA6E58FB7E4BD8DE79A84E4BBA3E7A081E698AF3130EFBC8CE4B8A4E4B8AAE7ACA6E58FB7E4BD8DE79A84E4BBA3E7A081E4B88DE4B880E887B4EFBC8CE8A1A8E7A4BAE8BF90E7AE97E7BB93E69E9CE6BAA2E587BAE38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('208', '3', '3', '13', 0x78EFBC9DEFBC8B302E31303131EFBC8C79EFBC9DEFBC8B302E31313031EFBC8CE794A8E4B8A4E7A78DE8BF90E7AE97E696B9E6B395E588A4E696AD78EFBC8B79E698AFE590A6E6BAA2E587BAE38082, 0xE8A7A3EFBC9AE291A0E98787E794A8E58D95E7ACA6E58FB7E4BD8DE6938DE4BD9CE6A380E6B58BE696B9E6B395EFBC9A5B785DE8A1A5EFBC9D302E31303131EFBC8C5B795DE8A1A5EFBC9D302E31313031EFBC8C302E313031312B302E313130313D312E31303030EFBC8CE4B8A4E4B8AAE695B0E59D87E4B8BAE6ADA3E695B0EFBC8CE79BB8E58AA0E7BB93E69E9CE4B8BAE8B49FE695B0EFBC8CE7BB93E69E9CE4B88EE4B8A4E4B8AAE6938DE4BD9CE695B0E7ACA6E58FB7E4B88DE4B880E887B4EFBC8CE7BB93E69E9CE6BAA2E587BAE38082E291A1E98787E794A8E58F98E5BDA2E7A081E6938DE4BD9CE6A380E6B58BE696B9E6B395EFBC9A5B785DE8A1A5EFBC9D30302E31303131EFBC8C5B795DE8A1A5EFBC9D30302E31313031EFBC8C30302E313031312B30302E313130313D30312E31303030EFBC8CE7ACA6E58FB7E4BD8DE79A84E4BBA3E7A081E698AF3031EFBC8CE4B8A4E4B8AAE7ACA6E58FB7E4BD8DE79A84E4BBA3E7A081E4B88DE4B880E887B4EFBC8CE8A1A8E7A4BAE8BF90E7AE97E7BB93E69E9CE6BAA2E587BAE38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('209', '3', '3', '13', 0xE5B7B2E79FA578EFBC9DEFBC8D302E31303131EFBC8C79EFBC9D302E30313031EFBC8CE8A681E6B182E794A8E8A1A5E7A081E5878FE6B395E8AEA1E7AE9778EFBC8D79EFBC9DEFBC9FEFBC8CE5B9B6E7BB99E587BAE8AEA1E7AE97E8BF87E7A88BEFBC8CE5908CE697B6E68C87E587BAE8AEA1E7AE97E7BB93E69E9CE698AFE590A6E6BAA2E587BAEFBC9F, 0xE8A7A3EFBC9A28312958E8A1A53D312E30313031EFBC9B283229282D7929E8A1A53D312E31303131EFBC9B28332928782D7929E8A1A53D78E8A1A52B282D7929E8A1A53D312E303130312B312E313031313D312E30303030EFBC8C782D793D2D31EFBC9B283429E6B2A1E69C89E6BAA2E587BA, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('210', '3', '3', '13', 0xE5AFB9E695B0E68DAE2B313031313042E4BD9CE8A784E6A0BCE58C96E6B5AEE782B9E695B0E79A84E7BC96E7A081EFBC8CE58187E5AE9AE585B6E4B8ADE998B6E7A081E98787E794A835E4BD8DE8A1A5E7A081EFBC88E58C85E68BACE998B6E7ACA631E4BD8DEFBC89EFBC8CE5B0BEE695B0E98787E794A83131E4BD8DE8A1A5E7A081EFBC88E58C85E68BACE5B0BEE7ACA631E4BD8DEFBC89EFBC8CE5BA95E695B0E698AF32E38082E8AFB7E58699E587BAE8AFA5E695B0E79A84E8A784E6A0BCE58C96E5BDA2E5BC8FE38082, 0xE8A7A3EFBC9A313031313042EFBC9D302E313031313042C397325E35EFBC88E68896302E313031313042C39732EFBC8B3031303142EFBC89EFBC9BE6B5AEE782B9E6A0BCE5BC8FE4B8BAEFBC9A30202030313031202030202031303131303030303030, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('211', '3', '3', '10', 0xE5B7B2E79FA578EFBC9DEFBC8B302E31303031EFBC8C79EFBC9DEFBC8D302E30313131EFBC8CE794A8E8A1A5E7A081E4B880E4BD8DE4B998E6B395EFBC88E5B883E696AFE7AE97E6B395EFBC89E8AEA1E7AE9778C39779EFBC9DEFBC9F, 0xE8A7A3EFBC9A78C39779EFBC9DEFBC8D302E3030313131313131, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('212', '3', '3', '10', 0xE5B7B2E79FA578EFBC9DEFBC8B302E31313031EFBC8C79EFBC9DEFBC8D302E31303131EFBC8CE794A8E8A1A5E7A081E4B880E4BD8DE4B998E6B395EFBC88E5B883E696AFE7AE97E6B395EFBC89E8AEA1E7AE9778C39779EFBC9DEFBC9F, 0xE8A7A3EFBC9A78C39779EFBC9DEFBC8D302E3130303031313131, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('213', '3', '3', '11', 0xE5B7B2E79FA578EFBC9DEFBC8D302E30313031EFBC8C79EFBC9DEFBC8D302E30303131EFBC8CE794A8E8A1A5E7A081E4B880E4BD8DE4B998E6B395EFBC88E5B883E696AFE7AE97E6B395EFBC89E8AEA1E7AE9778C39779EFBC9DEFBC9F, 0xE8A7A3EFBC9A78C39779EFBC9D302E3030303031313131, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('214', '3', '3', '11', 0xE5B7B2E79FA5583D325E303130E280A2302E31313031313031312C593D325E313030E280A228EFBC8D302E313031303131303029EFBC8CE6B182582B59, 0xE8A7A3EFBC9A582B593D325E303131E280A228EFBC8D302E313131303130313029, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('215', '3', '3', '11', 0xE4BB8AE69C89E4BBA5E4B88BE4B8A4E6B5AEE782B9E695B058E5928C59EFBC8CE998B6E7A081E5928CE5B0BEE695B0E59D87E4BBA5E8A1A5E7A081E8A1A8E7A4BAEFBC8CE5B7B2E79FA5EFBC9A58E79A84E998B6E7A081E4B8BA30303130EFBC8CE5B0BEE695B0E4B8BA302E31303031EFBC9B59E79A84E998B6E7A081E4B8BA31313031EFBC8CE5B0BEE695B0E4B8BA312E30313131E38082E6B18258C39759E4B98BE580BCE38082, 0xE8A7A3EFBC9AEFBC8831EFBC89E998B6E7A081E79BB8E58AA0EFBC9A30303130EFBC8B31313031EFBC9D31313131EFBC9BEFBC8832EFBC89E5B0BEE695B0E79BB8E4B998EFBC9A58E5B0BEC39759E5B0BEEFBC9DEFBC8D302E3031303130303031EFBC8CE688965B58E5B0BEC39759E5B0BE5DE8A1A5EFBC9D312E3130313031313131EFBC9BEFBC8833EFBC89E59091E5B7A6E8A784E6A0BCE58C96EFBC8CE5B7A6E7A7BB31E4BD8DEFBC8CE998B6E7A081EFBC8D31EFBC8CE4B998E7A7AFE79A84E998B6E7A081EFBC9DE998B6E7A081EFBC8D31EFBC9D31313131EFBC8D31EFBC9D31313130EFBC88E8A1A5E7A081EFBC89EFBC8CE4B998E7A7AFE79A84E5B0BEE695B0EFBC9D312E3031303131313130EFBC9BEFBC8834EFBC89E8888DE585A5EFBC88E58F9634E4BD8DE7BB93E69E9CEFBC89EFBC9A312E30313031EFBC8B302E30303031EFBC9D312E30313130EFBC88E8A1A5E7A081EFBC89EFBC8CE7BB93E69E9CEFBC9AE998B6E7A08131313130EFBC8CE5B0BEE695B0312E30313130EFBC8CE59D87E5B7B2E8A1A5E7A081E8A1A8E7A4BAE38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('216', '3', '2', '6', 0xE8AEBEE58D81E8BF9BE588B6E695B058203DEFBC882B3132382E3735EFBC89C397325E2D3130EFBC8831EFBC89E88BA528592932203D202858293130EFBC8CE794A8E5AE9AE782B9E695B0E8A1A8E7A4BA59E580BCE38082EFBC8832EFBC89E8AEBEE794A83231E4B8AAE4BA8CE8BF9BE588B6E4BD8DE8A1A8E7A4BAE6B5AEE782B9E695B0EFBC8CE998B6E7A081E794A835E4BD8DEFBC8CE585B6E4B8ADE998B6E7ACA6E794A831E4BD8DEFBC9BE5B0BEE695B0E794A83136E4BD8DEFBC8CE585B6E4B8ADE7ACA6E58FB7E794A831E4BD8DE38082E998B6E7A081E79A84E59FBAE695B0E4B8BA322EE58699E587BAE998B6E7A081E5928CE5B0BEE695B0E59D87E794A8E58E9FE7A081E8A1A8E7A4BAE79A8459E79A84E69CBAE599A8E695B0E38082EFBC8833EFBC89E58699E587BAE998B6E7A081E5928CE5B0BEE695B0E59D87E794A8E58F8DE7A081E8A1A8E7A4BAE79A8459E79A84E69CBAE599A8E695B0E38082EFBC8834EFBC89E58699E587BAE998B6E7A081E5928CE5B0BEE695B0E59D87E794A8E8A1A5E7A081E8A1A8E7A4BAE79A8459E79A84E69CBAE599A8E695B0E38082, 0xE8A7A3EFBC9AEFBC8831EFBC8959203D202B31303030303030302E3131C397325E2D3130203D20302E303031303030303030303131203D20302E31303030303030303131C397325E2D32EFBC9BEFBC8832EFBC89E58E9FE7A081E8A1A8E7A4BAE5BDA2E5BC8FEFBC9AE5B0BEE7ACA6EFBC9A30EFBC8CE998B6E7ACA6EFBC9A31EFBC8CE998B6E7A081EFBC9A30303130EFBC8CE5B0BEE695B0EFBC9A313030303030303031313030303030EFBC9BEFBC8833EFBC89E58F8DE7A081E8A1A8E7A4BAE5BDA2E5BC8FEFBC9AE5B0BEE7ACA6EFBC9A30EFBC8CE998B6E7ACA6EFBC9A31EFBC8CE998B6E7A081EFBC9A31313031EFBC8CE5B0BEE695B0EFBC9A313030303030303031313030303030EFBC8CEFBC8834EFBC89E8A1A5E7A081E8A1A8E7A4BAE5BDA2E5BC8FEFBC9AE5B0BEE7ACA6EFBC9A30EFBC8CE998B6E7ACA6EFBC9A31EFBC8CE998B6E7A081EFBC9A31313130EFBC8CE5B0BEE695B0EFBC9A3130303030303030313130303030302E, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('217', '3', '3', '10', 0xE58187E8AEBEE68C87E4BBA4E4B8ADE59CB0E59D80E7A081E79A84E580BCE698AF31303030EFBC8CE5AF84E5AD98E599A852E4B8ADE79A84E695B0E580BCE698AF31303030EFBC8CE59CB0E59D80E4B8BA31303030E79A84E5AD98E582A8E599A8E4B8ADE5AD98E582A8E79A84E695B0E68DAEE4B8BA32303030EFBC8CE59CB0E59D80E4B8BA32303030E79A84E5AD98E582A8E58D95E58583E4B8ADE5AD98E582A8E79A84E695B0E68DAEE698AF33303030EFBC8C5043E79A84E580BCE698AF34303030EFBC8CE8AFB4E587BAE4B88BE8BFB0E59084E5AFBBE59D80E696B9E5BC8FE58F96E5BE97E79A84E695B0E68DAEE698AFE4BB80E4B988EFBC9FEFBC8831EFBC89E79BB4E68EA5E5AFBBE59D80EFBC9BEFBC8832EFBC89E5AF84E5AD98E599A8E5AFBBE59D80EFBC9BEFBC8833EFBC89E5AF84E5AD98E599A8E997B4E68EA5E5AFBBE59D80EFBC9BEFBC8834EFBC89E5AD98E582A8E599A8E997B4E68EA5E5AFBBE59D80EFBC9BEFBC8835EFBC89E7AB8BE58DB3E695B0E5AFBBE59D80E38082, 0xE7AD94EFBC9AEFBC8831EFBC89E79BB4E68EA5E5AFBBE59D80EFBC9A32303030EFBC9BEFBC8832EFBC89E5AF84E5AD98E599A8E5AFBBE59D80EFBC9A31303030EFBC9BEFBC8833EFBC89E5AF84E5AD98E599A8E997B4E68EA5E5AFBBE59D80EFBC9A32303030EFBC9BEFBC8834EFBC89E5AD98E582A8E599A8E997B4E68EA5E5AFBBE59D80EFBC9A33303030EFBC9BEFBC8835EFBC89E7AB8BE58DB3E695B0E5AFBBE59D80EFBC9A31303030E38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('218', '3', '3', '10', 0xE69C89E4B880E69DA1E79BB8E5AFB9E5AFBBE59D80E79A84E697A0E69DA1E4BBB6E8BDACE7A7BBE68C87E4BBA4EFBC8CE5AD98E4BA8EE58685E5AD98E79A84303130303030303042E58D95E58583E4B8ADEFBC8CE68C87E4BBA4E7BB99E587BAE79A84E4BD8DE7A7BBE9878F443D30313131303042EFBC8CE8A681E6B182EFBC9AEFBC8831EFBC89E8AEA1E7AE97E68C87E4BBA4E79A84E8BDACE7A7BBE59CB0E59D80EFBC9BEFBC8832EFBC89E7BB99E587BAE58F96E8AFA5E68C87E4BBA4E697B65043E79A84E58685E5AEB9EFBC9BEFBC8833EFBC89E7BB99E587BAE8AFA5E68C87E4BBA4E689A7E8A18CE7BB93E69D9FE697B65043E79A84E58685E5AEB9E38082, 0xE8A7A3EFBC9AEFBC8831EFBC89E8BDACE7A7BBE59CB0E59D80EFBC9DEFBC885043EFBC89EFBC8B44EFBC9D303130313131303042EFBC9BEFBC8832EFBC89EFBC885043EFBC89EFBC9D303130303030303042EFBC9BEFBC8833EFBC89EFBC885043EFBC89EFBC9D303130313131303042, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('219', '3', '3', '9', 0xE8AEBEE69C89E58D95E59CB0E59D80E58AA0E6B395E68C87E4BBA44F502044EFBC8CE585B6E4B8AD44E4B8BA3534384148EFBC9BE8808C283534384148293D3332423948EFBC8C283332423948293D3343354448EFBC8C283343354448293D3637453148EFBC8C284143293D3230303748E38082E8AF95E997AEEFBC9AEFBC8831EFBC89E88BA54F50E698AFE7AB8BE58DB3E695B0E5AFBBE59D80E58AA0E6B395E68C87E4BBA4EFBC8CE982A3E4B988E8AFA5E68C87E4BBA4E689A7E8A18CE5908EEFBC8C4143E79A84E58685E5AEB9E698AFE4BB80E4B9883FEFBC8832EFBC89E88BA54F50E698AFE79BB4E68EA5E5AFBBE59D80E58AA0E6B395E68C87E4BBA4EFBC8CE982A3E4B988E8AFA5E68C87E4BBA4E689A7E8A18CE5908EEFBC8C4143E79A84E58685E5AEB9E698AFE4BB80E4B9883FEFBC8833EFBC89E88BA54F50E698AFE997B4E68EA5E5AFBBE59D80E58AA0E6B395E68C87E4BBA4EFBC8CE982A3E4B988E8AFA5E68C87E4BBA4E689A7E8A18CE5908EEFBC8C4143E79A84E58685E5AEB9E698AFE4BB80E4B9883F, 0xE8A7A3EFBC9AEFBC8831EFBC894143E79A84E58685E5AEB9EFBC9D28414329EFBC8B3534384148EFBC9D3230303748EFBC8B3534384148EFBC9D3734393148EFBC9BEFBC8832EFBC894143E79A84E58685E5AEB9EFBC9D28414329EFBC8B28353438414829EFBC9D3230303748EFBC8B3332423948EFBC9D3532433048EFBC9BEFBC8833EFBC894143E79A84E58685E5AEB9EFBC9D28414329EFBC8B282835343841482929EFBC9D3230303748EFBC8B28333242394829EFBC9D3230303748EFBC8B3343354448EFBC9D3543363448, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('220', '3', '4', '17', 0xE69C89E88BA5E5B9B2E78987314DC39738E4BD8DE79A845352414DE88AAFE78987EFBC8CE98787E794A8E5AD97E689A9E5B195E696B9E6B395E69E84E68890344D42E5AD98E582A8E599A8EFBC8CE997AEEFBC9A28312920E99C80E8A681E5A49AE5B091E7898752414DE88AAFE78987EFBC9F28322920E8AFA5344D42E5AD98E582A8E599A8E99C80E8A681E5A49AE5B091E59CB0E59D80E4BD8DEFBC9F, 0xE8A7A3EFBC9A28312920E99C80E8A681344D2F314D203D2034E789875352414DE88AAFE78987EFBC9B28322920E99C80E8A6813232E69DA1E59CB0E59D80E7BABFEFBC9B, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('221', '3', '4', '17', 0xE8AEBEE69C89E88BA5E5B9B2E789873235364BC39738E4BD8DE79A845352414DE88AAFE78987EFBC8CE997AEEFBC9A28312920E98787E794A8E5AD97E689A9E5B195E696B9E6B395E69E84E68890323034384B42E79A84E5AD98E582A8E599A8E99C80E8A681E5A49AE5B091E789875352414DE88AAFE78987EFBC9F28322920E8AFA5E5AD98E582A8E599A8E99C80E8A681E5A49AE5B091E5AD97E88A82E59CB0E59D80E4BD8DEFBC9F, 0xE8A7A3EFBC9A283129E8AFA5E5AD98E582A8E599A8E99C80E8A681323034384B2F3235364B203D2038E789875352414DE88AAFE78987EFBC9B283229E99C80E8A6813231E69DA1E59CB0E59D80E7BABFEFBC8CE59BA0E4B8BA325E32313D323034384BEFBC8CE585B6E4B8ADE9AB9833E4BD8DE794A8E4BA8EE88AAFE78987E98089E68BA9EFBC8CE4BD8E3138E4BD8DE4BD9CE4B8BAE6AF8FE4B8AAE5AD98E582A8E599A8E88AAFE78987E79A84E59CB0E59D80E8BE93E585A5E38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('222', '3', '8', '36', 0xE8AEBEE69C89E88BA5E5B9B2E789873235364BC39738E4BD8DE79A845352414DE88AAFE78987EFBC8CE997AEEFBC9A28312920E5A682E4BD95E69E84E68890323034384BC3973332E4BD8DE79A84E5AD98E582A8E599A8EFBC9F28322920E99C80E8A681E5A49AE5B091E7898752414DE88AAFE78987EFBC9F28332920E8AFA5E5AD98E582A8E599A8E99C80E8A681E5A49AE5B091E5AD97E88A82E59CB0E59D80E4BD8DEFBC9F, 0xE8A7A3EFBC9A283129E98787E794A8E5AD97E4BD8DE689A9E5B195E79A84E696B9E6B395EFBC9B283229E99C80E8A6813332E789875352414DE88AAFE78987EFBC9B283329E99C80E8A6813233E69DA1E59CB0E59D80E7BABFEFBC8CE59BA0E4B8BA325E32313D323034384BEFBC8CE585B6E4B8ADE9AB9833E4BD8DE794A8E4BA8EE88AAFE78987E98089E68BA9EFBC8CE4BD8E3138E4BD8DE4BD9CE4B8BAE6AF8FE4B8AAE5AD98E582A8E599A8E88AAFE78987E79A84E59CB0E59D80E8BE93E585A5EFBC9BE6AF8FE4B8AAE5AD973332E4BD8DEFBC8CE58DB334E5AD97E88A82EFBC8CE99C80E8A68132E4BD8DE59CB0E59D80E58FAFE4BBA5E8AEBFE997AEE588B0E5AD97E88A82E3808232312B323D3233E4BD8DE5AD97E88A82E59CB0E59D80E4BD8DE38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('223', '3', '8', '36', 0xE794A8E2809C3132384BC39738E4BD8DE2809DE79A845352414DE88AAFE78987E8AEBEE8AEA1E4B880E4B8AAE680BBE5AEB9E9878FE4B8BAE2809C3531324BC3973136E4BD8DE2809DE79A84E5AD98E582A8E599A8EFBC8CE697A2E883BDE6BBA1E8B6B3E5AEB9E9878FE4B88AE79A84E8A681E6B182EFBC8CE58F88E883BDE6BBA1E8B6B3E5AD97E995BFE79A84E8A681E6B182E38082E997AEEFBC9AEFBC8831EFBC89E99C80E8A681E5A49AE5B091E78987E2809C3132384BC39738E4BD8DE2809DE79A84E5AD98E582A8E599A8E88AAFE78987EFBC9FEFBC8832EFBC89E5BA94E98787E794A8E4BD95E7A78DE7BB84E7BB87E696B9E5BC8FEFBC9FEFBC8833EFBC89E99C80E8A681E5A49AE5B091E4BD8DE59CB0E59D80E7BABFEFBC9FE585B6E4B8ADE5A49AE5B091E4BD8DE794A8E4BA8EE8AEBFE997AEE5AD98E582A8E599A8E88AAFE78987EFBC9FE5A49AE5B091E4BD8DE794A8E4BA8EE78987E98089EFBC9F, 0xE7AD94EFBC9AEFBC8831EFBC89E99C80E8A681EFBC883531324B2F3132384BEFBC89C397EFBC8831362F38EFBC893D34C397323D38E78987E88AAFE78987EFBC9BEFBC8832EFBC89E697A2E8A681E689A9E5B195E5AEB9E9878FEFBC8CE58F88E8A681E689A9E5B195E5AD97E995BFEFBC8CE5BA94E98787E794A8E5AD97E4BD8DE5908CE697B6E689A9E5B195E79A84E7BB84E7BB87E696B9E5BC8FEFBC9BEFBC8833EFBC893531324BE59CB0E59D80E7A9BAE997B4E99C80E8A6813139E4BD8DE59CB0E59D80E7BABFEFBC8CE585B6E4B8AD3137E4BD8DE59CB0E59D80E7BABFE794A8E4BA8EE8AEBFE997AEE5AD98E582A8E599A8E88AAFE78987EFBC883132384BEFBC89EFBC8CE58FA6E5A49632E4BD8DE59CB0E59D80E7BABFE794A8E4BA8EE78987E98089E38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('224', '3', '5', '22', 0xE8AEBEE58685E5AD98E68C89E5AD97E88A82E7BC96E59D80EFBC8CE88BA5384BC39738626974E5AD98E582A8E7A9BAE997B4E79A84E8B5B7E5A78BE59CB0E59D80E4B8BA3730303048EFBC8CE58899E8AFA5E5AD98E582A8E7A9BAE997B4E79A84E69C80E5A4A7E59CB0E59D80E7BC96E58FB7E4B8BAE5A49AE5B091EFBC9F, 0xE8A7A3EFBC9AE58685E5AD98E68C89E5AD97E88A82E7BC96E59D80EFBC8CE58DB3E58685E5AD98E5AD97E995BFE4B8BA31E5AD97E88A823D38E4BD8D3B384B3D325E3133EFBC8CE59CB0E59D80E88C83E59BB4E4BB8E303030303030303030303030307E31313131313131313131313131EFBC8CE58DB330303030487E31464646483BE88BA5E5AD98E582A8E7A9BAE997B4E79A84E8B5B7E5A78BE59CB0E59D80E4B8BA3730303048EFBC8CE58899E8AFA5E5AD98E582A8E7A9BAE997B4E79A84E69C80E5A4A7E59CB0E59D80E7BC96E58FB7E4B8BA37303030482B31464646483D3846464648, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('225', '3', '5', '22', 0xE88BA5E58685E5AD98E68C89E5AD97E88A82E7BC96E59D80EFBC8CE794A8E5AD98E582A8E5AEB9E9878F33324BC39738626974E79A84E5AD98E582A8E599A8E88AAFE78987E69E84E68890E59CB0E59D80E7BC96E58FB7413030303048E887B3444646464648E79A84E58685E5AD98E7A9BAE997B4EFBC8CE58899E887B3E5B091E99C80E8A681E5A49AE5B091E78987EFBC9F, 0xE8A7A3EFBC9AE58685E5AD98E68C89E5AD97E88A82E7BC96E59D80EFBC8CE58DB3E58685E5AD98E5AD97E995BFE4B8BA31E5AD97E88A823D38E4BD8D3BE58685E5AD98E7A9BAE997B4E59CB0E59D80E7BC96E58FB7E4BB8E413030303048E887B3444646464648EFBC8CE58899E58685E5AD98E7A9BAE997B4E5AEB9E9878FE4B8BA4446464646482D4130303030482B313D3430303030483D325E31383D325E384B0D0A3B325E384B2F33324B3D380D0A, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('226', '3', '5', '22', 0xE88BA5E58685E5AD98E68C89E5AD97E88A82E7BC96E59D80EFBC8CE794A8E5AD98E582A8E5AEB9E9878F384BC39738626974E79A84E5AD98E582A8E599A8E88AAFE78987E69E84E68890E59CB0E59D80E7BC96E58FB73730303048E887B34546464648E79A84E58685E5AD98E7A9BAE997B4EFBC8CE58899E887B3E5B091E99C80E8A681E5A49AE5B091E78987EFBC9F, 0xE8A7A3EFBC9AE58685E5AD98E68C89E5AD97E88A82E7BC96E59D80EFBC8CE58DB3E58685E5AD98E5AD97E995BFE4B8BA31E5AD97E88A823D38E4BD8DEFBC9BE58685E5AD98E7A9BAE997B4E59CB0E59D80E7BC96E58FB7E4BB8E3730303048E887B34546464648EFBC8CE58899E58685E5AD98E7A9BAE997B4E5AEB9E9878FE4B8BA45464646482D37303030482B313D38303030483D3231353D32354BEFBC9B0D0A32354B2F384B3D340D0A, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('227', '3', '5', '22', 0xE69F90E8AEA1E7AE97E69CBAE58685E5AD98E68C89E5AD97E88A82E7BC96E59D80EFBC8CE58685E5AD98E59CB0E59D80E58CBAE59F9FE4BB8E343430303048E588B0364246464648E38082EFBC8831EFBC89E8AFB7E997AEE8AFA5E58685E5AD98E585B1E69C89E5A49AE5B0914BE5AD97E88A82E79A84E5AD98E582A8E5AEB9E9878FEFBC9FEFBC8832EFBC89E88BA5E98787E794A831364BC39734626974E79A845352414DE88AAFE78987EFBC8CE69E84E68890E8AFA5E58685E5AD98E585B1E99C80E5A49AE5B091E78987EFBC9F, 0xE8A7A3EFBC9AEFBC8831EFBC89E58685E5AD98E68C89E5AD97E88A82E7BC96E59D80EFBC8CE58DB3E58685E5AD98E5AD97E995BFE4B8BA31E5AD97E88A823D38E4BD8DEFBC8CE58685E5AD98E7A9BAE997B4E59CB0E59D80E7BC96E58FB7E4BB8E343430303048E887B3364246464648EFBC8CE58899E58685E5AD98E7A9BAE997B4E5AEB9E9878FE4B8BA3642464646482D3434303030482B313D3238303030483D313630C397325E31303D3136304BEFBC9BEFBC8832EFBC89EFBC883136304B2F31364BEFBC89C397EFBC88382F34EFBC893D3230, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('228', '3', '5', '22', 0xE69F90E8AEA1E7AE97E69CBAE79A84E5AD97E995BFE698AF3332E4BD8DEFBC8CE585B6E58685E5AD98E5AEB9E9878FE698AF314742EFBC8CE88BA5E58685E5AD98E7A9BAE997B4E68C89E5AD97E7BC96E59D80EFBC8CE982A3E4B988E585B6E59CB0E59D80E88C83E59BB4E698AFE5A49AE5B091EFBC9FEFBC88E58D81E585ADE8BF9BE588B6E8A1A8E7A4BAEFBC89, 0xE8A7A3EFBC9A303030303030307E46464646464646, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('229', '3', '5', '22', 0xE88BA5E4B880E58685E5AD98E59CB0E59D80E4BB8E3430303048E588B03433464648EFBC8CE8AFB7E997AEEFBC9AE8AFA5E58685E5AD98E585B1E69C89E5A49AE5B091E4B8AAE58685E5AD98E58D95E58583EFBC9F, 0xE8A7A3EFBC9AE58685E5AD98E7A9BAE997B4E59CB0E59D80E4BB8E3430303048E887B33433464648EFBC8CE58899E58685E5AD98E7A9BAE997B4E585B1E69C8934334646482D34303030482B313D343030483D3231303D31303234E4B8AAE5AD98E582A8E58D95E585830D0A, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('230', '3', '5', '22', 0xE8A681E69E84E68890344DC39738626974E79A84E5AD98E582A8E599A8EFBC8CE8AFB7E997AEEFBC9AEFBC8831EFBC89E88BA5E98787E794A83235364BC39738626974E79A84E88AAFE78987EFBC8CE99C80E5A49AE5B091E78987EFBC9FEFBC8832EFBC89E88BA5E98787E794A83531324BC39731626974E79A84E88AAFE78987EFBC8CE99C80E5A49AE5B091E78987EFBC9F0D0A, 0xE8A7A3EFBC9AEFBC8831EFBC89344DC397313032342F3235364B3D3136E78987EFBC8832EFBC89EFBC88344DC397313032342F3531324BEFBC89C397EFBC88382F31EFBC893D3634E789870D0A, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('231', '3', '4', '17', 0x33372E09E69C89E4B880E4B8AA3531324BC3973136E4BD8DE79A84E5AD98E582A8E599A8EFBC8CE794B136344BC39731E4BD8DE79A8452414DE88AAFE78987E69E84E68890EFBC88E88AAFE78987E58685E698AF34E4B8AA313238C397313238E7BB93E69E84EFBC89EFBC8CE997AEEFBC9AEFBC8831EFBC89E680BBE585B1E99C80E8A681E5A49AE5B091E4B8AA52414DE88AAFE78987EFBC9FEFBC8832EFBC89E98787E794A8E58886E695A3E588B7E696B0E696B9E5BC8FEFBC8CE5A682E58D95E58583E588B7E696B0E997B4E99A94E4B88DE8B685E8BF87326D73EFBC8CE58899E588B7E696B0E4BFA1E58FB7E79A84E591A8E69C9FE698AFE5A49AE5B091EFBC9FEFBC8833EFBC89E98787E794A8E99B86E4B8ADE588B7E696B0E696B9E5BC8FEFBC8CE8AEBEE8AFBB2FE58699E591A8E69C9F54EFBC9D302E31CEBC73EFBC8CE5AD98E582A8E599A8E588B7E696B0E4B880E9818DE69C80E5B091E794A8E5A49AE5B091E697B6E997B4EFBC9F, 0xE7AD94EFBC9AEFBC8831EFBC89E680BBE585B1E99C80E8A681EFBC883531322F3634EFBC89C3973136EFBC9D313238E78987EFBC9BEFBC8832EFBC89E58886E695A3E588B7E696B0E79A84E588B7E696B0E591A8E69C9FEFBC9D326D732F313238EFBC9D31352E363235CEBC73E38082EFBC8833EFBC89E99B86E4B8ADE588B7E696B0E4B880E9818DE79A84E697B6E997B4EFBC9D302E31CEBC73C397313238EFBC9D31322E38CEBC73E38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('232', '3', '11', '54', 0xE59CA8435055E689A7E8A18CE4B880E6AEB5E7A88BE5BA8FE79A84E8BF87E7A88BE4B8ADEFBC8C4361636865E79A84E5AD98E58F96E6ACA1E695B0E4B8BA33383030E6ACA1EFBC8CE794B1E4B8BBE5AD98E5AE8CE68890E79A84E5AD98E58F96E6ACA1E695B0E4B8BA323030E6ACA1E38082E88BA54361636865E79A84E5AD98E58F96E591A8E69C9FE4B8BA356E73EFBC8CE4B8BBE5AD98E79A84E5AD98E58F96E591A8E69C9FE4B8BA32356E73EFBC8CE8AFB7E997AEEFBC9AEFBC8831EFBC894361636865E79A84E591BDE4B8ADE78E87E4B8BAE5A49AE5B091EFBC9FEFBC8832EFBC89435055E79A84E5B9B3E59D87E8AEBFE997AEE697B6E997B4E4B8BAE5A49AE5B0916E73EFBC9F, 0xE8A7A3EFBC9AEFBC8831EFBC89333830302FEFBC88333830302B323030EFBC893D302E3935EFBC9BEFBC8832EFBC89EFBC8835C39733383030202B203235C397323030EFBC892F34303030203D20366E73, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('233', '3', '11', '54', 0xE58187E8AEBEE4B8BBE5AD98E5AEB9E9878FE4B8BAE2809C31364DC3973332E4BD8DE2809DEFBC8C6361636865E5AEB9E9878FE4B8BAE2809C36344BC3973332E4BD8DE2809DEFBC8CE4B8BBE5AD98E4B88E6361636865E4B98BE997B4E4BBA5E6AF8FE59D9734C3973332E4BD8DE5A4A7E5B08FE4BCA0E98081E695B0E68DAEEFBC8CE88BA5E98787E794A8E59CB0E59D80E79BB4E68EA5E698A0E5B084E696B9E5BC8FEFBC8CE997AEEFBC9AEFBC8831EFBC89E4B8BBE5AD98E59CB0E59D80E4B8BAE5A49AE5B091E4BD8DEFBC9FE585B6E4B8ADE59D97E58685E59CB0E59D80E4B8BAE587A0E4BD8DEFBC9FE59D97E58FB7E4B8BAE587A0E4BD8DE59CB0E59D80EFBC9FE4B8BBE5AD98E6A087E8AEB0EFBC88E58DB3E7BB84E58FB7EFBC89E4B8BAE587A0E4BD8DE59CB0E59D80EFBC9FEFBC8832EFBC896361636865E59CB0E59D80E4B8BAE5A49AE5B091E4BD8DEFBC9FE585B6E4B8ADE59D97E58685E59CB0E59D80E4B8BAE587A0E4BD8DEFBC9FE59D97E58FB7E4B8BAE587A0E4BD8DE59CB0E59D80EFBC9F, 0xE7AD94EFBC9AEFBC8831EFBC89E4B8BBE5AD98EFBC9A31364DE5AD98E582A8E7A9BAE997B4EFBC8CE99C80E8A6813234E4BD8DE59CB0E59D80EFBC9BE585B6E4B8ADEFBC8CE59D97E5868534C3973332E79A84E5AEB9E9878FE99C80E8A68132E4BD8DE59CB0E59D80EFBC9B31364D2F36344B3D323536E7BB84EFBC8CE6AF8FE7BB8436344B2F343D31364BE59D97EFBC8CE59BA0E6ADA4EFBC8CE59D97E58FB7E4B8BA3134E4BD8DEFBC88E6BBA1E8B6B331364BE59D97E79A84E8AEBFE997AEEFBC89EFBC9BE4B8BBE5AD98E6A087E8AEB0EFBC88E7BB84E58FB7EFBC89E4B8BA38E4BD8DEFBC8CE6BBA1E8B6B3E5AFB9323536E7BB84E79A84E8AEBFE997AEE38082EFBC8832EFBC896361636865EFBC9A36344BC3973332E4BD8DEFBC8CE99C80E8A6813136E4BD8DE59CB0E59D80EFBC9BE585B6E4B8ADEFBC8CE59D97E5868534C3973332E79A84E5AEB9E9878FE99C80E8A68132E4BD8DE59CB0E59D80EFBC9B36344B2F343D31364BE59D97EFBC8CE59BA0E6ADA4EFBC8CE59D97E58FB7E4B8BA3134E4BD8DE38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('234', '3', '11', '54', 0xE58187E8AEBEE4B8BBE5AD98E5AEB9E9878FE4B8BAE2809C31364DC3973332E4BD8DE2809DEFBC8C6361636865E5AEB9E9878FE4B8BAE2809C36344BC3973332E4BD8DE2809DEFBC8CE4B8BBE5AD98E4B88E6361636865E4B98BE997B4E4BBA5E6AF8FE59D9734C3973332E4BD8DE5A4A7E5B08FE4BCA0E98081E695B0E68DAEEFBC8CE88BA5E98787E794A8E585A8E79BB8E88194E59CB0E59D80E698A0E5B084E696B9E5BC8FEFBC8CE997AEEFBC9AEFBC8831EFBC89E4B8BBE5AD98E59CB0E59D80E4B8BAE5A49AE5B091E4BD8DEFBC9FE585B6E4B8ADE59D97E58685E59CB0E59D80E4B8BAE587A0E4BD8DEFBC9FE4B8BBE5AD98E6A087E8AEB0EFBC88E58DB3E59D97E58FB7EFBC89E4B8BAE587A0E4BD8DE59CB0E59D80EFBC9FEFBC8832EFBC896361636865E59CB0E59D80E4B8BAE5A49AE5B091E4BD8DEFBC9FE585B6E4B8ADE59D97E58685E59CB0E59D80E4B8BAE587A0E4BD8DEFBC9FE59D97E58FB7E4B8BAE587A0E4BD8DE59CB0E59D80EFBC9F, 0xE7AD94EFBC9AEFBC8831EFBC89E4B8BBE5AD98EFBC9A31364DE5AD98E582A8E7A9BAE997B4EFBC8CE99C80E8A6813234E4BD8DE59CB0E59D80EFBC9BE585B6E4B8ADEFBC8CE59D97E5868534C3973332E79A84E5AEB9E9878FE99C80E8A68132E4BD8DE59CB0E59D80EFBC9B31364D2F343D344DE59D97EFBC8CE59BA0E6ADA4EFBC8CE4B8BBE5AD98E6A087E8AEB0EFBC88E58DB3E59D97E58FB7EFBC89E4B8BA3232E4BD8DEFBC88E6BBA1E8B6B3E5AFB9344DE59D97E79A84E8AEBFE997AEEFBC89E38082EFBC8832EFBC896361636865EFBC9A36344BC3973332E4BD8DEFBC8CE99C80E8A6813136E4BD8DE59CB0E59D80EFBC9BE585B6E4B8ADEFBC8CE59D97E5868534C3973332E79A84E5AEB9E9878FE99C80E8A68132E4BD8DE59CB0E59D80EFBC9B36344B2F343D31364BE59D97EFBC8CE59BA0E6ADA4EFBC8CE59D97E58FB7E4B8BA3134E4BD8DE38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('235', '3', '5', '22', 0xE4B8BBE5AD98E582A8E599A8E5AEB9E9878FE4B8BA344D42EFBC8CE8999AE5AD98E5AEB9E9878FE4B8BA314742EFBC8CE8999AE68B9FE59CB0E59D80E5928CE789A9E79086E59CB0E59D80E59084E4B8BAE5A49AE5B091E4BD8DEFBC9FE6A0B9E68DAEE5AFBBE59D80E696B9E5BC8FE8AEA1E7AE97E587BAE69DA5E79A84E69C89E69588E59CB0E59D80E698AFE8999AE68B9FE59CB0E59D80E8BF98E698AFE789A9E79086E59CB0E59D80EFBC9FE5A682E69E9CE9A1B5E99DA2E5A4A7E5B08FE4B8BA346B42EFBC8CE9A1B5E8A1A8E995BFE5BAA6E698AFE5A49AE5B091EFBC9F, 0xE8A7A3EFBC9AE8999AE5AD98E5AEB9E9878FEFBC9D314742EFBC9D325E333042EFBC8CE4B8BBE5AD98E5AEB9E9878FEFBC9D344D42EFBC9D325E323242EFBC8CE68980E4BBA5E8999AE68B9FE59CB0E59D80E5928CE789A9E79086E59CB0E59D80E58886E588ABE4B8BA3330E4BD8DE5928C3232E4BD8DEFBC9BE6A0B9E68DAEE5AFBBE59D80E696B9E5BC8FE8AEA1E7AE97E587BAE69DA5E79A84E69C89E69588E59CB0E59D80E698AFE8999AE68B9FE59CB0E59D80EFBC9B346B42EFBC9D325E313242EFBC8C325E3330422F325E313242EFBC9D325E3138EFBC8CE68980E4BBA5E9A1B5E8A1A8E995BFE5BAA6E4B8BA325E3138, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('236', '3', '7', '33', 0xE4B880E4B8AAE69C893332E4BD8DE7A88BE5BA8FE59CB0E59D80E7A9BAE997B4EFBC8CE9A1B5E99DA2E5AEB9E9878FE4B8BA314B42EFBC8CE4B8BBE5AD98E79A84E5AEB9E9878FE4B8BA384D42E79A84E5AD98E582A8E7B3BBE7BB9FEFBC8CE997AEEFBC9AEFBC8831EFBC89E8999AE9A1B5E58FB7E5AD97E6AEB5E69C89E5A49AE5B091E4BD8DEFBC9FE9A1B5E8A1A8E5B086E69C89E5A49AE5B091E8A18CEFBC9FEFBC8832EFBC89E9A1B5E8A1A8E79A84E6AF8FE4B880E8A18CE69C89E5A49AE5B091E4BD8DEFBC9FE9A1B5E8A1A8E79A84E5AEB9E9878FE69C89E5A49AE5B091E5AD97E88A82EFBC9F, 0xE8A7A3EFBC9AEFBC8831EFBC89325E3332422F314B423D325E3232EFBC8CE9A1B5E8A1A8E79A84E995BFE5BAA6E4B8BA325E3232203D344DE8A18CE38082EFBC8832EFBC89E4B8BBE5AD98E79A84E5AEB9E9878FE4B8BA384D423D325E323342EFBC8CE4B8BBE5AD98E4B8ADE9A1B5E6A186E69EB6E79A84E695B0E9878FE69C89325E3233202F20325E3130203D20325E3133E4B8AAE38082E9A1B5E8A1A8E4B8ADE4B8BBE5AD98E9A1B5E58FB7E5AD97E6AEB5E698AF3133E4BD8DE995BFEFBC8CE58AA0E4B88AE585B6E5AE83E4BFA1E681AFE5B086E8B685E8BF873136E4BD8DE38082E8AEBEE9A1B5E8A1A8E79A84E6AF8FE4B880E9A1B9E4B8BA3136E4BD8DEFBC8CE9A1B5E8A1A8E79A84E5AEB9E9878FE4B8BA344DC39732203D20384D42E38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('237', '3', '7', '33', 0xE4B880E4B8AAE69C893330E4BD8DE7A88BE5BA8FE59CB0E59D80E7A9BAE997B4EFBC8CE9A1B5E99DA2E5AEB9E9878FE4B8BA314B42EFBC8CE4B8BBE5AD98E79A84E5AEB9E9878FE4B8BA384D42E79A84E5AD98E582A8E7B3BBE7BB9FEFBC8CE997AEEFBC9AEFBC8831EFBC89E8999AE9A1B5E58FB7E5AD97E6AEB5E69C89E5A49AE5B091E4BD8DEFBC9FEFBC8832EFBC89E9A1B5E8A1A8E5B086E69C89E5A49AE5B091E8A18CEFBC9FEFBC8833EFBC89E88BA5E9A1B5E8A1A8E79A84E6AF8FE4B880E8A18CE58C85E68BACE5AE9EE9A1B5E58FB7E38081E8A385E585A5E4BD8DE38081E69C89E69588E4BD8DE5928CE69BBFE68DA2E4BD8DEFBC8CE997AEEFBC9AE9A1B5E8A1A8E79A84E6AF8FE4B880E8A18CE69C89E5A49AE5B091E4BD8DEFBC9FEFBC8834EFBC89E9A1B5E8A1A8E79A84E5AEB9E9878FE69C89E5A49AE5B091E5AD97E88A82EFBC9F, 0xE7AD94EFBC9AEFBC8831EFBC89325E3330422F314B423D325E3230EFBC8CE8999AE9A1B5E58FB7E5AD97E6AEB5E69C893230E4BD8DEFBC9BEFBC8832EFBC89E9A1B5E8A1A8E79A84E995BFE5BAA6E4B8BA325E3230203D314DE8A18CE38082EFBC8833EFBC89E4B8BBE5AD98E79A84E5AEB9E9878FE4B8BA384D423D325E323342EFBC8CE4B8BBE5AD98E4B8ADE9A1B5E6A186E69EB6E79A84E695B0E9878FE69C89325E3233202F20325E3130203D20325E3133E4B8AAE38082E9A1B5E8A1A8E4B8ADE4B8BBE5AD98E9A1B5E58FB7E5AD97E6AEB5E698AF3133E4BD8DE995BFEFBC8CE58AA0E4B88AE585B6E5AE83E4BFA1E681AFE4BD8DE585B13136E4BD8DE38082EFBC8834EFBC89E8AEBEE9A1B5E8A1A8E79A84E6AF8FE4B880E9A1B9E4B8BA3136E4BD8DEFBC8CE9A1B5E8A1A8E79A84E5AEB9E9878FE4B8BA314DC39732203D20324D42E38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('238', '3', '7', '33', 0xE8AEBEE69C89E4B880E4B8AAE585B7E69C893132E4BD8DE59CB0E59D80E5928C34E4BD8DE5AD97E995BFE79A84E5AD98E582A8E599A8EFBC8CE997AEEFBC9AEFBC8831EFBC89E8AFA5E5AD98E582A8E599A8E883BDE5AD98E582A8E5A49AE5B091E5AD97E88A82E4BFA1E681AFEFBC9FEFBC8832EFBC89E5A682E69E9CE5AD98E582A8E599A8E794B1314BC39731E4BD8DE79A8452414DE88AAFE78987E7BB84E68890EFBC8CE99C80E8A681E5A49AE5B091E78987E8AFA5E88AAFE78987EFBC9FEFBC8833EFBC89E8AFA5E5AD98E582A8E599A8E98787E794A8E4BD95E7A78DE7BB84E7BB87E696B9E5BC8FEFBC9FEFBC88E4B8B2E88194E38081E5B9B6E88194E38081E4B8B2E5B9B6E88194EFBC89EFBC8834EFBC89E99C80E8A681E5A49AE5B091E4BD8DE59CB0E59D80E4BD8DE4BD9CE4B8BAE78987E98089EFBC9FE5A49AE5B091E4BD8DE59CB0E59D80E4BD9CE4B8BAE78987E58685E5AFBBE59D80EFBC9F, 0xE7AD94EFBC9AEFBC8831EFBC89E8AFA5E5AD98E582A8E599A8E4B8BA344BC39734EFBC8CE883BDE5AD98E582A8324BE5AD97E88A82E4BFA1E681AFEFBC9BEFBC8832EFBC89E99C80E8A6813136E78987EFBC9BEFBC8833EFBC89E4B8B2E5B9B6E88194EFBC9BEFBC8834EFBC8932E4BD8DE78987E98089EFBC8C3130E4BD8DE78987E58685E5AFBBE59D80E38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('239', '4', '2', '6', 0xE8AFB7E58699E587BA38E4BD8DE5AE9AE782B9E58E9FE7A081E695B4E695B0E4B8ADE883BDE8A1A8E7A4BAE79A84E69C80E5A4A7E6ADA3E695B0E38081E69C80E5B08FE6ADA3E695B0E38081E69C80E5A4A7E8B49FE695B0E5928CE69C80E5B08FE8B49FE695B0E79A84E69CBAE599A8E695B0E5BDA2E5BC8FEFBC8CE5B9B6E794A8E58D81E8BF9BE588B6E8A1A8E7A4BAE585B6E695B0E580BCE88C83E59BB4E38082, 0xE7AD94EFBC9AE69C80E5A4A7E6ADA3E695B03D3031313131313131EFBC8CE69C80E5B08FE6ADA3E695B03D3030303030303031EFBC8CE69C80E5A4A7E8B49FE695B03D3130303030303031EFBC8CE69C80E5B08FE8B49FE695B03D3131313131313131EFBC8CE695B0E580BCE8A1A8E7A4BAE88C83E59BB4EFBC9AE8B49FE79A8432E79A8437E6ACA1E696B9E5878F31EFBD9EE6ADA3E79A8432E79A8437E6ACA1E696B9E58AA031, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('240', '4', '3', '13', 0xE5AE9AE782B9E695B0E79A84E8A1A5E7A081E58AA0E5878FE6B395E8BF90E7AE97E5A682E4BD95E588A4E696ADE6BAA2E587BAEFBC9F, 0xE7AD94EFBC9AE8A1A5E7A081E58AA0E5878FE6B395E8BF90E7AE97E588A4E696ADE6BAA2E587BAE79A84E69DA1E4BBB6E5A682E4B88BEFBC9AEFBC8831EFBC89E7ACA6E58FB7E79BB8E5908CE4B8A4E695B0E79BB8E58AA0EFBC8CE7BB93E69E9CE7ACA6E58FB7E4B88EE58AA0E695B0EFBC88E68896E8A2ABE58AA0E695B0EFBC89E79A84E7ACA6E59088E4B88DE5908CEFBC8CE4B8BAE6BAA2E587BAEFBC9BEFBC8832EFBC89E98787E794A8E58F8CE7ACA6E58FB7E4BD8DEFBC8CE58DB3E6ADA3E695B0E79A84E7ACA6E58FB7E4BD8DE4BD8D3030EFBC8CE8B49FE695B0E79A84E7ACA6E58FB7E4BD8DE4B8BA3131EFBC8CE7ACA6E58FB7E4BD8DE58F82E4B88EE8BF90E7AE97EFBC8CE79BB8E58AA0E7BB93E69E9CE79A84E4B8A4E4B8AAE7ACA6E58FB7E4BD8DE4B88DE5908CE4B8BAE6BAA2E587BAEFBC8C3130E4B8BAE8B49FE6BAA2E587BAEFBC8C3031E4B8BAE6ADA3E6BAA2E587BAE38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('241', '4', '8', '36', 0xE58FAAE8AFBBE5AD98E582A8E599A8E69C89E593AAE4BA9BE5BDA2E5BC8FEFBC9FE58886E588ABE69C89E4BB80E4B988E789B9E782B9EFBC9F, 0xE7AD94EFBC9AE58FAAE8AFBBE5AD98E582A8E599A8E69C89E4BBA5E4B88BE587A0E7A78DE5BDA2E5BC8FEFBC9AE291A0E58FAAE8AFBBE5AD98E582A8E599A8E69C89EFBC9AE68EA9E6A8A1524F4DEFBC884D524F4DEFBC89EFBC9AE4BFA1E681AFE588B6E4BD9CE59CA8E88AAFE78987E4B8ADEFBC8CE4B88DE58FAFE69BB4E694B9EFBC9BE291A1E58FAFE7BC96E7A88B524F4DEFBC8850524F4DEFBC89EFBC9AE58581E8AEB8E4B880E6ACA1E7BC96E7A88BEFBC8CE6ADA4E5908EE4B88DE58FAFE69BB4E694B9EFBC9BE291A2E58FAFE693A6E999A4524F4DEFBC884550524F4DEFBC89EFBC9AE794A8E7B4ABE5A496E58589E693A6E999A4EFBC8CE693A6E999A4E5908EE58FAFE7BC96E7A88BEFBC8CE5B9B6E58581E8AEB8E794A8E688B7E5A49AE6ACA1E693A6E999A4E5928CE7BC96E7A88BEFBC9BE291A3E794B5E68AB9E58FAFE7BC96E7A88B20454550524F4DEFBC88453250524F4DEFBC89EFBC9AE98787E794A8E58AA0E794B5E696B9E6B395E59CA8E7BABFE8BF9BE8A18CE693A6E999A4E5928CE7BC96E7A88BEFBC8CE4B99FE58FAFE5A49AE6ACA1E693A6E58699EFBC9BE291A4466C617368204D656D6F7279EFBC88E997AAE5AD98EFBC89EFBC9AE883BDE5A49FE5BFABE9809FE693A6E58699E79A84454550524F4DEFBC8CE4BD86E58FAAE883BDE68C89E59D97EFBC88426C6F636BEFBC89E693A6E999A4E38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('242', '4', '8', '36', 0xE59CA8E8AEA1E7AE97E69CBAE79A84E4B8BBE5AD98E4B8ADEFBC8CE5B8B8E5B8B8E8AEBEE7BDAEE4B880E5AE9AE79A84524F4DE58CBAEFBC8CE8AF95E8AFB4E6988EE8AEBEE7BDAE524F4DE58CBAE79A84E79BAEE79A84E38082, 0xE7AD94EFBC9AE8AEA1E7AE97E69CBAE58AA0E794B5E697B6EFBC8CE99C80E8A681E689A7E8A18CE4B880E6AEB5E7A88BE5BA8FE5928CE8AEBEE7BDAEE4B880E4BA9BE5889DE5A78BE695B0E68DAEEFBC8CE5A682E69E9CE8BF99E4BA9BE7A88BE5BA8FE5928CE695B0E68DAEE694BEE59CA852414DE58CBAEFBC8CE982A3E4B988E696ADE794B5E5908EE4BC9AE4B8A2E5A4B1EFBC8CE68980E4BBA5E68A8AE5AE83E694BEE59CA8524F4DE58CBAE38082E887B3E4BA8E524F4DE58CBAE79A84E5A4A7E5B08FE58899E794B1E6938DE4BD9CE7B3BBE7BB9FE586B3E5AE9AEFBC8CE58FAFE4BBA5E5B086E6938DE4BD9CE7B3BBE7BB9FE4B8ADE5BE88E5B08FE4B880E6AEB5E7A88BE5BA8FE4BF9DE5AD98E59CA8524F4DE4B8ADEFBC8CE58AA0E794B5E590AFE58AA8E8AEA1E7AE97E69CBAE5908EE4BE9DE99DA0E8BF99E6AEB5E7A88BE5BA8FE5B086E6938DE4BD9CE7B3BBE7BB9FE794B1E7A381E79B98E8B083E585A5E4B8BBE5AD98E38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('243', '4', '5', '21', 0xE4BB80E4B988E698AFE68C87E4BBA4EFBC9FE4BB80E4B988E698AFE68C87E4BBA4E7B3BBE7BB9FEFBC9F, 0xE7AD94EFBC9AE794B1E6938DE4BD9CE7A081E5928CE59CB0E59D80E7A081E7BB84E68890EFBC8CE883BDE794B1E8AEA1E7AE97E69CBAE7A1ACE4BBB6E689A7E8A18CE585B6E8A784E5AE9AE6938DE4BD9CE79A84E4B880E69DA1E591BDE4BBA4EFBC8CE7A7B0E4B98BE4B8BAE68C87E4BBA4E38082E68C87E4BBA4E5928CE695B0E68DAEE59CA8E8AEA1E7AE97E69CBAE4B8ADE983BDE698AFE4BBA5E4BA8CE8BF9BE588B6E4BBA3E7A081E5BDA2E5BC8FE8A1A8E7A4BAE79A84EFBC8CE4B88DE5908CE79A84E6938DE4BD9CE7A081E4BBA3E8A1A8E4B88DE5908CE79A84E68C87E4BBA4E38082E9809AE5B8B8E59CA8E4B880E58FB0E8AEA1E7AE97E69CBAE4B8ADE69C89E587A0E58D81E69DA1E4B983E887B3E587A0E799BEE69DA1E68C87E4BBA4E38082E8AEA1E7AE97E69CBAE4B8ADE68980E69C89E68C87E4BBA4E79A84E99B86E59088E7A7B0E4B98BE4B8BAE68C87E4BBA4E99B86E68896E68C87E4BBA4E7B3BBE7BB9FE38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('244', '4', '5', '21', 0xE4B880E69DA1E68C87E4BBA4E58C85E590ABE982A3E4BA9BE4BFA1E681AFEFBC9F, 0xE7AD94EFBC9AEFBC8831EFBC89E6938DE4BD9CE7A081EFBC9AE68C87E5AE9AE6938DE4BD9CE58685E5AEB9EFBC8CE4BE8BE5A682E689A7E8A18CE58AA0E6B395E8BF90E7AE97E68896E68EA7E588B6E7A88BE5BA8FE6B581E8BDACE7A7BBE7AD89EFBC9BEFBC8832EFBC89E6938DE4BD9CE695B0E69DA5E6BA90EFBC9AE68C87E5AE9AE6938DE4BD9CE695B0E68896E6938DE4BD9CE695B0E79A84E59CB0E59D80EFBC9BEFBC8833EFBC89E6938DE4BD9CE7BB93E69E9CE59CB0E59D80EFBC9AE4BF9DE5AD98E5A484E79086E7BB93E69E9CE79A84E59CB0E59D80EFBC9BEFBC8834EFBC89E4B88BE4B880E69DA1E689A7E8A18CE79A84E68C87E4BBA4E59CB0E59D80EFBC9AE59CA8E5A4A7E5A49AE695B0E68385E586B5E4B88BEFBC8CE7A88BE5BA8FE698AFE9A1BAE5BA8FE689A7E8A18CE79A84EFBC8CE6ADA4E697B6E4B88DE99C80E8A681E68C87E587BAE4B88BE4B880E69DA1E68C87E4BBA4E79A84E59CB0E59D80EFBC8CE4BB85E5BD93E689A7E8A18CE694B9E58F98E7A88BE5BA8FE6B581E79A84E8BDACE7A7BBE7B1BBE68C87E4BBA4E697B6EFBC8CE99C80E8A681E7BB99E587BAE4B88BE4B880E69DA1E689A7E8A18CE79A84E68C87E4BBA4E59CB0E59D80E38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('245', '4', '5', '22', 0xE4BB80E4B988E698AFE68C87E4BBA4E79A84E7AB8BE58DB3E5AFBBE59D80E696B9E5BC8FEFBC9FE8AFB4E6988EE585B6E7BB8FE5B8B8E79A84E794A8E98094E38082, 0xE7AD94EFBC9A283129E68C87E4BBA4E4B8ADE79BB4E68EA5E7BB99E587BAE4BA86E6938DE4BD9CE695B0EFBC88E68896E68C87E4BBA4E6A0BCE5BC8FE4B8BAEFBC9A4F50E7AB8BE58DB3E695B0EFBC89283229E7AB8BE58DB3E5AFBBE59D80E696B9E5BC8FE58FAFE794A8E69DA5E68F90E4BE9BE5B8B8E695B0EFBC8CE8AEBEE7BDAEE5889DE580BCE7AD89E38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('246', '4', '5', '22', 0xE8AEA1E7AE97E69CBAE4B8ADE5B8B8E794A8E79A84E5AFBBE59D80E696B9E5BC8FE69C89E593AAE4BA9BEFBC9FE585B6E4B8ADE593AAE4BA9BE5AFBBE59D80E9809FE5BAA6E8BE83E5BFABEFBC9FE593AAE4BA9BE9809FE5BAA6E8BE83E685A2EFBC9F, 0xE7AD94EFBC9AE5B8B8E794A8E79A84E5AFBBE59D80E696B9E5BC8FE69C89EFBC9AE7AB8BE58DB3E695B0E5AFBBE59D80E38081E79BB4E68EA5E5AFBBE59D80E38081E997B4E68EA5E5AFBBE59D80E38081E5AF84E5AD98E599A8E79BB4E68EA5E5AFBBE59D80E38081E5AF84E5AD98E599A8E997B4E68EA5E5AFBBE59D80E38081E59FBAE59D80E5AFBBE59D80E38081E58F98E59D80E5AFBBE59D80E38081E79BB8E5AFB9E5AFBBE59D80E38082E585B6E4B8ADEFBC8CE7AB8BE58DB3E695B0E5AFBBE59D80E696B9E5BC8FE9809FE5BAA6E69C80E5BFABEFBC8CE585B6E6ACA1E698AFE5AF84E5AD98E599A8E79BB4E68EA5E5AFBBE59D80E38081E79BB4E68EA5E5AFBBE59D80E38081E5AF84E5AD98E599A8E997B4E68EA5E5AFBBE59D80E38081E997B4E68EA5E5AFBBE59D80EFBC9BE59FBAE59D80E5AFBBE59D80E38081E58F98E59D80E5AFBBE59D80E5928CE79BB8E5AFB9E5AFBBE59D80E696B9E5BC8FE59BA0E4B8BAE8A681E9809AE8BF87E58AA0E6B395E8BF90E7AE97E6898DE883BDE5BE97E588B0E695B0E68DAEE79A84E69C89E69588E59CB0E59D80EFBC8CE59BA0E6ADA4E9809FE5BAA6E6AF94E8BE83E685A2E4B880E4BA9BE38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('247', '4', '5', '24', 0xE68C87E4BBA4E585BCE5AEB9E69C89E593AAE4BA9BE79A84E4BC98E7BCBAE782B9EFBC9FE4BB80E4B988E698AFE59091E4B88AE585BCE5AEB9EFBC9F, 0xE7AD94EFBC9AE69C80E4B8BBE8A681E4BC98E782B9EFBC9AE8BDAFE4BBB6E585BCE5AEB9EFBC9BE69C80E4B8BBE8A681E7BCBAE782B9EFBC9AE68C87E4BBA4E5AD97E8AEBEE8AEA1E4B88DE5B0BDE59088E79086EFBC8CE68C87E4BBA4E7B3BBE7BB9FE8BF87E4BA8EE5BA9EE5A4A7E38082E59091E4B88AE585BCE5AEB9EFBC9AE696B0E69CBAE599A8E58FAFE4BBA5E585BCE5AEB9E697A7E69CBAE599A8E79A84E68980E69C89E8BDAFE4BBB6EFBC8CE4BD86E697A7E69CBAE599A8E4B88DE883BDE585BCE5AEB9E696B0E69CBAE599A8E4B88AE5BC80E58F91E79A84E8BDAFE4BBB6E380820D0A, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('248', '4', '5', '24', 0xE4BB80E4B988E698AFE68C87E4BBA4E7B3BBE7BB9FE585BCE5AEB9E5928CE68C87E4BBA4E7B3BBE7BB9FE59091E4B88AE585BCE5AEB9EFBC9FE8AEA8E8AEBAE585BCE5AEB9E79A84E4BC98E7BCBAE782B9E38082, 0xE7AD94EFBC9AE4B8A4E7A78DE8AEA1E7AE97E69CBAE79A84E68C87E4BBA4E7B3BBE7BB9FE5AE8CE585A8E79BB8E5908CEFBC8CE7A7B0E4B98BE4B8BAE68C87E4BBA4E7B3BBE7BB9FE585BCE5AEB9E38082E59CA8E7A094E588B6E7B3BBE58897E8AEA1E7AE97E69CBAE79A84E696B0E59E8BE58FB7E68896E9AB98E6A1A3E4BAA7E59381E697B6EFBC8CE68C87E4BBA4E7B3BBE7BB9FE58FAFE4BBA5E69C89E8BE83E5A4A7E79A84E689A9E58585EFBC8CE4BD86E4BB8DE4BF9DE79599E58E9FE69DA5E69CBAE7A78DE79A84E585A8E983A8E68C87E4BBA4EFBC8CE7A7B0E4B98BE4B8BAE68C87E4BBA4E7B3BBE7BB9FE59091E4B88AE585BCE5AEB9E38082E585BCE5AEB9E69CBAE79A84E8BDAFE4BBB6E58FAFE4BBA5E79BB8E4BA92E4BAA4E4BA92E4BDBFE794A8EFBC8CE59BA0E6ADA4E8BDAFE4BBB6E4B99FE698AFE585BCE5AEB9E79A84E38082E68C87E4BBA4E7B3BBE7BB9FE59091E4B88AE585BCE5AEB9E58899E58FAFE5B086E58E9FE69C89E8BDAFE4BBB6E4B88DE4BD9CE4BFAEE694B9E5B0B1E58FAFE5868DE696B0E59E8BE58FB7E68896E9AB98E6A1A3E4BAA7E59381E4B88AE7BBA7E7BBADE8BF90E8A18CEFBC8CE7A7B0E4B98BE4B8BAE8BDAFE4BBB6E59091E4B88AE585BCE5AEB9E38082E585B6E4BC98E782B9E698AFE58FAFE4BBA5E4BF9DE68AA4E794A8E688B7E59CA8E8BDAFE4BBB6E4B88AE79A84E68A95E8B584EFBC8CE7BCBAE782B9E698AFE68C87E4BBA4E7B3BBE7BB9FE8B68AE69DA5E8B68AE5BA9EE5A4A7EFBC8CE696B0E69CBAE7A78DE8A681E4BF9DE79599E58E9FE69C89E69CBAE7A78DE79A84E585A8E983A8E68C87E4BBA4EFBC8CE58DB3E4BDBFE698AFE8BF99E4BA9BE68C87E4BBA4E59CA8E696B0E7BC96E58699E79A84E7A88BE5BA8FE4B8ADE6A0B9E69CACE4B88DE4BDBFE794A8E38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('249', '4', '5', '24', 0x52495343E68C87E4BBA4E7B3BBE7BB9FE69C89E4BD95E789B9E782B9EFBC9F, 0xE7AD94EFBC9AE68C87E4BBA4E7A78DE7B1BBE5B091EFBC8CE98089E794A8E4BDBFE794A8E9A291E78E87E6AF94E8BE83E9AB98E79A84E68C87E4BBA4EFBC8CE68C87E4BBA4E58A9FE883BDE8BE83E7AE80E58D95EFBC8CE68C87E4BBA4E995BFE5BAA6E59BBAE5AE9AEFBC8CE68C87E4BBA4E6A0BCE5BC8FE7A78DE7B1BBE5B091EFBC8CE5AFBBE59D80E696B9E5BC8FE7A78DE7B1BBE5B091E38082435055E4B8ADE8AEBEE7BDAEE8BE83E5A49AE79A84E5AF84E5AD98E599A8E38082E4B880E888ACE68C87E4BBA4E79A84E6938DE4BD9CE695B0E983BDE59CA8E5AF84E5AD98E599A8E4B8ADEFBC8CE58FAAE69C896C6F6164E5928C73746F7265E68C87E4BBA4E8AEBFE997AEE5AD98E582A8E599A8EFBC8CE58FAFE4BBA5E5878FE5B091E8AEBFE5AD98E6ACA1E695B0E38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('250', '4', '5', '24', 0xE8AEA8E8AEBA52495343E5928C43495343E59CA8E68C87E4BBA4E7B3BBE7BB9FE696B9E99DA2E79A84E4B8BBE8A681E5B7AEE588ABE38082, 0xE7AD94EFBC9AEFBC8831EFBC89E4BC98E58588E98089E58F96E4BDBFE794A8E9A291E78E87E69C80E9AB98E79A84E4B880E4BA9BE7AE80E58D95E68C87E4BBA4EFBC8CE4BBA5E58F8AE4B880E4BA9BE5BE88E69C89E794A8E4BD86E4B88DE5A48DE69D82E79A84E68C87E4BBA4E38082E981BFE5858DE5A48DE69D82E68C87E4BBA4E38082EFBC8832EFBC89E68C87E4BBA4E995BFE5BAA6E59BBAE5AE9AEFBC8CE68C87E4BBA4E6A0BCE5BC8FE7A78DE7B1BBE5B091EFBC8CE5AFBBE59D80E696B9E5BC8FE7A78DE7B1BBE5B091E38082E68C87E4BBA4E4B98BE997B4E59084E5AD97E6AEB5E79A84E58892E58886E6AF94E8BE83E4B880E887B4EFBC8CE59084E5AD97E6AEB5E79A84E58A9FE883BDE4B99FE6AF94E8BE83E8A784E695B4E38082EFBC8833EFBC89E58FAAE69C89E58F96E695B02FE5AD98E695B0E68C87E4BBA4EFBC886C6F61642F73746F7265EFBC89E8AEBFE997AEE5AD98E582A8E599A8EFBC8CE585B6E4BD99E68C87E4BBA4E79A84E6938DE4BD9CE983BDE59CA8E5AF84E5AD98E599A8E4B98BE997B4E8BF9BE8A18CE38082EFBC8834EFBC89435055E4B8ADE9809AE794A8E5AF84E5AD98E599A8E695B0E9878FE79BB8E5BD93E5A49AE38082E7AE97E69CAFE980BBE8BE91E8BF90E7AE97E68C87E4BBA4E79A84E6938DE4BD9CE695B0E983BDE59CA8E9809AE794A8E5AF84E5AD98E599A8E4B8ADE5AD98E58F96E38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('251', '4', '11', '54', 0xE7AE80E7AD94435055E68EA7E588B6E689A7E8A18CE4B880E69DA1414444E68C87E4BBA4E79A84E8BF87E7A88BE38082, 0xE7AD94EFBC9A435055E68EA7E588B6E689A7E8A18CE4B880E69DA1414444E68C87E4BBA4E79A84E8BF87E7A88BE4B8BAEFBC9AE9A696E58588E5B086E7A88BE5BA8FE8AEA1E695B0E599A85043E79A84E58685E5AEB9E98081E588B0E59CB0E59D80E5AF84E5AD98E599A84152E4B8ADEFBC9BE7A88BE5BA8FE8AEA1E695B0E599A8E58685E5AEB9E58AA031EFBC8CE4B8BAE58F96E4B88BE4B880E69DA1E68C87E4BBA4E5819AE5A5BDE58786E5A487EFBC9BE59CB0E59D80E5AF84E5AD98E599A8E58685E5AEB9E8A2ABE694BEE588B0E59CB0E59D80E680BBE7BABFE4B88AEFBC9BE68980E98089E5AD98E582A8E58D95E58583E79A84E58685E5AEB9E7BB8FE8BF87E695B0E68DAEE680BBE7BABFEFBC8CE4BCA0E98081E588B0E695B0E68DAEE7BC93E586B2E5AF84E5AD98E599A84452EFBC9BE7BC93E586B2E5AF84E5AD98E599A8E79A84E58685E5AEB9E4BCA0E98081E588B0E68C87E4BBA4E5AF84E5AD98E599A84952EFBC9BE68C87E4BBA4E5AF84E5AD98E599A8E4B8ADE79A84E6938DE4BD9CE7A081E8A2ABE8AF91E7A081E68896E6B58BE8AF95EFBC9B435055E8AF86E588ABE587BAE68C87E4BBA4414444EFBC9B435055E5B086E68C87E4BBA4E5AF84E5AD98E599A8E4B8ADE79A84E59CB0E59D80E7A081E983A8E58886E8A385E585A5E588B0E59CB0E59D80E5AF84E5AD98E599A8EFBC9BE5B086E59CB0E59D80E5AF84E5AD98E599A8E4B8ADE79A84E6938DE4BD9CE695B0E79A84E59CB0E59D80E58F91E98081E588B0E59CB0E59D80E680BBE7BABFE4B88AEFBC9BE794B1E5AD98E582A8E58D95E58583E8AFBBE587BAE6938DE4BD9CE695B0EFBC8CE5B9B6E7BB8FE8BF87E695B0E68DAEE680BBE7BABFE4BCA0E98081E588B0E695B0E68DAEE7BC93E586B2E5AF84E5AD98E599A8E38082E689A7E8A18CE58AA0E6938DE4BD9CEFBC9AE794B1E695B0E68DAEE7BC93E586B2E5AF84E5AD98E599A8E69DA5E79A84E6938DE4BD9CE695B0E98081E5BE80414C55E79A84E4B880E4B8AAE8BE93E585A5E7ABAFEFBC8CE5B7B2E7AD89E58099E59CA8E7B4AFE58AA0E599A8E58685E79A84E58FA6E4B880E4B8AAE6938DE4BD9CE695B0E98081E5BE80414C55E79A84E58FA6E4B880E4B8AAE8BE93E585A5E7ABAFEFBC8CE4BA8EE698AF414C55E5B086E4B8A4E695B0E79BB8E58AA0EFBC8CE5B9B6E5B086E7BB93E69E9CE4BF9DE5AD98E588B0E7B4AFE58AA0E5AF84E5AD98E599A8E4B8ADEFBC8CE5908CE697B6E7BDAEE78AB6E68081E5AF84E5AD98E599A8E38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('252', '4', '11', '54', 0x435055E4B8ADE69C89E593AAE4BA9BE4B8BBE8A681E79A84E5AF84E5AD98E599A8EFBC9F, 0xE7AD94EFBC9AE695B0E68DAEE7BC93E586B2E5AF84E5AD98E599A828445229E38081E68C87E4BBA4E5AF84E5AD98E599A828495229E38081E7A88BE5BA8FE8AEA1E695B0E599A828504329E38081E59CB0E59D80E5AF84E5AD98E599A828415229E38081E7B4AFE58AA0E599A8E5AF84E5AD98E599A828414329E4B88EE9809AE794A8E5AF84E5AD98E599A8E38081E78AB6E68081E5AF84E5AD98E599A828E6889650535729, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('253', '4', '8', '36', 0xE7A88BE5BA8FE5928CE5BEAEE7A88BE5BA8FE38081E69CBAE599A8E68C87E4BBA4E5928CE5BEAEE68C87E4BBA4E38081E4B8BBE5AD98E582A8E599A8E5928CE68EA7E588B6E5AD98E582A8E599A8E8BF99E587A0E4B8AAE6A682E5BFB5E69C89E4BD95E58CBAE588ABEFBC9F, 0xE7AD94EFBC9AEFBC8831EFBC89E7A88BE5BA8FE5928CE5BEAEE7A88BE5BA8FE38082E7A88BE5BA8FE698AFE794B1E7A88BE5BA8FE59198E7BC96E58699E79A84EFBC8CE794B1E68C87E4BBA4E7BB84E68890EFBC8CE8808CE5BEAEE7A88BE5BA8FE698AFE794A8E69DA5E68EA7E588B6E68C87E4BBA4E79A84E689A7E8A18CEFBC8CE5AE83E698AFE794B1E5BEAEE68C87E4BBA4E7BB84E68890E79A84E38082EFBC8832EFBC89E69CBAE599A8E68C87E4BBA4E5928CE5BEAEE68C87E4BBA4E38082E69CBAE599A8E68C87E4BBA4E698AFE68A8AE7A88BE5BA8FE59198E7BC96E58699E79A84E7A88BE5BA8FE7BB8FE7BC96E8AF91E5908EE68890E4B8BAE69CBAE599A8E883BDE689A7E8A18CE79A84E4BBA5E4BA8CE8BF9BE588B6E7A081E5BDA2E5BC8FE8A1A8E7A4BAE79A84E68C87E4BBA4EFBC9BE59CA8E5BEAEE7A88BE5BA8FE68EA7E588B6E79A84E8AEA1E7AE97E69CBAE4B8ADE9809AE8BF87E689A7E8A18CE4B880E4B8B2E5BEAEE68C87E4BBA4E5AE8CE68890E4B880E69DA1E69CBAE599A8E68C87E4BBA4E79A84E58A9FE883BDE38082EFBC8833EFBC89E4B8BBE5AD98E582A8E599A8E5928CE68EA7E588B6E5AD98E582A8E599A8E38082E4B8BBE5AD98E582A8E599A8E794A8E69DA5E5AD98E694BEE7A88BE5BA8FE5928CE695B0E68DAEE38082E59CA8E8BF90E8A18CE7A88BE5BA8FE697B6EFBC8C435055E4BB8EE4B8BBE5AD98E582A8E599A8E58F96E68C87E4BBA4E5928CE5AD98E58F96E695B0E68DAEEFBC8CE4B880E888ACE794B1E99A8FE58DB3E5AD98E582A8E599A852414DE7BB84E68890E38082E68EA7E588B6E5AD98E582A8E599A8E794A8E69DA5E5AD98E694BEE5BEAEE7A88BE5BA8FEFBC8CE794A8E4BBA5E8A7A3E9878AE68C87E4BBA4E79A84E689A7E8A18CEFBC8CE4B880E888ACE794B1E58FAAE8AFBBE5AD98E582A8E599A8524F4DE7BB84E68890E38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('254', '4', '8', '36', 0xE5BEAEE7A88BE5BA8FE68EA7E588B6E599A8E4B88EE7A1ACE5B883E7BABFE68EA7E588B6E599A8E79BB8E6AF94E8BE83E79A84E4B8BBE8A681E4BC98E7BCBAE782B9E698AFE4BB80E4B988EFBC9F, 0xE7AD94EFBC9AE5BEAEE7A88BE5BA8FE8AEBEE8AEA1E696B9E6B395E7B1BBE4BCBCE4BA8EE7A88BE5BA8FEFBC8CE585B6E4BC98E782B9E698AFE5AEB9E69893E8AEBEE8AEA1E38081E5AEB9E69893E4BFAEE694B9E38081E5AEB9E69893E68E92E999A4E99499E8AFAFEFBC8CE4BB8EE8808CE696B9E4BEBFE59CB0E5AE9EE78EB0E6938DE4BD9CE5A48DE69D82E59CB0E68C87E4BBA4E5928CE5AE9EE78EB0E696B0E58A9FE883BDE38081E5A29EE58AA0E696B0E68C87E4BBA4E38081E7BCA9E79FADE8AEBEE8AEA1E591A8E69C9FEFBC8CE4BD86E698AFE794B1E4BA8EE5AE9EE78EB0E4B880E69DA1E68C87E4BBA4E8A681E5A49AE6ACA1E4BB8EE68EA7E588B6E5AD98E582A8E599A8E58F96E5BEAEE68C87E4BBA4EFBC8CE68980E4BBA5E5A484E79086E4B880E69DA1E68C87E4BBA4E59CB0E9809FE5BAA6E6B2A1E69C89E7A1ACE5B883E7BABFE68EA7E588B6E599A8E5BFABE380820D0AE7A1ACE5B883E7BABFE68EA7E588B6E599A8E59CA8E8AEBEE8AEA1E5A48DE69D82E68C87E4BBA4E7B3BBE7BB9FE79A84E8AEA1E7AE97E69CBAE697B6E6AF94E8BE83E99ABEEFBC8CE59BA0E4B8BAE99C80E8A681E58699E587BAE59084E4B8AAE6938DE4BD9CE591BDE4BBA4E79A84E8A1A8E8BEBEE5BC8FEFBC8CE58F88E7BB8FE8BF87E4BA86E7AE80E58C96EFBC8CE58187E5A682E58F91E78EB0E8AEBEE8AEA1E69C89E99499EFBC8CE4BFAEE694B9E8B5B7E69DA5E69E81E4B8BAE59BB0E99ABEEFBC8CE5AFBCE887B4E8AEBEE8AEA1E591A8E69C9FE79A84E5BBB6E995BFEFBC8CE8808CE4B894E5BE88E99ABEE69BB4E694B9E68C87E4BBA4E79A84E58A9FE883BDE68896E5A29EE58AA0E696B0E68C87E4BBA4E38082E794B1E4BA8EE4BBA5E4B88AE789B9E782B952495343E98787E794A8E7A1ACE5B883E7BABFE68EA7E588B6E599A8EFBC8C43495343E98787E794A8E5BEAEE7A88BE5BA8FE68EA7E588B6E599A8E38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('255', '4', '8', '36', 0xE794B14D31E380814D32E69E84E68890E79A84E4BA8CE7BAA7E5AD98E582A8E4BD93E7B3BBE4B8ADEFBC8CE88BA5435055E8AEBFE997AEE79A84E58685E5AEB9E5B7B2E59CA84D31E4B8ADEFBC8CE58899E585B6E5AD98E58F96E9809FE5BAA6E4B8BA5431EFBC9BE88BA5E4B88DE59CA84D31E4B8ADEFBC8CE585B6E5AD98E58F96E9809FE5BAA6E4B8BA54322EE78EB0E8AEBE48E4B8BAE591BDE4B8ADE78E87EFBC88435055E883BDE4BB8E4D31E4B8ADE79BB4E68EA5E88EB7E58F96E4BFA1E681AFE79A84E6AF94E78E87EFBC89EFBC8CE997AEEFBC9AEFBC8831EFBC89E8AFA5E5AD98E582A8E4BD93E7B3BBE79A84E5B9B3E59D87E5AD98E58F96E697B6E997B45441E79A84E8AEA1E7AE97E585ACE5BC8FE698AFE4BB80E4B988EFBC9FEFBC8832EFBC89E591BDE4B8ADE78E8748E8B68AE5A4A7EFBC8C5441E8B68AE68EA5E8BF91E4BA8EE593AAE4B880E7BAA7E5AD98E582A8E599A8E9809FE5BAA6EFBC9F, 0xE7AD94EFBC9AEFBC8831EFBC895441EFBC9D48C3975431EFBC8BEFBC8831EFBC8D48EFBC89C3975432EFBC9BEFBC8832EFBC8948E8B68AE5A4A7EFBC8C312D48E8B68AE5B08FEFBC8CE695855441E8B68AE68EA5E8BF914D31E79A84E5AD98E58F96E9809FE5BAA65431, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('256', '4', '8', '36', 0xE98787E794A8E5AD98E582A8E599A8E79A84E58886E7BAA7E7BB93E69E84E5A682E4BD95E8A7A3E586B3E4BA86E5AD98E582A8E599A8E79A84E4B889E5A4A7E59BA0E7B4A0E4B98BE997B4E79A84E79F9BE79BBEEFBC9F, 0xE7AD94EFBC9AE5AD98E582A8E599A8E79A84E58886E7BAA7E7BB93E69E84E4BDBFE5BE97E4B8BBEFBC8DE8BE85E4B8A4E7BAA7E5AD98E582A8E7BB93E69E84E5BBBAE7AB8BE59CA8E5AD98E582A8E599A8E4BBB6E58886E7BAA7E4B894E5AD98E582A8E4BFA1E681AFE680A7E8B4A8E58886E7BAA7E79A84E59FBAE7A180E4B88AEFBC9BE4B8BBE5AD98E5AEB9E9878FE59BA0E585B6E4BBB7E6A0BCE58F97E588B0E99990E588B6EFBC8CE8AEBEE7AB8BE4BA86E5A4A7E5AEB9E9878FE8BE85E5AD98E8A7A3E586B3E4BA86E59CA8E5B0BDE58FAFE883BDE4BD8EE79A84E4BBB7E6A0BCE4B88BE79A84E5AEB9E9878FE997AEE9A298EFBC9BE5A4A7E5AEB9E9878FE79A84E4BD8EE9809FE8BE85E58AA9E5AD98E582A8E599A8E58FAFE4BBA5E9809AE8BF87E9AB98E9809FE4B8BBE5AD98E4B88E435055E4BAA4E68DA2E4BFA1E681AFEFBC8CE4B88DE4BB85E4BDBFE8AEA1E7AE97E69CBAE5BE97E588B0E59088E79086E58886E9858DEFBC8CE8808CE4B894435055E79A84E9AB98E9809FE69588E883BDE4BB8DE883BDE5BE97E588B0E58585E58886E58F91E68CA5EFBC9BE4B8BBEFBC8DE8BE85E4B8A4E7BAA7E5AD98E582A8E7BB93E69E84E5BDA2E68890E4B880E4B8AAE695B4E4BD93EFBC8CE9809FE5BAA6E68EA5E8BF91E4BA8EE4B8BBE5AD98EFBC8CE5AEB9E9878FE698AFE8BE85E5AD98EFBC8CE4BBB7E6A0BCE68EA5E8BF91E8BE85E5AD98EFBC8CE58FAFE4BBA5E8BE83E5A5BDE59CB0E7BB9FE4B880E58D8FE8B083E4BA86E5AEB9E9878FE38081E9809FE5BAA6E38081E4BBB7E6A0BCE4B889E88085E4B98BE997B4E79A84E79F9BE79BBEE38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('257', '4', '11', '54', 0xE8AFB7E6AF94E8BE83E8AFB4E6988EE4B889E7BAA7E5AD98E582A8E4BD93E7B3BBE4B8AD6361636865E28094E4B8BBE5AD98E5928CE4B8BBE5AD98E28094E8BE85E5AD98E8BF99E4B8A4E4B8AAE5AD98E582A8E5B182E6ACA1E79A84E79BB8E5908CE782B9E5928CE4B88DE5908CE782B9E38082, 0xE7AD94EFBC9AE59CA86361636865E5928CE4B8BBE5AD98E4B98BE997B4E58F8AE4B8BBE5AD98E5928CE8BE85E5AD98E4B98BE997B4E58886E588ABE69C89E8BE85E58AA9E7A1ACE4BBB6E58F8AE8BE85E58AA9E8BDAFE7A1ACE4BBB6E8B49FE8B4A3E4BFA1E681AFE79A84E8B083E5BAA6EFBC8CE4BBA5E4BEBFE59084E7BAA7E5AD98E582A8E599A8E883BDE5A49FE7BB84E68890E69C89E69CBAE79A84E4B889E7BAA7E5AD98E582A8E4BD93E7B3BBE380826361636865E5928CE4B8BBE5AD98E69E84E68890E4BA86E7B3BBE7BB9FE79A84E58685E5AD98EFBC8CE8808CE4B8BBE5AD98E5928CE8BE85E5AD98E4BE9DE99DA0E8BE85E58AA9E8BDAFE7A1ACE4BBB6E79A84E694AFE68C81E69E84E68890E4BA86E8999AE68B9FE5AD98E582A8E599A8E38082E79BB8E5908CE782B9EFBC9AE587BAE58F91E782B9E79BB8E5908CEFBC9AE4BA8CE88085E983BDE698AFE4B8BAE4BA86E68F90E9AB98E5AD98E582A8E7B3BBE7BB9FE79A84E680A7E883BDE4BBB7E6A0BCE6AF94E8808CE69E84E980A0E79A84E5B182E6ACA1E680A7E5AD98E582A8E4BD93E7B3BBEFBC8CE983BDE58A9BE59BBEE4BDBFE5AD98E582A8E7B3BBE7BB9FE79A84E680A7E883BDE68EA5E8BF91E9AB98E9809FE5AD98E582A8E599A8EFBC8CE8808CE4BBB7E6A0BCE68EA5E8BF91E4BD8EE9809FE5AD98E582A8E599A8EFBC9BE58E9FE79086E79BB8E5908CEFBC9AE983BDE698AFE588A9E794A8E4BA86E7A88BE5BA8FE8BF90E8A18CE697B6E79A84E5B180E983A8E680A7E58E9FE79086EFBC8CE68A8AE69C80E8BF91E5B8B8E794A8E79A84E4BFA1E681AFE59D97E4BB8EE79BB8E5AFB9E4BD8EE9809FE8808CE5A4A7E5AEB9E9878FE79A84E5AD98E582A8E599A8E8B083E585A5E79BB8E5AFB9E9AB98E9809FE8808CE5B08FE5AEB9E9878FE79A84E5AD98E582A8E599A8E38082E4B88DE5908CE782B9EFBC9AE79BAEE79A84E4B88DE5B0BDE79BB8E5908CEFBC9A6361636865E4B8BBE8A681E8A7A3E586B3E4B8BBE5AD98E4B88E435055E79A84E9809FE5BAA6E5B7AEE5BC82E997AEE9A298EFBC9BE584BFE8BE85E5AD98E4B8BBE8A681E8A7A3E586B3E5AD98E582A8E5AEB9E9878FE997AEE9A298EFBC9BE695B0E68DAEE9809AE8B7AFE4B88DE5908CEFBC9A435055E4B88E6361636865E5928CE4B8BBE5AD98E79BB4E68EA5E59D87E69C89E79BB4E68EA5E8AEBFE997AEE9809AE8B7AFEFBC8C6361636865E4B88DE591BDE4B8ADE697B6E58FAFE79BB4E68EA5E5BF99E997AEE4B8BBE5AD98EFBC9BE8808CE8BE85E5AD98E4B88E435055E4B98BE997B4E4B88DE5AD98E59CA8E79BB4E68EA5E79A84E695B0E68DAEE9809AE8B7AFEFBC8CE5BD93E4B8BBE5AD98E4B88DE591BDE4B8ADE697B6E58FAAE883BDE9809AE8BF87E8B083E9A1B5E8A7A3E586B3EFBC8C435055E69C80E7BB88E8BF98E698AFE8A681E8AEBFE997AEE4B8BBE5AD98EFBC9BE9808FE6988EE680A7E4B88DE5908CEFBC9A6361636865E79A84E7AEA1E79086E5AE8CE585A8E794B1E7A1ACE4BBB6E5AE8CE68890EFBC8CE5AFB9E7B3BBE7BB9FE7A88BE5BA8FE59198E5928CE5BA94E794A8E7A88BE5BA8FE59198E59D87E9808FE6988EEFBC9BE8999AE68B9FE7AEA1E79086E794B1E8BDAFE4BBB6EFBC88E6938DE4BD9CE7B3BBE7BB9FEFBC89E5928CE7A1ACE4BBB6E585B1E5908CE5AE8CE68890EFBC8CE5AFB9E7B3BBE7BB9FE7A88BE5BA8FE59198E4B88DE9808FE6988EEFBC8CE5AFB9E5BA94E794A8E7A88BE5BA8FE59198E9808FE6988EEFBC9BE5AFB9E69CAAE591BDE5908DE4B8ADE79A84E6958FE6849FE5BAA6E4B88DE5908CEFBC9AE794B1E4BA8EE4B8BBE5AD98E79A84E5AD98E58F96E697B6E997B4E79A846361636865E79A8435E887B33130E5808DEFBC8CE8808CE8BE85E5AD98E698AFE4B8BBE5AD98E79A84E4B88AE58D83E5808D, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('258', '4', '8', '36', 0xE59CA8E8AEA1E7AE97E69CBAE4B8ADE4B8BAE4BD95E8AEBEE7BDAEE5A49AE5B182E6ACA1E79A84E5AD98E582A8E7B3BBE7BB9FEFBC9FE5B8B8E8A781E79A84E4B889E5B182E5AD98E582A8E7B3BBE7BB9FE698AFE6808EE6A0B7E79A84EFBC9F, 0xE7AD94EFBC9AE99A8FE79D80E8AEA1E7AE97E69CBAE5BA94E794A8E38081E6938DE4BD9CE7B3BBE7BB9FE5928C435055E79A84E58F91E5B195EFBC8CE4B8BBE5AD98E582A8E599A8E79A84E9809FE5BAA6E5928CE5AEB9E9878FE5B7B2E8B79FE4B88DE4B88AE5AEA2E8A782E79A84E8A681E6B182EFBC8CE59BA0E6ADA4E5B88CE69C9BE59CA8E8AEA1E7AE97E69CBAE79A84E4BD93E7B3BBE7BB93E69E84E4B88AE69C89E68980E7AA81E7A0B4E38082E8A1A1E9878FE8AEA1E7AE97E69CBAE5AD98E582A8E599A8E69C8933E4B8AAE68C87E6A087EFBC9AE9809FE5BAA6E38081E5AEB9E9878FE5928CE4BBB7E6A0BC2FE4BD8DE38082E4B880E888ACE69DA5E8AEB2EFBC8CE9809FE5BAA6E9AB98E79A84E5AD98E582A8E599A8EFBC8CE4BBB7E6A0BC2FE4BD8DE4B99FE9AB98EFBC8CE59CA8E8AEA1E7AE97E69CBAE4B8ADE5AE89E8A385E69C89E5A49AE7A78DE7B1BBE59E8BE5AD98E582A8E599A8EFBC8CE79BB8E4BA92E9858DE59088EFBC8CE58FAFE4BBA5E58F96E5BE97E8BE83E79086E683B3E79A84E7BBBCE59088E68C87E6A087E38082E794B1E4BA8E435055E5928CE4B8BBE5AD98E4B98BE997B4E5AD98E59CA8E4B880E5AE9AE79A84E9809FE5BAA6E5B7AEE5BC82EFBC8CE4B8BAE4BA86E5BCA5E8A1A5E4B8BBE5AD98E9809FE5BAA6E79A84E4B88DE8B6B3EFBC8CE59CA8435055E5928CE4B8BBE5AD98E4B98BE997B4E8AEBEE7BDAEE4BA86E9AB98E9809FE7BC93E586B2E5AD98E582A8E599A8EFBC884361636865EFBC89EFBC8CE4BBA5E6ADA4E69DA5E8A7A3E586B3E4B8BBE5AD98E5AD98E58F96E9809FE5BAA6E79A84E4B88DE8B6B3E38082E794B1E4BA8EE4B8BBE5AD98E79A84E5AEB9E9878FE69C89E99990EFBC8CE59BA0E6ADA4E8AEBEE7BDAEE4BA86E8BE85E58AA9E5AD98E582A8E599A8EFBC8CE69DA5E5BCA5E8A1A5E4B8BBE5AD98E5AEB9E9878FE79A84E4B88DE8B6B3E38082E4BA8EE698AFE5B0B1E69E84E68890E4BA86E4B889E5B182E6ACA1E79A84E5AD98E582A8E7B3BBE7BB9FEFBC9A63616368652DE4B8BBE5AD98E582A8E599A82DE8BE85E58AA9E5AD98E582A8E599A8E38082E59CA8E4B889E5B182E5AD98E582A8E7B3BBE7BB9FE4B8ADEFBC8C435055E58F96E68C87E68896E58F96E695B0E697B6EFBC8CE58588E8AEBFE997AE4361636865EFBC8CE5A682E69E9CE68C87E4BBA4E68896E695B0E68DAEE4B88DE59CA84361636865E4B8ADEFBC8CE5868DE588B0E4B8BBE5AD98E4B8ADE58EBBE58F96EFBC8CE58F96E69DA5E5908EE5908CE697B6E98081435055E5928C4361636865EFBC9BE5A682E69E9CE68C87E4BBA4E68896E695B0E68DAEE59CA84361636865E4B8ADEFBC8CE58899E4BB8E4361636865E4B8ADE58F96EFBC8CE4B88DE5868DE8AEBFE997AEE4B8BBE5AD98EFBC9BE5A682E69E9CE68C87E4BBA4E68896E695B0E68DAEE4B99FE4B88DE59CA8E4B8BBE5AD98E4B8ADEFBC8CE58899E794B1E6938DE4BD9CE7B3BBE7BB9FE5B086E58C85E590ABE68980E99C80E68C87E4BBA4E68896E695B0E68DAEE79A84E4BFA1E681AFE59D97E8B083E588B0E4B8BBE5AD98EFBC8CE784B6E5908EE5868DE689A7E8A18CE58F96E68C87E68896E58F96E695B0E68DAEE6938DE4BD9CE38082E4B889E5B182E6ACA1E5AD98E582A8E7B3BBE7BB9FE59CA8E79086E683B3E68385E586B5E4B88BEFBC8CE585B6E69C80E9AB98E9809FE5BAA6E58F96E586B3E4BA8E4361636865E79A84E9809FE5BAA6EFBC8CE8808CE585B6E5AD98E582A8E5AEB9E9878FE58899E794B1E8BE85E58AA9E5AD98E582A8E599A8E586B3E5AE9AEFBC8CE7B3BBE7BB9FE79A84E4BBB7E6A0BC2FE4BD8DE68EA5E8BF91E4BA8EE8BE85E5AD98E79A84E4BBB7E6A0BC2FE4BD8DE38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('259', '4', '11', '54', 0xE5A49AE7BAA7E5AD98E582A8E4BD93E7B3BBE4B8ADEFBC8CEFBC8831EFBC89E5BC95E585A54361636865E698AFE4B8BAE4BA86E8A7A3E586B3E4BB80E4B988E997AEE9A298EFBC9FEFBC8832EFBC89E5BC95E585A54361636865E79A84E79086E8AEBAE4BE9DE68DAEE698AFE4BB80E4B988EFBC9FEFBC8833EFBC89E98787E794A8E593AAE4BA9BE696B9E6B395E69DA5E4BF9DE8AF81E59CA8E58699E585A5E697B6E4BDBF4361636865E4B88EE4B8BBE5AD98E4B8A4E88085E79A84E58685E5AEB9E4B880E887B4EFBC9F, 0xE7AD94EFBC9AEFBC8831EFBC89E4B8BAE4BA86E8A7A3E586B3E4B8BBE5AD98E4B88E435055E4B98BE997B4E79A84E9809FE5BAA6E5B7AEE5BC82EFBC8CE68896E4B8BBE5AD98E9809FE5BAA6E4B88DE8B6B3E997AEE9A298EFBC9BEFBC8832EFBC89E79086E8AEBAE4BE9DE68DAEE698AFE7A88BE5BA8FE8AEBFE997AEE79A84E5B180E983A8E680A7E58E9FE58899EFBC9BEFBC8833EFBC89E58FAFE4BBA5E98787E794A8E58699E79BB4E8BEBEE6B395E38081E59B9EE58699E6B395E38081E4B8BBE5AD98E79B91E68EA7E6B395E5928CE8AEBEE7BDAEE4B88DE58FAF4361636865E58CBAE587A0E7A78DE696B9E6B395E38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('260', '4', '11', '54', 0xE8AEA1E7AE97E69CBAE5AD98E582A8E7B3BBE7BB9FE58886E593AAE587A0E4B8AAE5B182E6ACA1EFBC9FE6AF8FE4B880E5B182E6ACA1E4B8BBE8A681E98787E794A8E4BB80E4B988E5AD98E582A8E4BB8BE8B4A8EFBC9FE585B6E5AD98E582A8E5AEB9E9878FE5928CE5AD98E58F96E9809FE5BAA6E79A84E79BB8E5AFB9E580BCE5A682E4BD95E58F98E58C96EFBC9F, 0xE7AD94EFBC9AE8AEA1E7AE97E69CBAE5AD98E582A8E7B3BBE7BB9FE5B182E6ACA1E4B8BAEFBC9A6361636865E28095E28095E4B8BBE5AD98E28095E28095E8BE85E5AD98EFBC8CE68896EFBC9AE5AF84E5AD98E599A8E7BB84E28095E280956361636865E28095E28095E4B8BBE5AD98E28095E28095E8BE85E5AD98E38082E5AD98E582A8E4BB8BE8B4A8E58886E588ABE4B8BAEFBC9AE5AF84E5AD98E599A8E28095E28095E794B5E8B7AFEFBC9B6361636865E28095E280955352414DEFBC9BE4B8BBE5AD98E28095E280954452414DEFBC9BE8BE85E5AD98E28095E28095E7A381E8A1A8E99DA2E5AD98E582A8EFBC8CE5AEB9E9878FE794B1E5B08FE588B0E5A4A7EFBC8CE9809FE5BAA6E794B1E9AB98E588B0E4BD8EE38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('261', '4', '8', '36', 0xE4B8BAE4BB80E4B9884452414DE88AAFE78987E79A84E59CB0E59D80E4B880E888ACE8A681E58886E4B8A4E6ACA1E68EA5E694B6EFBC9F, 0xE7AD94EFBC9AE5BD93E88AAFE78987E5AEB9E9878FE5A29EE5A4A7E697B6EFBC8CE585B6E59CB0E59D80E7BABFE695B0E9878FE79BB8E5BA94E5A29EE58AA0EFBC8CE58886E4B8A4E6ACA1E68EA5E694B6E59CB0E59D80E58FAFE5B086E59CB0E59D80E7BABFE79A84E695B0E9878FE5878FE5B091E4B880E58D8AE38082E5BC95E587BAE7ABAFE5A49AEFBC8CE88AAFE78987E99DA2E7A7AFE5A4A7E38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('262', '4', '7', '31', 0xE4BB80E4B988E698AFE8999AE68B9FE5AD98E582A8E599A8EFBC9F, 0xE7AD94EFBC9AE6938DE4BD9CE7B3BBE7BB9FE79A84E5BDA2E68890E5928CE58F91E5B195E69C89E58FAFE883BDE8AEA9E7A88BE5BA8FE59198E69186E884B1E4B8BBE5AD98E5928CE8BE85E5AD98E4B98BE997B4E695B0E68DAEE8B083E5BAA6E997AEE9A298E79A84E59BB0E689B0EFBC8CE59CA8E2809CE8BE85E58AA9E7A1ACE4BBB6E2809DE79A84E9858DE59088E4B88BEFBC8CE9809AE8BF87E8BDAFE4BBB6E5928CE7A1ACE4BBB6E79BB8E7BB93E59088EFBC8CE68A8AE4B8BBE5AD98E5928CE8BE85E5AD98E7BB9FE4B880E68890E4BA86E4B880E4B8AAE695B4E4BD93EFBC8CE59CA8E7B3BBE7BB9FE4B8ADEFBC8CE5BA94E794A8E7A88BE5BA8FE59198E58FAFE794A8E69CBAE599A8E68C87E4BBA4E59CB0E59D80E7A081E5AFB9E695B4E4B8AAE7A88BE5BA8FE7BB9FE4B880E7BC96E59D80EFBC8CE5A682E5908CE7A88BE5BA8FE59198E585B7E69C89E5AFB9E5BA94E8BF99E4B8AAE59CB0E59D80E7A081E5AEBDE5BAA6E79A84E585A8E983A8E7A9BAE997B4E4B880E6A0B7E38082E8AFA5E7A9BAE997B4E58FAFE4BBA5E6AF94E4B8BBE5AD98E5AE9EE99985E7A9BAE997B4E5A4A7E5BE97E5A49AEFBC8CE4BBA5E887B4E58FAFE4BBA5E5AD98E5BE97E4B88BE695B4E4B8AAE7A88BE5BA8FE38082E8BF99E7A78DE68C87E4BBA4E59CB0E59D80E7A081E7A7B0E4B8BAE8999AE68B9FE59CB0E59D80E68896E980BBE8BE91E59CB0E59D80EFBC8CE585B6E5AFB9E5BA94E79A84E5AD98E582A8E5AEB9E9878FE7A7B0E4B8BAE8999AE5AD98E5AEB9E9878FE68896E8999AE5AD98E7A9BAE997B4EFBC9BE8808CE68A8AE5AE9EE99985E4B8BBE5AD98E79A84E59CB0E59D80E7A7B0E4B8BAE789A9E79086E59CB0E59D80E38081E5AE9EEFBC88E5AD98EFBC89E59CB0E59D80EFBC8CE585B6E5AFB9E5BA94E79A84E5AD98E582A8E5AEB9E9878FE7A7B0E4B8BAE4B8BBE5AD98E5AEB9E9878FE38081E5AE9EE5AD98E5AEB9E9878FE68896E5AE9EEFBC88E4B8BBEFBC89E5AD98E7A9BAE997B4E38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('263', '4', '11', '54', 0xE4BB80E4B988E698AF4361636865E79A84E591BDE4B8ADE78E87EFBC9F, 0xE7AD94EFBC9AE59CA84361636865E28094E4B8BBE5AD98E582A8E599A8E28094E8BE85E58AA9E5AD98E582A8E599A8E79A84E4B889E7BAA7E5AD98E582A8E7B3BBE7BB9FE4B8ADEFBC8CE5BD93435055E8AEBFE997AEE5AD98E582A8E599A8E697B6EFBC8CE5A682E69E9CE8A2ABE8AEBFE997AEE79A84E5AFB9E8B1A1E59CA84361636865E4B8ADEFBC8CE58FABE5819AE591BDE4B8ADEFBC8C4361636865E591BDE4B8ADE79A84E6ACA1E695B0E4B88EE8AEBFE997AEE5AD98E582A8E599A8E680BBE6ACA1E695B0E79A84E6AF94E4BE8BE7A7B0E4B8BA4361636865E591BDE4B8ADE78E87E38082E5BD93435055E8AEBFE997AEE5AD98E582A8E599A8E697B6EFBC8CE5A682E69E9CE8A2ABE8AEBFE997AEE79A84E5AFB9E8B1A1E59CA8E4B8BBE5AD98E4B8ADEFBC8CE58FABE5819AE5AD98E582A8E599A8E591BDE4B8ADEFBC8CE590A6E58899E99C80E590AFE58AA8E6938DE4BD9CE7B3BBE7BB9FEFBC8CE5B086E69C89E585B3E79A84E9A1B5E99DA2EFBC88E9A1B5E5BC8FE7AEA1E79086E68896E6AEB5E9A1B5E5BC8FE7AEA1E79086EFBC89E68896E6AEB5EFBC88E6AEB5E5BC8FE7AEA1E79086EFBC89E4BB8EE8BE85E5AD98E8B083E585A5E4B8BBE5AD98E38082E794B1E4BA8EE5AD98E582A8E79A84E5B180E983A8E680A7E58E9FE79086E79A84E5AD98E59CA8EFBC8C4361636865E79A84E591BDE4B8ADE78E87E5928CE5AD98E582A8E599A8E79A84E591BDE4B8ADE78E87E983BDE698AFE5BE88E9AB98E79A84E38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('264', '4', '11', '54', 0x4361636865E79A84E58699E585A5E696B9E6B395E69C89E593AAE69CBAE7A78DEFBC9F, 0xE7AD94EFBC9A4361636865E4B8ADE4BF9DE68C81E79A84E5AD97E59D97E698AFE4B8BBE5AD98E4B8ADE79BB8E5BA94E5AD97E59D97E79A84E4B880E4B8AAE589AFE69CACEFBC8CE5A682E69E9CE8A681E5AFB9E8AFA5E5AD97E59D97E8BF9BE8A18CE58699E6938DE4BD9CEFBC8CE5B0B1E4BC9AE98187E588B0E5A682E4BD95E4BF9DE68C814361636865E4B88EE4B8BBE5AD98E695B0E68DAEE79A84E4B880E887B4E680A7E997AEE9A298E38082E5BD93E591BDE4B8ADE79A84E68385E586B5E4B88BEFBC8CE69C89E4B8A4E7A78DE58699E585A5E696B9E6B395EFBC9AEFBC8831EFBC89E58699E59B9EE6B395EFBC9AE69A82E697B6E58FAAE590914361636865E58699E585A5EFBC8CE5B9B6E794A8E4BFAEE694B9E6A087E5BF97E58AA0E4BBA5E6A087E6B3A8EFBC8CE79BB4E588B0E7BB8FE8BF87E4BFAEE694B9E79A84E5AD97E59D97E4BB8E4361636865E4B8ADE8A2ABE69BBFE68DA2E587BAE69DA5E697B6E6898DE4BFAEE694B9EFBC88E58699E585A5EFBC89E4B8BBE5AD98E38082E585B6E4BC98E782B9E698AFE69F90E4BA9BE4B8ADE997B4E7BB93E69E9CE58FAFE69A82E697B6E4BF9DE5AD98E79D804361636865E4B8ADEFBC8CE5878FE5B091E8AEBFE997AEE4B8BBE5AD98E79A84E6ACA1E695B0E38082E585B6E7BCBAE782B9E698AF4361636865E4B8ADE79A84E695B0E68DAEE58FAFE883BDE4B88EE585B6E79BB8E5BA94E4B8BBE5AD98E4B8ADE79A84E695B0E68DAEE4B88DE4B880E887B4EFBC8CE8BF99E6A0B7E59CA8E58F96E695B0E591BDE4B8ADE697B6E8A681E6A380E69FA54361636865E79A84E4BFAEE694B9E6A087E5BF97EFBC88E5BD93444D41E5A496E983A8E8AEBEE5A487E8AEBFE997AEE5AD98E582A8E599A8E697B6EFBC89EFBC8CE4BBA5E7A1AEE5AE9AE698AFE4BB8E4361636865E58F96E695B0E68896E88085E698AFE4BB8EE5AD98E582A8E599A8E58F96E695B0E38082EFBC8832EFBC89E58699E79BB4E8BEBEE6B395EFBC9AE5908CE697B6E58699E585A54361636865E5928CE4B8BBE5AD98E38082E585B6E4BC98E7BCBAE782B9E6ADA3E5A5BDE5928CE58699E59B9EE6B395E79BB8E58F8DE38082E794B1E4BA8EE6AF8FE6ACA1E58699E585A5E697B6E697A0E8AEBAE698AFE590A6E591BDE4B8ADEFBC8CE983BDE8A681E59091E4B8BBE5AD98E58699E585A5EFBC8CE585B6E7BB93E69E9CE79BB8E5BD93E4BA8EE9998DE4BD8EE4BA86E695B0E68DAEE79A84E591BDE4B8ADE78E87E38082E5BD93E4B88DE591BDE4B8ADE79A84E68385E586B5E4B88BEFBC8CE68896E88085E5A496E983A8E8AEBEE5A487E59091E5AD98E582A8E599A8E58699E585A5E697B6EFBC8CE5BE80E5BE80E58FAAE58699E585A5E4B8BBE5AD98EFBC8CE4B88DE58699E585A54361636865E38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('265', '4', '11', '54', 0x4361636865E79A84E591BDE4B8ADE78E87E4B88EE593AAE4BA9BE59BA0E7B4A0E69C89E585B3EFBC9F, 0xE7AD94EFBC9AE59CA8E585B6E5AE83E59BA0E7B4A0E4B88DE58F98E79A84E68385E586B5E4B88BEFBC8C6361636865E5AEB9E9878FE5A4A7EFBC8CE591BDE4B8ADE78E87E9AB98EFBC9BE59D97E79A84E5A4A7E5B08FE8A681E98082E4B8ADEFBC8CE585B6E5AFB9E591BDE4B8ADE78E87E79A84E5BDB1E5938DE4B88EE689A7E8A18CE79A84E7A88BE5BA8FE69C89E585B3EFBC9BE59CA8E59CB0E59D80E698A0E5838FE696B9E99DA2EFBC8CE585A8E79BB8E88194E79A84E591BDE4B8ADE78E87E69C80E9AB98EFBC8CE4BD86E59BA0E68980E99C80E7A1ACE4BBB6E5A4AAE5A49AEFBC8CE4B880E888ACE4B88DE98787E794A8EFBC8CE79BB4E68EA5E698A0E5838FE591BDE4B8ADE78E87E69C80E4BD8EEFBC8CE4BD86E698AFE7AE80E58D95EFBC8CE6AF94E8BE83E79086E683B3E79A84E698AFE7BB84E79BB8E88194EFBC9BE59CA8E69BBFE68DA2E7AE97E6B395E696B9E99DA2EFBC8C4C5255E69BBFE68DA2E7AE97E6B395E79A84E591BDE4B8ADE78E87E9AB98E4BA8E4649464FE68896E99A8FE69CBAE69BBFE68DA2E7AE97E6B395E380820D0A, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('266', '4', '7', '31', 0xE8999AE68B9FE5AD98E582A8E599A8E79A84E4B8BBE8A681E789B9E782B9E698AFE4BB80E4B988EFBC9F, 0xE7AD94EFBC9AEFBC8831EFBC89E794A8E688B7E58FAFE4BBA5E794A8E6AF94E4B8BBE5AD98E5A4A7E5BE97E5A49AE79A84E5AD98E582A8E7A9BAE997B4E7BC96E58699E7A88BE5BA8FEFBC8CE8808CE4B88DE5BF85E88083E89991E5A682E4BD95E59CA8E4B8BBE5AD98E5928CE8BE85E5AD98E4B8ADE4BCA0E98092E695B0E68DAEEFBC9BEFBC8832EFBC89435055E6AF8FE6ACA1E8AEBFE5AD98E697B6EFBC8CE983BDE8A681E7BB8FE8BF87E8999AE68B9FE59CB0E59D80E8BDACE68DA2E68890E789A9E79086E59CB0E59D80E79A84E8BF87E7A88BE38082E5A682E69E9CE8AEBFE5AD98E58685E5AEB9E4B88DE59CA8E4B8BBE5AD98E4B8ADEFBC8CE8AEA1E7AE97E69CBAE4BC9AE887AAE58AA8E5B086E695B0E68DAEE59D97E4BB8EE8BE85E5AD98E8B083E588B0E4B8BBE5AD98E38082E4B8BBE5AD98E8A2ABE69BBFE68DA2E697B6E8A681E6B3A8E6848FE8AFA5E695B0E68DAEE59D97E698AFE590A6E8A2ABE58699E585A5EFBC88E68896EFBC89E4BFAEE694B9E8BF87EFBC8CE698AFE79A84E8AF9DE8A681E58588E5B086E585B6E58685E5AEB9E58699E585A5E8BE85E5AD98EFBC8CE784B6E5908EE5868DE8A2ABE69BBFE68DA2E38082EFBC8833EFBC89E4B88AE8BFB0E8BF87E7A88BE698AFE59CA8E8BDAFE4BBB6EFBC88E6938DE4BD9CE7B3BBE7BB9FEFBC89E5928CE7A1ACE4BBB6E9858DE59088E4B88BE5AE8CE68890E79A84EFBC8CE5AFB9E794A8E688B7E698AFE9808FE6988EE79A84E38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('267', '4', '8', '39', 0xE8AF95E5B086E7A1ACE79B98E38081E8BDAFE79B98E38081E7A381E5B8A6E38081E58589E79B98E7AD89E5A496E5AD98E79A84E8AEBFE997AEE697B6E997B4E38081E695B0E68DAEE4BCA0E8BE93E78E87E68C89E5A4A7E5B08FEFBC88E68896E9AB98E4BD8EEFBC89E68E92E5BA8FEFBC8CE5B9B6E58897E587BAE59084E5A496E5AD98E7AA81E587BAE79A84E4BC98E7BCBAE782B9E38081E98082E794A8E59CBAE59088E58F8AE585B1E5908CE79A84E58F91E5B195E8B68BE58ABFE38082, 0xE7AD94EFBC9AE8AEBFE997AEE697B6E997B4E794B1E5B091E588B0E5A49AE38081E695B0E68DAEE4BCA0E8BE93E78E87E794B1E9AB98E588B0E5BA95E79A84E9A1BAE5BA8FEFBC8CE983BDE698AFE7A1ACE79B98E38081E58589E79B98E38081E8BDAFE79B98E38081E7A381E5B8A6EFBC9B0D0AE7AA81E587BAE79A84E4BC98E782B9EFBC9AE7A1ACE79B98E9809FE5BAA6E5BFABEFBC8CE58589E79B98E5928CE8BDAFE79B98E79B98E78987E58FAFE69BBFE68DA2EFBC8CE7A381E5B8A6E5AEB9E9878FE5A4A7E38081E4BEBFE5AE9CE4B894E7A381E5B8A6E58FAFE69BBFE68DA2EFBC9B0D0AE98082E794A8E59CBAE59088EFBC9AE7A1ACE79B98E698AFE4B8BBE5AD98E79A84E5908EE68FB4EFBC8CE58589E79B98E5AD98E8B584E69699E38081E69687E78CAEE6A1A3E6A188EFBC8CE694AFE68C81E5A49AE5AA92E4BD93E68A80E69CAFEFBC8CE7A381E5B8A6E5819AE4B8BAE6B5B7E9878FE5908EE5A487EFBC8CE8BDAFE79B98E794A8E4BA8EE8BE93E585A5E8BE93E587BAE4BCA0E98092E58F8AE5B08FE5AEB9E9878FE5A487E4BBBDE380820D0A, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('268', '4', '11', '54', 0xE4BBA5E4B88BE585ADE7A78DE5B8B8E794A8E79A84E5AD98E582A8E599A8EFBC8CE5AF84E5AD98E599A8E7BB84E38081E4B8BBE5AD98E38081E9AB98E9809FE7BC93E5AD986361636865E38081E7A381E5B8A6E5AD98E582A8E599A8E38081E8BDAFE7A381E79B98E5928CE7A1ACE7A381E79B98EFBC8CE8AFB7E59B9EE7AD94E4B88BE58897E997AEE9A298EFBC9AEFBC8831EFBC89E68C89E5AD98E582A8E5AEB9E9878FE68E92E587BAE9A1BAE5BA8FEFBC88E4BB8EE5B08FE588B0E5A4A7EFBC89EFBC8832EFBC89E68C89E8AFBBE58699E697B6E997B4E68E92E587BAE9A1BAE5BA8FEFBC88E4BB8EE5BFABE588B0E685A2EFBC89, 0xE7AD94EFBC9AEFBC8831EFBC89E68C89E5AD98E582A8E5AEB9E9878FE68E92E587BAE9A1BAE5BA8FEFBC88E4BB8EE5B08FE588B0E5A4A7EFBC89EFBC9AE5AF84E5AD98E599A8E7BB84E28095E280956361636865E28095E28095E4B8BBE5AD98E38081E8BDAFE7A381E79B98E28095E28095E7A1ACE79B98E28095E28095E7A381E5B8A6EFBC9BEFBC8832EFBC89E68C89E8AFBBE58699E697B6E997B4E68E92E587BAE9A1BAE5BA8FEFBC88E4BB8EE5BFABE588B0E685A2EFBC89EFBC9AE5AF84E5AD98E599A8E7BB84E28095E280956361636865E28095E28095E4B8BBE5AD98E28095E28095E7A1ACE79B98E28095E28095E8BDAFE7A381E79B98EFBC8DE28095E7A381E5B8A6, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('269', '4', '10', '47', 0xE59CA8E8BE93E585A5E8BE93E587BAE7B3BBE7BB9FE79A84E58F91E5B195E4B8ADE587BAE78EB0E4BA86E593AAE587A0E7A78DE8BE93E585A5E8BE93E587BAE696B9E5BC8FEFBC9FE585B6E4B8ADE593AAE4BA9BE4B8BBE8A681E794B1E8BDAFE4BBB6E69DA5E5AE9EE78EB0EFBC9FE593AAE4BA9BE794B1E7A1ACE4BBB6E69DA5E5AE9EE78EB0EFBC9F, 0xE7AD94EFBC9AE8BE93E585A5E8BE93E587BAE696B9E5BC8FE79A84E58F91E5B195E5A4A7E887B4E58886E4B8BAE4BA94E7A78DE696B9E5BC8FEFBC8CE58DB3EFBC9AE7A88BE5BA8FE68EA7E588B6E79A84E8BE93E585A5E8BE93E587BAE696B9E5BC8FE38081E4B8ADE696ADE696B9E5BC8FE38081444D41E696B9E5BC8FE38081E8BE93E585A5E8BE93E587BAE9809AE98193E696B9E5BC8FE5928C492F4FE5A484E79086E69CBAE696B9E5BC8FE38082E585B6E4B8ADE7A88BE5BA8FE68EA7E588B6E79A84E8BE93E585A5E8BE93E587BAE696B9E5BC8FE5928CE4B8ADE696ADE696B9E5BC8FE794B1E8BDAFE4BBB6E69DA5E5AE9EE78EB0EFBC9B444D41E696B9E5BC8FE38081E8BE93E585A5E8BE93E587BAE9809AE98193E696B9E5BC8FE5928C492F4FE5A484E79086E69CBAE696B9E5BC8FE794B1E7A1ACE4BBB6E69DA5E5AE9EE78EB0E38082E4B880E888ACE5B08FE59E8BE69CBAE5928CE5BEAEE69CBAE98787E794A8E5898D33E7A78DE696B9E5BC8FEFBC8CE5A4A7E59E8BE69CBAE98787E794A8492F4FE9809AE98193E68EA7E588B6E696B9E5BC8FE68896E5A496E59BB4E5A484E79086E69CBAE696B9E5BC8FE38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('270', '4', '10', '47', 0xE8BE93E585A5E8BE93E587BAE68EA5E58FA3E79A84E59FBAE69CACE58A9FE883BDE698AFE4BB80E4B988EFBC9F, 0xE7AD94EFBC9A283129E695B0E68DAEE7BC93E586B2EFBC8CE4BDBFE4B8BBE69CBAE4B88EE5A496E59BB4E8AEBEE5A487E9809FE5BAA6E58CB9E9858DE38082283229E695B0E68DAEE6A0BCE5BC8FE8BDACE68DA2E38082283329E68F90E4BE9BE5A496E59BB4E8AEBEE5A487E5928CE68EA5E58FA3E79A84E78AB6E68081E4BE9B435055E8AFBBE58F96EFBC8CE4BBA5E4BEBFE4BA86E8A7A3E5A496E59BB4E8AEBEE5A487E79A84E5B7A5E4BD9CE68385E586B5E38082283429E5AE9EE78EB0E4B8BBE69CBAE4B88EE5A496E59BB4E8AEBEE5A487E79A84E9809AE4BFA1E88194E7BB9CE38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('271', '4', '10', '47', 0xE59CA8492F4FE7B3BBE7BB9FE4B8ADE8AF95E6AF94E8BE83E7A88BE5BA8FE79BB4E68EA5E68EA7E588B6E696B9E5BC8FE4B88EE7A88BE5BA8FE4B8ADE696ADE696B9E5BC8FE79A84E4BC98E7BCBAE782B9E38082, 0xE7AD94EFBC9A283129E7A88BE5BA8FE79BB4E68EA5E68EA7E588B6E696B9E5BC8FE4BC98E782B9EFBC9AE7A1ACE8AEBEE5A487E68EA5E58FA3E5B091EFBC8CE68EA7E588B6E7AE80E58D95E38082E7BCBAE782B9EFBC9AE5B9B6E8A18CE680A7E5B7AEEFBC8CE69588E78E87E4BD8EEFBC9BE697A0E6B395E5A484E79086E99499E8AFAFE68896E5BC82E5B8B8E4BA8BE4BBB6E38082283229E4B8ADE696ADE696B9E5BC8FE4BC98E782B9EFBC9A435055E4B88E492F4FE8AEBEE5A487E5B9B6E8A18CE5B7A5E4BD9CEFBC8CE68F90E9AB98E4BA86E69588E78E87EFBC9BE58FAFE5A484E79086E5BC82E5B8B8E4BA8BE4BBB6EFBC8CE68F90E9AB98E4BA86E69CBAE599A8E79A84E58FAFE99DA0E680A7E38082E5A49AE58FB0E5A496E8AEBEE58FAFE5B9B6E8A18CE5B7A5E4BD9CE38082E7BCBAE782B9EFBC9AE68EA7E588B6E79BB8E5BA94E5A48DE69D82E4B880E4BA9BEFBC8CE4B88DE883BDE5A484E79086E9AB98E9809FE695B0E68DAEE59D97E79A84E4BCA0E98081E38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('272', '4', '10', '47', 0xE4B8ADE696ADE68EA7E588B6E8BE93E585A5E8BE93E587BAE8BE83E7A88BE5BA8FE68EA7E588B6E79A84E8BE93E585A5E8BE93E587BAE69C89E4BB80E4B988E694B9E8BF9BEFBC9F, 0xE7AD94EFBC9AE7A88BE5BA8FE68EA7E588B6E8BE93E585A5E8BE93E587BAE696B9E5BC8FE5A496E983A8E8AEBEE5A487E79A84E590AFE58AA8E38081E5819CE6ADA2E7AD89E5B7A5E4BD9CE585A8E983A8E794B1435055E9809AE8BF87E7A88BE5BA8FE68EA7E588B6E38082E5A496E983A8E8AEBEE5A487E5928C435055E4B88DE883BDE5908CE697B6E5B7A5E4BD9CEFBC8CE59084E5A496E983A8E8AEBEE5A487E4B98BE997B4E4B99FE4B88DE883BDE5908CE697B6E5B7A5E4BD9CE38082E899BDE784B6E7A88BE5BA8FE69893E7BC96EFBC8CE7A88BE5BA8FE7AE80E58D95EFBC8CE4BD86E7B3BBE7BB9FE69588E78E87E5BE88E4BD8EE38082E7A88BE5BA8FE4B8ADE696ADE79A84E696B9E6B395E59CA8E5A496E8AEBEE79A84E68EA5E58FA3E4B8ADE5A29EE8AEBEE4BA86E7BC93E586B2E599A8EFBC8CE4BDBFE4BFA1E681AFE4BAA4E68DA2E59CA8E4B8BBE5AD98E5928CE7BC93E586B2E58CBAE4B98BE997B4E8BF9BE8A18CEFBC8CE4B8ADE5A4AEE5A484E79086E69CBAE5928CE5A496E983A8E8AEBEE5A487E58FAFE4BBA5E5908CE697B6E5B7A5E4BD9CE38082E5BD93E5A496E983A8E8AEBEE5A487E5819AE5A5BDE58786E5A487E4BBA5E5908EE5868DE8AFB7E6B182E4B8ADE696AD435055EFBC8CE59BA0E4B8BAE5A496E983A8E8AEBEE5A487E79A84E5B7A5E4BD9CE9809FE5BAA6E58F96E586B3E4BA8EE69CBAE6A2B0E58AA8E4BD9CEFBC8CE5AE83E8BF9CE6AF94435055E79A84E9809FE5BAA6E8A681E4BD8EEFBC8CE59BA0E6ADA4435055E58FAFE4BBA5E5908CE697B6E590AFE58AA8E5A49AE58FB0E5A496E983A8E8AEBEE5A487E4BDBFE5AE83E4BBACE5908CE697B6E5B7A5E4BD9CEFBC8CE8808CE794B1435055E58886E588ABE5A484E79086E5AE83E4BBACE79A84E4B8ADE696ADE8AFB7E6B182EFBC8CE8BF99E6A0B7E5889DE6ADA5E8A7A3E586B3E4BA86435055E38081E4B8BBE5AD98E5928CE5A496E983A8E8AEBEE5A487E4B98BE997B4E79A84E9809FE5BAA6E58CB9E9858DE997AEE9A298E38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('273', '4', '11', '54', 0x435055E5938DE5BA94E4B8ADE696ADE5BA94E585B7E5A487E593AAE4BA9BE69DA1E4BBB6EFBC9FE8AFB7E8AFB4E6988EE4B8ADE696ADE5A484E79086E8BF87E7A88BE79A84E6ADA5E9AAA4E38082, 0xE7AD94EFBC9AE5938DE5BA94E4B8ADE696ADE79A84E69DA1E4BBB6EFBC9AEFBC8831EFBC89E59CA8435055E58685E983A8E8AEBEE7BDAEE79A84E2809CE4B8ADE696ADE5B18FE894BDE2809DE8A7A6E58F91E599A8E5BF85E9A1BBE698AFE5BC80E694BEE79A84EFBC9BEFBC8832EFBC89E5A496E8AEBEE69C89E4B8ADE696ADE8AFB7E6B182EFBC8CE2809CE4B8ADE696ADE8AFB7E6B182E2809DE8A7A6E58F91E599A8E5A484E4BA8EE2809C31E2809DE78AB6E68081EFBC8CE4BF9DE68C81E4B8ADE696ADE8AFB7E6B182E4BFA1E58FB7EFBC9BEFBC8833EFBC89E5A496E8AEBEEFBC88E68EA5E58FA3EFBC89E2809CE4B8ADE696ADE58581E8AEB8E2809DE8A7A6E58F91E599A8E5BF85E9A1BBE4B8BAE2809C31E2809DEFBC9BEFBC8834EFBC89435055E5AE8CE68890E5BD93E5898DE68C87E4BBA4E79A84E689A7E8A18CE38082E4B8ADE696ADE5A484E79086E8BF87E7A88BE79A84E6ADA5E9AAA4EFBC9AE585B3E4B8ADE696ADEFBC9BE4BF9DE5AD98E696ADE782B9E38081E4BF9DE5AD98E78EB0E59CBAEFBC9BE588A4E696ADE4B8ADE696ADE69DA1E4BBB6E8BDACE585A5E4B8ADE696ADE69C8DE58AA1E7A88BE5BA8FEFBC9BE5BC80E4B8ADE696ADEFBC9BE689A7E8A18CE4B8ADE696ADE69C8DE58AA1E7A88BE5BA8FEFBC9BE585B3E4B8ADE696ADEFBC9BE681A2E5A48DE78EB0E59CBAE38081E681A2E5A48DE696ADE782B9EFBC9BE5BC80E4B8ADE696ADEFBC9BE8BF94E59B9EE696ADE782B9E38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('274', '4', '10', '48', 0xE8AFB7E8AFB4E6988EE4B8ADE696ADE68EA5E58FA3E4B8ADE4BBA5E4B88BE587A0E4B8AAE8A7A6E58F91E599A8E79A84E4B8BBE8A681E4BD9CE794A8E38082EFBC8831EFBC89E4B8ADE696ADE8AFB7E6B182E8A7A6E58F91E599A8EFBC9BEFBC8832EFBC89E4B8ADE696ADE5B18FE894BDE8A7A6E58F91E599A8EFBC9BEFBC8833EFBC89E4B8ADE696ADE58581E8AEB8E8A7A6E58F91E599A8EFBC9BEFBC8834EFBC89E58786E5A487E5B0B1E7BBAAE78AB6E68081E8A7A6E58F91E599A8EFBC9BEFBC8835EFBC89E5BF99E78AB6E68081E8A7A6E58F91E599A8E38082, 0xE7AD94EFBC9AE4B8ADE696ADE68EA5E58FA3E59084E8A7A6E58F91E599A8E79A84E4B8BBE8A681E4BD9CE794A8E4B8BAEFBC9AEFBC8831EFBC89E4B8ADE696ADE8AFB7E6B182E8A7A6E58F91E599A8EFBC9AE69A82E5AD98E4B8ADE696ADE8AFB7E6B182E7BABFE4B88AE794B1E8AEBEE5A487E58F91E587BAE79A84E4B8ADE696ADE8AFB7E6B182E4BFA1E58FB7E38082E6ADA4E6A087E5BF97E4B8BAE2809C31E2809DE697B6E8A1A8E7A4BAE8AEBEE5A487E58F91E98081E4BA86E4B8ADE696ADE8AFB7E6B182EFBC9BEFBC8832EFBC89E4B8ADE696ADE5B18FE894BDE8A7A6E58F91E599A8EFBC9A435055E698AFE590A6E58FAFE4BBA5E5938DE5BA94E4B8ADE696ADE79A84E6A087E5BF97E38082E4B8ADE696ADE5B18FE894BDE8A7A6E58F91E599A8E4B8BAE2809C30E2809DE697B6EFBC8C435055E58FAFE4BBA5E5938DE5BA94E5A496E7958CE79A84E4B8ADE696ADEFBC9BEFBC8833EFBC89E4B8ADE696ADE58581E8AEB8E8A7A6E58F91E599A8EFBC9AE68EA7E588B6E698AFE590A6E58581E8AEB8E69F90E8AEBEE5A487E58F91E587BAE4B8ADE696ADE8AFB7E6B182EFBC8CE4B8BAE2809C31E2809DE697B6EFBC8CE69F90E8AEBEE5A487E58FAFE4BBA5E59091435055E58F91E98081E4B8ADE696ADE8AFB7E6B182EFBC9BEFBC8834EFBC89E58786E5A487E5B0B1E7BBAAE78AB6E68081E8A7A6E58F91E599A8EFBC9AE4B880E697A6E8AEBEE5A487E5819AE5A5BDE4B880E6ACA1E695B0E68DAEE79A84E68EA5E694B6E68896E58F91E98081EFBC8CE4BEBFE58F91E98081E4B880E4B8AAE8AEBEE5A487E58AA8E4BD9CE5AE8CE6AF95E4BFA1E58FB7EFBC8CE4BDBFE8A7A6E58F91E599A8E6A087E5BF97E4B8BAE2809C31E2809DEFBC9BEFBC8835EFBC89E5BF99E78AB6E68081E8A7A6E58F91E599A8EFBC9AE8AFA5E6A087E5BF97E4B8BAE2809C31E2809DE697B6E8AEBEE5A487E6ADA3E59CA8E5B7A5E4BD9CE38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('275', '4', '10', '48', 0xE59CA8E58D95E9878DE4B8ADE696ADE696B9E5BC8FE4B88BEFBC88E58DB3E8BF9BE585A5E4B8ADE696ADE5A484E79086E5908EE4B88DE5868DE5938DE5BA94E585B6E4BB96E4B8ADE696ADE8AFB7E6B182EFBC89EFBC8C435055E5938DE5BA94E4B8ADE696ADE79A84E6ADA5E9AAA4E698AFE982A3E4BA9BEFBC9FE59CA8E5A49AE9878DE4B8ADE696ADE696B9E5BC8FE4B88B435055E79BB8E5BA94E4B8ADE696ADE79A84E6ADA5E9AAA4E58F88E698AFE593AAE4BA9BEFBC9F, 0xE7AD94EFBC9AE58D95E9878DE4B8ADE696ADE696B9E5BC8F435055E5938DE5BA94E4B8ADE696ADE79A84E6ADA5E9AAA4E4B8BAEFBC9AE585B3E4B8ADE696ADEFBC8CE4BF9DE5AD98E78EB0E59CBAEFBC8CE588A4E696ADE4B8ADE696ADE6BA90EFBC8CE689A7E8A18CE4B88EE8AEBEE5A487E69C89E585B3E79A84E4B8ADE696ADE69C8DE58AA1E7A88BE5BA8FEFBC8CE681A2E5A48DE78EB0E59CBAEFBC8CE5BC80E4B8ADE696ADEFBC8CE8BF94E59B9EE58E9FE7A88BE5BA8FE38082E5A49AE9878DE4B8ADE696ADE696B9E5BC8F435055E5938DE5BA94E4B8ADE696ADE79A84E6ADA5E9AAA4E4B8BAEFBC9AE585B3E4B8ADE696ADEFBC8CE4BF9DE5AD98E78EB0E59CBAEFBC88E58C85E68BACE4BF9DE5AD98E58E9FE4B8ADE696ADE5B18FE894BDE5AD97E5B9B6E58F96E696B0E5B18FE894BDE5AD97EFBC89EFBC8CE588A4E696ADE4B8ADE696ADE6BA90EFBC8CE5BC80E4B8ADE696ADEFBC8CE689A7E8A18CE4B88EE8AEBEE5A487E69C89E585B3E79A84E4B8ADE696ADE69C8DE58AA1E7A88BE5BA8FEFBC8CE585B3E4B8ADE696ADEFBC8CE681A2E5A48DE78EB0E59CBAEFBC88E58C85E68BACE681A2E5A48DE4B8ADE696ADE5B18FE894BDE5AD97EFBC89EFBC8CE5BC80E4B8ADE696ADEFBC8CE8BF94E59B9EE58E9FE7A88BE5BA8FE38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('276', '4', '10', '48', 0xE69F90E8AEA1E7AE97E69CBAE7B3BBE7BB9FE585B1E69C89E4BA94E7BAA7E4B8ADE696ADEFBC8CE585B6E4B8ADE696ADE5938DE5BA94E4BC98E58588E7BAA7E4BB8EE9AB98E588B0E4BD8EE4B8BA312D2D3E322D2D3E332D2D3E342D2D3E35E38082E4BD86E6938DE4BD9CE7B3BBE7BB9FE79A84E4B8ADE696ADE5A484E79086E983A8E58886E4BD9CE5A682E4B88BE8A784E5AE9AEFBC9AE5A484E7908631E7BAA7E4B8ADE696ADE697B6E5B18FE894BD32E3808133E3808134E5928C35E7BAA7E4B8ADE696ADEFBC9BE5A484E7908632E7BAA7E4B8ADE696ADE697B6E5B18FE894BD33E3808134E3808135E7BAA7E4B8ADE696ADEFBC8CE5A484E7908634E7BAA7E4B8ADE696ADE697B6E4B88DE5B18FE894BDE585B6E5AE83E4B8ADE696ADEFBC9BE5A484E7908633E7BAA7E4B8ADE696ADE697B6E5B18FE894BD34E5928C35E7BAA7E4B8ADE696ADEFBC9BE5A484E7908635E7BAA7E4B8ADE696ADE697B6E5B18FE894BD34E7BAA7E4B8ADE696ADE38082E8AF95E997AEE4B8ADE696ADE5A484E79086E4BC98E58588E7BAA7EFBC88E4BB8EE9AB98E588B0E4BD8EEFBC89E698AFE4BB80E4B988EFBC9F, 0xE7AD94EFBC9AE4B8ADE696ADE5A484E79086E4BC98E58588E7BAA7E4BB8EE9AB98E588B0E4BD8EE698AFEFBC9A312D2D3E322D2D3E332D2D3E352D2D3E34, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('277', '4', '10', '51', 0xE58D95E680BBE7BABFE7BB93E69E84E69C89E4BD95E789B9E782B9EFBC9FE8AEA1E7AE97E69CBAE4B8ADE98787E794A8E5A49AE680BBE7BABFE7BB93E69E84E79A84E4B8BBE8A681E58E9FE59BA0E4BD95E59CA8EFBC9F, 0xE7AD94EFBC9AE58D95E680BBE7BABFE79A84E789B9E782B9EFBC9AE58886E697B6E680A7E5928CE585B1E4BAABE680A7E38082E58D95E680BBE7BABFE585B7E69C89E7BB93E69E84E7AE80E58D95E4BEBFE4BA8EE689A9E58585E7AD89E4BC98E782B9E38082E4BD86E794B1E4BA8EE68980E69C89E695B0E68DAEE79A84E4BCA0E98081E983BDE9809AE8BF87E8BF99E4B880E585B1E4BAABE79A84E680BBE7BABFEFBC8CE59BA0E6ADA4E59CA8E6ADA4E5A484E58FAFE883BDE68890E4B8BAE8AEA1E7AE97E69CBAE79A84E793B6E9A288E38082E58FA6E5A496E4B99FE4B88DE58581E8AEB8E4B8A4E4B8AAE4BBA5E4B88AE6A8A1E59D97E59CA8E5908CE4B880E697B6E588BBE4BAA4E68DA2E4BFA1E681AFEFBC8CE8BF99E5AFB9E68F90E9AB98E7B3BBE7BB9FE69588E78E87E5928CE58585E58886E588A9E794A8E5AD90E7B3BBE7BB9FE983BDE698AFE4B88DE588A9E79A84E38082E4B8BAE4BA86E68F90E9AB98E695B0E68DAEE4BCA0E8BE93E78E87EFBC8CE5B9B6E8A7A3E586B3492F4FE8AEBEE5A487E5928C435055E38081E4B8BBE5AD98E4B98BE997B4E4BCA0E98081E9809FE78E87E79A84E5B7AEE5BC82EFBC8CE8A7A3E586B3E680BBE7BABFE695B0E68DAEE4BCA0E98081E79A84E2809CE793B6E9A288E2809DE997AEE9A298EFBC8CE8808CE98787E794A8E5A49AE680BBE7BABFE38082, null, null, '1.00', '1711418060730', '1711418060730');
INSERT INTO `question` VALUES ('278', '4', '1', '3', 0xE4BDA0E8AEA4E4B8BAE8AEA1E7AE97E69CBAE79A84E8BDAFE4BBB6E5928CE7A1ACE4BBB6E79A84E980BBE8BE91E58A9FE883BDE7AD89E4BBB7E59097EFBC9FE4B8BAE4BB80E4B988EFBC9F, 0xE7AD94EFBC9AE8BDAFE4BBB6E5928CE7A1ACE4BBB6E79A84E980BBE8BE91E58A9FE883BDE698AFE7AD89E69588E79A84EFBC8CE4BD86E680A7E883BDE4B88DE5908CE38082, null, null, '1.00', '1711418060730', '1711418060730');

-- ----------------------------
-- Table structure for question_type
-- ----------------------------
DROP TABLE IF EXISTS `question_type`;
CREATE TABLE `question_type` (
  `question_type_id` int NOT NULL AUTO_INCREMENT COMMENT '题型id',
  `question_type_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '题型名称: 选择题、判断题、填空题 等',
  `subject_whether` tinyint NOT NULL COMMENT '是否是主观题',
  PRIMARY KEY (`question_type_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT COMMENT='题型表';

-- ----------------------------
-- Records of question_type
-- ----------------------------
INSERT INTO `question_type` VALUES ('1', '选择题', '0');
INSERT INTO `question_type` VALUES ('2', '判断题', '0');
INSERT INTO `question_type` VALUES ('3', '计算题', '1');
INSERT INTO `question_type` VALUES ('4', '简答题', '1');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT COMMENT='角色表';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'admin');
INSERT INTO `role` VALUES ('2', 'student');
INSERT INTO `role` VALUES ('3', 'teacher');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `role_permission_id` int NOT NULL AUTO_INCREMENT,
  `role_id` int DEFAULT NULL,
  `permission_id` int DEFAULT NULL,
  PRIMARY KEY (`role_permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT COMMENT='角色权限表';

-- ----------------------------
-- Records of role_permission
-- ----------------------------

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `school_id` int NOT NULL AUTO_INCREMENT,
  `school_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '学校名称',
  `school_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '学校地址',
  `school_phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '学校电话',
  PRIMARY KEY (`school_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT COMMENT='学校表';

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES ('1', '东莞城市学院', '广东省东莞市寮步镇', '076923382107');
INSERT INTO `school` VALUES ('2', '东莞理工学院', '广东省东莞市松山湖', '076922861199');
INSERT INTO `school` VALUES ('3', '清华大学', '北京市海淀区', '01062793001');
INSERT INTO `school` VALUES ('4', '北京大学', '北京市海淀区', '01062751407');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `student_id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `student_name` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '姓名',
  `gender` tinyint DEFAULT NULL COMMENT '性别，1-男 ， 2- 女',
  `student_no` char(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '学生编号',
  `class_id` int NOT NULL COMMENT '班级id',
  `user_id` int NOT NULL DEFAULT '2' COMMENT '用户id',
  `email` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`student_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC COMMENT='学生信息表';

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '钟颖棋', '1', '20240921', '1', '1', '12345678998@163.com');
INSERT INTO `student` VALUES ('2', '李丹', '1', '20240922', '1', '3', '12345678998@163.com');
INSERT INTO `student` VALUES ('3', '子木', '1', '', '1', '4', '');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `teacher_id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `teacher_name` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '姓名',
  `school_id` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '学校id',
  `gender` tinyint DEFAULT NULL COMMENT '性别, 1-男 ， 2- 女',
  `employee_id` char(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '职工号',
  `email` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '邮箱',
  `user_id` int DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`teacher_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin ROW_FORMAT=DYNAMIC COMMENT='教师信息表';

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '李恒', '1', '1', null, null, '2');
INSERT INTO `teacher` VALUES ('3', 'jone', '1', '1', null, '18473095331@163.com', '3');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` int NOT NULL COMMENT '是否过期的状态',
  `type` int NOT NULL COMMENT '学生 or 老师',
  `allow_other_login` int DEFAULT NULL COMMENT '是否允许异地登录（1是，0否）',
  `expire_time` bigint NOT NULL,
  `create_time` bigint NOT NULL,
  `update_time` bigint NOT NULL,
  `school_id` int DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '15119629072', '$2a$10$4gaP0BKtVVRkpfeoK3j3L.Wu0TI442O5mPbFodoQ1uRBplPL12XQG', '0', '1', '1', '1742953756000', '1711418060730', '1711418060730', '1');
INSERT INTO `user` VALUES ('2', '18888888888', '$2a$10$4gaP0BKtVVRkpfeoK3j3L.Wu0TI442O5mPbFodoQ1uRBplPL12XQG', '0', '2', '1', '1742953756000', '1711418060730', '1711418060730', '1');
INSERT INTO `user` VALUES ('3', '13232522028', '$2a$10$az9rt1VDgz1Y98ko6NoVYeKyaqhL4X6x.e387x1ohf9xYSiBegMS.', '0', '2', '1', '1743436800000', '1713493557972', '1713493557972', '1');
INSERT INTO `user` VALUES ('4', '15119629071', '$2a$10$ZQLuCe3BH8ek4ZYEgttF3um3JolrhVtEUUcRBt/Pl0/HJzWNbsmU6', '0', '1', '1', '1716566400000', '1713923606227', '1713923606227', '1');
INSERT INTO `user` VALUES ('5', '16666666666', '$2a$10$yCx2DcAJeZckYNeLc61LtuyQ65G5VrtSUvRNhSJ1.38zTT0IPoa0W', '0', '3', '1', '1745459888336', '1713923888336', '1713923888336', '3');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_role_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL COMMENT '用户id',
  `role_id` int NOT NULL COMMENT '角色id',
  PRIMARY KEY (`user_role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT COMMENT='用户角色表';

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1', '2');
INSERT INTO `user_role` VALUES ('2', '2', '1');
INSERT INTO `user_role` VALUES ('3', '3', '1');
INSERT INTO `user_role` VALUES ('4', '4', '2');

-- ----------------------------
-- Table structure for wrong_record
-- ----------------------------
DROP TABLE IF EXISTS `wrong_record`;
CREATE TABLE `wrong_record` (
  `wrong_id` int NOT NULL AUTO_INCREMENT COMMENT '错题id',
  `student_id` int NOT NULL COMMENT '学生id',
  `question_id` int NOT NULL COMMENT '题目id',
  `wrong_time` int NOT NULL COMMENT '错误次数',
  `module_id` int NOT NULL COMMENT '模块id',
  `kps_id` int NOT NULL COMMENT '知识点id',
  `question_type_id` int DEFAULT NULL COMMENT '题型id',
  `create_time` bigint DEFAULT NULL,
  `update_time` bigint DEFAULT NULL,
  PRIMARY KEY (`wrong_id`) USING BTREE,
  KEY `Index_query_question` (`student_id`,`question_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT COMMENT='错题记录表';

-- ----------------------------
-- Records of wrong_record
-- ----------------------------
INSERT INTO `wrong_record` VALUES ('60', '1', '78', '4', '1', '1', '1', '1713867902375', '1714101365148');
INSERT INTO `wrong_record` VALUES ('61', '1', '14', '2', '2', '6', '1', '1713867907070', '1714103306670');
INSERT INTO `wrong_record` VALUES ('62', '1', '103', '2', '2', '6', '2', '1713867920172', '1714051923317');
INSERT INTO `wrong_record` VALUES ('63', '1', '27', '3', '2', '7', '1', '1713867934202', '1714103306679');
INSERT INTO `wrong_record` VALUES ('64', '1', '17', '3', '2', '7', '1', '1713867934203', '1714103306676');
INSERT INTO `wrong_record` VALUES ('65', '1', '29', '2', '3', '10', '1', '1713868718101', '1713941775406');
INSERT INTO `wrong_record` VALUES ('66', '1', '86', '1', '5', '23', '1', '1713868718103', '1713868718103');
INSERT INTO `wrong_record` VALUES ('67', '1', '55', '2', '10', '48', '1', '1713868718104', '1714054621987');
INSERT INTO `wrong_record` VALUES ('68', '1', '80', '2', '1', '3', '1', '1713885319637', '1714101365143');
INSERT INTO `wrong_record` VALUES ('69', '1', '24', '2', '1', '3', '1', '1713885319640', '1714101365140');
INSERT INTO `wrong_record` VALUES ('70', '1', '76', '1', '1', '3', '1', '1713885319642', '1713885319642');
INSERT INTO `wrong_record` VALUES ('71', '1', '22', '2', '1', '3', '1', '1713885319643', '1714101365145');
INSERT INTO `wrong_record` VALUES ('72', '1', '54', '2', '4', '15', '1', '1713941775408', '1713946599496');
INSERT INTO `wrong_record` VALUES ('73', '1', '7', '1', '3', '10', '1', '1713941775409', '1713941775409');
INSERT INTO `wrong_record` VALUES ('74', '1', '93', '1', '8', '36', '1', '1713941775410', '1713941775410');
INSERT INTO `wrong_record` VALUES ('75', '1', '81', '1', '5', '22', '1', '1713941775411', '1713941775411');
INSERT INTO `wrong_record` VALUES ('76', '1', '10', '1', '3', '10', '1', '1713941775412', '1713941775412');
INSERT INTO `wrong_record` VALUES ('77', '1', '50', '1', '10', '48', '1', '1713941775414', '1713941775414');
INSERT INTO `wrong_record` VALUES ('78', '1', '1', '1', '1', '1', '1', '1713946599490', '1713946599490');
INSERT INTO `wrong_record` VALUES ('79', '1', '37', '2', '5', '21', '1', '1713946599501', '1714053847887');
INSERT INTO `wrong_record` VALUES ('80', '1', '32', '1', '6', '29', '1', '1713946599504', '1713946599504');
INSERT INTO `wrong_record` VALUES ('81', '1', '30', '1', '4', '19', '1', '1713946599506', '1713946599506');
INSERT INTO `wrong_record` VALUES ('82', '1', '13', '2', '2', '8', '1', '1713946599509', '1714103306682');
INSERT INTO `wrong_record` VALUES ('83', '1', '28', '1', '3', '9', '1', '1713946599511', '1713946599511');
INSERT INTO `wrong_record` VALUES ('84', '1', '6', '1', '3', '9', '1', '1714016746640', '1714016746640');
INSERT INTO `wrong_record` VALUES ('85', '1', '40', '1', '4', '15', '1', '1714016746643', '1714016746643');
INSERT INTO `wrong_record` VALUES ('86', '1', '61', '1', '6', '25', '1', '1714016746645', '1714016746645');
INSERT INTO `wrong_record` VALUES ('87', '1', '38', '1', '4', '17', '1', '1714016746649', '1714016746649');
INSERT INTO `wrong_record` VALUES ('88', '1', '66', '2', '10', '47', '1', '1714016746651', '1714054621983');
INSERT INTO `wrong_record` VALUES ('89', '1', '72', '1', '4', '20', '1', '1714016746656', '1714016746656');
INSERT INTO `wrong_record` VALUES ('90', '1', '175', '1', '2', '7', '2', '1714051923314', '1714051923314');
INSERT INTO `wrong_record` VALUES ('91', '1', '165', '1', '2', '7', '2', '1714051923320', '1714051923320');
INSERT INTO `wrong_record` VALUES ('92', '1', '114', '1', '2', '8', '2', '1714051923327', '1714051923327');
INSERT INTO `wrong_record` VALUES ('93', '1', '199', '1', '2', '7', '2', '1714051923334', '1714051923334');
INSERT INTO `wrong_record` VALUES ('94', '1', '118', '1', '2', '7', '2', '1714051923337', '1714051923337');
INSERT INTO `wrong_record` VALUES ('95', '1', '8', '1', '5', '21', '1', '1714053847872', '1714053847872');
INSERT INTO `wrong_record` VALUES ('96', '1', '95', '1', '5', '21', '1', '1714053847880', '1714053847880');
INSERT INTO `wrong_record` VALUES ('97', '1', '51', '1', '5', '21', '1', '1714053847897', '1714053847897');
INSERT INTO `wrong_record` VALUES ('98', '1', '87', '2', '5', '23', '1', '1714053847902', '1714101122348');
INSERT INTO `wrong_record` VALUES ('99', '1', '33', '1', '5', '22', '1', '1714053847905', '1714053847905');
INSERT INTO `wrong_record` VALUES ('100', '1', '57', '1', '10', '48', '1', '1714054621980', '1714054621980');
INSERT INTO `wrong_record` VALUES ('101', '1', '48', '1', '10', '48', '1', '1714054621988', '1714054621988');
INSERT INTO `wrong_record` VALUES ('102', '1', '108', '1', '6', '27', '2', '1714061353903', '1714061353903');
INSERT INTO `wrong_record` VALUES ('103', '1', '151', '1', '5', '22', '2', '1714061353906', '1714061353906');
INSERT INTO `wrong_record` VALUES ('104', '1', '157', '1', '3', '10', '2', '1714061353908', '1714061353908');
INSERT INTO `wrong_record` VALUES ('105', '1', '135', '1', '1', '3', '2', '1714061353911', '1714061353911');
INSERT INTO `wrong_record` VALUES ('106', '1', '117', '1', '5', '22', '2', '1714061353915', '1714061353915');
INSERT INTO `wrong_record` VALUES ('107', '1', '143', '1', '5', '22', '2', '1714061353918', '1714061353918');
INSERT INTO `wrong_record` VALUES ('108', '1', '127', '1', '11', '54', '2', '1714061353920', '1714061353920');
INSERT INTO `wrong_record` VALUES ('109', '1', '67', '1', '6', '26', '1', '1714101122353', '1714101122353');
INSERT INTO `wrong_record` VALUES ('110', '1', '69', '1', '3', '14', '1', '1714101122356', '1714101122356');
