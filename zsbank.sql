/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50558
Source Host           : localhost:3306
Source Database       : zsbank

Target Server Type    : MYSQL
Target Server Version : 50558
File Encoding         : 65001

Date: 2019-01-15 17:38:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for basic_finance_situate_group_core
-- ----------------------------
DROP TABLE IF EXISTS `basic_finance_situate_group_core`;
CREATE TABLE `basic_finance_situate_group_core` (
  `id` varchar(255) DEFAULT NULL,
  `project` varchar(255) DEFAULT NULL,
  `total_asset` varchar(255) DEFAULT NULL,
  `total_liability` varchar(255) DEFAULT NULL,
  `income` varchar(255) DEFAULT NULL,
  `netprofit` varchar(255) DEFAULT NULL,
  `rigid_liability` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of basic_finance_situate_group_core
-- ----------------------------
INSERT INTO `basic_finance_situate_group_core` VALUES ('21c1ca387b9e883efa942b02e66c5540', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('21c1ca387b9e883efa942b02e66c5540', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('21c1ca387b9e883efa942b02e66c5540', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('21c1ca387b9e883efa942b02e66c5540', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('21c1ca387b9e883efa942b02e66c5540', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('adc868407f8893069b44eaa23a2d8622', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('adc868407f8893069b44eaa23a2d8622', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('adc868407f8893069b44eaa23a2d8622', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('adc868407f8893069b44eaa23a2d8622', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('adc868407f8893069b44eaa23a2d8622', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('6cfbca3f23bed12832a594c54ece029c', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('6cfbca3f23bed12832a594c54ece029c', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('6cfbca3f23bed12832a594c54ece029c', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('6cfbca3f23bed12832a594c54ece029c', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('6cfbca3f23bed12832a594c54ece029c', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('ce77997e62b86ce51d4572ebb5dc9c02', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('ce77997e62b86ce51d4572ebb5dc9c02', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('ce77997e62b86ce51d4572ebb5dc9c02', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('ce77997e62b86ce51d4572ebb5dc9c02', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('ce77997e62b86ce51d4572ebb5dc9c02', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d125a89287030abaf0faa6ebda3f799e', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d125a89287030abaf0faa6ebda3f799e', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d125a89287030abaf0faa6ebda3f799e', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d125a89287030abaf0faa6ebda3f799e', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d125a89287030abaf0faa6ebda3f799e', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d067351718d64a212fa954c10818a2b5', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d067351718d64a212fa954c10818a2b5', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d067351718d64a212fa954c10818a2b5', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d067351718d64a212fa954c10818a2b5', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d067351718d64a212fa954c10818a2b5', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('f9d39e02cd3cfb422467e813d5529840', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('f9d39e02cd3cfb422467e813d5529840', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('f9d39e02cd3cfb422467e813d5529840', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('f9d39e02cd3cfb422467e813d5529840', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('f9d39e02cd3cfb422467e813d5529840', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('adc868407f8893069b44eaa23a2d8622', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('adc868407f8893069b44eaa23a2d8622', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('adc868407f8893069b44eaa23a2d8622', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('adc868407f8893069b44eaa23a2d8622', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('adc868407f8893069b44eaa23a2d8622', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('6cfbca3f23bed12832a594c54ece029c', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('6cfbca3f23bed12832a594c54ece029c', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('6cfbca3f23bed12832a594c54ece029c', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('6cfbca3f23bed12832a594c54ece029c', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('6cfbca3f23bed12832a594c54ece029c', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('db0513fc489cc81e789327515142efed', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('db0513fc489cc81e789327515142efed', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('db0513fc489cc81e789327515142efed', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('db0513fc489cc81e789327515142efed', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('db0513fc489cc81e789327515142efed', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d125a89287030abaf0faa6ebda3f799e', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d125a89287030abaf0faa6ebda3f799e', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d125a89287030abaf0faa6ebda3f799e', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d125a89287030abaf0faa6ebda3f799e', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d125a89287030abaf0faa6ebda3f799e', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d067351718d64a212fa954c10818a2b5', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d067351718d64a212fa954c10818a2b5', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d067351718d64a212fa954c10818a2b5', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d067351718d64a212fa954c10818a2b5', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d067351718d64a212fa954c10818a2b5', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('f9d39e02cd3cfb422467e813d5529840', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('f9d39e02cd3cfb422467e813d5529840', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('f9d39e02cd3cfb422467e813d5529840', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('f9d39e02cd3cfb422467e813d5529840', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('f9d39e02cd3cfb422467e813d5529840', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('adc868407f8893069b44eaa23a2d8622', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('adc868407f8893069b44eaa23a2d8622', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('adc868407f8893069b44eaa23a2d8622', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('adc868407f8893069b44eaa23a2d8622', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('adc868407f8893069b44eaa23a2d8622', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('6cfbca3f23bed12832a594c54ece029c', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('6cfbca3f23bed12832a594c54ece029c', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('6cfbca3f23bed12832a594c54ece029c', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('6cfbca3f23bed12832a594c54ece029c', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('6cfbca3f23bed12832a594c54ece029c', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('db0513fc489cc81e789327515142efed', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('db0513fc489cc81e789327515142efed', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('db0513fc489cc81e789327515142efed', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('db0513fc489cc81e789327515142efed', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('db0513fc489cc81e789327515142efed', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d125a89287030abaf0faa6ebda3f799e', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d125a89287030abaf0faa6ebda3f799e', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d125a89287030abaf0faa6ebda3f799e', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d125a89287030abaf0faa6ebda3f799e', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d125a89287030abaf0faa6ebda3f799e', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d067351718d64a212fa954c10818a2b5', '集团合并', '5.231亿', '3.682亿', '5.038亿', '3.639亿', '5.231亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d067351718d64a212fa954c10818a2b5', '集团本级', '5.967亿', '4.651亿', '3.914亿', '3.346亿', '5.967亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d067351718d64a212fa954c10818a2b5', '信雅达风险', '8013万', '6469万', '7736万', '5773万', '8013万');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d067351718d64a212fa954c10818a2b5', '天明环保', '2.040亿', '2.040亿', '2.067亿', '1.877亿', '2.040亿');
INSERT INTO `basic_finance_situate_group_core` VALUES ('d067351718d64a212fa954c10818a2b5', '信雅达泛泰', '14.04亿', '11.02亿', '11.79亿', '9.439亿', '14.04亿');

-- ----------------------------
-- Table structure for cust_base_state
-- ----------------------------
DROP TABLE IF EXISTS `cust_base_state`;
CREATE TABLE `cust_base_state` (
  `id` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `industry` varchar(255) DEFAULT NULL,
  `reg_capital` varchar(255) DEFAULT NULL,
  `reg_addr` varchar(255) DEFAULT NULL,
  `paid_in_capital` varchar(255) DEFAULT NULL,
  `legal_represent` varchar(255) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `enter_nature` varchar(255) DEFAULT NULL,
  `license_num` varchar(255) DEFAULT NULL,
  `basic_open_bank` varchar(255) DEFAULT NULL,
  `institu_code_cert_num` varchar(255) DEFAULT NULL,
  `credit_rating` varchar(255) DEFAULT NULL,
  `loan_card_num_or_zzcode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cust_base_state
-- ----------------------------
INSERT INTO `cust_base_state` VALUES ('f9d39e02cd3cfb422467e813d5529840', '三六零安全科技股份有限公\n司', '软件服务', '162亿', '苏州工业园区澄湾路19号', '162亿', '周鸿祎', '软件服务', '周鸿祎', '软件服务', 'A', 'A', 'A', 'AAAAA', 'A');
INSERT INTO `cust_base_state` VALUES ('adc868407f8893069b44eaa23a2d8622', '中国交通建设股份有限公司', '工程建设', '162亿', '江南大道3888号', '162亿', '刘起涛', '工程建设', '刘起涛', '金融IT', 'A', 'A', 'A', 'AAA', 'A');
INSERT INTO `cust_base_state` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '中国南方航空有限公司', '交通运输', '123亿', '江南大道3888号', '123亿', '王昌顺', '房地产', '王昌顺', '金融IT', 'A', 'A', 'A', 'AAA', 'A');
INSERT INTO `cust_base_state` VALUES ('6cfbca3f23bed12832a594c54ece029c', '云南白药集团股份有限公司', '医药', '10.4亿', '江南大道3888号', '10.4亿', '王明辉', '房地产', '王明辉', '金融IT', 'A', 'A', 'A', 'AAA', 'A');
INSERT INTO `cust_base_state` VALUES ('db0513fc489cc81e789327515142efed', '信雅达系统工程股份有限公\n司', 'IT服务', '4.40亿', '江南大道3888号', '4.40亿', '耿俊岭', '软件服务', '耿俊岭', '金融IT', 'A', 'A', 'A', '一级', 'A');
INSERT INTO `cust_base_state` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '凤凰光学股份有限公司', '仪器仪表', '123亿', '江西省上饶市凤凰西大道197\n号', '123亿', '刘翔', '仪器仪表', '刘翔', '仪器仪表制造业', 'A', 'A', 'A', 'AAA+', 'A');
INSERT INTO `cust_base_state` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '广东万家乐股份有限公司', '电气机械和器材制造业', '6.91亿', '广东省佛山市顺德区', '6.91亿', '黄志雄', '电气机械和器材制造', '黄志雄', '制造', 'A', 'A', 'A', 'AAA+', 'A');
INSERT INTO `cust_base_state` VALUES ('d125a89287030abaf0faa6ebda3f799e', '温氏食品集团股份有限公司', '农牧饲渔', '53.1亿', '江南大道3888号', '53.1亿', '温志芬', '食品', '温志芬', '金融IT', 'A', 'A', 'A', 'AAA', 'A');
INSERT INTO `cust_base_state` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '金融街控股股份有限公司', '房地产', '29.9亿', '北京市西城区金城坊街7号', '29.9亿', '高靓', '房地产', '高靓', '房地产', 'A', 'A', 'A', 'AAAA', 'A');
INSERT INTO `cust_base_state` VALUES ('d067351718d64a212fa954c10818a2b5', '阳光城集团股份有限公司', '房地产', '40.5亿', '江南大道3888号', '40.5亿', '林腾蛟', '房地产', '林腾蛟', '金融IT', 'A', 'A', 'A', 'AA+', 'A');

-- ----------------------------
-- Table structure for fundamental_evaluate
-- ----------------------------
DROP TABLE IF EXISTS `fundamental_evaluate`;
CREATE TABLE `fundamental_evaluate` (
  `id` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `total_asset` varchar(255) DEFAULT NULL,
  `total_liability` varchar(255) DEFAULT NULL,
  `business_income` varchar(255) DEFAULT NULL,
  `rigid_liability` varchar(255) DEFAULT NULL,
  `netprofit` varchar(255) DEFAULT NULL,
  `operator_cash_flow` varchar(255) DEFAULT NULL,
  `cash_flow` varchar(255) DEFAULT NULL,
  `total_asset_ratio` varchar(255) DEFAULT NULL,
  `asset_liability_ratio` varchar(255) DEFAULT NULL,
  `flow_ratio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fundamental_evaluate
-- ----------------------------
INSERT INTO `fundamental_evaluate` VALUES ('f9d39e02cd3cfb422467e813d5529840', '2016年 ', '4.316亿', '1.410亿', '3.474亿', '10.91亿', '2.028亿', '5375万', '2.552亿', '21.40%', '67.03%', '4.126');
INSERT INTO `fundamental_evaluate` VALUES ('f9d39e02cd3cfb422467e813d5529840', '2017年 ', '3.137亿', '1.133亿', '3.548亿', '10.90亿', '1.957亿', '5294万', '2.556亿', '12.32%', '34.81%', '1.0115');
INSERT INTO `fundamental_evaluate` VALUES ('f9d39e02cd3cfb422467e813d5529840', '2018年 ', '3.070亿', '1.191亿', '3.045亿', '8.641亿', '2.085亿', '5808万', '1123万', '9.25%', '26.17%', '4.0312');
INSERT INTO `fundamental_evaluate` VALUES ('f9d39e02cd3cfb422467e813d5529840', '2019年1月 ', '3.560亿', '1.191亿', '3.136亿', '8.641亿', '2.249亿', '6464万', '2162万', '17.58%', '15.718%', '2.0111');
INSERT INTO `fundamental_evaluate` VALUES ('adc868407f8893069b44eaa23a2d8622', '2016年 ', '8496亿', '6443亿', '1976亿', '3667亿', '137.6亿', '44.04亿', '-94.15亿', '2.40%', '79.03%', '1.05');
INSERT INTO `fundamental_evaluate` VALUES ('adc868407f8893069b44eaa23a2d8622', '2017年 ', '8530亿', '6421亿', '2099亿', '4044亿', '157.8亿', '319.1亿', '231.4亿', '2.32%', '76.81%', '1.05');
INSERT INTO `fundamental_evaluate` VALUES ('adc868407f8893069b44eaa23a2d8622', '2018年 ', '9049亿', '6939亿', '4317亿', '1148亿', '172.2亿', '297.2亿', '137.6亿', '2.25%', '76.67%', '1.03');
INSERT INTO `fundamental_evaluate` VALUES ('adc868407f8893069b44eaa23a2d8622', '2019年1月 ', '9218亿', '7029亿', '4828亿', '1275亿', '213.2亿', '427.4亿', '204.8亿', '2.58%', '75.78%', '1.01');
INSERT INTO `fundamental_evaluate` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '2016年 ', '2183.0亿', '1562亿', '865.9亿', '1083亿', '24.18亿', '151.2亿', '56.98亿', '1.36%', '76.66%', '0.51');
INSERT INTO `fundamental_evaluate` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '2017年 ', '2200亿', '1542亿', '838.9亿', '1115亿', '49.86亿', '257.1亿', '-125.5亿', '2.65%', '73.38%', '0.22');
INSERT INTO `fundamental_evaluate` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '2018年 ', '2291亿', '1646亿', '825.6亿', '1148亿', '58.89亿', '263.9亿', '-7.62亿', '3.05%', '72.71%', '0.20');
INSERT INTO `fundamental_evaluate` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '2019年1月 ', '2489亿', '1693亿', '833.4亿', '1275亿', '68.33亿', '214亿', '23.79亿', '3.26%', '71.53%', '0.26');
INSERT INTO `fundamental_evaluate` VALUES ('6cfbca3f23bed12832a594c54ece029c', '2016年 ', '277.0亿', '95.60亿', '20.53亿', '188.1亿', '24.97亿', '15.87亿', '-5899万', '17.09%', '30.88%', '3.57');
INSERT INTO `fundamental_evaluate` VALUES ('6cfbca3f23bed12832a594c54ece029c', '2017年 ', '286.1亿', '96.53亿', '20.3亿', '207.42亿', '27.56亿', '21.80亿', '6.187亿', '15.47%', '29.87%', '2.41');
INSERT INTO `fundamental_evaluate` VALUES ('6cfbca3f23bed12832a594c54ece029c', '2018年 ', '295.9亿', '98.03亿', '20.27亿', '224.1亿', '29.31亿', '29.85亿', '-7.72亿', '13.36%', '35.56%', '2.25');
INSERT INTO `fundamental_evaluate` VALUES ('6cfbca3f23bed12832a594c54ece029c', '2019年1月 ', '292.1亿', '98.68亿', '20.43亿', '243.1亿', '31.33亿', '11.56亿', '-1.133亿', '11.98%', '34.51%', '2.18');
INSERT INTO `fundamental_evaluate` VALUES ('db0513fc489cc81e789327515142efed', '2016年 ', '2.904亿', '4.556亿', '1.942亿', '5711万', '2.320亿', '15.01亿', '1.179亿', '16.19亿', '21.77亿', '326.62%');
INSERT INTO `fundamental_evaluate` VALUES ('db0513fc489cc81e789327515142efed', '2017年 ', '1.515亿', '4.867亿', '1.789亿', '5711万', '4.804亿', '11.56亿', '7455万', '12.31亿', '17.17亿', '466.68%');
INSERT INTO `fundamental_evaluate` VALUES ('db0513fc489cc81e789327515142efed', '2018年 ', '1.171亿', '4.723亿', '3.890亿', '5234万', '4.000亿', '10.61亿', '4504万', '11.06亿', '15.79亿', '634.81%');
INSERT INTO `fundamental_evaluate` VALUES ('db0513fc489cc81e789327515142efed', '2019年1月 ', '0.588亿', '5.056亿', '1.262亿', '4539万', '3.203亿', '6.943亿', '2600万', '7.203亿', '12.26亿', '14.34%');
INSERT INTO `fundamental_evaluate` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '2016年 ', '4.588亿', '361.4万', '1142万', '4.738亿', '2.822亿', '1.649亿', '2361万', '1.36%', '66.11%', '0.61');
INSERT INTO `fundamental_evaluate` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '2017年 ', '3.027亿', '353.4万', '693.2万', '3.131亿', '1.740亿', '1.141亿', '1889万', '2.65%', '24.38%', '0.4');
INSERT INTO `fundamental_evaluate` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '2018年 ', '1.533亿', '347.4万', '951.2万', '1.662亿', '8691万', '6594万', '1111万', '3.05%', '15.71%', '0.29');
INSERT INTO `fundamental_evaluate` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '2019年1月 ', '6.250亿', '76.04万', '2166万', '6.474亿', '3.395亿', '2.426亿', '4033万', '3.26%', '54.53%', '0.27');
INSERT INTO `fundamental_evaluate` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '2016年 ', '5846万', '12.36亿', '1.319亿', '23.25万', '1.270亿', '2.136亿', '5.055亿', '26.11亿', '7.94%', '2.11%');
INSERT INTO `fundamental_evaluate` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '2017年 ', '2.777亿', '12.75亿', '8897万', '227.6万', '1.356亿', '5.432亿', '6.893亿', '32.76亿', '374.26%', '1.17%');
INSERT INTO `fundamental_evaluate` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '2018年 ', '3.751亿', '10.42亿', '2.052亿', '79.62万', '5771万', '5.157亿', '2.394亿', '28.61亿', '278.41%', '-1.26%');
INSERT INTO `fundamental_evaluate` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '2019年1月 ', '2.972亿', '9.551亿', '7005万', '353.1万', '3.189亿', '5.168亿', '2.409亿', '28.62亿', '712.45%', '8.22%');
INSERT INTO `fundamental_evaluate` VALUES ('d125a89287030abaf0faa6ebda3f799e', '2016年 ', '276.9亿', '104.1亿', '11.59亿', '387.2亿', '29.94亿', '46.47亿', '-10.36亿', '7.56%', '37.59%', '1.33');
INSERT INTO `fundamental_evaluate` VALUES ('d125a89287030abaf0faa6ebda3f799e', '2017年 ', '327.3亿', '97.05亿', '1.359亿', '482.4亿', '66.36亿', '93.03亿', '2565万', '13.76%', '29.65%', '1.66');
INSERT INTO `fundamental_evaluate` VALUES ('d125a89287030abaf0faa6ebda3f799e', '2018年 ', '414.4亿', '100.6亿', '2.239亿', '593.6亿', '122.4亿', '146.5亿', '-7.016亿', '20.62%', '24.27%', '1.88');
INSERT INTO `fundamental_evaluate` VALUES ('d125a89287030abaf0faa6ebda3f799e', '2019年1月 ', '490.4亿', '156.7亿', '35.668亿', '556.6亿', '69.99亿', '79.94亿', '3.374亿', '12.58%', '31.95%', '1.63');
INSERT INTO `fundamental_evaluate` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '2016年 ', '22.99亿', '218.5亿', '215.6亿', '9.749亿', '37.04亿', '28.69亿', '291.0亿', '12.09%', '32.88%', '2.57');
INSERT INTO `fundamental_evaluate` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '2017年 ', '20.75亿', '324.7亿', '85.19亿', '8.530亿', '32.61亿', '27.54亿', '153.9亿', '25.47%', '17.87%', '3.11');
INSERT INTO `fundamental_evaluate` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '2018年 ', '16.77亿', '179.4亿', '231.3亿', '7.684亿', '30.22亿', '38.58亿', '307.8亿', '23.36%', '12.36%', '1.22');
INSERT INTO `fundamental_evaluate` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '2019年1月 ', '11.39亿', '190.9亿', '146.8亿', '6.604亿', '29.78亿', '10.95亿', '194.1亿', '15.98%', '14.71%', '3.13');
INSERT INTO `fundamental_evaluate` VALUES ('d067351718d64a212fa954c10818a2b5', '2016年 ', '462.3亿', '564.3亿', '79.14亿', '138.9亿', '12.8亿', '5.008亿', '-56.41亿', '3.25%', '84.69%', '1.46');
INSERT INTO `fundamental_evaluate` VALUES ('d067351718d64a212fa954c10818a2b5', '2017年 ', '701.7亿', '1015亿', '162.2亿', '223.8亿', '17.32亿', '8.542亿', '-38.79亿', '2.98%', '80.42%', '1.69');
INSERT INTO `fundamental_evaluate` VALUES ('d067351718d64a212fa954c10818a2b5', '2018年 ', '1204亿', '1827亿', '493.5亿', '196亿', '13.31亿', '17.19亿', '-25.81亿', '1.50%', '84.29%', '2.20');
INSERT INTO `fundamental_evaluate` VALUES ('d067351718d64a212fa954c10818a2b5', '2019年1月 ', '2133亿', '1987亿', '655.8亿', '331.6亿', '22.28亿', '76.25亿', '88.19亿', '1.34%', '85.66%', '1.69');

-- ----------------------------
-- Table structure for group_main_income_struct
-- ----------------------------
DROP TABLE IF EXISTS `group_main_income_struct`;
CREATE TABLE `group_main_income_struct` (
  `id` varchar(255) DEFAULT NULL,
  `project` varchar(255) DEFAULT NULL,
  `three_year` varchar(255) DEFAULT NULL,
  `two_year` varchar(255) DEFAULT NULL,
  `one_year` varchar(255) DEFAULT NULL,
  `current_period` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_main_income_struct
-- ----------------------------
INSERT INTO `group_main_income_struct` VALUES ('21c1ca387b9e883efa942b02e66c5540', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('21c1ca387b9e883efa942b02e66c5540', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('21c1ca387b9e883efa942b02e66c5540', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('adc868407f8893069b44eaa23a2d8622', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('adc868407f8893069b44eaa23a2d8622', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('adc868407f8893069b44eaa23a2d8622', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('6cfbca3f23bed12832a594c54ece029c', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('6cfbca3f23bed12832a594c54ece029c', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('6cfbca3f23bed12832a594c54ece029c', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('ce77997e62b86ce51d4572ebb5dc9c02', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('ce77997e62b86ce51d4572ebb5dc9c02', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('ce77997e62b86ce51d4572ebb5dc9c02', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('d125a89287030abaf0faa6ebda3f799e', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('d125a89287030abaf0faa6ebda3f799e', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('d125a89287030abaf0faa6ebda3f799e', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('d067351718d64a212fa954c10818a2b5', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('d067351718d64a212fa954c10818a2b5', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('d067351718d64a212fa954c10818a2b5', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('21c1ca387b9e883efa942b02e66c5540', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('21c1ca387b9e883efa942b02e66c5540', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('21c1ca387b9e883efa942b02e66c5540', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('adc868407f8893069b44eaa23a2d8622', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('adc868407f8893069b44eaa23a2d8622', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('adc868407f8893069b44eaa23a2d8622', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('6cfbca3f23bed12832a594c54ece029c', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('6cfbca3f23bed12832a594c54ece029c', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('6cfbca3f23bed12832a594c54ece029c', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('ce77997e62b86ce51d4572ebb5dc9c02', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('ce77997e62b86ce51d4572ebb5dc9c02', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('ce77997e62b86ce51d4572ebb5dc9c02', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('d125a89287030abaf0faa6ebda3f799e', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('d125a89287030abaf0faa6ebda3f799e', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('d125a89287030abaf0faa6ebda3f799e', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('d067351718d64a212fa954c10818a2b5', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('d067351718d64a212fa954c10818a2b5', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('d067351718d64a212fa954c10818a2b5', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('f9d39e02cd3cfb422467e813d5529840', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('f9d39e02cd3cfb422467e813d5529840', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('f9d39e02cd3cfb422467e813d5529840', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('adc868407f8893069b44eaa23a2d8622', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('adc868407f8893069b44eaa23a2d8622', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('adc868407f8893069b44eaa23a2d8622', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('6cfbca3f23bed12832a594c54ece029c', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('6cfbca3f23bed12832a594c54ece029c', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('6cfbca3f23bed12832a594c54ece029c', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('db0513fc489cc81e789327515142efed', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('db0513fc489cc81e789327515142efed', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('db0513fc489cc81e789327515142efed', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('d125a89287030abaf0faa6ebda3f799e', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('d125a89287030abaf0faa6ebda3f799e', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('d125a89287030abaf0faa6ebda3f799e', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('d067351718d64a212fa954c10818a2b5', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('d067351718d64a212fa954c10818a2b5', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('d067351718d64a212fa954c10818a2b5', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('f9d39e02cd3cfb422467e813d5529840', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('f9d39e02cd3cfb422467e813d5529840', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('f9d39e02cd3cfb422467e813d5529840', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('adc868407f8893069b44eaa23a2d8622', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('adc868407f8893069b44eaa23a2d8622', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('adc868407f8893069b44eaa23a2d8622', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('6cfbca3f23bed12832a594c54ece029c', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('6cfbca3f23bed12832a594c54ece029c', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('6cfbca3f23bed12832a594c54ece029c', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('db0513fc489cc81e789327515142efed', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('db0513fc489cc81e789327515142efed', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('db0513fc489cc81e789327515142efed', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('d125a89287030abaf0faa6ebda3f799e', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('d125a89287030abaf0faa6ebda3f799e', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('d125a89287030abaf0faa6ebda3f799e', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');
INSERT INTO `group_main_income_struct` VALUES ('d067351718d64a212fa954c10818a2b5', '集团收入合计', '8447万', '7714万', '6923万', '6016万');
INSERT INTO `group_main_income_struct` VALUES ('d067351718d64a212fa954c10818a2b5', '业务板块一', '5.001亿', '4.126亿', '4.080亿', '3.287亿');
INSERT INTO `group_main_income_struct` VALUES ('d067351718d64a212fa954c10818a2b5', '业务板块二', '423.0万', '338.2万', '1164万', '741.9万');

-- ----------------------------
-- Table structure for stockholder
-- ----------------------------
DROP TABLE IF EXISTS `stockholder`;
CREATE TABLE `stockholder` (
  `id` varchar(255) DEFAULT NULL,
  `major_shareholder` varchar(255) DEFAULT NULL,
  `invest_money` varchar(255) DEFAULT NULL,
  `stock_right_ratio` varchar(255) DEFAULT NULL,
  `actual_contribute` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stockholder
-- ----------------------------
INSERT INTO `stockholder` VALUES ('f9d39e02cd3cfb422467e813d5529840', '天津奇信志成科技有限\n公司', '3,296,744,163', '48.88%', '3,296,744,163');
INSERT INTO `stockholder` VALUES ('f9d39e02cd3cfb422467e813d5529840', '周鸿祎', '821,281,583', '12.14%', '821,281,583');
INSERT INTO `stockholder` VALUES ('f9d39e02cd3cfb422467e813d5529840', '齐向东', '121,207,120', '1.79%', '121,207,120');
INSERT INTO `stockholder` VALUES ('adc868407f8893069b44eaa23a2d8622', '中国交通建设集团有限\n公司', '508,800,000', '50.88%', '508,800,000');
INSERT INTO `stockholder` VALUES ('adc868407f8893069b44eaa23a2d8622', 'HKSCC NOMINEES \nLIMITED', '271,100,000', '27.11%', '271,100,000');
INSERT INTO `stockholder` VALUES ('adc868407f8893069b44eaa23a2d8622', '中国交通建设集团有限\n公司-非公开发行2017\n年可交换公司债券质押\n专户', '90,300,000', '9.03%', '90,300,000');
INSERT INTO `stockholder` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '中国南方航空集团有\n限公司', '369,200,000', '36.92%', '369,200,000');
INSERT INTO `stockholder` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '中国航空油料集团有\n限公司', '40,600,000', '4.06%', '40,600,000');
INSERT INTO `stockholder` VALUES ('147d9a489c4b1c9e544deddf165cadd8', '中国证券金融股份有\n限公司', '26,100,000', '2.61%', '26,100,000');
INSERT INTO `stockholder` VALUES ('6cfbca3f23bed12832a594c54ece029c', '云南白药控股有限公\n司', '415,200,000', '41.52%', '415,200,000');
INSERT INTO `stockholder` VALUES ('6cfbca3f23bed12832a594c54ece029c', '云南合和(集团)股份\n有限公司', '100,300,000', '10.03%', '100,300,000');
INSERT INTO `stockholder` VALUES ('6cfbca3f23bed12832a594c54ece029c', '中国平安人寿保险股\n份有限公司-自有资金', '93,600,000', '9.36%', '93,600,000');
INSERT INTO `stockholder` VALUES ('db0513fc489cc81e789327515142efed', '郭华强', '30,250,152', '7.02%', '30,250,152');
INSERT INTO `stockholder` VALUES ('db0513fc489cc81e789327515142efed', '朱宝文', '3,294,000', '0.76%', '3,294,000');
INSERT INTO `stockholder` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '凤凰光学控股有限公司', '93,712,694', '39.92%', '93,712,694');
INSERT INTO `stockholder` VALUES ('a1669857ffc9ac2eb6d57aaf5212eb26', '招商证券国际有限公司\n-客户资金', '10,429,513', '4.36%', '10,429,513');
INSERT INTO `stockholder` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '西藏信业达贸易有限公\n司', '90,715,959', '13.25%', '90,715,959');
INSERT INTO `stockholder` VALUES ('c9c448dbd6600fb84b4fcdb32a622667', '东莞市雁田晟盈实业投\n资有限公司', '10,861,269', '1.59%', '10,861,269');
INSERT INTO `stockholder` VALUES ('d125a89287030abaf0faa6ebda3f799e', '温鹏程', '40,800,000', '4.08%', '40,800,000');
INSERT INTO `stockholder` VALUES ('d125a89287030abaf0faa6ebda3f799e', '严居然', '28,000,000', '2.80%', '28,000,000');
INSERT INTO `stockholder` VALUES ('d125a89287030abaf0faa6ebda3f799e', '梁焕珍', '6,900,000', '2.69%', '26,900,000');
INSERT INTO `stockholder` VALUES ('d125a89287030abaf0faa6ebda3f799e', '客户全称', '温氏食品集团股份有限公司', '所处行业', '农牧饲渔');
INSERT INTO `stockholder` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '北京金融街投资(集团)\n有限公司', '930,708,153', '31.52%', '930,708,153');
INSERT INTO `stockholder` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '中国证券金融股份有限\n公司', '89,369,021', '2.93%', '89,369,021');
INSERT INTO `stockholder` VALUES ('bfde679953c88ecc9be8f727db4ec8c8', '北京金融街资本运营中\n心', '68,417,008', '2.03%', '68,417,008');
INSERT INTO `stockholder` VALUES ('d067351718d64a212fa954c10818a2b5', '上海嘉闻投资管理有\n限公司', '180,004,000', '18.04', '180,004,000');
INSERT INTO `stockholder` VALUES ('d067351718d64a212fa954c10818a2b5', '福建阳光集团有限公\n司', '175,100,000', '17.51', '175,100,000');
INSERT INTO `stockholder` VALUES ('d067351718d64a212fa954c10818a2b5', '东方信隆资产管理有\n限公司', '153,200,000', '15.32', '153,200,000');
