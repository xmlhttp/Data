/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : phpcms

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2017-12-06 19:13:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `db_ads`
-- ----------------------------
DROP TABLE IF EXISTS `db_ads`;
CREATE TABLE `db_ads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `treeid` varchar(100) DEFAULT NULL,
  `newtitle` varchar(200) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `newdesc` varchar(400) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `putout` tinyint(1) DEFAULT '1',
  `ver` tinyint(1) DEFAULT '0',
  `isdelete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_ads
-- ----------------------------
INSERT INTO `db_ads` VALUES ('1', '1', '-8-', '测试', '/Web/UploadFile/Ads/2017-03-25/58d6113345bee.jpg', '对对对', '2017-03-25 14:41:55', '1', '0', '1');
INSERT INTO `db_ads` VALUES ('2', '2', '-8-', 'test', '/Web/UploadFile/Ads/2017-03-25/58d652cca8c06.jpg', 'tt1', '2017-03-25 19:11:44', '1', '0', '0');

-- ----------------------------
-- Table structure for `db_case`
-- ----------------------------
DROP TABLE IF EXISTS `db_case`;
CREATE TABLE `db_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `treeid` varchar(100) DEFAULT NULL,
  `newtitle` varchar(100) DEFAULT NULL,
  `newdesc` varchar(300) DEFAULT NULL,
  `newcontent` text,
  `img` varchar(100) DEFAULT NULL,
  `bigimg` varchar(100) DEFAULT NULL,
  `imgs` varchar(300) DEFAULT NULL,
  `putman` varchar(20) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `isdelete` tinyint(1) DEFAULT '0',
  `putout` tinyint(1) DEFAULT '1',
  `hot` tinyint(1) DEFAULT '1',
  `top` tinyint(1) DEFAULT '1',
  `ver` tinyint(1) DEFAULT '0',
  `page_tit` varchar(200) DEFAULT NULL,
  `page_key` varchar(400) DEFAULT NULL,
  `page_desc` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_case
-- ----------------------------
INSERT INTO `db_case` VALUES ('1', '1', '-12-', 'test', 'test', '<p>test<br/></p>', '/Web/UploadFile/Case/Small/2017-03-25/58d6530279a6b.jpg', '/Web/UploadFile/Case/Big/2017-03-25/58d653027b1dc.jpg', '|/Web/UploadFile/News/pl/2017-03-25/58d65968a0a3d.png|', 'admin', '2017-03-25 15:29:35', '0', '1', '1', '1', '0', 'test', 'tse', 'tset');

-- ----------------------------
-- Table structure for `db_code`
-- ----------------------------
DROP TABLE IF EXISTS `db_code`;
CREATE TABLE `db_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tel` varchar(20) DEFAULT NULL COMMENT '手机号',
  `type` tinyint(4) DEFAULT '0' COMMENT '验证码来历,0注册，1找回密码，2第三方验登录证码',
  `code` varchar(5) DEFAULT NULL COMMENT '验证码',
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of db_code
-- ----------------------------

-- ----------------------------
-- Table structure for `db_company`
-- ----------------------------
DROP TABLE IF EXISTS `db_company`;
CREATE TABLE `db_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `treeid` varchar(100) DEFAULT NULL,
  `newtitle` varchar(100) DEFAULT NULL,
  `newdesc` varchar(300) DEFAULT NULL,
  `newcontent` text,
  `img` varchar(100) DEFAULT NULL,
  `putman` varchar(20) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `isdelete` tinyint(1) DEFAULT '0',
  `putout` tinyint(1) DEFAULT '1',
  `ver` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_company
-- ----------------------------
INSERT INTO `db_company` VALUES ('1', '1', '-9-', 'test', 'tets', '<p>tse<br/></p>', '/Web/UploadFile/Company/2017-03-25/58d614714138e.jpg', 'admin', '2017-03-25 14:55:19', '1', '1', '0');
INSERT INTO `db_company` VALUES ('2', '2', '-9-', 'test', 'tt', '<p>tt<br/></p>', '/Web/UploadFile/Company/2017-03-25/58d652d8e1901.jpg', 'admin', '2017-03-25 19:12:03', '0', '1', '0');

-- ----------------------------
-- Table structure for `db_deeptree`
-- ----------------------------
DROP TABLE IF EXISTS `db_deeptree`;
CREATE TABLE `db_deeptree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `content` varchar(100) NOT NULL,
  `content_en` varchar(100) DEFAULT NULL,
  `class` varchar(10) NOT NULL,
  `ver` tinyint(1) NOT NULL DEFAULT '0',
  `addtime` datetime DEFAULT NULL,
  `page_tit` varchar(200) DEFAULT NULL,
  `page_key` varchar(400) DEFAULT NULL,
  `page_des` varchar(800) DEFAULT NULL,
  `top_img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_deeptree
-- ----------------------------
INSERT INTO `db_deeptree` VALUES ('1', '1', '0', '普通用户', 'ptyh', 'User', '0', '2017-01-02 17:19:52', null, null, null, null);
INSERT INTO `db_deeptree` VALUES ('2', '2', '0', '会员用户', 'hyyh', 'User', '0', '2017-01-02 17:19:56', null, null, null, null);
INSERT INTO `db_deeptree` VALUES ('3', '3', '0', '测试用户', 'csyh', 'User', '0', '2017-01-02 17:20:00', null, null, null, null);
INSERT INTO `db_deeptree` VALUES ('4', '4', '0', '腾讯QQ', 'txQQ', 'Ser', '0', '2017-01-02 17:20:53', null, null, null, null);
INSERT INTO `db_deeptree` VALUES ('5', '5', '0', '微软MSN', 'wrMSN', 'Ser', '0', '2017-01-02 17:21:01', null, null, null, null);
INSERT INTO `db_deeptree` VALUES ('6', '6', '0', '阿里旺旺', 'alww', 'Ser', '0', '2017-01-02 17:21:09', null, null, null, null);
INSERT INTO `db_deeptree` VALUES ('7', '7', '0', 'Skype', 'Skype', 'Ser', '0', '2017-01-02 17:21:23', null, null, null, null);
INSERT INTO `db_deeptree` VALUES ('8', '8', '0', '广告一', 'ggy', 'Ads', '0', '2017-03-25 14:41:24', '头疼', '头疼', '头疼', '/Web/UploadFile/Xtree/2017-03-25/58d652bdccebc.jpg');
INSERT INTO `db_deeptree` VALUES ('9', '9', '0', '企业信息', 'qyxx', 'Company', '0', '2017-03-25 14:55:12', null, null, null, null);
INSERT INTO `db_deeptree` VALUES ('10', '10', '0', 'test', 'test', 'News', '0', '2017-03-25 15:03:45', null, null, null, null);
INSERT INTO `db_deeptree` VALUES ('11', '11', '0', 'test', 'test53', 'Products', '0', '2017-03-25 15:21:10', null, null, null, null);
INSERT INTO `db_deeptree` VALUES ('12', '12', '0', '测试案例', 'csal', 'Case', '0', '2017-03-25 15:29:34', null, null, null, null);
INSERT INTO `db_deeptree` VALUES ('13', '13', '0', 'test', 'test93', 'Net', '0', '2017-03-25 15:45:37', null, null, null, null);
INSERT INTO `db_deeptree` VALUES ('14', '14', '0', 'test', 'test29', 'Link', '0', '2017-03-25 16:11:11', null, null, null, null);
INSERT INTO `db_deeptree` VALUES ('15', '15', '0', 'test', 'test66', 'Down', '0', '2017-03-25 18:26:15', null, null, null, null);

-- ----------------------------
-- Table structure for `db_down`
-- ----------------------------
DROP TABLE IF EXISTS `db_down`;
CREATE TABLE `db_down` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `treeid` varchar(100) DEFAULT NULL,
  `newtitle` varchar(200) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `upfile` varchar(100) DEFAULT NULL,
  `newdesc` varchar(400) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `putout` tinyint(1) DEFAULT '1',
  `ver` tinyint(1) DEFAULT '0',
  `isdelete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_down
-- ----------------------------
INSERT INTO `db_down` VALUES ('1', '1', '-15-', 'tet', '/Web/UploadFile/Down/img/2017-03-25/58d645e22a804.jpg', '/Web/UploadFile/Down/file/2017-03-25/58d64a63dfa6a.rar', 'tet', '2017-03-25 18:26:42', '1', '0', '0');
INSERT INTO `db_down` VALUES ('2', '2', '-15-', 'tt', '/Web/UploadFile/Down/img/2017-03-25/58d6534da2bd7.jpg', '/Web/UploadFile/Down/file/2017-03-25/58d651d4b8d21.zip', 'ttt', '2017-03-25 19:17:40', '1', '0', '0');

-- ----------------------------
-- Table structure for `db_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `db_feedback`;
CREATE TABLE `db_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `newtitle` varchar(100) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `mail` varchar(40) DEFAULT NULL,
  `mark` text,
  `remark` text,
  `addtime` datetime DEFAULT NULL,
  `putout` tinyint(1) DEFAULT '0',
  `ver` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `db_feedback2`
-- ----------------------------
DROP TABLE IF EXISTS `db_feedback2`;
CREATE TABLE `db_feedback2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `newtitle` varchar(100) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `mail` varchar(40) DEFAULT NULL,
  `mark` text,
  `remark` text,
  `addtime` datetime DEFAULT NULL,
  `putout` tinyint(1) DEFAULT '0',
  `ver` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_feedback2
-- ----------------------------

-- ----------------------------
-- Table structure for `db_link`
-- ----------------------------
DROP TABLE IF EXISTS `db_link`;
CREATE TABLE `db_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `treeid` varchar(100) DEFAULT NULL,
  `newtitle` varchar(200) DEFAULT NULL,
  `newadd` varchar(200) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `newdesc` varchar(400) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `putout` tinyint(1) DEFAULT '1',
  `ver` tinyint(1) DEFAULT '0',
  `isdelete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_link
-- ----------------------------
INSERT INTO `db_link` VALUES ('1', '1', '-14-', 'ttt', 'ttt', '/Web/UploadFile/Link/2017-03-25/58d6535a7e8ae.jpg', 'tet', '2017-03-25 16:11:20', '1', '0', '0');

-- ----------------------------
-- Table structure for `db_net`
-- ----------------------------
DROP TABLE IF EXISTS `db_net`;
CREATE TABLE `db_net` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `treeid` varchar(100) DEFAULT NULL,
  `newtitle` varchar(100) DEFAULT NULL,
  `newdesc` varchar(300) DEFAULT NULL,
  `newcontent` text,
  `img` varchar(100) DEFAULT NULL,
  `bigimg` varchar(100) DEFAULT NULL,
  `imgs` varchar(300) DEFAULT NULL,
  `putman` varchar(20) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `isdelete` tinyint(1) DEFAULT '0',
  `putout` tinyint(1) DEFAULT '1',
  `hot` tinyint(1) DEFAULT '1',
  `top` tinyint(1) DEFAULT '1',
  `ver` tinyint(1) DEFAULT '0',
  `page_tit` varchar(200) DEFAULT NULL,
  `page_key` varchar(400) DEFAULT NULL,
  `page_desc` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_net
-- ----------------------------
INSERT INTO `db_net` VALUES ('1', '1', '-13-', 'tt', 'test', '<p>test<br/></p>', '/Web/UploadFile/Net/Small/2017-03-25/58d6531589c96.jpg', '/Web/UploadFile/Net/Big/2017-03-25/58d653158b406.jpg', '|/Web/UploadFile/Net/pl/2017-03-25/58d62031c419c.png|/Web/UploadFile/Net/pl/2017-03-25/58d65907d01dc.jpg|', 'admin', '2017-03-25 15:45:39', '0', '1', '1', '1', '0', 'test', 'test', 'tset');

-- ----------------------------
-- Table structure for `db_news`
-- ----------------------------
DROP TABLE IF EXISTS `db_news`;
CREATE TABLE `db_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `treeid` varchar(100) DEFAULT NULL,
  `newtitle` varchar(100) DEFAULT NULL,
  `newdesc` varchar(300) DEFAULT NULL,
  `newcontent` text,
  `img` varchar(100) DEFAULT NULL,
  `bigimg` varchar(100) DEFAULT NULL,
  `imgs` varchar(300) DEFAULT NULL,
  `hit` int(9) DEFAULT '1',
  `putman` varchar(20) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `isdelete` tinyint(1) DEFAULT '0',
  `putout` tinyint(1) DEFAULT '1',
  `hot` tinyint(1) DEFAULT '1',
  `top` tinyint(1) DEFAULT '1',
  `ver` tinyint(1) DEFAULT '0',
  `page_tit` varchar(200) DEFAULT NULL,
  `page_key` varchar(400) DEFAULT NULL,
  `page_desc` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_news
-- ----------------------------
INSERT INTO `db_news` VALUES ('1', '1', '-10-', 'ttt11', '555', '<p>werew<br/></p>', '/Web/UploadFile/News/Small/2017-03-25/58d652e64e4a0.jpg', '/Web/UploadFile/News/Big/2017-03-25/58d652e6532c1.jpg', '|/Web/UploadFile/News/pl/2017-03-25/58d6167bc7b76.png|/Web/UploadFile/News/pl/2017-10-15/59e3128021ac7.png|', '1', 'admin', '2017-03-25 15:04:15', '0', '1', '1', '1', '0', 'werw', 'werw', 'werwer');

-- ----------------------------
-- Table structure for `db_products`
-- ----------------------------
DROP TABLE IF EXISTS `db_products`;
CREATE TABLE `db_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `treeid` varchar(100) DEFAULT NULL,
  `newtitle` varchar(100) DEFAULT NULL,
  `newdesc` varchar(300) DEFAULT NULL,
  `newcontent` text,
  `img` varchar(100) DEFAULT NULL,
  `bigimg` varchar(100) DEFAULT NULL,
  `imgs` varchar(300) DEFAULT NULL,
  `putman` varchar(20) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `hit` int(9) DEFAULT '1',
  `isdelete` tinyint(1) DEFAULT '0',
  `putout` tinyint(1) DEFAULT '1',
  `hot` tinyint(1) DEFAULT '1',
  `top` tinyint(1) DEFAULT '1',
  `ver` tinyint(1) DEFAULT '0',
  `page_tit` varchar(200) DEFAULT NULL,
  `page_key` varchar(400) DEFAULT NULL,
  `page_desc` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_products
-- ----------------------------
INSERT INTO `db_products` VALUES ('1', '1', '-11-', 'ttt', 'tet', '<p>test<br/></p>', '/Web/UploadFile/Products/Small/2017-03-25/58d652f6695e9.jpg', '/Web/UploadFile/Products/Big/2017-03-25/58d652f66ad59.jpg', '|/Web/UploadFile/Products/pl/2017-03-25/58d61a716d60f.png|/Web/UploadFile/Products/pl/2017-03-25/58d61b4ae9c0f.png|', 'admin', '2017-03-25 15:21:12', '1', '0', '1', '1', '1', '0', 'test', 'test', 'tset');

-- ----------------------------
-- Table structure for `db_ser`
-- ----------------------------
DROP TABLE IF EXISTS `db_ser`;
CREATE TABLE `db_ser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `treeid` varchar(100) DEFAULT NULL,
  `newtitle` varchar(100) DEFAULT NULL,
  `newcode` varchar(30) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `putout` tinyint(1) DEFAULT '1',
  `ver` tinyint(1) DEFAULT '0',
  `isdelete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_ser
-- ----------------------------

-- ----------------------------
-- Table structure for `db_sms`
-- ----------------------------
DROP TABLE IF EXISTS `db_sms`;
CREATE TABLE `db_sms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Newtitle` varchar(200) DEFAULT NULL,
  `Newcontent` text,
  `Newdesc` varchar(500) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `targets` tinyint(4) DEFAULT '0' COMMENT '0全部,1安卓，2IOS',
  `putout` tinyint(4) DEFAULT '1',
  `isdelete` tinyint(4) DEFAULT '0',
  `orderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_sms
-- ----------------------------

-- ----------------------------
-- Table structure for `db_sys_admin`
-- ----------------------------
DROP TABLE IF EXISTS `db_sys_admin`;
CREATE TABLE `db_sys_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(80) DEFAULT NULL,
  `passwords` varchar(80) DEFAULT NULL,
  `adminClass` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `working` tinyint(4) DEFAULT NULL,
  `ver` varchar(50) DEFAULT '0',
  `parts` longtext,
  `weburl` varchar(100) DEFAULT '#',
  `Anumber` varchar(500) DEFAULT NULL,
  `androidid` varchar(100) DEFAULT NULL,
  `iosid` varchar(100) DEFAULT NULL,
  `money` float(8,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_sys_admin
-- ----------------------------
INSERT INTO `db_sys_admin` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '99', 'sdfsdf', '2017-01-02 17:08:47', '1', '0', '', '#', '', '', '', '0.00');
INSERT INTO `db_sys_admin` VALUES ('2', 'super admin', '21232f297a57a5a743894a0e4a801fc3', '99', 'uweb', '2016-07-06 14:19:04', '1', '0', '', '#', null, null, null, '0.00');

-- ----------------------------
-- Table structure for `db_sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `db_sys_menu`;
CREATE TABLE `db_sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(100) DEFAULT NULL,
  `menu_parent` int(11) DEFAULT NULL,
  `menu_url` varchar(100) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `putout` tinyint(4) DEFAULT NULL,
  `side` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_sys_menu
-- ----------------------------
INSERT INTO `db_sys_menu` VALUES ('1', '商务引擎', '0', null, '1', '1', null);
INSERT INTO `db_sys_menu` VALUES ('2', '用户协议', '1', '/System.php?s=/System/ManagerPage/UserAg', '2', '1', null);
INSERT INTO `db_sys_menu` VALUES ('3', '收录地址', '1', '/System.php?s=/System/ManagerPage/Included', '3', '1', null);
INSERT INTO `db_sys_menu` VALUES ('4', '广告管理', '0', null, '4', '1', null);
INSERT INTO `db_sys_menu` VALUES ('5', '目录结构', '4', '/System.php?s=/System/ManagerPage/xtree&class=Ads', '5', '1', null);
INSERT INTO `db_sys_menu` VALUES ('6', '广告列表', '4', '/System.php?s=/System/AdsListAll', '6', '1', null);
INSERT INTO `db_sys_menu` VALUES ('7', '添加广告', '4', '/System.php?s=/System/AdsListAll/AddRead', '7', '1', null);
INSERT INTO `db_sys_menu` VALUES ('8', '企业信息', '0', '', '8', '1', null);
INSERT INTO `db_sys_menu` VALUES ('9', '目录结构', '8', '/System.php?s=/System/ManagerPage/xtree&class=Company', '9', '1', null);
INSERT INTO `db_sys_menu` VALUES ('10', '信息列表', '8', '/System.php?s=/System/Company', '10', '1', null);
INSERT INTO `db_sys_menu` VALUES ('11', '添加信息', '8', '/System.php?s=/System/Company/AddRead', '11', '1', null);
INSERT INTO `db_sys_menu` VALUES ('12', '新闻管理', '0', null, '12', '1', null);
INSERT INTO `db_sys_menu` VALUES ('13', '目录结构', '12', '/System.php?s=/System/ManagerPage/xtree&class=News', '13', '1', null);
INSERT INTO `db_sys_menu` VALUES ('14', '新闻列表', '12', '/System.php?s=/System/News', '14', '1', null);
INSERT INTO `db_sys_menu` VALUES ('15', '添加新闻', '12', '/System.php?s=/System/News/AddRead', '15', '1', null);
INSERT INTO `db_sys_menu` VALUES ('16', '产品管理', '0', null, '16', '1', null);
INSERT INTO `db_sys_menu` VALUES ('17', '目录结构', '16', '/System.php?s=/System/ManagerPage/xtree&class=Products', '17', '1', null);
INSERT INTO `db_sys_menu` VALUES ('18', '产品列表', '16', '/System.php?s=/System/Products', '18', '1', null);
INSERT INTO `db_sys_menu` VALUES ('19', '添加产品', '16', '/System.php?s=/System/Products/AddRead', '19', '1', null);
INSERT INTO `db_sys_menu` VALUES ('20', '案例管理', '0', null, '20', '1', null);
INSERT INTO `db_sys_menu` VALUES ('21', '目录结构', '20', '/System.php?s=/System/ManagerPage/xtree&class=Case', '21', '1', null);
INSERT INTO `db_sys_menu` VALUES ('22', '案例列表', '20', '/System.php?s=/System/Case', '22', '1', null);
INSERT INTO `db_sys_menu` VALUES ('23', '添加案例', '20', '/System.php?s=/System/Case/AddRead', '23', '1', null);
INSERT INTO `db_sys_menu` VALUES ('24', '营销网络', '0', null, '24', '1', null);
INSERT INTO `db_sys_menu` VALUES ('25', '目录结构', '24', '/System.php?s=/System/ManagerPage/xtree&class=Net', '25', '1', null);
INSERT INTO `db_sys_menu` VALUES ('26', '信息列表', '24', '/System.php?s=/System/Net', '26', '1', null);
INSERT INTO `db_sys_menu` VALUES ('27', '添加信息', '24', '/System.php?s=/System/Net/AddRead', '27', '1', null);
INSERT INTO `db_sys_menu` VALUES ('28', '下载管理', '0', null, '28', '1', null);
INSERT INTO `db_sys_menu` VALUES ('29', '目录结构', '28', '/System.php?s=/System/ManagerPage/xtree&class=Down', '29', '1', null);
INSERT INTO `db_sys_menu` VALUES ('30', '下载列表', '28', '/System.php?s=/System/Down/index', '30', '1', null);
INSERT INTO `db_sys_menu` VALUES ('31', '添加列表', '28', '/System.php?s=/System/Down/AddRead', '31', '1', null);
INSERT INTO `db_sys_menu` VALUES ('32', '留言管理', '0', null, '32', '1', null);
INSERT INTO `db_sys_menu` VALUES ('33', '在线留言', '32', '/System.php?s=/System/Feedback', '33', '1', null);
INSERT INTO `db_sys_menu` VALUES ('34', '在线订单', '32', '/System.php?s=/System/Feedback2', '34', '1', null);
INSERT INTO `db_sys_menu` VALUES ('35', '会员管理', '0', null, '35', '1', null);
INSERT INTO `db_sys_menu` VALUES ('36', '会员分组', '35', '/System.php?s=/System/ManagerPage/xtree&class=User', '36', '1', null);
INSERT INTO `db_sys_menu` VALUES ('37', '会员列表', '35', '/System.php?s=/System/UserAll', '37', '1', null);
INSERT INTO `db_sys_menu` VALUES ('38', '添加会员', '35', '/System.php?s=/System/UserAll/AddRead', '38', '1', null);
INSERT INTO `db_sys_menu` VALUES ('39', '在线客服', '0', null, '39', '1', null);
INSERT INTO `db_sys_menu` VALUES ('40', '客服分类', '39', '/System.php?s=/System/ManagerPage/xtree&class=Ser', '40', '1', null);
INSERT INTO `db_sys_menu` VALUES ('41', '客服列表', '39', '/System.php?s=/System/Ser', '41', '1', null);
INSERT INTO `db_sys_menu` VALUES ('42', '友情链接', '0', null, '42', '1', null);
INSERT INTO `db_sys_menu` VALUES ('43', '目录结构', '42', '/System.php?s=/System/ManagerPage/xtree&class=Link', '43', '1', null);
INSERT INTO `db_sys_menu` VALUES ('44', '链接列表', '42', '/System.php?s=/System/Link', '44', '1', null);
INSERT INTO `db_sys_menu` VALUES ('45', '添加友链', '42', '/System.php?s=/System/Link/AddRead', '45', '1', null);
INSERT INTO `db_sys_menu` VALUES ('46', '系统管理', '0', null, '46', '1', null);
INSERT INTO `db_sys_menu` VALUES ('47', '系统设置', '46', '/System.php?s=/System/ManagerPage/sitesetup', '47', '1', null);
INSERT INTO `db_sys_menu` VALUES ('48', '邮箱设置', '46', '/System.php?s=/System/ManagerPage/MailSet', '48', '1', null);
INSERT INTO `db_sys_menu` VALUES ('49', '管理员管理', '46', '/System.php?s=/System/AdminAll', '49', '1', null);
INSERT INTO `db_sys_menu` VALUES ('50', '日志管理', '46', '/System.php?s=/System/Log', '50', '1', null);
INSERT INTO `db_sys_menu` VALUES ('51', '修改密码', '46', '/System.php?s=/System/ManagerPage/ChangePwd', '51', '1', null);
INSERT INTO `db_sys_menu` VALUES ('52', '资金动态', '35', '/System.php?s=/System/USou', '52', '1', null);
INSERT INTO `db_sys_menu` VALUES ('53', '消息推送', '0', null, '53', '0', null);
INSERT INTO `db_sys_menu` VALUES ('54', '推送列表', '32', '/System.php?s=/System/SmsAll', '54', '1', null);
INSERT INTO `db_sys_menu` VALUES ('55', '添加推送', '53', '/System.php?s=/System/SmsAll/AddRead', '55', '1', null);

-- ----------------------------
-- Table structure for `db_sys_note`
-- ----------------------------
DROP TABLE IF EXISTS `db_sys_note`;
CREATE TABLE `db_sys_note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(50) DEFAULT NULL,
  `login_ip` varchar(50) DEFAULT NULL,
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `login_os` varchar(50) DEFAULT NULL,
  `login_ie` varchar(50) DEFAULT NULL,
  `act` varchar(255) DEFAULT NULL,
  `login_tab` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_sys_note
-- ----------------------------
INSERT INTO `db_sys_note` VALUES ('1', 'admin', '172.16.88.66', '2017-01-03 11:50:22', 'Windows 7', 'Firefox50.0', '【登录】登入成功', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('2', 'admin', '172.16.88.66', '2017-01-10 12:01:50', 'Windows 7', 'Firefox50.0', '【登录】登入成功', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('3', 'admin', '172.16.88.66', '2017-01-17 11:21:34', 'Windows 7', 'Firefox50.0', '【登录】登入成功', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('4', 'admin', '172.16.88.66', '2017-02-17 18:01:02', 'Windows 7', 'Firefox51.0', '【登录】登入成功', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('5', 'admin', '172.16.88.66', '2017-02-17 18:09:57', 'Windows 7', 'Firefox51.0', '【退出】退出系统', '');
INSERT INTO `db_sys_note` VALUES ('6', 'admin', '172.16.88.66', '2017-02-17 18:10:51', 'Windows 7', 'Firefox51.0', '【登录】登入成功', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('7', 'admin', '172.16.88.66', '2017-03-24 18:59:25', 'Windows 7', 'Firefox52.0', '【登录】登入成功', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('8', 'admin', '172.16.88.66', '2017-03-24 19:00:38', 'Windows 7', 'Firefox52.0', '【退出】退出系统', '');
INSERT INTO `db_sys_note` VALUES ('9', '-', '172.16.88.66', '2017-03-24 19:00:58', 'Windows 7', 'Firefox52.0', '【登录】密码错误', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('10', 'admin', '172.16.88.66', '2017-03-24 19:05:20', 'Windows 7', 'Firefox52.0', '【登录】登入成功', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('11', 'admin', '172.16.88.66', '2017-03-24 19:06:21', 'Windows 7', 'Firefox52.0', '【登录】登入成功', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('12', '-', '172.16.88.66', '2017-03-24 19:18:22', 'Windows 7', 'Firefox52.0', '【登录】验证码错误', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('13', 'admin', '172.16.88.66', '2017-03-24 19:18:28', 'Windows 7', 'Firefox52.0', '【登录】登入成功', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('14', 'admin', '172.16.88.66', '2017-03-25 13:21:36', 'Windows 7', 'Firefox52.0', '【登录】登入成功', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('15', 'admin', '172.16.88.66', '2017-03-25 14:41:24', 'Windows 7', 'Firefox52.0', '【新建】 信息ID为[8]的项添加成功', 'sys_menu');
INSERT INTO `db_sys_note` VALUES ('16', 'admin', '172.16.88.66', '2017-03-25 14:41:55', 'Windows 7', 'Firefox52.0', '【广告】 信息ID为[1]的项添加成功', 'ads');
INSERT INTO `db_sys_note` VALUES ('17', 'admin', '172.16.88.66', '2017-03-25 14:55:13', 'Windows 7', 'Firefox52.0', '【新建】 信息ID为[9]的项添加成功', 'sys_menu');
INSERT INTO `db_sys_note` VALUES ('18', 'admin', '172.16.88.66', '2017-03-25 14:55:34', 'Windows 7', 'Firefox52.0', '【企业信息】 信息ID为[1]的项添加成功', 'Company');
INSERT INTO `db_sys_note` VALUES ('19', 'admin', '172.16.88.66', '2017-03-25 14:55:45', 'Windows 7', 'Firefox52.0', '【企业信息】 信息ID为[1]的项修改成功', 'Company');
INSERT INTO `db_sys_note` VALUES ('20', 'admin', '172.16.88.66', '2017-03-25 15:03:45', 'Windows 7', 'Firefox52.0', '【新建】 信息ID为[10]的项添加成功', 'sys_menu');
INSERT INTO `db_sys_note` VALUES ('21', 'admin', '172.16.88.66', '2017-03-25 15:04:35', 'Windows 7', 'Firefox52.0', '【新闻】 信息ID为[1]的项添加成功', 'News');
INSERT INTO `db_sys_note` VALUES ('22', 'admin', '172.16.88.66', '2017-03-25 15:06:28', 'Windows 7', 'Firefox52.0', '【新闻】 信息ID为[1]的项修改成功', 'News');
INSERT INTO `db_sys_note` VALUES ('23', 'admin', '172.16.88.66', '2017-03-25 15:21:10', 'Windows 7', 'Firefox52.0', '【新建】 信息ID为[11]的项添加成功', 'sys_menu');
INSERT INTO `db_sys_note` VALUES ('24', 'admin', '172.16.88.66', '2017-03-25 15:21:29', 'Windows 7', 'Firefox52.0', '【产品】 信息ID为[1]的项添加成功', 'Products');
INSERT INTO `db_sys_note` VALUES ('25', 'admin', '172.16.88.66', '2017-03-25 15:25:03', 'Windows 7', 'Firefox52.0', '【产品】 信息ID为[1]的项修改成功', 'Products');
INSERT INTO `db_sys_note` VALUES ('26', 'admin', '172.16.88.66', '2017-03-25 15:29:34', 'Windows 7', 'Firefox52.0', '【新建】 信息ID为[12]的项添加成功', 'sys_menu');
INSERT INTO `db_sys_note` VALUES ('27', 'admin', '172.16.88.66', '2017-03-25 15:29:52', 'Windows 7', 'Firefox52.0', '【案例】 信息ID为[1]的项添加成功', 'Case');
INSERT INTO `db_sys_note` VALUES ('28', 'admin', '172.16.88.66', '2017-03-25 15:30:02', 'Windows 7', 'Firefox52.0', '【案例】 信息ID为[1]的项修改成功', 'Case');
INSERT INTO `db_sys_note` VALUES ('29', 'admin', '172.16.88.66', '2017-03-25 15:45:37', 'Windows 7', 'Firefox52.0', '【新建】 信息ID为[13]的项添加成功', 'sys_menu');
INSERT INTO `db_sys_note` VALUES ('30', 'admin', '172.16.88.66', '2017-03-25 15:46:01', 'Windows 7', 'Firefox52.0', '【营销网络】 信息ID为[1]的项添加成功', 'Net');
INSERT INTO `db_sys_note` VALUES ('31', 'admin', '172.16.88.66', '2017-03-25 16:03:38', 'Windows 7', 'MSIE9.0', '【登录】登入成功', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('32', 'admin', '172.16.88.66', '2017-03-25 16:11:11', 'Windows 7', 'Firefox52.0', '【新建】 信息ID为[14]的项添加成功', 'sys_menu');
INSERT INTO `db_sys_note` VALUES ('33', 'admin', '172.16.88.66', '2017-03-25 16:11:20', 'Windows 7', 'Firefox52.0', '【友链】 信息ID为[1]的项添加成功', 'Link');
INSERT INTO `db_sys_note` VALUES ('34', 'admin', '172.16.88.66', '2017-03-25 16:11:31', 'Windows 7', 'Firefox52.0', '【友链】 信息ID为[1]的项修改成功', 'Link');
INSERT INTO `db_sys_note` VALUES ('35', 'admin', '172.16.88.66', '2017-03-25 18:26:15', 'Windows 7', 'Firefox52.0', '【新建】 信息ID为[15]的项添加成功', 'sys_menu');
INSERT INTO `db_sys_note` VALUES ('36', 'admin', '172.16.88.66', '2017-03-25 18:26:42', 'Windows 7', 'Firefox52.0', '【下载】 信息ID为[1]的项添加成功', 'Down');
INSERT INTO `db_sys_note` VALUES ('37', 'admin', '172.16.88.66', '2017-03-25 18:45:56', 'Windows 7', 'Firefox52.0', '【下载】 信息ID为[1]的项修改成功', 'Down');
INSERT INTO `db_sys_note` VALUES ('38', 'admin', '172.16.88.66', '2017-03-25 19:06:38', 'Windows 7', 'Firefox52.0', '【修改】 信息ID为[8]的项信息修改成功', 'sys_menu');
INSERT INTO `db_sys_note` VALUES ('39', 'admin', '172.16.88.66', '2017-03-25 19:08:46', 'Windows 7', 'Firefox52.0', '【修改】 信息ID为[8]的项信息修改成功', 'sys_menu');
INSERT INTO `db_sys_note` VALUES ('40', 'admin', '172.16.88.66', '2017-03-25 19:10:21', 'Windows 7', 'Firefox52.0', '【修改】 信息ID为[8]的项信息修改成功', 'sys_menu');
INSERT INTO `db_sys_note` VALUES ('41', 'admin', '172.16.88.66', '2017-03-25 19:11:45', 'Windows 7', 'Firefox52.0', '【广告】 信息ID为[2]的项添加成功', 'ads');
INSERT INTO `db_sys_note` VALUES ('42', 'admin', '172.16.88.66', '2017-03-25 19:11:52', 'Windows 7', 'Firefox52.0', '【广告】 信息ID为[2]的项修改成功', 'ads');
INSERT INTO `db_sys_note` VALUES ('43', 'admin', '172.16.88.66', '2017-03-25 19:11:57', 'Windows 7', 'Firefox52.0', '【广告】 信息ID为[2]的项修改成功', 'ads');
INSERT INTO `db_sys_note` VALUES ('44', 'admin', '172.16.88.66', '2017-03-25 19:12:11', 'Windows 7', 'Firefox52.0', '【企业信息】 信息ID为[2]的项添加成功', 'Company');
INSERT INTO `db_sys_note` VALUES ('45', 'admin', '172.16.88.66', '2017-03-25 19:15:07', 'Windows 7', 'Firefox52.0', '【新闻】 信息ID为[1]的项修改成功', 'News');
INSERT INTO `db_sys_note` VALUES ('46', 'admin', '172.16.88.66', '2017-03-25 19:16:02', 'Windows 7', 'Firefox52.0', '【案例】 信息ID为[1]的项修改成功', 'Case');
INSERT INTO `db_sys_note` VALUES ('47', 'admin', '172.16.88.66', '2017-03-25 19:17:40', 'Windows 7', 'Firefox52.0', '【下载】 信息ID为[2]的项添加成功', 'Down');
INSERT INTO `db_sys_note` VALUES ('48', 'admin', '172.16.88.66', '2017-03-25 19:17:52', 'Windows 7', 'Firefox52.0', '【下载】 信息ID为[2]的项修改成功', 'Down');
INSERT INTO `db_sys_note` VALUES ('49', 'admin', '172.16.88.66', '2017-03-25 19:18:11', 'Windows 7', 'Firefox52.0', '【下载】 信息ID为[2]的项修改成功', 'Down');
INSERT INTO `db_sys_note` VALUES ('50', 'admin', '172.16.88.66', '2017-03-25 19:19:09', 'Windows 7', 'MSIE7.0', '【广告】 信息ID为[2]的项修改成功', 'ads');
INSERT INTO `db_sys_note` VALUES ('51', 'admin', '172.16.88.66', '2017-03-25 19:19:20', 'Windows 7', 'MSIE7.0', '【修改】 信息ID为[8]的项信息修改成功', 'sys_menu');
INSERT INTO `db_sys_note` VALUES ('52', 'admin', '172.16.88.66', '2017-03-25 19:21:33', 'Windows 7', 'MSIE7.0', '【修改】 信息ID为[8]的项信息修改成功', 'sys_menu');
INSERT INTO `db_sys_note` VALUES ('53', 'admin', '172.16.88.66', '2017-03-25 19:21:48', 'Windows 7', 'MSIE7.0', '【广告】 信息ID为[2]的项修改成功', 'ads');
INSERT INTO `db_sys_note` VALUES ('54', 'admin', '172.16.88.66', '2017-03-25 19:22:01', 'Windows 7', 'MSIE7.0', '【企业信息】 信息ID为[2]的项修改成功', 'Company');
INSERT INTO `db_sys_note` VALUES ('55', 'admin', '172.16.88.66', '2017-03-25 19:22:15', 'Windows 7', 'MSIE7.0', '【新闻】 信息ID为[1]的项修改成功', 'News');
INSERT INTO `db_sys_note` VALUES ('56', 'admin', '172.16.88.66', '2017-03-25 19:22:30', 'Windows 7', 'MSIE7.0', '【产品】 信息ID为[1]的项修改成功', 'Products');
INSERT INTO `db_sys_note` VALUES ('57', 'admin', '172.16.88.66', '2017-03-25 19:22:42', 'Windows 7', 'MSIE7.0', '【案例】 信息ID为[1]的项修改成功', 'Case');
INSERT INTO `db_sys_note` VALUES ('58', 'admin', '172.16.88.66', '2017-03-25 19:23:01', 'Windows 7', 'MSIE7.0', '【营销网络】 信息ID为[1]的项修改成功', 'Net');
INSERT INTO `db_sys_note` VALUES ('59', 'admin', '172.16.88.66', '2017-03-25 19:23:46', 'Windows 7', 'MSIE7.0', '【下载】 信息ID为[2]的项修改成功', 'Down');
INSERT INTO `db_sys_note` VALUES ('60', 'admin', '172.16.88.66', '2017-03-25 19:23:57', 'Windows 7', 'MSIE7.0', '【下载】 信息ID为[2]的项修改成功', 'Down');
INSERT INTO `db_sys_note` VALUES ('61', 'admin', '172.16.88.66', '2017-03-25 19:24:10', 'Windows 7', 'MSIE7.0', '【友链】 信息ID为[1]的项修改成功', 'Link');
INSERT INTO `db_sys_note` VALUES ('62', 'admin', '172.16.88.66', '2017-03-25 19:24:33', 'Windows 7', 'Firefox52.0', '【营销网络】 信息ID为[1]的项修改成功', 'Net');
INSERT INTO `db_sys_note` VALUES ('63', 'admin', '172.16.88.66', '2017-03-25 19:47:48', 'Windows 7', 'MSIE7.0', '【营销网络】 信息ID为[1]的项修改成功', 'Net');
INSERT INTO `db_sys_note` VALUES ('64', 'admin', '172.16.88.66', '2017-03-25 19:48:04', 'Windows 7', 'Firefox52.0', '【营销网络】 信息ID为[1]的项修改成功', 'Net');
INSERT INTO `db_sys_note` VALUES ('65', 'admin', '172.16.88.66', '2017-03-25 19:48:26', 'Windows 7', 'MSIE7.0', '【营销网络】 信息ID为[1]的项修改成功', 'Net');
INSERT INTO `db_sys_note` VALUES ('66', 'admin', '172.16.88.66', '2017-03-25 19:48:48', 'Windows 7', 'MSIE7.0', '【营销网络】 信息ID为[1]的项修改成功', 'Net');
INSERT INTO `db_sys_note` VALUES ('67', 'admin', '172.16.88.66', '2017-03-25 19:49:04', 'Windows 7', 'MSIE7.0', '【案例】 信息ID为[1]的项修改成功', 'Case');
INSERT INTO `db_sys_note` VALUES ('68', 'admin', '172.16.88.66', '2017-03-25 19:49:12', 'Windows 7', 'MSIE7.0', '【案例】 信息ID为[1]的项修改成功', 'Case');
INSERT INTO `db_sys_note` VALUES ('69', 'admin', '172.16.88.66', '2017-03-25 19:50:04', 'Windows 7', 'MSIE7.0', '【案例】 信息ID为[1]的项修改成功', 'Case');
INSERT INTO `db_sys_note` VALUES ('70', 'admin', '172.16.88.66', '2017-03-27 09:31:40', 'Windows 7', 'Firefox52.0', '【登录】登入成功', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('71', '-', '172.16.88.66', '2017-03-27 18:48:49', 'Windows 7', 'Firefox52.0', '【登录】验证码错误', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('72', 'admin', '172.16.88.66', '2017-03-27 18:48:58', 'Windows 7', 'Firefox52.0', '【登录】登入成功', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('73', 'admin', '172.16.88.66', '2017-03-28 14:01:10', 'Windows 7', 'Firefox52.0', '【登录】登入成功', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('74', 'admin', '172.16.88.66', '2017-07-18 13:26:22', 'Windows 7', 'Firefox54.0', '【登录】登入成功', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('75', 'admin', '172.16.88.66', '2017-07-18 13:36:53', 'Windows 7', 'Firefox54.0', '【登录】验证码错误', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('76', 'admin', '172.16.88.66', '2017-07-18 13:36:59', 'Windows 7', 'Firefox54.0', '【登录】登入成功', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('77', 'admin', '172.16.88.66', '2017-10-15 15:46:42', 'Windows 7', 'Firefox56.0', '【登录】验证码错误', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('78', 'admin', '172.16.88.66', '2017-10-15 15:46:48', 'Windows 7', 'Firefox56.0', '【登录】登入成功', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('79', 'admin', '172.16.88.66', '2017-10-15 15:47:14', 'Windows 7', 'Firefox56.0', '【新闻】 信息ID为[1]的项修改成功', 'News');
INSERT INTO `db_sys_note` VALUES ('80', 'admin', '172.16.88.66', '2017-12-05 14:09:00', 'Windows 7', 'Firefox57.0', '【登录】登入成功', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('81', 'admin', '172.16.88.66', '2017-12-06 15:02:12', 'Windows 7', 'Firefox57.0', '【登录】登入成功', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('82', 'admin', '172.16.88.66', '2017-12-06 15:03:21', 'Windows 7', 'Firefox57.0', '【登录】验证码错误', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('83', 'admin', '172.16.88.66', '2017-12-06 15:03:36', 'Windows 7', 'Firefox57.0', '【登录】密码错误', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('84', 'admin', '172.16.88.66', '2017-12-06 15:03:42', 'Windows 7', 'Firefox57.0', '【登录】密码错误', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('85', 'admin', '172.16.88.66', '2017-12-06 15:03:54', 'Windows 7', 'Firefox57.0', '【登录】验证码错误', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('86', 'admin', '172.16.88.66', '2017-12-06 15:04:01', 'Windows 7', 'Firefox57.0', '【登录】验证码错误', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('87', 'admin', '172.16.88.66', '2017-12-06 15:04:15', 'Windows 7', 'Firefox57.0', '【登录】登入成功', 'sys_admin');
INSERT INTO `db_sys_note` VALUES ('88', 'admin', '172.16.88.66', '2017-12-06 16:57:59', 'Windows 7', 'Firefox57.0', '【系统设置】 系统设置修改成功', 'sys_site');
INSERT INTO `db_sys_note` VALUES ('89', 'admin', '172.16.88.66', '2017-12-06 17:24:39', 'Windows 7', 'Firefox57.0', '【系统设置】 系统设置修改成功', 'sys_site');
INSERT INTO `db_sys_note` VALUES ('90', 'admin', '172.16.88.66', '2017-12-06 17:24:42', 'Windows 7', 'Firefox57.0', '【系统设置】 系统设置修改成功', 'sys_site');
INSERT INTO `db_sys_note` VALUES ('91', 'admin', '172.16.88.66', '2017-12-06 17:24:43', 'Windows 7', 'Firefox57.0', '【系统设置】 系统设置修改成功', 'sys_site');
INSERT INTO `db_sys_note` VALUES ('92', 'admin', '172.16.88.66', '2017-12-06 17:24:45', 'Windows 7', 'Firefox57.0', '【系统设置】 系统设置修改成功', 'sys_site');
INSERT INTO `db_sys_note` VALUES ('93', 'admin', '172.16.88.66', '2017-12-06 17:38:23', 'Windows 7', 'Firefox57.0', '【新闻】 信息ID为[1] 更新[putout]成功', 'News');
INSERT INTO `db_sys_note` VALUES ('94', 'admin', '172.16.88.66', '2017-12-06 17:38:27', 'Windows 7', 'Firefox57.0', '【新闻】 信息ID为[1] 更新[putout]成功', 'News');
INSERT INTO `db_sys_note` VALUES ('95', 'admin', '172.16.88.66', '2017-12-06 17:42:20', 'Windows 7', 'Firefox57.0', '【产品】 信息ID为[1]的项修改成功', 'Products');

-- ----------------------------
-- Table structure for `db_sys_site`
-- ----------------------------
DROP TABLE IF EXISTS `db_sys_site`;
CREATE TABLE `db_sys_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sitename` varchar(200) DEFAULT NULL,
  `siteWeb` varchar(100) DEFAULT NULL,
  `ver` int(11) DEFAULT NULL,
  `lock_ip` longtext,
  `cloud_url` varchar(100) DEFAULT NULL,
  `cloud_port` int(6) DEFAULT NULL,
  `islink` tinyint(4) DEFAULT NULL,
  `androidver` int(11) DEFAULT NULL,
  `androidurl` varchar(100) DEFAULT NULL,
  `iosver` int(11) DEFAULT NULL,
  `iosurl` varchar(100) DEFAULT NULL,
  `smtp` varchar(100) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `mailpwd` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_sys_site
-- ----------------------------
INSERT INTO `db_sys_site` VALUES ('4', '测试', 'www.baidu.com', '0', '172.16.88.61', '172.16.88.190', '8282', '1', '0', 'www.android.com', '1', 'https://itunes.apple.com/us/app/che-dian-wang/id1121595984?l=zh&amp;ls=1&amp;mt=8', 'smtp.163.com', 'qq469100943@163.com', '701789');

-- ----------------------------
-- Table structure for `db_sys_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `db_sys_userinfo`;
CREATE TABLE `db_sys_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `treeid` varchar(100) DEFAULT NULL,
  `uname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `upwd` varchar(50) DEFAULT NULL,
  `sessionid` varchar(50) DEFAULT NULL,
  `truename` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `umoney` float(11,2) DEFAULT '0.00',
  `addtime` datetime DEFAULT NULL,
  `lastaddtime` datetime DEFAULT NULL,
  `ucheck` tinyint(4) DEFAULT '1',
  `userimg` varchar(100) DEFAULT '/Web/UploadFile/UserInfo/none.png' COMMENT '用户头像',
  `wx` varchar(100) DEFAULT '',
  `qq` varchar(100) DEFAULT '',
  `wb` varchar(100) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of db_sys_userinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `db_usou`
-- ----------------------------
DROP TABLE IF EXISTS `db_usou`;
CREATE TABLE `db_usou` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(80) DEFAULT NULL,
  `type` tinyint(4) DEFAULT '0' COMMENT '0充值，1充电',
  `Adesc` varchar(300) DEFAULT NULL,
  `cnum` float(9,2) DEFAULT NULL,
  `enum` float(9,2) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `pid` int(15) DEFAULT '0' COMMENT '桩ID',
  `cid` int(15) DEFAULT '0' COMMENT 'temp id',
  `elenum` float(9,2) DEFAULT '0.00' COMMENT '充电电量',
  `No` varchar(30) DEFAULT NULL COMMENT '交易编号',
  `sitename` varchar(80) DEFAULT NULL,
  `uint` float(5,2) DEFAULT '0.00',
  `pilenum` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_usou
-- ----------------------------
