/*
Navicat MySQL Data Transfer

Source Server         : http://47.102.113.146
Source Server Version : 50557
Source Host           : 47.102.113.146:3306
Source Database       : bbs

Target Server Type    : MYSQL
Target Server Version : 50557
File Encoding         : 65001

Date: 2019-04-26 20:03:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `jbbs_bankuai`
-- ----------------------------
DROP TABLE IF EXISTS `jbbs_bankuai`;
CREATE TABLE `jbbs_bankuai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `type` varchar(1) DEFAULT NULL,
  `descs` varchar(2000) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `orderby` int(11) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `createuserid` int(11) DEFAULT NULL,
  `fatiegroup` varchar(2000) DEFAULT NULL,
  `huifugroup` varchar(2000) DEFAULT NULL,
  `findgroup` varchar(2000) DEFAULT NULL,
  `yuming` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jbbs_bankuai
-- ----------------------------
INSERT INTO `jbbs_bankuai` VALUES ('1', '论坛', 'bankuai.jpg', null, '', '0', '1', '2017-07-26 13:44:15', '1', '', '', '', 'luntan');
INSERT INTO `jbbs_bankuai` VALUES ('2', '板块测试', 'bankuai.jpg', null, '', '1', '1', '2017-07-26 13:44:25', '1', '', '', '', 'bankuaiceshi');

-- ----------------------------
-- Table structure for `jbbs_group`
-- ----------------------------
DROP TABLE IF EXISTS `jbbs_group`;
CREATE TABLE `jbbs_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `createuserid` int(11) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `isdel` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jbbs_group
-- ----------------------------
INSERT INTO `jbbs_group` VALUES ('1', '超级管理员', '2017-05-09', '1', '1', '1');
INSERT INTO `jbbs_group` VALUES ('2', '版主组', '2017-05-09', '1', '1', '1');
INSERT INTO `jbbs_group` VALUES ('3', '普通会员', '2017-05-09', '1', '1', '1');

-- ----------------------------
-- Table structure for `jbbs_group_user`
-- ----------------------------
DROP TABLE IF EXISTS `jbbs_group_user`;
CREATE TABLE `jbbs_group_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `groupid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of jbbs_group_user
-- ----------------------------
INSERT INTO `jbbs_group_user` VALUES ('1', '1', '1');
INSERT INTO `jbbs_group_user` VALUES ('2', '2', '3');

-- ----------------------------
-- Table structure for `jbbs_huifu`
-- ----------------------------
DROP TABLE IF EXISTS `jbbs_huifu`;
CREATE TABLE `jbbs_huifu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tieziid` int(11) DEFAULT NULL,
  `huifuid` int(11) DEFAULT NULL,
  `contenthtml` longtext,
  `contenttxt` longtext,
  `createtime` varchar(255) DEFAULT NULL,
  `createuserid` int(11) DEFAULT NULL,
  `lastupdate` varchar(2000) DEFAULT NULL,
  `isdel` varchar(2) DEFAULT NULL,
  `orderby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `jbbs_huifu_tieziid_index` (`tieziid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jbbs_huifu
-- ----------------------------

-- ----------------------------
-- Table structure for `jbbs_info`
-- ----------------------------
DROP TABLE IF EXISTS `jbbs_info`;
CREATE TABLE `jbbs_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `indextitle` varchar(2000) DEFAULT NULL,
  `name` varchar(2000) DEFAULT NULL,
  `keywords` varchar(2000) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `logoimg` varchar(2000) DEFAULT NULL,
  `foothtml` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jbbs_info
-- ----------------------------
INSERT INTO `jbbs_info` VALUES ('1', 'SSM论坛系统', 'SSM论坛', 'SSM论坛系统', 'SSM论坛系统', '20170513/2017051321351528862961.PNG', '');

-- ----------------------------
-- Table structure for `jbbs_inner_link`
-- ----------------------------
DROP TABLE IF EXISTS `jbbs_inner_link`;
CREATE TABLE `jbbs_inner_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `innerlink` varchar(1000) DEFAULT NULL,
  `type` varchar(1) DEFAULT NULL,
  `isuse` varchar(1) DEFAULT NULL,
  `createuserid` int(11) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jbbs_inner_link
-- ----------------------------
INSERT INTO `jbbs_inner_link` VALUES ('1', 'CGMPT', 'http://www.cgmpt.com', '0', '1', '1', '2018-12-18 21:37:00');
INSERT INTO `jbbs_inner_link` VALUES ('2', '吾要MTV', 'http://www.51mtv.xyz', '0', '1', '1', '2018-12-18 21:36:59');

-- ----------------------------
-- Table structure for `jbbs_jifen`
-- ----------------------------
DROP TABLE IF EXISTS `jbbs_jifen`;
CREATE TABLE `jbbs_jifen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tieziid` int(11) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `fenshu` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `operateuserid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jbbs_jifen
-- ----------------------------
INSERT INTO `jbbs_jifen` VALUES ('1', null, '每天第一次登录您获得2积分', '104', '2018-12-18 18:42:09', '2', '2', null);
INSERT INTO `jbbs_jifen` VALUES ('2', null, '您发布了帖子获得2积分', '101', '2018-12-18 18:43:38', '2', '2', null);
INSERT INTO `jbbs_jifen` VALUES ('3', null, '每天第一次登录您获得2积分', '104', '2018-12-18 21:33:35', '2', '1', null);
INSERT INTO `jbbs_jifen` VALUES ('4', null, '您发布了帖子获得2积分', '101', '2018-12-18 21:52:55', '2', '2', null);
INSERT INTO `jbbs_jifen` VALUES ('5', null, '您发布了帖子获得2积分', '101', '2018-12-18 22:04:08', '2', '2', null);
INSERT INTO `jbbs_jifen` VALUES ('6', null, '您发布了帖子获得2积分', '101', '2018-12-18 22:04:49', '2', '2', null);
INSERT INTO `jbbs_jifen` VALUES ('7', null, '您发布了帖子获得2积分', '101', '2018-12-18 23:20:38', '2', '2', null);
INSERT INTO `jbbs_jifen` VALUES ('8', null, '每天第一次登录您获得2积分', '104', '2019-04-19 12:51:25', '2', '1', null);
INSERT INTO `jbbs_jifen` VALUES ('9', null, '每天第一次登录您获得2积分', '104', '2019-04-23 09:11:56', '2', '1', null);

-- ----------------------------
-- Table structure for `jbbs_jifen_group`
-- ----------------------------
DROP TABLE IF EXISTS `jbbs_jifen_group`;
CREATE TABLE `jbbs_jifen_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `jifen` int(11) DEFAULT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `descs` varchar(2000) DEFAULT NULL,
  `createuserid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jbbs_jifen_group
-- ----------------------------
INSERT INTO `jbbs_jifen_group` VALUES ('1', 'VIP1', '0', 'VIP1', null, null, null);
INSERT INTO `jbbs_jifen_group` VALUES ('2', 'VIP2', '100', 'VIP2', null, null, null);
INSERT INTO `jbbs_jifen_group` VALUES ('3', 'VIP3', '200', 'VIP3', null, null, null);
INSERT INTO `jbbs_jifen_group` VALUES ('4', 'VIP4', '300', 'VIP4', null, null, null);
INSERT INTO `jbbs_jifen_group` VALUES ('5', 'VIP5', '400', 'VIP5', null, null, null);
INSERT INTO `jbbs_jifen_group` VALUES ('6', 'VIP6', '500', 'VIP6', null, null, null);
INSERT INTO `jbbs_jifen_group` VALUES ('7', 'VIP7', '600', 'VIP7', null, null, null);
INSERT INTO `jbbs_jifen_group` VALUES ('8', 'VIP8', '700', 'VIP8', null, null, null);
INSERT INTO `jbbs_jifen_group` VALUES ('9', 'VIP9', '800', 'VIP9', null, null, null);
INSERT INTO `jbbs_jifen_group` VALUES ('10', 'VIP10', '900', 'VIP10', null, null, null);
INSERT INTO `jbbs_jifen_group` VALUES ('11', 'VIP11', '1000', 'VIP11', null, null, null);
INSERT INTO `jbbs_jifen_group` VALUES ('12', 'VIP12', '1100', 'VIP12', null, null, null);
INSERT INTO `jbbs_jifen_group` VALUES ('13', 'VIP13', '1200', 'VIP13', null, null, null);
INSERT INTO `jbbs_jifen_group` VALUES ('14', 'VIP14', '1300', 'VIP14', null, null, null);
INSERT INTO `jbbs_jifen_group` VALUES ('15', 'VIP15', '1400', 'VIP15', null, null, null);

-- ----------------------------
-- Table structure for `jbbs_link`
-- ----------------------------
DROP TABLE IF EXISTS `jbbs_link`;
CREATE TABLE `jbbs_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(2000) DEFAULT NULL,
  `link` varchar(2000) DEFAULT NULL,
  `createuserid` int(11) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `orderby` int(11) DEFAULT NULL,
  `bankuaiid` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL,
  `isshow` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jbbs_link
-- ----------------------------
INSERT INTO `jbbs_link` VALUES ('1', 'CGMPT', 'http://www.cgmpt.com', '1', '2018-12-18 21:38:01', '0', '0', null, '0', '1');
INSERT INTO `jbbs_link` VALUES ('2', '吾要MTV', 'http://www.51mtv.xyz', '1', '2018-12-18 21:38:17', '1', '0', null, '0', '1');

-- ----------------------------
-- Table structure for `jbbs_message`
-- ----------------------------
DROP TABLE IF EXISTS `jbbs_message`;
CREATE TABLE `jbbs_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext,
  `content` longtext,
  `createtime` varchar(255) DEFAULT NULL,
  `useridsend` int(11) DEFAULT NULL,
  `useridaccept` int(11) DEFAULT NULL,
  `messagetype` varchar(1) DEFAULT NULL,
  `isread` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jbbs_message
-- ----------------------------

-- ----------------------------
-- Table structure for `jbbs_pic`
-- ----------------------------
DROP TABLE IF EXISTS `jbbs_pic`;
CREATE TABLE `jbbs_pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(1000) DEFAULT NULL,
  `tieziid` int(11) DEFAULT NULL,
  `bankuaiid` int(11) DEFAULT NULL,
  `pictype` varchar(2) DEFAULT NULL,
  `createuserid` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `isdel` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jbbs_pic
-- ----------------------------

-- ----------------------------
-- Table structure for `jbbs_stop_ip`
-- ----------------------------
DROP TABLE IF EXISTS `jbbs_stop_ip`;
CREATE TABLE `jbbs_stop_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `startip` varchar(255) DEFAULT NULL,
  `endip` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `createuserid` int(11) DEFAULT NULL,
  `isuse` varchar(1) DEFAULT NULL,
  `remarks` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jbbs_stop_ip
-- ----------------------------

-- ----------------------------
-- Table structure for `jbbs_tiezi`
-- ----------------------------
DROP TABLE IF EXISTS `jbbs_tiezi`;
CREATE TABLE `jbbs_tiezi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(2000) DEFAULT NULL,
  `contenthtml` longtext,
  `contenttxt` longtext,
  `createtime` varchar(255) DEFAULT NULL,
  `createuserid` int(11) DEFAULT NULL,
  `bankuai_id` int(11) DEFAULT NULL,
  `zhutiid` varchar(255) DEFAULT NULL,
  `lastupdate` varchar(2000) DEFAULT NULL,
  `jinghua` varchar(255) DEFAULT NULL,
  `zhiding` varchar(255) DEFAULT NULL,
  `findcount` int(11) DEFAULT '0',
  `huifuid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `jbbs_tiezi_bankuai_id_index` (`bankuai_id`) USING BTREE,
  KEY `jbbs_tiezi_createuserid_index` (`createuserid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jbbs_tiezi
-- ----------------------------
INSERT INTO `jbbs_tiezi` VALUES ('1', '我滴人生已达到了巅峰，我滴人生已达到了高潮', '<p>我滴人生已达到了巅峰，我滴人生已达到了高潮</p><p>我滴人生已达到了巅峰，我滴人生已达到了高潮</p><p>我滴人生已达到了巅峰，我滴人生已达到了高潮</p><p>我滴人生已达到了巅峰，我滴人生已达到了高潮</p><p>我滴人生已达到了巅峰，我滴人生已达到了高潮</p><p>我滴人生已达到了巅峰，我滴人生已达到了高潮</p><p>我滴人生已达到了巅峰，我滴人生已达到了高潮</p><p>我滴人生已达到了巅峰，我滴人生已达到了高潮</p>', '我滴人生已达到了巅峰，我滴人生已达到了高潮我滴人生已达到了巅峰，我滴人生已达到了高潮我滴人生已达到了巅峰，我滴人生已达到了高潮我滴人生已达到了巅峰，我滴人生已达到了高潮我滴人生已达到了巅峰，我滴人生已达到了高潮我滴人生已达到了巅峰，我滴人生已达到了高潮我滴人生已达到了巅峰，我滴人生已达到了高潮我滴人生已达到了巅峰，我滴人生已达到了高潮', '2018-12-18 18:43:37', '2', '2', '1', '', null, null, '2', null);
INSERT INTO `jbbs_tiezi` VALUES ('2', '庆祝改革开放40周年大会在京隆重举行 习近平发表重要讲话', '<p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">新华社北京12月18日电 庆祝改革开放40周年大会18日上午在北京人民大会堂隆重举行。中共中央总书记、国家主席、中央军委主席习近平在大会上发表重要讲话。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">习近平强调，40年的实践充分证明，党的十一届三中全会以来我们党团结带领全国各族人民开辟的中国特色社会主义道路、理论、制度、文化是完全正确的，形成的党的基本理论、基本路线、基本方略是完全正确的。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">习近平强调，40年的实践充分证明，中国发展为广大发展中国家走向现代化提供了成功经验、展现了光明前景，是促进世界和平与发展的强大力量，是中华民族对人类文明进步作出的重大贡献。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">习近平强调，40年的实践充分证明，改革开放是党和人民大踏步赶上时代的重要法宝，是坚持和发展中国特色社会主义的必由之路，是决定当代中国命运的关键一招，也是决定实现“两个一百年”奋斗目标、实现中华民族伟大复兴的关键一招。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">李克强、栗战书、汪洋、王沪宁、赵乐际、韩正、王岐山出席大会。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">人民大会堂雄伟庄严，万人大礼堂灯火辉煌、气氛热烈。主席台上方悬挂着“庆祝改革开放40周年大会”会标，后幕正中是中华人民共和国国徽和“1978－2018”字标，10面红旗分列两侧。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">当习近平等领导同志进入会场，全场起立，热烈鼓掌。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">10时，李克强宣布庆祝大会开始。全体起立，高唱国歌。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">王沪宁宣读《中共中央　国务院关于表彰改革开放杰出贡献人员的决定》。决定指出，党中央、国务院决定，授予于敏等100名同志改革先锋称号，颁授改革先锋奖章；为感谢国际社会对中国改革开放事业的支持和帮助，向阿兰·梅里埃等10名国际友人颁授中国改革友谊奖章。大会宣读了授予改革先锋称号、中国改革友谊奖章人员名单。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">在《春天的故事》乐曲声中，习近平等为获得改革先锋称号、中国改革友谊奖章人员代表颁奖。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">全体起立，热烈鼓掌，向受表彰人员表示衷心祝贺和崇高敬意。少先队员向他们献上美丽的鲜花。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">在热烈的掌声中，习近平发表重要讲话。他强调，我们党作出实行改革开放的历史性决策，是基于对党和国家前途命运的深刻把握，是基于对社会主义革命和建设实践的深刻总结，是基于对时代潮流的深刻洞察，是基于对人民群众期盼和需要的深刻体悟。改革开放是我们党的一次伟大觉醒，正是这个伟大觉醒孕育了我们党从理论到实践的伟大创造。改革开放是中国人民和中华民族发展史上一次伟大革命，正是这个伟大革命推动了中国特色社会主义事业的伟大飞跃。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">习近平指出，建立中国共产党、成立中华人民共和国、推进改革开放和中国特色社会主义事业，是五四运动以来我国发生的三大历史性事件，是近代以来实现中华民族伟大复兴的三大里程碑。以毛泽东同志为主要代表的中国共产党人，完成了新民主主义革命，建立了中华人民共和国，为当代中国一切发展进步奠定了根本政治前提和制度基础。以邓小平同志为主要代表的中国共产党人，作出把党和国家工作中心转移到经济建设上来、实行改革开放的历史性决策，成功开创了中国特色社会主义。以江泽民同志为主要代表的中国共产党人，确立了社会主义市场经济体制的改革目标和基本框架，开创全面改革开放新局面，成功把中国特色社会主义推向21世纪。以胡锦涛同志为主要代表的中国共产党人，强调坚持以人为本、全面协调可持续发展，推进党的执政能力建设和先进性建设，成功在新的历史起点上坚持和发展了中国特色社会主义。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">习近平强调，党的十八大以来，党中央团结带领全党全国各族人民，全面审视国际国内新的形势，通过总结实践、展望未来，深刻回答了新时代坚持和发展什么样的中国特色社会主义、怎样坚持和发展中国特色社会主义这个重大时代课题，形成了新时代中国特色社会主义思想，坚持统筹推进“五位一体”总体布局、协调推进“四个全面”战略布局，坚持稳中求进工作总基调，对党和国家各方面工作提出一系列新理念新思想新战略，推动党和国家事业发生历史性变革、取得历史性成就，中国特色社会主义进入了新时代。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">习近平指出，艰难困苦，玉汝于成。40年来，我们解放思想、实事求是，大胆地试、勇敢地改，干出了一片新天地。改革开放40年来，从开启新时期到跨入新世纪，从站上新起点到进入新时代，40年风雨同舟，40年披荆斩棘，40年砥砺奋进，我们党引领人民绘就了一幅波澜壮阔、气势恢宏的历史画卷，谱写了一曲感天动地、气壮山河的奋斗赞歌。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">习近平从理论创新、经济建设、政治建设、文化建设、社会建设、生态文明建设、国防和军队建设、祖国统一、外交工作、党的建设等方面总结了改革开放的伟大成就。他强调，40年来取得的成就不是天上掉下来的，更不是别人恩赐施舍的，而是全党全国各族人民用勤劳、智慧、勇气干出来的。我们用几十年时间走完了发达国家几百年走过的工业化历程。在中国人民手中，不可能成为了可能。我们为创造了人间奇迹的中国人民感到无比自豪、无比骄傲。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">习近平指出，改革开放40年积累的宝贵经验是党和人民弥足珍贵的精神财富，对新时代坚持和发展中国特色社会主义有着极为重要的指导意义，必须倍加珍惜、长期坚持，在实践中不断丰富和发展。一是必须坚持党对一切工作的领导，不断加强和改善党的领导，增强“四个意识”、坚定“四个自信”，坚决维护党中央权威和集中统一领导，确保改革开放这艘航船沿着正确航向破浪前行。二是必须坚持以人民为中心，不断实现人民对美好生活的向往，顺应民心、尊重民意、关注民情、致力民生，让人民共享改革开放成果，激励人民更加自觉地投身改革开放和社会主义现代化建设事业。三是必须坚持马克思主义指导地位，不断推进实践基础上的理论创新，及时回答时代之问、人民之问，不断开辟马克思主义发展新境界。四是必须坚持走中国特色社会主义道路，不断坚持和发展中国特色社会主义，牢牢把握改革开放的前进方向。五是必须坚持完善和发展中国特色社会主义制度，不断发挥和增强我国制度优势，推动中国特色社会主义制度更加成熟更加定型。六是必须坚持以发展为第一要务，不断增强我国综合国力，推动经济社会持续健康发展，为坚持和发展中国特色社会主义、实现中华民族伟大复兴奠定雄厚物质基础。七是必须坚持扩大开放，不断推动共建人类命运共同体，高举和平、发展、合作、共赢的旗帜，维护国际公平正义，倡导国际关系民主化，积极参与全球治理体系改革和建设，促进贸易投资自由化便利化。八是必须坚持全面从严治党，不断提高党的创造力、凝聚力、战斗力，不断增强党的政治领导力、思想引领力、群众组织力、社会号召力，坚决清除一切腐败分子，确保党始终保持同人民群众的血肉联系。九是必须坚持辩证唯物主义和历史唯物主义世界观和方法论，坚持问题导向，正确处理改革发展稳定关系，既鼓励大胆试、大胆闯，又坚持实事求是、善作善成，确保改革开放行稳致远。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">习近平强调，我们要全面贯彻新时代党的强军思想，坚持党对军队的绝对领导，坚持走中国特色强军之路，全面深化国防和军队改革，建设一支听党指挥、能打胜仗、作风优良的人民军队，努力建设世界一流军队，为维护国家主权、安全、发展利益，为维护世界和平稳定，为实现中华民族伟大复兴提供坚强后盾。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">习近平指出，我们要全面准确贯彻“一国两制”、“港人治港”、“澳人治澳”、高度自治的方针，严格按照宪法和基本法办事，支持和推动香港、澳门更好融入国家发展大局，让香港、澳门同胞同祖国人民共担民族复兴的历史责任、共享祖国繁荣富强的伟大荣光。实现祖国完全统一，是全体中华儿女共同心愿，是中华民族根本利益所在。我们要坚持一个中国原则和“九二共识”，巩固和发展两岸关系和平发展的基础，深化两岸经济文化交流合作，造福两岸同胞。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">习近平强调，伟大梦想不是等得来、喊得来的，而是拼出来、干出来的。我们现在所处的，是一个船到中流浪更急、人到半山路更陡的时候，是一个愈进愈难、愈进愈险而又不进则退、非进不可的时候。改革开放已走过千山万水，但仍需跋山涉水，摆在全党全国各族人民面前的使命更光荣、任务更艰巨、挑战更严峻、工作更伟大。在这个千帆竞发、百舸争流的时代，我们绝不能有半点骄傲自满、固步自封，也绝不能有丝毫犹豫不决、徘徊彷徨，必须统揽伟大斗争、伟大工程、伟大事业、伟大梦想，勇立潮头、奋勇搏击。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">习近平指出，在近代以来漫长的历史进程中，中国人民经历了太多太多的磨难，付出了太多太多的牺牲，进行了太多太多的拼搏。现在，中国人民和中华民族在历史进程中积累的强大能量已经充分爆发出来了，为实现中华民族伟大复兴提供了势不可挡的磅礴力量。全党全国各族人民要更加紧密地团结在党中央周围，高举中国特色社会主义伟大旗帜，不忘初心，牢记使命，将改革开放进行到底，不断实现人民对美好生活的向往，在新时代创造中华民族新的更大奇迹，创造让世界刮目相看的新的更大奇迹。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">李克强在主持大会时说，习近平总书记的重要讲话，深刻总结了改革开放40年来党和国家事业取得的伟大成就和宝贵经验，高度赞扬了中国人民为改革开放事业作出的杰出贡献，郑重宣示了改革开放只有进行时没有完成时、改革开放永远在路上、坚定不移将改革进行到底的信心和决心，明确提出了坚定不移全面深化改革、扩大对外开放、不断把新时代改革开放继续推向前进的目标要求。让我们更加紧密地团结在以习近平同志为核心的党中央周围，高举中国特色社会主义伟大旗帜，不忘初心、牢记使命，持续深入推进改革开放，为实现“两个一百年”奋斗目标、建成富强民主文明和谐美丽的社会主义现代化强国、实现中华民族伟大复兴的中国梦，为维护世界和平、促进共同发展、推动构建人类命运共同体而不懈奋斗。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">庆祝大会结束后，习近平等会见了受表彰人员及亲属代表，并同大家合影留念。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">在京中共中央政治局委员、中央书记处书记，全国人大常委会副委员长，国务委员，最高人民法院院长，最高人民检察院检察长，全国政协副主席以及中央军委委员出席大会。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">中央党政军群各部门和北京市主要负责同志，各民主党派中央、全国工商联负责人和无党派人士代表，老党员、老干部代表，改革开放杰出贡献受表彰人员及亲属代表，港澳同胞、台湾同胞、海外侨胞及归侨、侨眷代表，首都各界群众代表，解放军和武警部队官兵代表，各国驻华使节、各国际组织驻华代表和在华工作的外国专家代表等约3000人参加大会。</p><p><br/></p>', '新华社北京12月18日电 庆祝改革开放40周年大会18日上午在北京人民大会堂隆重举行。中共中央总书记、国家主席、中央军委主席习近平在大会上发表重要讲话。习近平强调，40年的实践充分证明，党的十一届三中全会以来我们党团结带领全国各族人民开辟的中国特色社会主义道路、理论、制度、文化是完全正确的，形成的党的基本理论、基本路线、基本方略是完全正确的。习近平强调，40年的实践充分证明，中国发展为广大发展中国家走向现代化提供了成功经验、展现了光明前景，是促进世界和平与发展的强大力量，是中华民族对人类文明进步作出的重大贡献。习近平强调，40年的实践充分证明，改革开放是党和人民大踏步赶上时代的重要法宝，是坚持和发展中国特色社会主义的必由之路，是决定当代中国命运的关键一招，也是决定实现“两个一百年”奋斗目标、实现中华民族伟大复兴的关键一招。李克强、栗战书、汪洋、王沪宁、赵乐际、韩正、王岐山出席大会。人民大会堂雄伟庄严，万人大礼堂灯火辉煌、气氛热烈。主席台上方悬挂着“庆祝改革开放40周年大会”会标，后幕正中是中华人民共和国国徽和“1978－2018”字标，10面红旗分列两侧。当习近平等领导同志进入会场，全场起立，热烈鼓掌。10时，李克强宣布庆祝大会开始。全体起立，高唱国歌。王沪宁宣读《中共中央　国务院关于表彰改革开放杰出贡献人员的决定》。决定指出，党中央、国务院决定，授予于敏等100名同志改革先锋称号，颁授改革先锋奖章；为感谢国际社会对中国改革开放事业的支持和帮助，向阿兰·梅里埃等10名国际友人颁授中国改革友谊奖章。大会宣读了授予改革先锋称号、中国改革友谊奖章人员名单。在《春天的故事》乐曲声中，习近平等为获得改革先锋称号、中国改革友谊奖章人员代表颁奖。全体起立，热烈鼓掌，向受表彰人员表示衷心祝贺和崇高敬意。少先队员向他们献上美丽的鲜花。在热烈的掌声中，习近平发表重要讲话。他强调，我们党作出实行改革开放的历史性决策，是基于对党和国家前途命运的深刻把握，是基于对社会主义革命和建设实践的深刻总结，是基于对时代潮流的深刻洞察，是基于对人民群众期盼和需要的深刻体悟。改革开放是我们党的一次伟大觉醒，正是这个伟大觉醒孕育了我们党从理论到实践的伟大创造。改革开放是中国人民和中华民族发展史上一次伟大革命，正是这个伟大革命推动了中国特色社会主义事业的伟大飞跃。习近平指出，建立中国共产党、成立中华人民共和国、推进改革开放和中国特色社会主义事业，是五四运动以来我国发生的三大历史性事件，是近代以来实现中华民族伟大复兴的三大里程碑。以毛泽东同志为主要代表的中国共产党人，完成了新民主主义革命，建立了中华人民共和国，为当代中国一切发展进步奠定了根本政治前提和制度基础。以邓小平同志为主要代表的中国共产党人，作出把党和国家工作中心转移到经济建设上来、实行改革开放的历史性决策，成功开创了中国特色社会主义。以江泽民同志为主要代表的中国共产党人，确立了社会主义市场经济体制的改革目标和基本框架，开创全面改革开放新局面，成功把中国特色社会主义推向21世纪。以胡锦涛同志为主要代表的中国共产党人，强调坚持以人为本、全面协调可持续发展，推进党的执政能力建设和先进性建设，成功在新的历史起点上坚持和发展了中国特色社会主义。习近平强调，党的十八大以来，党中央团结带领全党全国各族人民，全面审视国际国内新的形势，通过总结实践、展望未来，深刻回答了新时代坚持和发展什么样的中国特色社会主义、怎样坚持和发展中国特色社会主义这个重大时代课题，形成了新时代中国特色社会主义思想，坚持统筹推进“五位一体”总体布局、协调推进“四个全面”战略布局，坚持稳中求进工作总基调，对党和国家各方面工作提出一系列新理念新思想新战略，推动党和国家事业发生历史性变革、取得历史性成就，中国特色社会主义进入了新时代。习近平指出，艰难困苦，玉汝于成。40年来，我们解放思想、实事求是，大胆地试、勇敢地改，干出了一片新天地。改革开放40年来，从开启新时期到跨入新世纪，从站上新起点到进入新时代，40年风雨同舟，40年披荆斩棘，40年砥砺奋进，我们党引领人民绘就了一幅波澜壮阔、气势恢宏的历史画卷，谱写了一曲感天动地、气壮山河的奋斗赞歌。习近平从理论创新、经济建设、政治建设、文化建设、社会建设、生态文明建设、国防和军队建设、祖国统一、外交工作、党的建设等方面总结了改革开放的伟大成就。他强调，40年来取得的成就不是天上掉下来的，更不是别人恩赐施舍的，而是全党全国各族人民用勤劳、智慧、勇气干出来的。我们用几十年时间走完了发达国家几百年走过的工业化历程。在中国人民手中，不可能成为了可能。我们为创造了人间奇迹的中国人民感到无比自豪、无比骄傲。习近平指出，改革开放40年积累的宝贵经验是党和人民弥足珍贵的精神财富，对新时代坚持和发展中国特色社会主义有着极为重要的指导意义，必须倍加珍惜、长期坚持，在实践中不断丰富和发展。一是必须坚持党对一切工作的领导，不断加强和改善党的领导，增强“四个意识”、坚定“四个自信”，坚决维护党中央权威和集中统一领导，确保改革开放这艘航船沿着正确航向破浪前行。二是必须坚持以人民为中心，不断实现人民对美好生活的向往，顺应民心、尊重民意、关注民情、致力民生，让人民共享改革开放成果，激励人民更加自觉地投身改革开放和社会主义现代化建设事业。三是必须坚持马克思主义指导地位，不断推进实践基础上的理论创新，及时回答时代之问、人民之问，不断开辟马克思主义发展新境界。四是必须坚持走中国特色社会主义道路，不断坚持和发展中国特色社会主义，牢牢把握改革开放的前进方向。五是必须坚持完善和发展中国特色社会主义制度，不断发挥和增强我国制度优势，推动中国特色社会主义制度更加成熟更加定型。六是必须坚持以发展为第一要务，不断增强我国综合国力，推动经济社会持续健康发展，为坚持和发展中国特色社会主义、实现中华民族伟大复兴奠定雄厚物质基础。七是必须坚持扩大开放，不断推动共建人类命运共同体，高举和平、发展、合作、共赢的旗帜，维护国际公平正义，倡导国际关系民主化，积极参与全球治理体系改革和建设，促进贸易投资自由化便利化。八是必须坚持全面从严治党，不断提高党的创造力、凝聚力、战斗力，不断增强党的政治领导力、思想引领力、群众组织力、社会号召力，坚决清除一切腐败分子，确保党始终保持同人民群众的血肉联系。九是必须坚持辩证唯物主义和历史唯物主义世界观和方法论，坚持问题导向，正确处理改革发展稳定关系，既鼓励大胆试、大胆闯，又坚持实事求是、善作善成，确保改革开放行稳致远。习近平强调，我们要全面贯彻新时代党的强军思想，坚持党对军队的绝对领导，坚持走中国特色强军之路，全面深化国防和军队改革，建设一支听党指挥、能打胜仗、作风优良的人民军队，努力建设世界一流军队，为维护国家主权、安全、发展利益，为维护世界和平稳定，为实现中华民族伟大复兴提供坚强后盾。习近平指出，我们要全面准确贯彻“一国两制”、“港人治港”、“澳人治澳”、高度自治的方针，严格按照宪法和基本法办事，支持和推动香港、澳门更好融入国家发展大局，让香港、澳门同胞同祖国人民共担民族复兴的历史责任、共享祖国繁荣富强的伟大荣光。实现祖国完全统一，是全体中华儿女共同心愿，是中华民族根本利益所在。我们要坚持一个中国原则和“九二共识”，巩固和发展两岸关系和平发展的基础，深化两岸经济文化交流合作，造福两岸同胞。习近平强调，伟大梦想不是等得来、喊得来的，而是拼出来、干出来的。我们现在所处的，是一个船到中流浪更急、人到半山路更陡的时候，是一个愈进愈难、愈进愈险而又不进则退、非进不可的时候。改革开放已走过千山万水，但仍需跋山涉水，摆在全党全国各族人民面前的使命更光荣、任务更艰巨、挑战更严峻、工作更伟大。在这个千帆竞发、百舸争流的时代，我们绝不能有半点骄傲自满、固步自封，也绝不能有丝毫犹豫不决、徘徊彷徨，必须统揽伟大斗争、伟大工程、伟大事业、伟大梦想，勇立潮头、奋勇搏击。习近平指出，在近代以来漫长的历史进程中，中国人民经历了太多太多的磨难，付出了太多太多的牺牲，进行了太多太多的拼搏。现在，中国人民和中华民族在历史进程中积累的强大能量已经充分爆发出来了，为实现中华民族伟大复兴提供了势不可挡的磅礴力量。全党全国各族人民要更加紧密地团结在党中央周围，高举中国特色社会主义伟大旗帜，不忘初心，牢记使命，将改革开放进行到底，不断实现人民对美好生活的向往，在新时代创造中华民族新的更大奇迹，创造让世界刮目相看的新的更大奇迹。李克强在主持大会时说，习近平总书记的重要讲话，深刻总结了改革开放40年来党和国家事业取得的伟大成就和宝贵经验，高度赞扬了中国人民为改革开放事业作出的杰出贡献，郑重宣示了改革开放只有进行时没有完成时、改革开放永远在路上、坚定不移将改革进行到底的信心和决心，明确提出了坚定不移全面深化改革、扩大对外开放、不断把新时代改革开放继续推向前进的目标要求。让我们更加紧密地团结在以习近平同志为核心的党中央周围，高举中国特色社会主义伟大旗帜，不忘初心、牢记使命，持续深入推进改革开放，为实现“两个一百年”奋斗目标、建成富强民主文明和谐美丽的社会主义现代化强国、实现中华民族伟大复兴的中国梦，为维护世界和平、促进共同发展、推动构建人类命运共同体而不懈奋斗。庆祝大会结束后，习近平等会见了受表彰人员及亲属代表，并同大家合影留念。在京中共中央政治局委员、中央书记处书记，全国人大常委会副委员长，国务委员，最高人民法院院长，最高人民检察院检察长，全国政协副主席以及中央军委委员出席大会。中央党政军群各部门和北京市主要负责同志，各民主党派中央、全国工商联负责人和无党派人士代表，老党员、老干部代表，改革开放杰出贡献受表彰人员及亲属代表，港澳同胞、台湾同胞、海外侨胞及归侨、侨眷代表，首都各界群众代表，解放军和武警部队官兵代表，各国驻华使节、各国际组织驻华代表和在华工作的外国专家代表等约3000人参加大会。', '2018-12-18 21:52:55', '2', '2', '1', '', null, null, '1', null);
INSERT INTO `jbbs_tiezi` VALUES ('3', '特斯拉上海工厂总投资将达500亿 2019年将投产', '<p class=\"f_center\" style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/image/20181218/1545141846708008573.jpg\"/><br/></p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">本报记者 彭苏平 上海报道</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">上海的随塘河不宽，但沿着弓形海岸线横跨两区，从北边的川沙绵延至南边的奉贤。两区交界处，随塘河边，一座现代化的大型工厂正在崛起。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">这座工厂的地面建设刚刚开始动工，它的四面是一排灰黑色墙板筑起的外墙，内部零散地放了几台挖掘机，由于刚下过雨的缘故，一些土地排水与疏散的工作正在进行。项目用地门前，工人们搭建着集装箱屋，偶尔有物流车驶入，为他们配送基础物资。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">人们认为这座还未正式奠基的工厂很有“科技感”，因为那排外墙酷似太阳能板，而不是大多数中国工地上的那种简易粗糙的装置。尽管在工厂旁边（靠近奉贤的一侧），一条因项目施工被封的马路上，铺满了一片片黄澄澄的粮食。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">12月5日，作为全市有史以来投资最大的外资制造业项目，上海市委副书记、市长应勇来到这里调研，也让所有人再次感受了神奇的“中国速度”。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">这座工厂正是特斯拉的超级工厂(Gigafactory 3)。今年10月，特斯拉刚宣布拿地，两个月后，上海市人民政府官网便发出消息称，目前，该项目已基本完成土地平整，即将开工建设，预计明年下半年部分投产。若能实现，特斯拉国产化时间将比规划提早一年左右。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">按照规划，这座超级工厂将集研发、制造、销售等功能于一体，预计在2-3年建设之后，达成50万辆纯电动整车的年产能。12月14日，21世纪经济报道记者从临港管委会相关人士获悉，该项目总投资高达500亿元人民币，第一期投资160亿，初期将先建成组装产线，以最快地实现特斯拉“国产”。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">这座超级工厂身上有诸多标签，一如特斯拉那充满话题性的CEO埃隆·马斯克（Elon Musk）。它是开放新能源汽车外资股比限制后第一家外商独资的汽车工厂，其进展情况很大意义上反映了中国开放市场的程度。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">另外一方面，这座超级工厂也是特斯拉的重要布子。对于特斯拉而言，中国已经是它仅次于美国的第二大市场，而它所有进口到中国的汽车还需要缴纳15%（一度高达40%）的关税，如果该工厂顺利投产，特斯拉便能在中国市场发挥更大的能量。尤其是，中国还给予了新能源汽车产业一揽子支持政策。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>“速成”式超级工厂</strong></p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">今年7月10日，特斯拉宣布在上海建厂，此后人们更为密切地关注着这个项目的一举一动。但特斯拉上海公司，包括它所兴建的这座超级工厂，却一直低调而神秘——</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">许多人前往特斯拉上海公司位于临港的注册地址，却被告知这是另外一家企业，地址只是特斯拉随意写就，最终他们只能失望而返；而临港的出租车司机们，他们显然听说过这项超级工程，也大致知道在靠近奉贤的方位，但就是不清楚超级工厂的具体位置。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">但是，有关特斯拉上海工厂的进展常常见诸媒体平台。最近的消息显示，特斯拉已经启动该项目的招标程序，而且已经有承包商开始采购材料，这证明该工厂即将开建。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">10月17日，特斯拉以1125元每平米的单价获得上海临港的一块国有建设用地，其土地建设状况基本信息显示，特斯拉需要在交地6个月内开工，并在交地后30个月内竣工。理论上，特斯拉上海工厂的开工日期最晚可以到明年4月。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">但临港管委会相关人士也告诉21世纪经济报道记者，“近期的确要开工了。”而根据官方消息，这期产线将在明年下半年“部分投产”。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">在产品类型与产能方面，上海环境热线官网的一份环评公示透露，特斯拉超级工厂一期将率先投产Model 3和Model Y两款车型，目标年产25万辆纯电动整车。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">作为初期项目，特斯拉上海工厂将首先兴建具备部分生产能力的生产线。据了解，这是类似于蔚来南京试装厂的一座CKD(Completely Knock Down)工厂，主要采取全散件组装的生产方式。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">有业内人士向21世纪经济报道记者表示，该模式能让特斯拉以最快的速度落地。“这样的产线一年多就可以搭出来，跟全产线是完全不一样的方式。很多整车厂是不愿意这样建的，因为这是一种‘速成’。但特斯拉建成这个马上就可以用进口的零部件组装。”</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">除此之外，建成产线后，特斯拉还可以根据在华销售情况及中美宏观贸易环境，决定是否追加投资。今年6月，发改委、商务部正式放开新能源汽车的外资股比限制，让特斯拉迎来了在华全资建厂的最好时机。而马斯克采取这种模式，则给特斯拉的后续决策留足了空间。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">某种程度上，这是一种“讨巧”的方式。实际上，建设组装线正是特斯拉优先考虑的形式，此前有媒体报道称，特斯拉早期希望仅在中国建设一座总装厂，核心零部件在美国生产，但仅具备总装功能不符合《新建纯电动乘用车企业管理规定》，特斯拉才最终妥协。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">与此同时，上海市政府也在积极引进新能源汽车产业链上下游的企业落户，以便在未来形成更完善的汽车产业集群，进一步推动特斯拉国产化。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">临港管委会相关人士告诉21世纪经济报道记者，临港集团（此前和临港管委会共同与特斯拉签约的公司）正在协助特斯拉进行“供应链培育”方面的工作。“适合放在临港地区的，都会积极引进。”据了解，上海市政府、浦东新区、临港管委会、临港集团成立了一个工作小组，每周碰头开会，沟通项目进展，并协调问题。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">“临港也希望通过特斯拉吸引更多的供应商过去，把那块地填满。实际上临港对特斯拉而言并不是最好的选择，它离市中心太远，周围配套产业也相对欠缺，所以它希望建立配套的产业园区。”上述业内人士也表示。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">客观而言，临港已经具备了不错的汽车产业基础：2007年上汽集团乘用车项目入驻，目前已经形成了乘用车整车、发动机、精密零部件、能源系统等的生产制造及后续物流配送、配套服务的完整产业链，此外，一批上下游产业配套企业，如诺信汽车零部件等也纷纷落户。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">特斯拉落户临港后，与之毗邻的奉贤也在积极打造若干个新能源汽车配套产业园，以成为新能源汽车产业辐射区。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>供应链与资金挑战</strong></p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">虽然特斯拉工厂正在快马加鞭，但是对于此刻的特斯拉而言，培育国内的供应链体系并非易事。“生产层面特斯拉基本不会有什么问题，关键是面临供应链和市场的挑战。”12月16日，汽车行业分析师钟师对21世纪经济报道记者表示。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">钟师表示，一直依赖美国供应商的跨洋运输并不现实，长期来看，特斯拉要实现规模化生产，还是需要培育在中国的供应链体系，但这并不容易。“特斯拉是一个全新的产品品种，与原来整车厂的产品完全不一样。在物色供应商以及零部件的研发生产方面，特斯拉将会耗费大量的时间和精力。”</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">这有可能让特斯拉再次陷入“量产地狱”。长期以来，产能不足、无法达到预期产量的问题一直困扰着特斯拉。在发布Model 3这款大众车型初期，马斯克定下的目标是每周生产5000辆，但在长达一年的时间里，它的生产进度远远落后于计划。直到今年6月的最后一周，特斯拉终于生产了5031辆Model 3，周产能达标。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">这一年中，特斯拉遇到了电池制造、零件制造、装配线开发等一系列的问题，在中国建厂后，这些问题可能再次重演。在第一期工厂中，规划的产能高达每周4800辆，长期而言，特斯拉在中国工厂的年产能将高达50万，即每周9600辆。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">在规划产能如此规模的情况下，工厂建设投资也是一笔不小的数目。根据项目规划，第一期项目投资额约160亿元人民币，项目总投资则高达500亿元人民币。而特斯拉本身的现金流并不充裕。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">过去的14年中，特斯拉一直未能实现年度盈利。自2010年上市以来，仅在2013年第一季度、2016年第三季度和2018年第三季度实现了盈利。而在中国建设工厂之外，特斯拉在美国本土的扩张并未停滞，这将为特斯拉带来巨大的财务压力。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">近日，马斯克在接受美国媒体采访时表示，特斯拉正在考虑收购通用汽车旗下闲置的汽车生产工厂。在此情况下，特斯拉还有足够的资金来投建上海的超级工厂吗？</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">上述业内人士告诉21世纪经济报道记者，特斯拉建厂所需的大部分资金将会通过发债的方式进行募集。作为外资企业先进产能的典型代表，特斯拉又是国内放开外资股比限制后“第一个吃螃蟹的人”，在土地、税收、融资方面都会享受“公平且优厚”的待遇。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">“特斯拉是一面旗帜，上海作为科创中心，引入像特斯拉这样的企业毋庸置疑，它是新能源车的典范，说实话如果没有特斯拉，现在国内的新势力造车也很难让人信服。”上述人士表示，特斯拉项目的特殊意义在于，它既是业内顶尖的企业，而且也是汽车行业对外开放的标杆。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">业内普遍认为，落户临港后，在政策层面，特斯拉将“一路绿灯”。目前，新能源车企及车型的资质审批准入门槛越来越高，2016年至今，仅有15家车企获批发改委的生产资质，其中仅10家通过了工信部的产品准入，但在业内人士看来，这对特斯拉而言不是问题。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>鹿死谁手？</strong></p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">国内众多造车新势力都将特斯拉视作竞争对手，特斯拉在中国实现量产后，是否会对国内的新能源汽车产业造成很大影响？业内观点喜忧参半。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">汽车行业分析师、全联车商投资管理（北京）有限公司总裁曹鹤对21世纪经济报道记者表示，特斯拉国产化后，国内的新能源车企将不得不进行“差异化”竞争，三年之后，造车新势力会经历真正的“洗牌”，最终只剩下一两家。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">而钟师则表示，特斯拉入华不会对行业造成很大影响，相比而言，特斯拉整体定位偏高端，与大多数国内造车新势力的车型不在一个细分市场，而在两三年规模化生产后，特斯拉同样会面临传统车企的激烈竞争。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">在蔚来资本管理合伙人张君毅看来，特斯拉来到中国后，会成为行业“鲶鱼”，倒逼造车新势力们更好地适应市场环境。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">事实上，对外开放对当前的新能源汽车而言并非不可承受。有业内分析称，与30年前外资品牌入华时中国汽车工业毫无优势相比，中国新能源汽车在近几年的发展中，已经积累了不少技术、人才等储备，所以国内的造车企业是具备一定的竞争能力的。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">从时间上看，国内造车新势力仍有发力机会。按照规划，特斯拉达成规模化生产将在2-3年后。明年起国内将有众多新能源车上市，特斯拉两年后出车，先发优势已经不复存在，Model 3上市后，可能国内市场类似的产品已经出了不少，本土品牌在性价比等方面仍具有独特优势，所以特斯拉面临的不确定因素很多。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">与特斯拉相比，新势力造车主要的挑战或是资金问题。“新造车企业是有压力，如果没有前几年的热钱，不会产生这么多企业，但问题是，大家要造车的时候，钱又紧张了。”张君毅指出，“造车企业在起步的5-10年都需要持续的融资和发展能力。”</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">实际上，特斯拉国产之后，更大意义上的冲击在于对外开放对整个产业带来的挑战，特别是国有汽车集团产生更大影响。多年来，一汽、上汽、东风等汽车集团，纷纷凭借合资公司带来的巨额利润，但随着外资股比放开，宝马控股华晨宝马、特斯拉独资，外资车企将在中国市场享有更高的话语权，中方在这部分的业务需要提升自主盈利能力。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">当然，特斯拉最终能否按计划顺利进入中国市场，也需要时间考验，两三年后的中国新能源汽车市场，“鹿死谁手”还很难说。“特斯拉在美国很成功，但在中国市场不是那么成功，因为他没有那么了解中国市场，特斯拉的竞争对手，其实不光现在这些造车新势力，传统豪华汽车企业，例如奔驰宝马奥迪，也不会示弱，他们到2021、2022年也会上市更为成熟的新能源车型。” 张君毅表示。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">“特斯拉的成功在于创造了新品类，这个品类是跟豪华车拼性价比、拼更好的服务体验的。”张君毅指出，但真正从品质角度考量，特斯拉也尚未做到尽善尽美，更为关键的是，传统车企在中国市场的耕耘时间更长，对中国市场的理解显然更加深刻。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">实际上，对于中国车企而言，无论是造车新势力还是传统车企，不需要把特斯拉作为目标，而是应该深耕汽车产业，找准自身定位，在充分开放的市场环境中参与竞争。（编辑：何芳）</p><p><br/></p>', '本报记者 彭苏平 上海报道上海的随塘河不宽，但沿着弓形海岸线横跨两区，从北边的川沙绵延至南边的奉贤。两区交界处，随塘河边，一座现代化的大型工厂正在崛起。这座工厂的地面建设刚刚开始动工，它的四面是一排灰黑色墙板筑起的外墙，内部零散地放了几台挖掘机，由于刚下过雨的缘故，一些土地排水与疏散的工作正在进行。项目用地门前，工人们搭建着集装箱屋，偶尔有物流车驶入，为他们配送基础物资。人们认为这座还未正式奠基的工厂很有“科技感”，因为那排外墙酷似太阳能板，而不是大多数中国工地上的那种简易粗糙的装置。尽管在工厂旁边（靠近奉贤的一侧），一条因项目施工被封的马路上，铺满了一片片黄澄澄的粮食。12月5日，作为全市有史以来投资最大的外资制造业项目，上海市委副书记、市长应勇来到这里调研，也让所有人再次感受了神奇的“中国速度”。这座工厂正是特斯拉的超级工厂(Gigafactory 3)。今年10月，特斯拉刚宣布拿地，两个月后，上海市人民政府官网便发出消息称，目前，该项目已基本完成土地平整，即将开工建设，预计明年下半年部分投产。若能实现，特斯拉国产化时间将比规划提早一年左右。按照规划，这座超级工厂将集研发、制造、销售等功能于一体，预计在2-3年建设之后，达成50万辆纯电动整车的年产能。12月14日，21世纪经济报道记者从临港管委会相关人士获悉，该项目总投资高达500亿元人民币，第一期投资160亿，初期将先建成组装产线，以最快地实现特斯拉“国产”。这座超级工厂身上有诸多标签，一如特斯拉那充满话题性的CEO埃隆·马斯克（Elon Musk）。它是开放新能源汽车外资股比限制后第一家外商独资的汽车工厂，其进展情况很大意义上反映了中国开放市场的程度。另外一方面，这座超级工厂也是特斯拉的重要布子。对于特斯拉而言，中国已经是它仅次于美国的第二大市场，而它所有进口到中国的汽车还需要缴纳15%（一度高达40%）的关税，如果该工厂顺利投产，特斯拉便能在中国市场发挥更大的能量。尤其是，中国还给予了新能源汽车产业一揽子支持政策。“速成”式超级工厂今年7月10日，特斯拉宣布在上海建厂，此后人们更为密切地关注着这个项目的一举一动。但特斯拉上海公司，包括它所兴建的这座超级工厂，却一直低调而神秘——许多人前往特斯拉上海公司位于临港的注册地址，却被告知这是另外一家企业，地址只是特斯拉随意写就，最终他们只能失望而返；而临港的出租车司机们，他们显然听说过这项超级工程，也大致知道在靠近奉贤的方位，但就是不清楚超级工厂的具体位置。但是，有关特斯拉上海工厂的进展常常见诸媒体平台。最近的消息显示，特斯拉已经启动该项目的招标程序，而且已经有承包商开始采购材料，这证明该工厂即将开建。10月17日，特斯拉以1125元每平米的单价获得上海临港的一块国有建设用地，其土地建设状况基本信息显示，特斯拉需要在交地6个月内开工，并在交地后30个月内竣工。理论上，特斯拉上海工厂的开工日期最晚可以到明年4月。但临港管委会相关人士也告诉21世纪经济报道记者，“近期的确要开工了。”而根据官方消息，这期产线将在明年下半年“部分投产”。在产品类型与产能方面，上海环境热线官网的一份环评公示透露，特斯拉超级工厂一期将率先投产Model 3和Model Y两款车型，目标年产25万辆纯电动整车。作为初期项目，特斯拉上海工厂将首先兴建具备部分生产能力的生产线。据了解，这是类似于蔚来南京试装厂的一座CKD(Completely Knock Down)工厂，主要采取全散件组装的生产方式。有业内人士向21世纪经济报道记者表示，该模式能让特斯拉以最快的速度落地。“这样的产线一年多就可以搭出来，跟全产线是完全不一样的方式。很多整车厂是不愿意这样建的，因为这是一种‘速成’。但特斯拉建成这个马上就可以用进口的零部件组装。”除此之外，建成产线后，特斯拉还可以根据在华销售情况及中美宏观贸易环境，决定是否追加投资。今年6月，发改委、商务部正式放开新能源汽车的外资股比限制，让特斯拉迎来了在华全资建厂的最好时机。而马斯克采取这种模式，则给特斯拉的后续决策留足了空间。某种程度上，这是一种“讨巧”的方式。实际上，建设组装线正是特斯拉优先考虑的形式，此前有媒体报道称，特斯拉早期希望仅在中国建设一座总装厂，核心零部件在美国生产，但仅具备总装功能不符合《新建纯电动乘用车企业管理规定》，特斯拉才最终妥协。与此同时，上海市政府也在积极引进新能源汽车产业链上下游的企业落户，以便在未来形成更完善的汽车产业集群，进一步推动特斯拉国产化。临港管委会相关人士告诉21世纪经济报道记者，临港集团（此前和临港管委会共同与特斯拉签约的公司）正在协助特斯拉进行“供应链培育”方面的工作。“适合放在临港地区的，都会积极引进。”据了解，上海市政府、浦东新区、临港管委会、临港集团成立了一个工作小组，每周碰头开会，沟通项目进展，并协调问题。“临港也希望通过特斯拉吸引更多的供应商过去，把那块地填满。实际上临港对特斯拉而言并不是最好的选择，它离市中心太远，周围配套产业也相对欠缺，所以它希望建立配套的产业园区。”上述业内人士也表示。客观而言，临港已经具备了不错的汽车产业基础：2007年上汽集团乘用车项目入驻，目前已经形成了乘用车整车、发动机、精密零部件、能源系统等的生产制造及后续物流配送、配套服务的完整产业链，此外，一批上下游产业配套企业，如诺信汽车零部件等也纷纷落户。特斯拉落户临港后，与之毗邻的奉贤也在积极打造若干个新能源汽车配套产业园，以成为新能源汽车产业辐射区。供应链与资金挑战虽然特斯拉工厂正在快马加鞭，但是对于此刻的特斯拉而言，培育国内的供应链体系并非易事。“生产层面特斯拉基本不会有什么问题，关键是面临供应链和市场的挑战。”12月16日，汽车行业分析师钟师对21世纪经济报道记者表示。钟师表示，一直依赖美国供应商的跨洋运输并不现实，长期来看，特斯拉要实现规模化生产，还是需要培育在中国的供应链体系，但这并不容易。“特斯拉是一个全新的产品品种，与原来整车厂的产品完全不一样。在物色供应商以及零部件的研发生产方面，特斯拉将会耗费大量的时间和精力。”这有可能让特斯拉再次陷入“量产地狱”。长期以来，产能不足、无法达到预期产量的问题一直困扰着特斯拉。在发布Model 3这款大众车型初期，马斯克定下的目标是每周生产5000辆，但在长达一年的时间里，它的生产进度远远落后于计划。直到今年6月的最后一周，特斯拉终于生产了5031辆Model 3，周产能达标。这一年中，特斯拉遇到了电池制造、零件制造、装配线开发等一系列的问题，在中国建厂后，这些问题可能再次重演。在第一期工厂中，规划的产能高达每周4800辆，长期而言，特斯拉在中国工厂的年产能将高达50万，即每周9600辆。在规划产能如此规模的情况下，工厂建设投资也是一笔不小的数目。根据项目规划，第一期项目投资额约160亿元人民币，项目总投资则高达500亿元人民币。而特斯拉本身的现金流并不充裕。过去的14年中，特斯拉一直未能实现年度盈利。自2010年上市以来，仅在2013年第一季度、2016年第三季度和2018年第三季度实现了盈利。而在中国建设工厂之外，特斯拉在美国本土的扩张并未停滞，这将为特斯拉带来巨大的财务压力。近日，马斯克在接受美国媒体采访时表示，特斯拉正在考虑收购通用汽车旗下闲置的汽车生产工厂。在此情况下，特斯拉还有足够的资金来投建上海的超级工厂吗？上述业内人士告诉21世纪经济报道记者，特斯拉建厂所需的大部分资金将会通过发债的方式进行募集。作为外资企业先进产能的典型代表，特斯拉又是国内放开外资股比限制后“第一个吃螃蟹的人”，在土地、税收、融资方面都会享受“公平且优厚”的待遇。“特斯拉是一面旗帜，上海作为科创中心，引入像特斯拉这样的企业毋庸置疑，它是新能源车的典范，说实话如果没有特斯拉，现在国内的新势力造车也很难让人信服。”上述人士表示，特斯拉项目的特殊意义在于，它既是业内顶尖的企业，而且也是汽车行业对外开放的标杆。业内普遍认为，落户临港后，在政策层面，特斯拉将“一路绿灯”。目前，新能源车企及车型的资质审批准入门槛越来越高，2016年至今，仅有15家车企获批发改委的生产资质，其中仅10家通过了工信部的产品准入，但在业内人士看来，这对特斯拉而言不是问题。鹿死谁手？国内众多造车新势力都将特斯拉视作竞争对手，特斯拉在中国实现量产后，是否会对国内的新能源汽车产业造成很大影响？业内观点喜忧参半。汽车行业分析师、全联车商投资管理（北京）有限公司总裁曹鹤对21世纪经济报道记者表示，特斯拉国产化后，国内的新能源车企将不得不进行“差异化”竞争，三年之后，造车新势力会经历真正的“洗牌”，最终只剩下一两家。而钟师则表示，特斯拉入华不会对行业造成很大影响，相比而言，特斯拉整体定位偏高端，与大多数国内造车新势力的车型不在一个细分市场，而在两三年规模化生产后，特斯拉同样会面临传统车企的激烈竞争。在蔚来资本管理合伙人张君毅看来，特斯拉来到中国后，会成为行业“鲶鱼”，倒逼造车新势力们更好地适应市场环境。事实上，对外开放对当前的新能源汽车而言并非不可承受。有业内分析称，与30年前外资品牌入华时中国汽车工业毫无优势相比，中国新能源汽车在近几年的发展中，已经积累了不少技术、人才等储备，所以国内的造车企业是具备一定的竞争能力的。从时间上看，国内造车新势力仍有发力机会。按照规划，特斯拉达成规模化生产将在2-3年后。明年起国内将有众多新能源车上市，特斯拉两年后出车，先发优势已经不复存在，Model 3上市后，可能国内市场类似的产品已经出了不少，本土品牌在性价比等方面仍具有独特优势，所以特斯拉面临的不确定因素很多。与特斯拉相比，新势力造车主要的挑战或是资金问题。“新造车企业是有压力，如果没有前几年的热钱，不会产生这么多企业，但问题是，大家要造车的时候，钱又紧张了。”张君毅指出，“造车企业在起步的5-10年都需要持续的融资和发展能力。”实际上，特斯拉国产之后，更大意义上的冲击在于对外开放对整个产业带来的挑战，特别是国有汽车集团产生更大影响。多年来，一汽、上汽、东风等汽车集团，纷纷凭借合资公司带来的巨额利润，但随着外资股比放开，宝马控股华晨宝马、特斯拉独资，外资车企将在中国市场享有更高的话语权，中方在这部分的业务需要提升自主盈利能力。当然，特斯拉最终能否按计划顺利进入中国市场，也需要时间考验，两三年后的中国新能源汽车市场，“鹿死谁手”还很难说。“特斯拉在美国很成功，但在中国市场不是那么成功，因为他没有那么了解中国市场，特斯拉的竞争对手，其实不光现在这些造车新势力，传统豪华汽车企业，例如奔驰宝马奥迪，也不会示弱，他们到2021、2022年也会上市更为成熟的新能源车型。” 张君毅表示。“特斯拉的成功在于创造了新品类，这个品类是跟豪华车拼性价比、拼更好的服务体验的。”张君毅指出，但真正从品质角度考量，特斯拉也尚未做到尽善尽美，更为关键的是，传统车企在中国市场的耕耘时间更长，对中国市场的理解显然更加深刻。实际上，对于中国车企而言，无论是造车新势力还是传统车企，不需要把特斯拉作为目标，而是应该深耕汽车产业，找准自身定位，在充分开放的市场环境中参与竞争。（编辑：何芳）', '2018-12-18 22:04:08', '2', '2', '1', '', null, null, '1', null);
INSERT INTO `jbbs_tiezi` VALUES ('4', '中国万吨级驱逐舰055又海试啦！', '<p class=\"otitle\" style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">（原标题：055驱逐舰又海试啦！）</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">【观察者网综合报道】12月18日，据超级大本营网友@维京佣兵拍摄到的图片显示，我国首艘国产055型万吨驱逐舰又开始试航了。</p><p class=\"f_center\" style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://cms-bucket.nosdn.127.net/2018/12/18/2e2a7057128f44bf9079c97b7597a4ec.jpg\" title=\"点击查看大图\" class=\"bigimg\" width=\"530\"/></p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\">沐浴在东海的夕阳下 图源：@维京佣兵</p><p class=\"f_center\" style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://cms-bucket.nosdn.127.net/2018/12/18/66a041511dcb48a687d019c9709287c7.png\" title=\"点击查看大图\" class=\"bigimg\" width=\"530\"/></p><p class=\"f_center\" style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://cms-bucket.nosdn.127.net/2018/12/18/b8c73fbf87854a1b94eafc497523810f.png\" title=\"点击查看大图\" class=\"bigimg\" width=\"530\"/></p><p class=\"f_center\" style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://cms-bucket.nosdn.127.net/2018/12/18/0aa3ba58f8c44211aae6e2835248f39d.png\" title=\"点击查看大图\" class=\"bigimg\" width=\"530\"/></p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">目前尚不清楚这次海试，是055型驱逐舰首舰第几次试航，该舰是在8月24日进行首次试航的。</p><p style=\"margin-top: 32px; margin-bottom: 0px; padding: 0px; font-size: 18px; text-indent: 2em; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 32px; font-family: &quot;Microsoft Yahei&quot;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">055是我军新一代大型驱逐舰，排水量超过一万吨，采用全燃动力、新型相控阵雷达、综合射频系统，配备112单元通用垂直发射系统。 此前该舰1号舰和2号舰已经在江南造船厂下水，3号舰4号舰则在大连造船厂下水。</p><p><br/></p>', '（原标题：055驱逐舰又海试啦！）【观察者网综合报道】12月18日，据超级大本营网友@维京佣兵拍摄到的图片显示，我国首艘国产055型万吨驱逐舰又开始试航了。沐浴在东海的夕阳下 图源：@维京佣兵目前尚不清楚这次海试，是055型驱逐舰首舰第几次试航，该舰是在8月24日进行首次试航的。055是我军新一代大型驱逐舰，排水量超过一万吨，采用全燃动力、新型相控阵雷达、综合射频系统，配备112单元通用垂直发射系统。 此前该舰1号舰和2号舰已经在江南造船厂下水，3号舰4号舰则在大连造船厂下水。', '2018-12-18 22:04:49', '2', '2', '1', '', null, null, '2', null);
INSERT INTO `jbbs_tiezi` VALUES ('5', '测试人生达到了巅峰', '<p>测试人生达到了巅峰测试人生达到了巅峰</p><p>测试人生达到了巅峰</p><p>测试人生达到了巅峰</p><p>测试人生达到了巅峰</p><p>测试人生达到了巅峰</p><p>测试人生达到了巅峰</p>', '测试人生达到了巅峰测试人生达到了巅峰测试人生达到了巅峰测试人生达到了巅峰测试人生达到了巅峰测试人生达到了巅峰测试人生达到了巅峰', '2018-12-18 23:20:38', '2', '2', '1', '您的帖子在2018-12-18 23:20:56被test01编辑<br/>', null, null, '4', null);

-- ----------------------------
-- Table structure for `jbbs_user`
-- ----------------------------
DROP TABLE IF EXISTS `jbbs_user`;
CREATE TABLE `jbbs_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `loginname` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `qianming` varchar(2000) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `lastlogintime` varchar(255) DEFAULT NULL,
  `zhuceip` varchar(255) DEFAULT NULL,
  `loginip` varchar(255) DEFAULT NULL,
  `flag` varchar(2) DEFAULT NULL,
  `jifen` int(11) DEFAULT NULL,
  `onlinetime` int(11) DEFAULT '0',
  `cookieid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jbbs_user
-- ----------------------------
INSERT INTO `jbbs_user` VALUES ('1', '超级管理员', 'admin', '4QrcOUm6Wau+VuBX8g+IPg==', '20190419/2019041912571515572736.JPG', 'javaeecc@qq.com', '2017-05-12', '0', '13911111111', '签名', '2017-05-06 22:25:35', '2019-04-23 09:11:56', '737a87b275c7477b8cebaa90b3f1d08a', '61.150.96.101', '1', '6', '26550', '614e9aaf68a349d3b24b5d6dc5d96323');
INSERT INTO `jbbs_user` VALUES ('2', null, 'test01', '4QrcOUm6Wau+VuBX8g+IPg==', 'touxiang.jpg', 'test01@qq.com', null, null, null, null, '2018-12-18 18:41:56', '2018-12-18 23:19:52', '192.168.137.1', '192.168.137.1', '1', '12', '1650', 'b0fb35770dd84660a69ad493887e4401');

-- ----------------------------
-- Table structure for `jbbs_user_liuyan`
-- ----------------------------
DROP TABLE IF EXISTS `jbbs_user_liuyan`;
CREATE TABLE `jbbs_user_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contenthtml` longtext,
  `liuyanuserid` int(11) DEFAULT NULL,
  `createuserid` int(11) DEFAULT NULL,
  `createtime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jbbs_user_liuyan
-- ----------------------------

-- ----------------------------
-- Table structure for `jbbs_zhuti`
-- ----------------------------
DROP TABLE IF EXISTS `jbbs_zhuti`;
CREATE TABLE `jbbs_zhuti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `bankuai_id` int(11) DEFAULT NULL,
  `orderby` int(11) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jbbs_zhuti
-- ----------------------------
INSERT INTO `jbbs_zhuti` VALUES ('1', '测试主题', '2', '1', '2017-07-26 13:50:27');

-- ----------------------------
-- View structure for `jbbs_jifen_group_user`
-- ----------------------------
DROP VIEW IF EXISTS `jbbs_jifen_group_user`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `jbbs_jifen_group_user` AS select (select `tt2`.`id` from `jbbs_jifen_group` `tt2` where (`tt2`.`jifen` <= `t1`.`jifen`) order by `tt2`.`jifen` desc limit 0,1) AS `jifen_groupid`,`t1`.`id` AS `userid` from `jbbs_user` `t1` ;
