/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : seckill

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2019-09-28 14:54:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL DEFAULT '' COMMENT '商品名称',
  `price` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `description` varchar(500) NOT NULL DEFAULT '' COMMENT '商品描述',
  `sales` int(11) NOT NULL DEFAULT '0' COMMENT '商品销量',
  `img_url` varchar(500) NOT NULL DEFAULT '' COMMENT '商品描述图片url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('1', '小米9pro', '3699.00', '支持5G', '0', 'http://www.zidouwang.cn/images/201706/goods_img/715_P_1497857624701.jpg');

-- ----------------------------
-- Table structure for item_stock
-- ----------------------------
DROP TABLE IF EXISTS `item_stock`;
CREATE TABLE `item_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock` int(11) NOT NULL DEFAULT '0' COMMENT '商品库存',
  `item_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商品库存表';

-- ----------------------------
-- Records of item_stock
-- ----------------------------
INSERT INTO `item_stock` VALUES ('1', '100', '1');

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `id` varchar(32) NOT NULL COMMENT '订单编号订单表',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `item_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品编码',
  `item_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '下单当时的商品单价',
  `amount` int(11) NOT NULL DEFAULT '0' COMMENT '商品数量',
  `order_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单总金额',
  `promo_id` int(11) NOT NULL DEFAULT '0' COMMENT '若不是0说明这个订单是秒杀订单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单信息表';

-- ----------------------------
-- Records of order_info
-- ----------------------------

-- ----------------------------
-- Table structure for promo
-- ----------------------------
DROP TABLE IF EXISTS `promo`;
CREATE TABLE `promo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '秒杀活动自增id',
  `promo_name` varchar(255) NOT NULL DEFAULT '' COMMENT '秒杀商品名',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '活动开始时间',
  `item_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品编号-对用商品表',
  `promo_item_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品秒杀价格',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '活动结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='秒杀活动表';

-- ----------------------------
-- Records of promo
-- ----------------------------
INSERT INTO `promo` VALUES ('1', '小米最新款', '2019-09-28 13:34:23', '1', '1000.00', '2019-09-28 13:50:39');

-- ----------------------------
-- Table structure for sequence_info
-- ----------------------------
DROP TABLE IF EXISTS `sequence_info`;
CREATE TABLE `sequence_info` (
  `name` varchar(255) NOT NULL COMMENT '名字--相当于一个x轴的表',
  `current_value` int(11) NOT NULL DEFAULT '0' COMMENT '当前编码值',
  `step` int(11) NOT NULL DEFAULT '0' COMMENT '每次增加值',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='自增序列表';

-- ----------------------------
-- Records of sequence_info
-- ----------------------------
INSERT INTO `sequence_info` VALUES ('order_info', '1', '1');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '用户名',
  `gener` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1:男 2:女',
  `age` int(3) NOT NULL DEFAULT '0' COMMENT '年龄',
  `telphone` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号码',
  `register_mode` varchar(64) NOT NULL DEFAULT '' COMMENT '注册方式：手机号(byphone)，微信(bywechat)，支付宝(byalipay)',
  `third_party_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方登录id,比如openid',
  PRIMARY KEY (`id`),
  UNIQUE KEY `telphone_unique_index` (`telphone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', '张三', '1', '20', '18295514466', 'byphone', '');

-- ----------------------------
-- Table structure for user_password
-- ----------------------------
DROP TABLE IF EXISTS `user_password`;
CREATE TABLE `user_password` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `encrpt_password` varchar(128) NOT NULL DEFAULT '' COMMENT '加密密码',
  `user_id` int(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户密码表';

-- ----------------------------
-- Records of user_password
-- ----------------------------
INSERT INTO `user_password` VALUES ('1', '4QrcOUm6Wau+VuBX8g+IPg==', '1');
