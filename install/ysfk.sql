/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : faka

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-05-16 21:38:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ys_acp
-- ----------------------------
DROP TABLE IF EXISTS `ys_acp`;
CREATE TABLE `ys_acp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(300) NOT NULL DEFAULT '',
  `userid` text NOT NULL,
  `userkey` text NOT NULL,
  `is_ste` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否启用 1是 0否',
  PRIMARY KEY (`id`),
  KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ys_acp
-- ----------------------------
INSERT INTO `ys_acp` VALUES ('37', 'zcyzf', '众创益支付', '', '', '', '0');
INSERT INTO `ys_acp` VALUES ('38', 'zfbf2f', '支付宝当面付', '', '', '', '1');
INSERT INTO `ys_acp` VALUES ('39', 'paysapi', 'PaysApi支付', '', '', '', '0');
INSERT INTO `ys_acp` VALUES ('40', 'alipay', '支付宝即时到账', '', '', '', '0');
INSERT INTO `ys_acp` VALUES ('41', 'mazf', '码支付', '', '', '', '1');

-- ----------------------------
-- Table structure for ys_admin
-- ----------------------------
DROP TABLE IF EXISTS `ys_admin`;
CREATE TABLE `ys_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adminname` varchar(20) NOT NULL,
  `adminpass` varchar(40) NOT NULL,
  `token` varchar(40) NOT NULL,
  `is_state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `limits` text,
  `limit_ip` varchar(300) NOT NULL DEFAULT '',
  `is_limit_ip` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ys_admin
-- ----------------------------
INSERT INTO `ys_admin` VALUES ('1', 'admin', 'd5a1bdf9ce989fd6161063e94b92bdeacb94ed23', '4718737b9f2f6e2c225fe605d6c7234330e7e7e4', '0', '{\"limit_ip\":\"\",\"is_limit_ip\":\"0\",\"set\":\"\\u7cfb\\u7edf\\u8bbe\\u7f6e\",\"mailtpl\":\"\\u90ae\\u4ef6\\u6a21\\u7248\",\"admins\":\"\\u7ba1\\u7406\\u5458\\u5217\\u8868\",\"pwd\":\"\\u4fee\\u6539\\u5bc6\\u7801\",\"logs\":\"\\u767b\\u5f55\\u65e5\\u5fd7\",\"cog\":\"\\u5bfc\\u822a\\u8bbe\\u7f6e\",\"orders\":\"\\u8ba2\\u5355\\u5217\\u8868\",\"gdclass\":\"\\u5546\\u54c1\\u5206\\u7c7b\",\"goods\":\"\\u5546\\u54c1\\u5217\\u8868\",\"kami\":\"\\u5361\\u5bc6\\u7ba1\\u7406\",\"acp\":\"\\u63a5\\u5165\\u4fe1\\u606f\"}', '', '0');

-- ----------------------------
-- Table structure for ys_adminlogs
-- ----------------------------
DROP TABLE IF EXISTS `ys_adminlogs`;
CREATE TABLE `ys_adminlogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adminid` int(10) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `ip` varchar(16) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `adminid` (`adminid`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ys_adminlogs
-- ----------------------------

-- ----------------------------
-- Table structure for ys_config
-- ----------------------------
DROP TABLE IF EXISTS `ys_config`;
CREATE TABLE `ys_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sitename` varchar(50) NOT NULL,
  `siteurl` varchar(50) NOT NULL,
  `siteinfo` varchar(50) NOT NULL DEFAULT '',
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(300) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `tel` varchar(12) NOT NULL DEFAULT '',
  `qq` varchar(12) NOT NULL DEFAULT '',
  `address` varchar(50) NOT NULL DEFAULT '',
  `icpcode` varchar(20) NOT NULL DEFAULT '',
  `stacode` varchar(500) NOT NULL DEFAULT '',
  `smtp_server` varchar(20) NOT NULL DEFAULT '',
  `smtp_email` varchar(50) NOT NULL DEFAULT '',
  `smtp_pwd` varchar(20) NOT NULL DEFAULT '',
  `tips` text,
  `ctime` varchar(100) DEFAULT NULL,
  `email_state` tinyint(1) NOT NULL DEFAULT '0',
  `ismail_kuc` tinyint(1) NOT NULL DEFAULT '0',
  `ismail_num` int(20) DEFAULT '0',
  `serive_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ys_config
-- ----------------------------
INSERT INTO `ys_config` VALUES ('1', '破冰发卡系统', 'yunscx.com', '破冰发卡系统 安全稳定', '破冰发卡系统 安全稳定', '破冰发卡系统 安全稳定', '53331323@qq.com', '400-000-0000', '53331323', '破冰创想科技', '沪ICP备13008591号', '', '', '', '', '<h2>\r\n	<ul class=\"tpl-task-list tpl-task-remind\" style=\"box-sizing:border-box;margin:0px;padding:0px;list-style:none;color:#333333;font-family:&quot;font-size:18px;white-space:normal;background-color:#FFFFFF;\">\r\n		<li style=\"box-sizing:border-box;margin:0px 0px 7px;padding:10px !important;list-style:none;position:relative;border-bottom:1px solid #F4F6F9;height:auto !important;font-size:14px !important;line-height:22px !important;color:#82949A;\">\r\n			<div class=\"cosA\" style=\"box-sizing:border-box;margin-right:80px;\">\r\n				<span class=\"cosIco\" style=\"box-sizing:border-box;display:inline-block;width:24px;height:24px;vertical-align:middle;color:#FFFFFF;text-align:center;border-radius:3px;background-color:#36C6D3;\"><span class=\"am-icon-bell-o\" style=\"box-sizing:border-box;display:inline-block;\"></span></span>&nbsp;<span style=\"box-sizing:border-box;\">注意：本站为破冰发卡系统演示站，商品数据只做测试使用！</span>\r\n			</div>\r\n		</li>\r\n		<li style=\"box-sizing:border-box;margin:0px 0px 7px;padding:10px !important;list-style:none;position:relative;border-bottom:1px solid #F4F6F9;height:auto !important;font-size:14px !important;line-height:22px !important;color:#82949A;\">\r\n			<div class=\"cosA\" style=\"box-sizing:border-box;margin-right:80px;\">\r\n				<span class=\"cosIco label-danger\" style=\"box-sizing:border-box;background-color:#36C6D3;display:inline-block;width:24px;height:24px;vertical-align:middle;color:#FFFFFF;text-align:center;border-radius:3px;\"><span class=\"am-icon-bolt\" style=\"box-sizing:border-box;display:inline-block;\"></span></span>&nbsp;破冰发卡系统免授权使用，切勿上当受骗，系统开源没有任何加密！\r\n			</div>\r\n		</li>\r\n		<li style=\"box-sizing:border-box;margin:0px 0px 7px;padding:10px !important;list-style:none;position:relative;border-bottom:1px solid #F4F6F9;height:auto !important;font-size:14px !important;line-height:22px !important;color:#82949A;\">\r\n			<div class=\"cosA\" style=\"box-sizing:border-box;margin-right:80px;\">\r\n				<span class=\"cosIco label-info\" style=\"box-sizing:border-box;background-color:#36C6D3;display:inline-block;width:24px;height:24px;vertical-align:middle;color:#FFFFFF;text-align:center;border-radius:3px;\"><span class=\"am-icon-bullhorn\" style=\"box-sizing:border-box;display:inline-block;\"></span></span>&nbsp;防止不法分子在源码中加入后门请到破冰官网下载正版程序！\r\n			</div>\r\n		</li>\r\n		<li style=\"box-sizing:border-box;margin:0px 0px 7px;padding:10px !important;list-style:none;position:relative;border-bottom:1px solid #F4F6F9;height:auto !important;font-size:14px !important;line-height:22px !important;color:#82949A;background:#F4F6F9;\">\r\n			<div class=\"cosA\" style=\"box-sizing:border-box;margin-right:80px;\">\r\n				<span class=\"cosIco label-warning\" style=\"box-sizing:border-box;background-color:#36C6D3;display:inline-block;width:24px;height:24px;vertical-align:middle;color:#FFFFFF;text-align:center;border-radius:3px;\"><span class=\"am-icon-plus\" style=\"box-sizing:border-box;display:inline-block;\"></span></span>&nbsp;软件官网：<a href=\"http://www.yunscx.com\" target=\"_blank\">http://www.yunscx.com</a>&nbsp; &nbsp; 交流QQ群 ：<a target=\"_blank\" href=\"//shang.qq.com/wpa/qunwpa?idkey=633fb72ae5064407d2af35f9bc0502629ccd3d9cd5b64ea51a424b1276f0cb9b\"><img border=\"0\" src=\"//pub.idqqimg.com/wpa/images/group.png\" alt=\"破冰软件交流群\" title=\"破冰软件交流群\"></a>\r\n			</div>\r\n		</li>\r\n	</ul>\r\n</h2>', '2017-03-21', '0', '0', '10', 'yunsfk2018');

-- ----------------------------
-- Table structure for ys_gdclass
-- ----------------------------
DROP TABLE IF EXISTS `ys_gdclass`;
CREATE TABLE `ys_gdclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '分类名称',
  `ord` int(100) DEFAULT '0' COMMENT '商品排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ys_gdclass
-- ----------------------------
INSERT INTO `ys_gdclass` VALUES ('7', '测试手工商品分类', '2');
INSERT INTO `ys_gdclass` VALUES ('6', '测试自动发卡商品分类', '1');
INSERT INTO `ys_gdclass` VALUES ('8', '请作者喝杯咖啡', '3');
INSERT INTO `ys_gdclass` VALUES ('9', 'VIP环境调试', '4');

-- ----------------------------
-- Table structure for ys_goods
-- ----------------------------
DROP TABLE IF EXISTS `ys_goods`;
CREATE TABLE `ys_goods` (
  `id` int(100) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `cid` int(100) NOT NULL COMMENT '分类id',
  `gname` varchar(255) NOT NULL COMMENT '商品名称',
  `gmoney` decimal(20,2) NOT NULL COMMENT '商品售价',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 自动发卡  1 手工订单',
  `checks` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否允许重复下单 1是  0否',
  `cont` text COMMENT '商品介绍',
  `onetle` varchar(255) DEFAULT NULL COMMENT '第一个输入框标题',
  `gdipt` varchar(255) DEFAULT NULL COMMENT '更多input qq密码 ,大区名称',
  `ord` int(100) DEFAULT '0' COMMENT '排序',
  `is_ste` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0下架 1上架',
  `kuc` int(100) NOT NULL DEFAULT '0' COMMENT '库存',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ys_goods
-- ----------------------------
INSERT INTO `ys_goods` VALUES ('13', '7', '手工商品', '0.10', '1', '1', '<h3>\r\n	这里是商品详情\r\n</h3>\r\n<p>\r\n	本商品仅供测试功能\r\n</p>\r\n<p>\r\n	<img src=\"http://www.faka.com/view/editor/plugins/emoticons/images/13.gif\" border=\"0\" alt=\"\" /><img src=\"http://www.faka.com/view/editor/plugins/emoticons/images/13.gif\" border=\"0\" alt=\"\" style=\"white-space:normal;\" /><img src=\"http://www.faka.com/view/editor/plugins/emoticons/images/13.gif\" border=\"0\" alt=\"\" style=\"white-space:normal;\" /><img src=\"http://www.faka.com/view/editor/plugins/emoticons/images/13.gif\" border=\"0\" alt=\"\" style=\"white-space:normal;\" /><img src=\"http://www.faka.com/view/editor/plugins/emoticons/images/13.gif\" border=\"0\" alt=\"\" style=\"white-space:normal;\" /><img src=\"http://www.faka.com/view/editor/plugins/emoticons/images/13.gif\" border=\"0\" alt=\"\" style=\"white-space:normal;\" /> \r\n</p>', 'QQ号', '', '5', '1', '100');
INSERT INTO `ys_goods` VALUES ('22', '9', 'VIP服务一年', '128.00', '1', '1', '<h3>\r\n	作者精力受限，不能挨个解决问题。\r\n</h3>\r\n<h4>\r\n	<span style=\"color:#E53333;\">平时除了基本开发更新，还要解答群友疑惑，分身乏术！</span><br />\r\n<span style=\"color:#E53333;\">服务器支出，域名支出需要钱，程序本身没有任何费用，而且基本每天更新,</span><br />\r\n<span style=\"color:#E53333;\">只要出现bug都会更新，请朋友们理解。</span><br />\r\n<span style=\"color:#E53333;\">有的朋友急需解决问题，我们的社区开支，服务器开支需要钱。</span><br />\r\n<span style=\"color:#E53333;\">那么vip服务由此而生！<br />\r\n这世上没有免费的午餐，你想得到什么，就得付出点什么！</span> \r\n</h4>\r\n<p>\r\n	<br />\r\n</p>\r\n<h3>\r\n	<span style=\"color:#009900;\"><strong>v</strong></span><span style=\"color:#009900;\"><strong>ip能接受哪些服务？<br />\r\n</strong></span><span style=\"color:#009900;\"><strong>1.bug第一时间更新补丁<br />\r\n</strong></span><span style=\"color:#009900;\"><strong>2.一对一环境调试<br />\r\n</strong></span><span style=\"color:#009900;\"><strong>3.一对一问题解答<br />\r\n</strong></span><span style=\"color:#009900;\"><strong>4.社区管理员职位<br />\r\n</strong></span><span style=\"color:#009900;\"><strong>5.如果后面推出高级版服务</strong></span><span style=\"color:#009900;\"><strong>，vip免授权使用。当然我说的是如果。。<br />\r\n</strong></span><span style=\"color:#009900;\"><strong>6.很多服务等你来</strong></span> \r\n</h3>\r\n<p>\r\n	<span style=\"color:#009900;\"><strong><br />\r\n</strong></span> \r\n</p>\r\n<h3>\r\n	<span><b>问题：这个钱的流向？</b></span> \r\n</h3>\r\n<h3>\r\n	<b style=\"color:#009900;font-size:12px;\"><span style=\"color:#E53333;\">1.用于域名开支，社区建设<br />\r\n</span></b><b style=\"font-size:12px;\"><span style=\"color:#E53333;\">2.请专业的技术美化页面<br />\r\n</span></b><b style=\"font-size:12px;\"><span style=\"color:#E53333;\">3.开发更多实用的软件</span></b> \r\n</h3>\r\n<h3>\r\n	<span><b>问题：VIP是虚，收钱是真？</b></span> \r\n</h3>\r\n<h4>\r\n	<span><b><span style=\"color:#E53333;\">后面我会公开所有钱的名单和用途，我是一个开源</span><span style=\"color:#E53333;\">作者，不干脱裤子放屁的事情！</span></b></span> \r\n</h4>\r\n<h3>\r\n	<span><b>问题：不是vip以后程序还能继续免费吗？</b></span> \r\n</h3>\r\n<h4>\r\n	<span><b><span style=\"color:#E53333;\">当然会，收费是不可能收费的</span></b></span> \r\n</h4>\r\n<h3>\r\n	请留下您的QQ号，支付成功后我会拉您进群！或者联系我提供订单号即可！\r\n</h3>', 'QQ号', '', '0', '1', '100');
INSERT INTO `ys_goods` VALUES ('18', '6', '自动发卡商品', '0.10', '0', '1', '<p>\r\n	<span style=\"white-space:nowrap;\">自动发卡商品</span><img src=\"http://www.faka.com/view/editor/plugins/emoticons/images/13.gif\" border=\"0\" alt=\"\" /><img src=\"http://www.faka.com/view/editor/plugins/emoticons/images/13.gif\" border=\"0\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/upload/image/20180416/20180416082402_34301.jpg\" alt=\"\" /> \r\n</p>', 'QQ号', '', '0', '1', '18');
INSERT INTO `ys_goods` VALUES ('19', '8', '一杯卡布奇诺', '6.66', '1', '1', '<h3>\r\n	如果您觉得我的作品对您的业务有所帮助！\r\n</h3>\r\n<h3>\r\n	不妨请我喝杯咖啡！<img src=\"http://demo.yunscx.com/view/editor/plugins/emoticons/images/60.gif\" border=\"0\" alt=\"\" /> \r\n</h3>\r\n<h3>\r\n	感谢您为开源事业做出的贡献<img src=\"http://demo.yunscx.com/view/editor/plugins/emoticons/images/66.gif\" border=\"0\" alt=\"\" /><img src=\"http://demo.yunscx.com/view/editor/plugins/emoticons/images/66.gif\" border=\"0\" alt=\"\" /> \r\n</h3>', '昵称', '', '3', '1', '100');
INSERT INTO `ys_goods` VALUES ('20', '8', '一杯蓝山咖啡', '16.66', '1', '1', '<h3 style=\"white-space:normal;\">\r\n	如果您觉得我的作品对您的业务有所帮助！\r\n</h3>\r\n<h3 style=\"white-space:normal;\">\r\n	不妨请我喝杯咖啡！<img src=\"http://demo.yunscx.com/view/editor/plugins/emoticons/images/60.gif\" border=\"0\" alt=\"\" /> \r\n</h3>\r\n<h3>\r\n	请留下您的昵称，方便以后我们公布感谢名单！\r\n</h3>\r\n<h3 style=\"white-space:normal;\">\r\n	感谢您为开源事业做出的贡献<img src=\"http://demo.yunscx.com/view/editor/plugins/emoticons/images/66.gif\" border=\"0\" alt=\"\" /><img src=\"http://demo.yunscx.com/view/editor/plugins/emoticons/images/66.gif\" border=\"0\" alt=\"\" /> \r\n</h3>', '昵称', '', '2', '1', '100');
INSERT INTO `ys_goods` VALUES ('21', '8', '任意金额捐助', '1.00', '1', '1', '<h3 style=\"white-space:normal;\">\r\n	如果您觉得我的作品对您的业务有所帮助！\r\n</h3>\r\n<h3 style=\"white-space:normal;\">\r\n	不妨请我喝杯咖啡！<img src=\"http://demo.yunscx.com/view/editor/plugins/emoticons/images/60.gif\" border=\"0\" alt=\"\" /> \r\n</h3>\r\n<h3 style=\"white-space:normal;\">\r\n	请留下您的昵称，方便以后我们公布感谢名单！\r\n</h3>\r\n<h3>\r\n	任意金额捐助，请扫码！\r\n</h3>\r\n<p>\r\n	<img src=\"/upload/image/20180419/20180419200420_59712.png\" width=\"300\" height=\"407\" alt=\"\" /> \r\n</p>\r\n<h3 style=\"white-space:normal;\">\r\n	感谢您为开源事业做出的贡献<img src=\"http://demo.yunscx.com/view/editor/plugins/emoticons/images/66.gif\" border=\"0\" alt=\"\" /><img src=\"http://demo.yunscx.com/view/editor/plugins/emoticons/images/66.gif\" border=\"0\" alt=\"\" /> \r\n</h3>', '昵称', '', '1', '1', '100');

-- ----------------------------
-- Table structure for ys_kami
-- ----------------------------
DROP TABLE IF EXISTS `ys_kami`;
CREATE TABLE `ys_kami` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `gid` int(100) NOT NULL COMMENT '商品id',
  `kano` text NOT NULL COMMENT '卡号',
  `is_ste` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:正常 1:已售',
  `ctime` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=215 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for ys_mailtpl
-- ----------------------------
DROP TABLE IF EXISTS `ys_mailtpl`;
CREATE TABLE `ys_mailtpl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text,
  `is_state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cname` (`cname`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ys_mailtpl
-- ----------------------------
INSERT INTO `ys_mailtpl` VALUES ('3', '卡密发送', '您在{sitename}购买的商品已发货', '<p class=\"p1\">\r\n<span class=\"s1\">尊敬的用户您好：</span> \r\n</p>\r\n<p class=\"p1\">\r\n<span class=\"s1\">您在：【{sitename}】 购买的商品：{gname} 已发货。</span> \r\n</p>\r\n<p class=\"p1\">订单号：{orid}</p>\r\n<p class=\"p1\">数量：{ornum}</p>\r\n<p class=\"p1\">金额：{cmoney}</p>\r\n<p class=\"p1\">时间：{ctime}</p>\r\n---------------------------------------------------------------------------------------------------------------------------<br/>\r\n<p class=\"p1\"> \r\n<span class=\"s1\">{orderinfo}</span>\r\n</p> \r\n---------------------------------------------------------------------------------------------------------------------------<br/>\r\n\r\n感谢您的惠顾，祝您生活愉快！<br/>\r\n<p class=\"p1\">\r\n	<span class=\"s1\">来自 <span style=\"white-space:normal;\">{sitename} -{siteurl}</span></span> \r\n</p>', '0', '1523789794');
INSERT INTO `ys_mailtpl` VALUES ('5', '管理员通知', '【{sitename}】新订单等待处理', '<p class=\"p1\">尊敬的管理员：</p>\r\n\r\n<p class=\"p1\">客户购买的商品：【{gname}】 已支付成功，请及时处理。</p>\r\n------------------------------------------<br/>\r\n<p class=\"p1\">订单号：{orid}</p>\r\n<p class=\"p1\">数量：{ornum}</p>\r\n<p class=\"p1\">金额：{cmoney}</p>\r\n<p class=\"p1\">时间：{ctime}</p>\r\n---------------------------------------------<br/>\r\n\r\n<p class=\"p1\">\r\n	<span class=\"s1\">来自 <span style=\"white-space:normal;\">{sitename} -{siteurl}</span></span> \r\n</p>', '0', '1523790269');
INSERT INTO `ys_mailtpl` VALUES ('6', '库存告警', '【{sitename}】库存告警', '<p class=\"p1\">尊敬的管理员：</p>\r\n\r\n<p class=\"p1\">平台商品：【{gname}】库存低于{ornum}，请及时补货。</p>\r\n\r\n<p class=\"p1\">\r\n	<span class=\"s1\">来自 <span style=\"white-space:normal;\">{sitename} -{siteurl}</span></span> \r\n</p>', '0', '1526475356');

-- ----------------------------
-- Table structure for ys_navcog
-- ----------------------------
DROP TABLE IF EXISTS `ys_navcog`;
CREATE TABLE `ys_navcog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ys_navcog
-- ----------------------------
INSERT INTO `ys_navcog` VALUES ('16', '{\"set\":\"\\u7cfb\\u7edf\\u8bbe\\u7f6e\",\"admins\":\"\\u7ba1\\u7406\\u5458\\u5217\\u8868\",\"orders\":\"\\u8ba2\\u5355\\u5217\\u8868\"}');

-- ----------------------------
-- Table structure for ys_orders
-- ----------------------------
DROP TABLE IF EXISTS `ys_orders`;
CREATE TABLE `ys_orders` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(200) NOT NULL COMMENT '订单id',
  `oname` varchar(255) NOT NULL COMMENT '订单名称',
  `gid` int(100) NOT NULL COMMENT '商品id',
  `omoney` decimal(60,2) NOT NULL DEFAULT '0.00' COMMENT '商品单价',
  `cmoney` decimal(60,2) NOT NULL COMMENT '订单总价',
  `onum` int(100) NOT NULL COMMENT '订单数量',
  `chapwd` varchar(255) DEFAULT NULL COMMENT '查询密码',
  `account` varchar(255) NOT NULL COMMENT '充值账号',
  `otype` tinyint(1) NOT NULL COMMENT '订单类型 0自动发卡 1手工充值',
  `info` text COMMENT '充值详情',
  `payid` varchar(200) DEFAULT NULL COMMENT '第三方支付平台id',
  `paytype` varchar(255) DEFAULT NULL COMMENT '支付方式',
  `ctime` int(100) NOT NULL COMMENT '下单日期',
  `status` tinyint(1) NOT NULL COMMENT '0待付款 1待处理 2已处理 3已完成  4处理失败 5发卡失败',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=765 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ys_orders
-- ----------------------------
INSERT INTO `ys_orders` VALUES ('406', 'ys2018042114201833805', '自动发卡商品x1', '18', '0.10', '0.10', '1', '15452596', '15452596@qq.com', '0', '卡号： 123321 ---- 卡密： 123321<br/>', '2018042121001004460581572817', '当面付', '1524291618', '3');
INSERT INTO `ys_orders` VALUES ('403', 'ys2018042114004787030', '手工商品x1', '13', '0.10', '0.10', '1', null, '10000', '1', 'QQ号:10000', '2018042121001004990555816516', '当面付', '1524290447', '3');
INSERT INTO `ys_orders` VALUES ('391', 'ys2018042103142085272', '自动发卡商品x1', '18', '0.10', '0.10', '1', '6694995', '644959jhh@qq.com', '0', '卡号： 123321 ---- 卡密： 123321<br/>', '2018042121001004690551817127', '当面付', '1524251660', '3');
INSERT INTO `ys_orders` VALUES ('307', 'ys2018041922400345441', '自动发卡商品x1', '18', '0.10', '0.10', '1', '123', '1500176279@qq.com', '0', '卡号： 123233 ---- 卡密： 444444<br/>', '2018041921001004680292764852', '当面付', '1524148803', '3');
INSERT INTO `ys_orders` VALUES ('308', 'ys2018041922402687219', '自动发卡商品x1', '18', '0.10', '0.10', '1', '123456', '1019941508@qq.com', '0', '卡号： 123321 ---- 卡密： 123321<br/>', '2018041921001004080567162626', '当面付', '1524148826', '3');
INSERT INTO `ys_orders` VALUES ('309', 'ys2018041922482523404', '自动发卡商品x1', '18', '0.10', '0.10', '1', '123', '1500176279@qq.com', '0', '卡号： 123321 ---- 卡密： 123321<br/>', '2018041921001004680292793885', '当面付', '1524149305', '3');
INSERT INTO `ys_orders` VALUES ('313', 'ys2018042003000536079', '自动发卡商品x1', '18', '0.10', '0.10', '1', '123', '1500176279@qq.com', '0', '卡号： 123321 ---- 卡密： 123321<br/>', '2018042021001004680292132197', '当面付', '1524164405', '3');
INSERT INTO `ys_orders` VALUES ('339', 'ys2018042015335564819', '自动发卡商品x1', '18', '0.10', '0.10', '1', '1', '641777163@qq.com', '0', '卡号： 123233 ---- 卡密： 444444<br/>', '2018042021001004470593811334', '当面付', '1524209635', '3');
INSERT INTO `ys_orders` VALUES ('350', 'ys2018042016005869863', '手工商品1x1', '13', '0.10', '0.10', '1', null, '123321', '1', 'QQ号:123321', '2018042021001004580571103526', '支付宝即时到账', '1524211258', '3');
INSERT INTO `ys_orders` VALUES ('351', 'ys2018042016035814177', '自动发卡商品x1', '18', '0.10', '0.10', '1', 'zxc123', '53331323@qq.com', '0', '卡号： 123321 ---- 卡密： 123321<br/>', '2018042021001004580570876738', '支付宝即时到账', '1524211438', '3');
INSERT INTO `ys_orders` VALUES ('353', 'ys2018042016050896510', '自动发卡商品x1', '18', '0.10', '0.10', '1', 'gscsds', '1192797384@qq.com', '0', '卡号： 123321 ---- 卡密： 123321<br/>', '2018042021001004280543668160', '支付宝即时到账', '1524211508', '3');
INSERT INTO `ys_orders` VALUES ('355', 'ys2018042016062999926', '自动发卡商品x1', '18', '0.10', '0.10', '1', '123', '1261999390@qq.com', '0', '卡号： 123233 ---- 卡密： 444444<br/>', '2018042021001004580571334538', '支付宝即时到账', '1524211589', '3');
INSERT INTO `ys_orders` VALUES ('357', 'ys2018042016071933442', '自动发卡商品x1', '18', '0.10', '0.10', '1', 'zxc123', '53331323@qq.com', '0', '卡号： 123233 ---- 卡密： 444444<br/>', '2018042021001004580570844852', '支付宝即时到账', '1524211639', '3');
INSERT INTO `ys_orders` VALUES ('358', 'ys2018042016081190572', '自动发卡商品x1', '18', '0.10', '0.10', '1', '123456', '1019941508@qq.com', '0', '卡号： 123321 ---- 卡密： 123321<br/>', '2018042021001004660549099633', '支付宝即时到账', '1524211691', '3');
INSERT INTO `ys_orders` VALUES ('361', 'ys2018042016100332615', '自动发卡商品x1', '18', '0.10', '0.10', '1', 'gscsds', '1192797384@qq.com', '0', '卡号： 123321 ---- 卡密： 123321<br/>', '2018042021001004280543668338', '支付宝即时到账', '1524211803', '3');
INSERT INTO `ys_orders` VALUES ('363', 'ys2018042016112147678', '自动发卡商品x1', '18', '0.10', '0.10', '1', '123456', '1019941508@qq.com', '0', '卡号： 123233 ---- 卡密： 444444<br/>', '2018042021001004660549228815', '支付宝即时到账', '1524211881', '3');
INSERT INTO `ys_orders` VALUES ('368', 'ys2018042016273194237', '手工商品1x1', '13', '0.10', '0.10', '1', null, '123321', '1', 'QQ号:123321', '2018042021001004580571556741', '支付宝即时到账', '1524212851', '3');
INSERT INTO `ys_orders` VALUES ('370', 'ys2018042016392343133', '手工商品1x1', '13', '0.10', '0.10', '1', null, '123321', '1', 'QQ号:123321', '2018042021001004580571136275', '支付宝即时到账', '1524213563', '3');
INSERT INTO `ys_orders` VALUES ('373', 'ys2018042016545931769', '自动发卡商品x1', '18', '0.10', '0.10', '1', '142857', '154668211@qq.com', '0', '卡号： 123321 ---- 卡密： 123321<br/>', '2018042021001004680294593378', '当面付', '1524214499', '3');
INSERT INTO `ys_orders` VALUES ('374', 'ys2018042017003834656', '手工商品1x1', '13', '0.10', '0.10', '1', null, '123321', '1', 'QQ号:123321', '2018042021001004580570992855', '支付宝即时到账', '1524214838', '3');
INSERT INTO `ys_orders` VALUES ('375', 'ys2018042017014630294', '自动发卡商品x1', '18', '0.10', '0.10', '1', '123456', '1019941508@qq.com', '0', '卡号： 123321 ---- 卡密： 123321<br/>', '2018042021001004660551369379', '支付宝即时到账', '1524214906', '3');
INSERT INTO `ys_orders` VALUES ('379', 'ys2018042017351072189', '自动发卡商品x1', '18', '0.10', '0.10', '1', 'zxc123', '53331323@qq.com', '0', '卡号： 123233 ---- 卡密： 444444<br/>', '2018042021001004580570994400', '支付宝即时到账', '1524216910', '3');
INSERT INTO `ys_orders` VALUES ('382', 'ys2018042020074431563', 'VIP服务一年x1', '22', '88.00', '88.00', '1', null, '604051096', '1', 'QQ号:604051096', '2018042021001004830553033294', '当面付', '1524226064', '3');
INSERT INTO `ys_orders` VALUES ('421', 'ys2018042120055068706', '自动发卡商品x1', '18', '0.10', '0.10', '1', 'zxc123', '53331323@qq.com', '0', '卡号： 123233 ---- 卡密： 444444<br/>', '2018042120061174103', '手Q扫码', '1524312350', '3');
INSERT INTO `ys_orders` VALUES ('448', 'ys2018042303571076854', '自动发卡商品x1', '18', '0.10', '0.10', '1', '258022', 'jinyese2018@qq.com', '0', '卡号： 123321 ---- 卡密： 123321<br/>', '2018042321001004930564418899', '当面付', '1524427030', '3');
INSERT INTO `ys_orders` VALUES ('470', 'ys2018042415345994213', 'VIP服务一年x1', '22', '128.00', '128.00', '1', null, '1271316060', '1', 'QQ号:1271316060', '2018042421001004160585934342', '当面付', '1524555299', '3');
INSERT INTO `ys_orders` VALUES ('471', 'ys2018042415412627874', '自动发卡商品x1', '18', '0.10', '0.10', '1', '111', '1271316060@qq.com', '0', '卡号： 123321 ---- 卡密： 123321<br/>', '2018042421001004160586334451', '当面付', '1524555686', '3');
INSERT INTO `ys_orders` VALUES ('484', 'ys2018042518021386964', '自动发卡商品x1', '18', '0.10', '0.10', '1', '1', '1271316060@qq.com', '0', '卡号： 123233 ---- 卡密： 444444<br/>', null, '支付宝', '1524650533', '3');
INSERT INTO `ys_orders` VALUES ('524', 'ys2018042712223190813', '自动发卡商品x1', '18', '0.10', '0.10', '1', '7758521', '28499456@qq.com', '0', '卡号： 123321 ---- 卡密： 123321<br/>', '2018042721001004390512053220', '当面付', '1524802951', '3');
INSERT INTO `ys_orders` VALUES ('534', 'ys2018042813385813884', '自动发卡商品x1', '18', '0.10', '0.10', '1', '123456', '263359427@qq.com', '0', '卡号： 123321 ---- 卡密： 123321<br/>', '2018042821001004000514888947', '当面付', '1524893938', '3');
INSERT INTO `ys_orders` VALUES ('558', 'ys2018050201414976788', '自动发卡商品x1', '18', '0.10', '0.10', '1', '123456', '1018566351@qq.com', '0', '卡号： 123233 ---- 卡密： 444444<br/>', '2018050221001004090515090470', '当面付', '1525196509', '3');
INSERT INTO `ys_orders` VALUES ('643', 'ys2018050718472714306', '自动发卡商品x1', '18', '0.10', '0.10', '1', '1233456', '4889609@qq.com', '0', '卡号： 123321 ---- 卡密： 123321<br/>', '2018050721001004350548289646', '当面付', '1525690047', '3');
INSERT INTO `ys_orders` VALUES ('652', 'ys2018050915005959891', '自动发卡商品x1', '18', '0.10', '0.10', '1', '258022', 'luoniana@qq.com', '0', '卡号： 123321 ---- 卡密： 123321<br/>', '2018050921001004930531584542', '当面付', '1525849259', '3');
INSERT INTO `ys_orders` VALUES ('670', 'ys2018051118312264683', '自动发卡商品x1', '18', '0.10', '0.10', '1', '6565465', '545665@qq.com', '0', '卡号： 123233 ---- 卡密： 444444<br/>', '2018051121001004090554905901', '当面付', '1526034682', '3');
INSERT INTO `ys_orders` VALUES ('688', 'ys2018051223574594444', '手工商品x1', '13', '0.10', '0.10', '1', null, '62223232', '1', 'QQ号:62223232', '2018051221001004860541686337', '当面付', '1526140665', '3');
INSERT INTO `ys_orders` VALUES ('740', 'ys2018051421100551165', '自动发卡商品x1', '18', '0.10', '0.10', '1', '37027761', 'web@thit.net', '0', '卡号： 123321 ---- 卡密： 123321<br/>', '2018051421001004830546593143', '当面付', '1526303405', '3');
INSERT INTO `ys_orders` VALUES ('764', 'ys2018051621341321614', '一杯卡布奇诺x1', '19', '6.66', '6.66', '1', null, '123321', '1', '昵称:123321', null, null, '1526477653', '0');
INSERT INTO `ys_orders` VALUES ('763', 'ys2018051621331750494', 'VIP服务一年x1', '22', '128.00', '128.00', '1', null, '123321', '1', 'QQ号:123321', null, null, '1526477597', '0');
