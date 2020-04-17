/*
Navicat MySQL Data Transfer

Source Server         : 苏大鑫
Source Server Version : 50720
Source Host           : 127.0.0.1:3306
Source Database       : classnet

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2020-04-17 13:42:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answer_table
-- ----------------------------
DROP TABLE IF EXISTS `answer_table`;
CREATE TABLE `answer_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `status` int(11) DEFAULT NULL,
  `pubtime` datetime DEFAULT NULL,
  `topicId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC06B980D29D8874D` (`topicId`),
  KEY `FKC06B980D2A868CC3` (`userId`),
  CONSTRAINT `answer_table_ibfk_1` FOREIGN KEY (`topicId`) REFERENCES `topic_table` (`id`),
  CONSTRAINT `answer_table_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user_table` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer_table
-- ----------------------------
INSERT INTO `answer_table` VALUES ('2', '&nbsp;是的', '1', '2013-04-27 18:51:53', '2', '3');

-- ----------------------------
-- Table structure for clazz_menu
-- ----------------------------
DROP TABLE IF EXISTS `clazz_menu`;
CREATE TABLE `clazz_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6CECDAE69F57DC30` (`parentId`),
  CONSTRAINT `clazz_menu_ibfk_1` FOREIGN KEY (`parentId`) REFERENCES `clazz_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clazz_menu
-- ----------------------------
INSERT INTO `clazz_menu` VALUES ('1', '网页基础', null);
INSERT INTO `clazz_menu` VALUES ('4', 'html', '1');
INSERT INTO `clazz_menu` VALUES ('7', 'css', '1');
INSERT INTO `clazz_menu` VALUES ('8', 'javascript', '1');
INSERT INTO `clazz_menu` VALUES ('9', 'Java基础', null);
INSERT INTO `clazz_menu` VALUES ('10', 'java语法', '9');
INSERT INTO `clazz_menu` VALUES ('11', 'java面向对象', '9');

-- ----------------------------
-- Table structure for clazz_table
-- ----------------------------
DROP TABLE IF EXISTS `clazz_table`;
CREATE TABLE `clazz_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `filename` varchar(40) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `author` varchar(10) DEFAULT NULL,
  `pubtime` datetime DEFAULT NULL,
  `img` varchar(40) DEFAULT NULL,
  `flashFilename` varchar(40) DEFAULT NULL,
  `school` varchar(50) DEFAULT NULL,
  `viewcount` int(11) DEFAULT NULL,
  `filetype` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK310F2727190F8FA5` (`menuId`),
  KEY `FK310F27278CA3DC9E` (`filetype`),
  CONSTRAINT `clazz_table_ibfk_1` FOREIGN KEY (`menuId`) REFERENCES `clazz_menu` (`id`),
  CONSTRAINT `clazz_table_ibfk_2` FOREIGN KEY (`filetype`) REFERENCES `file_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clazz_table
-- ----------------------------
INSERT INTO `clazz_table` VALUES ('5', 'html初级教程', '201304271834049284.txt', '1', 'admin', '2013-04-27 18:34:04', '201304271836472989.jpg', '201304271834051459.swf', '哈哈', '0', '1', '4');
INSERT INTO `clazz_table` VALUES ('6', 'css中级', '201304271839100285.txt', '1', 'admin', '2013-04-27 18:39:09', '201304271839098787.jpg', '201304271839101767.swf', 'aa', '0', '2', '7');
INSERT INTO `clazz_table` VALUES ('7', 'java高级语法', '201304271840013347.txt', '1', 'admin', '2013-04-27 18:40:01', '201304271840012126.jpg', '201304271840014700.swf', 'aa', '0', '3', '10');

-- ----------------------------
-- Table structure for file_type
-- ----------------------------
DROP TABLE IF EXISTS `file_type`;
CREATE TABLE `file_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file_type
-- ----------------------------
INSERT INTO `file_type` VALUES ('1', '初级类');
INSERT INTO `file_type` VALUES ('2', '中级类');
INSERT INTO `file_type` VALUES ('3', '高级类');

-- ----------------------------
-- Table structure for homework_title
-- ----------------------------
DROP TABLE IF EXISTS `homework_title`;
CREATE TABLE `homework_title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pubtime` datetime DEFAULT NULL,
  `description` text,
  `title` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of homework_title
-- ----------------------------
INSERT INTO `homework_title` VALUES ('1', '2013-04-26 14:22:49', '完成数组int[] a = {100,40, 60, 87, 34, 11, 56, 0}的快速排序、冒泡排序；', '实现快速排序、冒泡排序；');
INSERT INTO `homework_title` VALUES ('2', '2013-04-26 14:24:15', '将一个数组中值=0的项去掉,将不为0的值存入一个新的数组,比如:<br />\r\nint a[]={1,3,4,5,0,0,6,6,0,5,4,7,6,7,0,5};<br />\r\n生成的新数组为:<br />\r\nint b[]={1,3,4,5,6,6,5,4,7,6,7,5}<br />', '将一个数组中值=0的项去掉,将不为0的值存入一个新的数组');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `source` varchar(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(10) DEFAULT NULL,
  `pubtime` datetime DEFAULT NULL,
  `viewnum` int(11) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  `menuId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK338AD3817C679E` (`menuId`),
  CONSTRAINT `news_ibfk_1` FOREIGN KEY (`menuId`) REFERENCES `news_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('10', '&nbsp;此新闻纯属虚构。', '校园网', '4', '大一美女新生报道', 'admin', '2013-04-27 17:33:39', '0', '201304271733396452.jpg', '3');
INSERT INTO `news` VALUES ('12', '&nbsp;这个校园动态新闻1，你懂的。', '哈哈', '1', '这个校园动态新闻1，你懂的。', 'admin', '2013-04-27 17:35:24', '0', null, '3');
INSERT INTO `news` VALUES ('13', '&nbsp;这个校园动态新闻1，你懂的。', '哈哈', '2', '这个校园动态新闻2，你懂的。', 'admin', '2013-04-27 17:35:42', '0', null, '3');
INSERT INTO `news` VALUES ('14', '&nbsp;这个校园动态新闻1，你懂的。', '哈哈', '1', '这个校园动态新闻1，你懂的。', 'admin', '2013-04-27 17:36:34', '0', null, '3');
INSERT INTO `news` VALUES ('15', '&nbsp;这个校园风采新闻1，你懂的。', '哈哈', '1', '这个校园风采新闻1，你懂的。', 'admin', '2013-04-27 17:37:10', '0', null, '4');
INSERT INTO `news` VALUES ('16', '&nbsp;这个校园风采新闻1，你懂的。', '哈哈', '2', '这个校园风采新闻2，你懂的。', 'admin', '2013-04-27 17:37:19', '0', null, '4');
INSERT INTO `news` VALUES ('17', '&nbsp;这个校园风采新闻1，你懂的。', '哈哈', '2', '这个校园风采新闻2，你懂的。', 'admin', '2013-04-27 17:37:19', '0', null, '4');
INSERT INTO `news` VALUES ('18', '&nbsp;这个校园风采新闻1，你懂的。', '哈哈', '2', '这个校园风采新闻1，你懂的。', 'admin', '2013-04-27 17:37:27', '0', null, '4');

-- ----------------------------
-- Table structure for news_menu
-- ----------------------------
DROP TABLE IF EXISTS `news_menu`;
CREATE TABLE `news_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_menu
-- ----------------------------
INSERT INTO `news_menu` VALUES ('3', '校园动态');
INSERT INTO `news_menu` VALUES ('4', '校园风采');

-- ----------------------------
-- Table structure for source_menu
-- ----------------------------
DROP TABLE IF EXISTS `source_menu`;
CREATE TABLE `source_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of source_menu
-- ----------------------------
INSERT INTO `source_menu` VALUES ('3', 'java资源');
INSERT INTO `source_menu` VALUES ('4', '网页基础资源');

-- ----------------------------
-- Table structure for source_table
-- ----------------------------
DROP TABLE IF EXISTS `source_table`;
CREATE TABLE `source_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `pubtime` datetime DEFAULT NULL,
  `fileSize` varchar(20) NOT NULL,
  `menuId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK639746AADCD8A326` (`menuId`),
  CONSTRAINT `source_table_ibfk_1` FOREIGN KEY (`menuId`) REFERENCES `source_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of source_table
-- ----------------------------
INSERT INTO `source_table` VALUES ('2', 'java编程思想', '201304271844560452.txt', '2013-04-27 18:44:56', '10', '3');
INSERT INTO `source_table` VALUES ('3', 'css基础', '201304271845128702.txt', '2013-04-27 18:45:12', '10', '4');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL COMMENT '名字',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `DateOfBirth` date DEFAULT NULL COMMENT '出生年月',
  `position` varchar(25) DEFAULT NULL COMMENT '职称/学位',
  `specialty` varchar(25) DEFAULT NULL COMMENT '学科/专业',
  `work` varchar(255) DEFAULT NULL COMMENT '在教学中承担的工作',
  `introduce` varchar(1000) DEFAULT NULL COMMENT '教师简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '许录平', '男', '1961-11-01', '教授/博士', ' 信号与信息处理', '课程总负责 ', '许录平 教授，博士，博士生导师。西安电子科技大学学科带头人，电子工程学院探测制导与控制系主任，中国通信学会通信理论与信号处理委员会委员，中国电子学会高级会员，陕西省信息及网络安全保密专家顾问小组成员。 1987年在西安电子科技大学电路、信号与系统专业获硕士学位，同年留校任教。1997年3月获工学博士学位。 从 1987年留校至今，一直从事计算机应用及信号与信息处理方面的教学及科研工作，负责“系统工程”和“导航、制导与控制”学科点的规划与建设工作。 教学方面，获得省级教学成 果二等奖一项，校级教学成果一、二等奖各一项。负责的“数字图象处理”课程获得了 2005年学校精品课程 。 负责的“微机原理与系统设计”课程获得了 2003年学校首批精品课程 ， 2004年省级 精品课程。 作为 负责人，制定了“探测制导与控制技术”本科专业的教学计划、课程设置和长远规划。 主编教材2本 。 主持了国家自然科学基金、国防预研、国防基金、工程应用等几十项科研项目，其中在雷达探测与目标跟踪、指挥控制与操控显示等方面处于国际先进和国内领先地位，与国内相关厂、所和公司建立了良好的协作关系，并形成了较高的声誉。发表教学研究论文十余篇，学术论文四十余篇，其中进入三大检索二十余篇。目前的研究方向有：自适应信号检测与录取、目标探测跟踪与智能控制、计算机网络应用与安全、基于网络的信息系统设计、智能信息处理与图象分析、指挥控制与操控显示等。');
INSERT INTO `teacher` VALUES ('2', '李洁', '女', '1972-12-01', '副教授/博士', ' 信号与信息处理', '理论与实践教学 ', '李洁 副教授，博士，承担《线性代数》、《数字图像处理》和《 Matlab程序设计语言》等课程的主讲。参加国家自然科学基金重点项目一项、国家自然科学基金项目一项、陕西省留学归国基金一项、北京大学国家重点实验室基金一项、陕西省自然科学基金项目一项、“九五”国防预研项目一项，2002年完成的“九五”国防预研项目荣获西安电子科技大学科技成果一等奖。1999年在电子工程学院组织的青年教师讲课竞赛中荣获二等奖，2005年荣获一等奖，在学校组织的第四届青年教师讲课竞赛中荣获三等奖，第五届青年教师讲课竞赛中获优胜奖。已在国内外核心期刊和国际会议上发表论文34篇，其中SCI 检索5篇，EI检索16篇，ISTP检索14篇。年终考核为优。');
INSERT INTO `teacher` VALUES ('3', '梁继民', '男', '1971-07-01', '教授 /博士', '电路与系统', '  双语课主讲 ', '梁继民 教授，博士。目前承担本科“数字图象处理（双语）”课主讲和研究生“数字视频处理与分析（双语）”课的主讲工作，曾主讲“数字信号处理”、“自动控制技术”、“控制系统 CAD”、“计算机网络实验”等课程。先后获得省级教学成果二等奖（2001）、校教学成果一等奖（2001）、校新实验开发一等奖（2003）各一次，2002年获校“十佳青年教师”称号。目前主持国家自然科学基金、军事装备预研基金、陕西省科技攻关、教育部留学回国科研基金项目各一项，主持完成陕西省自然科学基金项目两项，参加完成国家自然科学基金、国防预研基金和横向研究课题多项，获校科研成果二等奖两项。发表科研论文30余篇，其中SCI检索1篇，EI检索9篇，ISTP检索5篇。年终考核为合格。');
INSERT INTO `teacher` VALUES ('4', '杨兵', '男', '1969-02-01', '副教授/博士', '信号与信息处理', '理论与实践教学', '杨兵 副教授，博士。目前承担本科“数字图象处理”和“线性代数”等课的主讲工作，完成或参加国家自然科学基金、国防预研、军事装备预研基金等项目，发表科研论文 10余篇。年终考核为合格。 ');
INSERT INTO `teacher` VALUES ('5', '孙景荣', '女', '1975-10-01', '讲师 /硕士', '信号与信息处理', '理论教学及 CAI课件研制 ', '孙景荣  讲师，硕士。承担“数字图象处理”和“ C语言程序设计”的教学工作，参加了国家自然科学基金和横向协作项目3项，发表论文3篇。年终考核为合格。');

-- ----------------------------
-- Table structure for topic_menu
-- ----------------------------
DROP TABLE IF EXISTS `topic_menu`;
CREATE TABLE `topic_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic_menu
-- ----------------------------
INSERT INTO `topic_menu` VALUES ('1', '学习交流');
INSERT INTO `topic_menu` VALUES ('2', '灌水专区');

-- ----------------------------
-- Table structure for topic_table
-- ----------------------------
DROP TABLE IF EXISTS `topic_table`;
CREATE TABLE `topic_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `pubtime` datetime DEFAULT NULL,
  `detail` text NOT NULL,
  `replynum` int(11) DEFAULT NULL,
  `edituser` varchar(50) DEFAULT NULL,
  `edittime` datetime DEFAULT NULL,
  `menuId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKFA7A8CBECC9051BC` (`menuId`),
  KEY `FKFA7A8CBE2A868CC3` (`userId`),
  CONSTRAINT `topic_table_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user_table` (`id`),
  CONSTRAINT `topic_table_ibfk_2` FOREIGN KEY (`menuId`) REFERENCES `topic_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic_table
-- ----------------------------
INSERT INTO `topic_table` VALUES ('2', 'java好好学啊', '2013-04-27 18:51:40', '&nbsp;哈哈', '1', 'user2', '2013-04-27 18:51:53', '1', '3');

-- ----------------------------
-- Table structure for userhoumework_table
-- ----------------------------
DROP TABLE IF EXISTS `userhoumework_table`;
CREATE TABLE `userhoumework_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `addtime` datetime DEFAULT NULL,
  `titleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKE86B38DB1D35ECEF` (`titleId`),
  KEY `FKE86B38DB2A868CC3` (`userId`),
  CONSTRAINT `userhoumework_table_ibfk_1` FOREIGN KEY (`titleId`) REFERENCES `homework_title` (`id`),
  CONSTRAINT `userhoumework_table_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user_table` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userhoumework_table
-- ----------------------------

-- ----------------------------
-- Table structure for user_table
-- ----------------------------
DROP TABLE IF EXISTS `user_table`;
CREATE TABLE `user_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `authorite` varchar(50) NOT NULL,
  `enable` bit(1) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_table
-- ----------------------------
INSERT INTO `user_table` VALUES ('1', 'admin', '123', 'ROLE_SUPERVISOR', '', '123@126.com');
INSERT INTO `user_table` VALUES ('2', 'user1', '123', 'ROLE_USER', '\0', '234@qq.com');
INSERT INTO `user_table` VALUES ('3', 'user2', '123', 'ROLE_USER', '', '345@qq.com');
