/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : hat

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2019-04-23 13:05:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES ('1', '办公室');

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
INSERT INTO `auth_group_permissions` VALUES ('1', '1', '16');
INSERT INTO `auth_group_permissions` VALUES ('2', '1', '64');

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can view content type', '4', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('17', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('20', 'Can view session', '5', 'view_session');
INSERT INTO `auth_permission` VALUES ('21', 'Can add Bookmark', '6', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('22', 'Can change Bookmark', '6', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete Bookmark', '6', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('24', 'Can add User Setting', '7', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('25', 'Can change User Setting', '7', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('26', 'Can delete User Setting', '7', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('27', 'Can add User Widget', '8', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('28', 'Can change User Widget', '8', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('29', 'Can delete User Widget', '8', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('30', 'Can add log entry', '9', 'add_log');
INSERT INTO `auth_permission` VALUES ('31', 'Can change log entry', '9', 'change_log');
INSERT INTO `auth_permission` VALUES ('32', 'Can delete log entry', '9', 'delete_log');
INSERT INTO `auth_permission` VALUES ('33', 'Can view Bookmark', '6', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('34', 'Can view log entry', '9', 'view_log');
INSERT INTO `auth_permission` VALUES ('35', 'Can view User Setting', '7', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('36', 'Can view User Widget', '8', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 用户信息', '10', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 用户信息', '10', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 用户信息', '10', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('40', 'Can add 轮播图', '11', 'add_banner');
INSERT INTO `auth_permission` VALUES ('41', 'Can change 轮播图', '11', 'change_banner');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete 轮播图', '11', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('43', 'Can view 轮播图', '11', 'view_banner');
INSERT INTO `auth_permission` VALUES ('44', 'Can view 用户信息', '10', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('45', 'Can add 帽子多色图', '12', 'add_hatcolorimage');
INSERT INTO `auth_permission` VALUES ('46', 'Can change 帽子多色图', '12', 'change_hatcolorimage');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete 帽子多色图', '12', 'delete_hatcolorimage');
INSERT INTO `auth_permission` VALUES ('48', 'Can add 帽子颜色', '13', 'add_hatcolournumber');
INSERT INTO `auth_permission` VALUES ('49', 'Can change 帽子颜色', '13', 'change_hatcolournumber');
INSERT INTO `auth_permission` VALUES ('50', 'Can delete 帽子颜色', '13', 'delete_hatcolournumber');
INSERT INTO `auth_permission` VALUES ('51', 'Can add 帽子详情页', '14', 'add_hatdiy');
INSERT INTO `auth_permission` VALUES ('52', 'Can change 帽子详情页', '14', 'change_hatdiy');
INSERT INTO `auth_permission` VALUES ('53', 'Can delete 帽子详情页', '14', 'delete_hatdiy');
INSERT INTO `auth_permission` VALUES ('54', 'Can add 留言交互', '15', 'add_hatmessagereply');
INSERT INTO `auth_permission` VALUES ('55', 'Can change 留言交互', '15', 'change_hatmessagereply');
INSERT INTO `auth_permission` VALUES ('56', 'Can delete 留言交互', '15', 'delete_hatmessagereply');
INSERT INTO `auth_permission` VALUES ('57', 'Can view 帽子多色图', '12', 'view_hatcolorimage');
INSERT INTO `auth_permission` VALUES ('58', 'Can view 帽子颜色', '13', 'view_hatcolournumber');
INSERT INTO `auth_permission` VALUES ('59', 'Can view 帽子详情页', '14', 'view_hatdiy');
INSERT INTO `auth_permission` VALUES ('60', 'Can view 留言交互', '15', 'view_hatmessagereply');
INSERT INTO `auth_permission` VALUES ('61', 'Can add DIY后的样品', '16', 'add_hatchange');
INSERT INTO `auth_permission` VALUES ('62', 'Can change DIY后的样品', '16', 'change_hatchange');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete DIY后的样品', '16', 'delete_hatchange');
INSERT INTO `auth_permission` VALUES ('64', 'Can view DIY后的样品', '16', 'view_hatchange');
INSERT INTO `auth_permission` VALUES ('65', 'Can add 材质价格配置', '17', 'add_hatmaterials');
INSERT INTO `auth_permission` VALUES ('66', 'Can change 材质价格配置', '17', 'change_hatmaterials');
INSERT INTO `auth_permission` VALUES ('67', 'Can delete 材质价格配置', '17', 'delete_hatmaterials');
INSERT INTO `auth_permission` VALUES ('68', 'Can view 材质价格配置', '17', 'view_hatmaterials');
INSERT INTO `auth_permission` VALUES ('69', 'Can add 帽子后扣配置', '18', 'add_hatbutton');
INSERT INTO `auth_permission` VALUES ('70', 'Can change 帽子后扣配置', '18', 'change_hatbutton');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete 帽子后扣配置', '18', 'delete_hatbutton');
INSERT INTO `auth_permission` VALUES ('72', 'Can view 帽子后扣配置', '18', 'view_hatbutton');
INSERT INTO `auth_permission` VALUES ('73', 'Can add logo', '19', 'add_hatlogo');
INSERT INTO `auth_permission` VALUES ('74', 'Can change logo', '19', 'change_hatlogo');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete logo', '19', 'delete_hatlogo');
INSERT INTO `auth_permission` VALUES ('76', 'Can view logo', '19', 'view_hatlogo');
INSERT INTO `auth_permission` VALUES ('77', 'Can add 订单流转', '20', 'add_orderflow');
INSERT INTO `auth_permission` VALUES ('78', 'Can change 订单流转', '20', 'change_orderflow');
INSERT INTO `auth_permission` VALUES ('79', 'Can delete 订单流转', '20', 'delete_orderflow');
INSERT INTO `auth_permission` VALUES ('80', 'Can view 订单流转', '20', 'view_orderflow');
INSERT INTO `auth_permission` VALUES ('81', 'Can add 客户上传logo', '21', 'add_uploadimagelogo');
INSERT INTO `auth_permission` VALUES ('82', 'Can change 客户上传logo', '21', 'change_uploadimagelogo');
INSERT INTO `auth_permission` VALUES ('83', 'Can delete 客户上传logo', '21', 'delete_uploadimagelogo');
INSERT INTO `auth_permission` VALUES ('84', 'Can view 客户上传logo', '21', 'view_uploadimagelogo');
INSERT INTO `auth_permission` VALUES ('85', 'Can add 客户上传文件', '22', 'add_uploadfile');
INSERT INTO `auth_permission` VALUES ('86', 'Can change 客户上传文件', '22', 'change_uploadfile');
INSERT INTO `auth_permission` VALUES ('87', 'Can delete 客户上传文件', '22', 'delete_uploadfile');
INSERT INTO `auth_permission` VALUES ('88', 'Can view 客户上传文件', '22', 'view_uploadfile');
INSERT INTO `auth_permission` VALUES ('89', 'Can add 轮播图', '23', 'add_banner');
INSERT INTO `auth_permission` VALUES ('90', 'Can change 轮播图', '23', 'change_banner');
INSERT INTO `auth_permission` VALUES ('91', 'Can delete 轮播图', '23', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('92', 'Can view 轮播图', '23', 'view_banner');
INSERT INTO `auth_permission` VALUES ('93', 'Can add 留言交互', '24', 'add_hatmessagereply');
INSERT INTO `auth_permission` VALUES ('94', 'Can change 留言交互', '24', 'change_hatmessagereply');
INSERT INTO `auth_permission` VALUES ('95', 'Can delete 留言交互', '24', 'delete_hatmessagereply');
INSERT INTO `auth_permission` VALUES ('96', 'Can view 留言交互', '24', 'view_hatmessagereply');
INSERT INTO `auth_permission` VALUES ('97', 'Can add 帽子颜色', '25', 'add_hatcolourname');
INSERT INTO `auth_permission` VALUES ('98', 'Can change 帽子颜色', '25', 'change_hatcolourname');
INSERT INTO `auth_permission` VALUES ('99', 'Can delete 帽子颜色', '25', 'delete_hatcolourname');
INSERT INTO `auth_permission` VALUES ('100', 'Can view 帽子颜色', '25', 'view_hatcolourname');
INSERT INTO `auth_permission` VALUES ('101', 'Can add 包包详情页', '26', 'add_packdiy');
INSERT INTO `auth_permission` VALUES ('102', 'Can change 包包详情页', '26', 'change_packdiy');
INSERT INTO `auth_permission` VALUES ('103', 'Can delete 包包详情页', '26', 'delete_packdiy');
INSERT INTO `auth_permission` VALUES ('104', 'Can view 包包详情页', '26', 'view_packdiy');
INSERT INTO `auth_permission` VALUES ('105', 'Can add 配件配置', '27', 'add_packbutton');
INSERT INTO `auth_permission` VALUES ('106', 'Can change 配件配置', '27', 'change_packbutton');
INSERT INTO `auth_permission` VALUES ('107', 'Can delete 配件配置', '27', 'delete_packbutton');
INSERT INTO `auth_permission` VALUES ('108', 'Can add 包包多色图', '28', 'add_packcolorimage');
INSERT INTO `auth_permission` VALUES ('109', 'Can change 包包多色图', '28', 'change_packcolorimage');
INSERT INTO `auth_permission` VALUES ('110', 'Can delete 包包多色图', '28', 'delete_packcolorimage');
INSERT INTO `auth_permission` VALUES ('111', 'Can add 包包颜色', '29', 'add_packcolourname');
INSERT INTO `auth_permission` VALUES ('112', 'Can change 包包颜色', '29', 'change_packcolourname');
INSERT INTO `auth_permission` VALUES ('113', 'Can delete 包包颜色', '29', 'delete_packcolourname');
INSERT INTO `auth_permission` VALUES ('114', 'Can add 材质价格配置', '30', 'add_packmaterials');
INSERT INTO `auth_permission` VALUES ('115', 'Can change 材质价格配置', '30', 'change_packmaterials');
INSERT INTO `auth_permission` VALUES ('116', 'Can delete 材质价格配置', '30', 'delete_packmaterials');
INSERT INTO `auth_permission` VALUES ('117', 'Can view 配件配置', '27', 'view_packbutton');
INSERT INTO `auth_permission` VALUES ('118', 'Can view 包包多色图', '28', 'view_packcolorimage');
INSERT INTO `auth_permission` VALUES ('119', 'Can view 包包颜色', '29', 'view_packcolourname');
INSERT INTO `auth_permission` VALUES ('120', 'Can view 材质价格配置', '30', 'view_packmaterials');
INSERT INTO `auth_permission` VALUES ('121', 'Can add 首页图片', '31', 'add_goodscategor');
INSERT INTO `auth_permission` VALUES ('122', 'Can change 首页图片', '31', 'change_goodscategor');
INSERT INTO `auth_permission` VALUES ('123', 'Can delete 首页图片', '31', 'delete_goodscategor');
INSERT INTO `auth_permission` VALUES ('124', 'Can view 首页图片', '31', 'view_goodscategor');
INSERT INTO `auth_permission` VALUES ('125', 'Can add 款式名称', '32', 'add_goodsstyle');
INSERT INTO `auth_permission` VALUES ('126', 'Can change 款式名称', '32', 'change_goodsstyle');
INSERT INTO `auth_permission` VALUES ('127', 'Can delete 款式名称', '32', 'delete_goodsstyle');
INSERT INTO `auth_permission` VALUES ('128', 'Can view 款式名称', '32', 'view_goodsstyle');
INSERT INTO `auth_permission` VALUES ('129', 'Can add 商品分类', '33', 'add_goodsname');
INSERT INTO `auth_permission` VALUES ('130', 'Can change 商品分类', '33', 'change_goodsname');
INSERT INTO `auth_permission` VALUES ('131', 'Can delete 商品分类', '33', 'delete_goodsname');
INSERT INTO `auth_permission` VALUES ('132', 'Can view 商品分类', '33', 'view_goodsname');

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_user_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_user_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `user_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('27', 'backpack', 'packbutton');
INSERT INTO `django_content_type` VALUES ('28', 'backpack', 'packcolorimage');
INSERT INTO `django_content_type` VALUES ('29', 'backpack', 'packcolourname');
INSERT INTO `django_content_type` VALUES ('26', 'backpack', 'packdiy');
INSERT INTO `django_content_type` VALUES ('30', 'backpack', 'packmaterials');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('18', 'hatbutton', 'hatbutton');
INSERT INTO `django_content_type` VALUES ('16', 'hatchange', 'hatchange');
INSERT INTO `django_content_type` VALUES ('22', 'hatchange', 'uploadfile');
INSERT INTO `django_content_type` VALUES ('21', 'hatchange', 'uploadimagelogo');
INSERT INTO `django_content_type` VALUES ('19', 'hatlogo', 'hatlogo');
INSERT INTO `django_content_type` VALUES ('23', 'hatmade', 'banner');
INSERT INTO `django_content_type` VALUES ('31', 'hatmade', 'goodscategor');
INSERT INTO `django_content_type` VALUES ('33', 'hatmade', 'goodsname');
INSERT INTO `django_content_type` VALUES ('32', 'hatmade', 'goodsstyle');
INSERT INTO `django_content_type` VALUES ('12', 'hatmade', 'hatcolorimage');
INSERT INTO `django_content_type` VALUES ('25', 'hatmade', 'hatcolourname');
INSERT INTO `django_content_type` VALUES ('13', 'hatmade', 'hatcolournumber');
INSERT INTO `django_content_type` VALUES ('14', 'hatmade', 'hatdiy');
INSERT INTO `django_content_type` VALUES ('15', 'hatmade', 'hatmessagereply');
INSERT INTO `django_content_type` VALUES ('17', 'hatmaterials', 'hatmaterials');
INSERT INTO `django_content_type` VALUES ('24', 'messagereply', 'hatmessagereply');
INSERT INTO `django_content_type` VALUES ('20', 'orderflow', 'orderflow');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('11', 'user', 'banner');
INSERT INTO `django_content_type` VALUES ('10', 'user', 'userprofile');
INSERT INTO `django_content_type` VALUES ('6', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('9', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('7', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('8', 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2018-12-16 09:04:15.845275');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2018-12-16 09:04:16.427308');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2018-12-16 09:04:16.832332');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2018-12-16 09:04:16.910336');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2018-12-16 09:04:16.927337');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2018-12-16 09:04:16.943338');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2018-12-16 09:04:16.963339');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2018-12-16 09:04:16.971339');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2018-12-16 09:04:17.032343');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2018-12-16 09:04:17.049344');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0009_alter_user_last_name_max_length', '2018-12-16 09:04:17.067345');
INSERT INTO `django_migrations` VALUES ('12', 'user', '0001_initial', '2018-12-16 09:04:17.642378');
INSERT INTO `django_migrations` VALUES ('13', 'admin', '0001_initial', '2018-12-16 09:04:17.867391');
INSERT INTO `django_migrations` VALUES ('14', 'admin', '0002_logentry_remove_auto_add', '2018-12-16 09:04:17.896392');
INSERT INTO `django_migrations` VALUES ('15', 'hatbutton', '0001_initial', '2018-12-16 09:04:17.958396');
INSERT INTO `django_migrations` VALUES ('16', 'hatmaterials', '0001_initial', '2018-12-16 09:04:18.023400');
INSERT INTO `django_migrations` VALUES ('17', 'hatmade', '0001_initial', '2018-12-16 09:04:19.051458');
INSERT INTO `django_migrations` VALUES ('18', 'hatchange', '0001_initial', '2018-12-16 09:04:19.298473');
INSERT INTO `django_migrations` VALUES ('20', 'orderflow', '0001_initial', '2018-12-16 09:04:19.579489');
INSERT INTO `django_migrations` VALUES ('21', 'sessions', '0001_initial', '2018-12-16 09:04:19.660493');
INSERT INTO `django_migrations` VALUES ('22', 'xadmin', '0001_initial', '2018-12-16 09:04:20.139521');
INSERT INTO `django_migrations` VALUES ('23', 'xadmin', '0002_log', '2018-12-16 09:04:20.377534');
INSERT INTO `django_migrations` VALUES ('24', 'xadmin', '0003_auto_20160715_0100', '2018-12-16 09:04:20.486541');
INSERT INTO `django_migrations` VALUES ('25', 'hatchange', '0002_hatchange_hat_message', '2018-12-16 09:29:09.619714');
INSERT INTO `django_migrations` VALUES ('26', 'hatchange', '0003_remove_hatchange_hat_message', '2018-12-17 00:48:22.703272');
INSERT INTO `django_migrations` VALUES ('27', 'hatmade', '0002_auto_20181217_1306', '2018-12-17 05:06:12.763626');
INSERT INTO `django_migrations` VALUES ('28', 'hatmade', '0003_auto_20181217_1306', '2018-12-17 05:07:02.522472');
INSERT INTO `django_migrations` VALUES ('29', 'hatchange', '0004_remove_hatchange_hat_change', '2018-12-17 05:59:04.477037');
INSERT INTO `django_migrations` VALUES ('30', 'hatmade', '0004_auto_20181217_1404', '2018-12-17 06:04:32.619806');
INSERT INTO `django_migrations` VALUES ('31', 'hatchange', '0005_hatchange_hat_change', '2018-12-17 06:04:32.815817');
INSERT INTO `django_migrations` VALUES ('32', 'orderflow', '0002_orderflow_hat_update_id', '2018-12-17 09:05:02.956964');
INSERT INTO `django_migrations` VALUES ('33', 'orderflow', '0003_remove_orderflow_hat_update_id', '2018-12-17 09:33:04.374135');
INSERT INTO `django_migrations` VALUES ('34', 'hatchange', '0006_uploadimagelogo', '2018-12-22 03:08:25.779527');
INSERT INTO `django_migrations` VALUES ('35', 'hatchange', '0007_uploadfile', '2018-12-22 06:52:26.183412');
INSERT INTO `django_migrations` VALUES ('36', 'hatchange', '0008_delete_uploadfile', '2018-12-22 07:42:38.316696');
INSERT INTO `django_migrations` VALUES ('37', 'hatchange', '0009_uploadfile', '2018-12-22 07:45:32.010631');
INSERT INTO `django_migrations` VALUES ('38', 'hatchange', '0010_auto_20181224_0828', '2018-12-24 00:28:44.242364');
INSERT INTO `django_migrations` VALUES ('39', 'hatchange', '0011_remove_hatchange_hat_change_image', '2018-12-24 02:27:44.650772');
INSERT INTO `django_migrations` VALUES ('40', 'hatchange', '0012_hatchange_hat_change_image', '2018-12-24 02:31:32.088781');
INSERT INTO `django_migrations` VALUES ('41', 'hatchange', '0013_remove_hatchange_hat_change_image', '2018-12-26 10:03:29.152106');
INSERT INTO `django_migrations` VALUES ('42', 'hatchange', '0014_hatchange_hat_change_image', '2018-12-26 10:05:00.337321');
INSERT INTO `django_migrations` VALUES ('43', 'hatchange', '0015_auto_20181226_2132', '2018-12-26 13:32:18.115174');
INSERT INTO `django_migrations` VALUES ('44', 'hatchange', '0016_auto_20181227_0820', '2018-12-27 00:20:20.245837');
INSERT INTO `django_migrations` VALUES ('45', 'hatchange', '0017_auto_20181227_1121', '2018-12-27 03:22:06.282626');
INSERT INTO `django_migrations` VALUES ('46', 'hatchange', '0018_auto_20181227_1124', '2018-12-27 03:24:52.401128');
INSERT INTO `django_migrations` VALUES ('47', 'hatmade', '0005_auto_20181228_1415', '2018-12-28 06:16:00.441734');
INSERT INTO `django_migrations` VALUES ('48', 'user', '0002_auto_20190102_0822', '2019-01-02 00:23:07.009365');
INSERT INTO `django_migrations` VALUES ('49', 'user', '0003_delete_banner', '2019-01-02 01:05:45.473701');
INSERT INTO `django_migrations` VALUES ('50', 'hatmade', '0006_banner', '2019-01-02 01:06:10.965159');
INSERT INTO `django_migrations` VALUES ('51', 'hatmade', '0007_hatcolorimage_color', '2019-01-14 01:45:57.584702');
INSERT INTO `django_migrations` VALUES ('52', 'hatmade', '0008_hatdiy_color', '2019-01-14 02:16:45.123375');
INSERT INTO `django_migrations` VALUES ('53', 'hatmade', '0002_delete_hatmessagereply', '2019-01-14 13:44:22.494369');
INSERT INTO `django_migrations` VALUES ('54', 'messagereply', '0001_initial', '2019-01-14 13:46:51.250878');
INSERT INTO `django_migrations` VALUES ('55', 'messagereply', '0002_auto_20190114_2220', '2019-01-14 14:21:08.469544');
INSERT INTO `django_migrations` VALUES ('56', 'messagereply', '0003_hatmessagereply_hat_update_id', '2019-01-14 14:24:17.311345');
INSERT INTO `django_migrations` VALUES ('57', 'hatmade', '0003_remove_hatdiy_color', '2019-01-15 00:28:26.282836');
INSERT INTO `django_migrations` VALUES ('58', 'messagereply', '0004_remove_hatmessagereply_hat_update_id', '2019-01-16 02:25:46.220935');
INSERT INTO `django_migrations` VALUES ('59', 'messagereply', '0005_auto_20190116_1457', '2019-01-16 06:57:33.529273');
INSERT INTO `django_migrations` VALUES ('60', 'messagereply', '0006_auto_20190117_0822', '2019-01-17 00:22:16.613339');
INSERT INTO `django_migrations` VALUES ('61', 'hatmade', '0004_auto_20190118_1346', '2019-01-18 05:46:22.490714');
INSERT INTO `django_migrations` VALUES ('62', 'messagereply', '0007_auto_20190118_1506', '2019-01-18 07:06:28.481601');
INSERT INTO `django_migrations` VALUES ('63', 'hatmade', '0005_auto_20190122_0919', '2019-01-22 01:19:59.041521');
INSERT INTO `django_migrations` VALUES ('64', 'hatmade', '0006_auto_20190122_0921', '2019-01-22 01:21:31.758824');
INSERT INTO `django_migrations` VALUES ('65', 'hatmade', '0007_hatdiy_hat_null_button', '2019-01-22 02:49:31.966131');
INSERT INTO `django_migrations` VALUES ('66', 'hatmade', '0008_auto_20190122_1104', '2019-01-22 03:04:16.020696');
INSERT INTO `django_migrations` VALUES ('67', 'hatmade', '0009_auto_20190122_1110', '2019-01-22 03:10:28.570005');
INSERT INTO `django_migrations` VALUES ('68', 'messagereply', '0008_hatmessagereply_state', '2019-01-24 02:06:08.397358');
INSERT INTO `django_migrations` VALUES ('69', 'orderflow', '0002_orderflow_state', '2019-01-24 02:10:23.683960');
INSERT INTO `django_migrations` VALUES ('70', 'hatmade', '0010_hatcolourname_state', '2019-01-24 02:15:59.706179');
INSERT INTO `django_migrations` VALUES ('71', 'hatmade', '0011_remove_hatcolourname_state', '2019-01-24 02:17:46.182269');
INSERT INTO `django_migrations` VALUES ('72', 'hatmade', '0002_auto_20190124_1355', '2019-01-24 05:55:35.530000');
INSERT INTO `django_migrations` VALUES ('73', 'hatmade', '0003_auto_20190124_1435', '2019-01-24 06:35:27.261000');
INSERT INTO `django_migrations` VALUES ('74', 'hatmade', '0004_auto_20190124_1437', '2019-01-24 06:37:16.854000');
INSERT INTO `django_migrations` VALUES ('75', 'hatchange', '0002_auto_20190124_1713', '2019-01-24 09:13:51.244000');
INSERT INTO `django_migrations` VALUES ('76', 'hatmade', '0005_hatdiy_hat_status', '2019-01-25 08:50:00.293000');
INSERT INTO `django_migrations` VALUES ('77', 'messagereply', '0002_hatmessagereply_users', '2019-02-20 01:57:26.920816');
INSERT INTO `django_migrations` VALUES ('78', 'messagereply', '0003_remove_hatmessagereply_users', '2019-02-20 02:35:08.125622');
INSERT INTO `django_migrations` VALUES ('79', 'messagereply', '0004_hatmessagereply_user', '2019-02-20 02:36:20.796822');
INSERT INTO `django_migrations` VALUES ('80', 'user', '0002_auto_20190222_1626', '2019-02-22 08:26:33.472883');
INSERT INTO `django_migrations` VALUES ('81', 'hatchange', '0003_auto_20190307_0822', '2019-03-07 00:22:57.803000');
INSERT INTO `django_migrations` VALUES ('82', 'hatchange', '0004_hatchange_hat_change_image5', '2019-03-08 07:06:05.226000');
INSERT INTO `django_migrations` VALUES ('83', 'hatmade', '0006_auto_20190312_0841', '2019-03-12 00:41:28.450000');
INSERT INTO `django_migrations` VALUES ('84', 'hatmade', '0007_auto_20190312_0927', '2019-03-12 01:28:03.001000');
INSERT INTO `django_migrations` VALUES ('86', 'backpack', '0002_packdiy_pack_price', '2019-03-12 01:56:45.473000');
INSERT INTO `django_migrations` VALUES ('87', 'hatmade', '0008_hatdiy_status2', '2019-03-12 07:50:19.833000');
INSERT INTO `django_migrations` VALUES ('88', 'hatmade', '0009_remove_hatdiy_status2', '2019-03-12 07:56:51.634000');
INSERT INTO `django_migrations` VALUES ('89', 'backpack', '0003_auto_20190313_0848', '2019-03-13 00:49:55.499000');
INSERT INTO `django_migrations` VALUES ('90', 'backpack', '0004_auto_20190313_0852', '2019-03-13 00:52:08.780000');
INSERT INTO `django_migrations` VALUES ('91', 'backpack', '0005_packdiy_pack_colour', '2019-03-13 02:09:33.263000');
INSERT INTO `django_migrations` VALUES ('92', 'hatmade', '0002_auto_20190313_1623', '2019-03-13 08:23:58.239580');
INSERT INTO `django_migrations` VALUES ('93', 'hatmade', '0003_hatdiy_goods_categor', '2019-03-13 09:04:42.104361');
INSERT INTO `django_migrations` VALUES ('94', 'hatmade', '0004_remove_hatdiy_goods_categor', '2019-03-13 09:43:32.469650');
INSERT INTO `django_migrations` VALUES ('95', 'hatmade', '0005_hatdiy_goods_categor', '2019-03-13 09:52:25.896160');
INSERT INTO `django_migrations` VALUES ('96', 'hatchange', '0002_hatchange_user', '2019-03-14 06:43:02.931000');
INSERT INTO `django_migrations` VALUES ('97', 'hatmade', '0002_auto_20190318_0916', '2019-03-18 01:17:03.958227');
INSERT INTO `django_migrations` VALUES ('98', 'hatmade', '0003_auto_20190318_0935', '2019-03-18 01:35:25.955027');
INSERT INTO `django_migrations` VALUES ('99', 'hatmade', '0004_goodsstyle', '2019-03-20 08:52:36.465413');
INSERT INTO `django_migrations` VALUES ('100', 'hatmade', '0005_hatdiy_goods_style', '2019-03-20 08:59:46.423413');
INSERT INTO `django_migrations` VALUES ('101', 'hatmade', '0002_auto_20190321_1426', '2019-03-21 06:26:16.768948');
INSERT INTO `django_migrations` VALUES ('102', 'hatmade', '0003_auto_20190321_1542', '2019-03-21 07:42:53.913890');
INSERT INTO `django_migrations` VALUES ('103', 'hatmade', '0004_remove_hatdiy_goods_style', '2019-03-21 07:45:16.856066');
INSERT INTO `django_migrations` VALUES ('104', 'hatmade', '0005_goodsname_goods_style', '2019-03-21 07:50:45.735877');
INSERT INTO `django_migrations` VALUES ('105', 'hatmade', '0006_remove_goodsname_goods_style', '2019-03-21 07:53:59.585964');
INSERT INTO `django_migrations` VALUES ('106', 'hatmade', '0007_hatdiy_goods_style', '2019-03-21 07:55:10.085997');
INSERT INTO `django_migrations` VALUES ('107', 'hatmade', '0008_goodscategor_goods_name', '2019-03-21 07:58:25.669183');
INSERT INTO `django_migrations` VALUES ('108', 'hatmade', '0009_auto_20190321_1603', '2019-03-21 08:03:27.150427');
INSERT INTO `django_migrations` VALUES ('109', 'hatmade', '0010_auto_20190321_1603', '2019-03-21 08:04:01.333382');
INSERT INTO `django_migrations` VALUES ('110', 'hatmade', '0011_hatdiy_goods_name', '2019-03-22 12:15:05.391305');
INSERT INTO `django_migrations` VALUES ('111', 'hatmade', '0012_remove_hatdiy_goods_name', '2019-03-23 05:17:41.218526');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('0191i82o7hmwewyoxx0qg0hayzs0s1l3', 'NDA0NWNmODcxYmYxYTk3ZTUwOTBjMjIxZjlkZTVjZjJkNDAxNzQ0ZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0bWFkZSIsImhhdGRpeSJdLCIiXX0=', '2019-01-25 05:47:41.784748');
INSERT INTO `django_session` VALUES ('07r8782n3u9huafyiahetqqlmynjh9y7', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-02-07 01:02:03.490442');
INSERT INTO `django_session` VALUES ('0cw2hstwol3c9f1xt4fbu1dn9q6es1mw', 'NDA0NWNmODcxYmYxYTk3ZTUwOTBjMjIxZjlkZTVjZjJkNDAxNzQ0ZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0bWFkZSIsImhhdGRpeSJdLCIiXX0=', '2019-03-27 11:46:26.564166');
INSERT INTO `django_session` VALUES ('0i0md7jxmv6yg1xkdamypm3nkxb9n0hw', 'YWFjOTRmYTdiNWQ1YTcyODhhMjVjZDY5MGM3NjdiMDYxOTEzYjZhNjp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYWRjN2Y2ZDExNzA2YzAzYzMxN2U3YjdiNDNhODg2YjE2YmI1MmYyIiwiTElTVF9RVUVSWSI6W1sidXNlciIsInVzZXJwcm9maWxlIl0sIiJdfQ==', '2019-03-11 07:19:31.218019');
INSERT INTO `django_session` VALUES ('0mhmh3m7tx3ou4nbff7c634negwsqkjd', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-02-13 04:11:59.106601');
INSERT INTO `django_session` VALUES ('0nfuyh83yoizby4eq9cjak25tqeugqds', 'NDE3MmJlMThiMWQ1M2MwNDk1NWYxZWEyYTI0ZjIzYzdjOWRjMjZhMDp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYWRjN2Y2ZDExNzA2YzAzYzMxN2U3YjdiNDNhODg2YjE2YmI1MmYyIiwiTElTVF9RVUVSWSI6W1siYXV0aCIsImdyb3VwIl0sIiJdfQ==', '2019-03-11 07:09:48.449019');
INSERT INTO `django_session` VALUES ('0r7h0sax3t3t40wkwrjsphcpj7ae7xi0', 'OWZkN2RjNTMwNzBlNTg2OTZmMWJlNjgwYWEzMjA1OTE4YjhkZjY5NDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1sidXNlciIsInVzZXJwcm9maWxlIl0sIiJdfQ==', '2019-03-11 07:00:35.837019');
INSERT INTO `django_session` VALUES ('0wahaaik7v5id5c0fb07orykv8p1uky7', 'ZGUxNGI3NDhiNTc1Njg2YzMwNjM2NDMyNzhhM2ViZTk5ZjRhZDk3MDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0bWFkZSIsImhhdG1lc3NhZ2VyZXBseSJdLCIiXX0=', '2018-12-30 09:56:29.372503');
INSERT INTO `django_session` VALUES ('0yxg2skds3z0aim6lb8fmuxmcf0eum8a', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-02-13 06:30:00.614219');
INSERT INTO `django_session` VALUES ('18xpmi92l3xeq81037pkl9khq2p4rl4j', 'NDAwZTJmMjkyOGYwZmI1ZTcwYzA4YWM0MjdiMTAwNzBiZDk1MjJkNjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1sibWVzc2FnZXJlcGx5IiwiaGF0bWVzc2FnZXJlcGx5Il0sIiJdfQ==', '2019-02-01 07:02:30.923013');
INSERT INTO `django_session` VALUES ('1b9dn6ed5n09fr3tmdw2acqzff5g7jpo', 'Y2I1ZGZhMzhkNzBjZTFhYzMxZWJlMmEzNTY3MGMwMzU4ODg2NzM3Yzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0Y2hhbmdlIiwidXBsb2FkZmlsZSJdLCIiXX0=', '2019-02-13 07:41:57.393646');
INSERT INTO `django_session` VALUES ('1sl913zmmrvkhls1w77wag425wve8eoy', 'OWZkN2RjNTMwNzBlNTg2OTZmMWJlNjgwYWEzMjA1OTE4YjhkZjY5NDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1sidXNlciIsInVzZXJwcm9maWxlIl0sIiJdfQ==', '2019-03-11 07:08:03.736019');
INSERT INTO `django_session` VALUES ('1y2h2ad3qpfs5cggtmizjjmetlpb04dh', 'ZjUyMzM4OTUxMTQ5ZDcyYWE3ZjZkMTFlNjQ0NzQ5ZmZiZmJhNTBhNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0bWFkZSIsImdvb2RzY2F0ZWdvciJdLCIiXX0=', '2019-03-27 08:31:41.320067');
INSERT INTO `django_session` VALUES ('254syosno138tx93ocqamhtpojt14zex', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-01-26 06:07:39.544653');
INSERT INTO `django_session` VALUES ('2jiqeajpf5qlvp68s3k7n3eiqurtkboa', 'NzYyZjU5ZTJhMDQ0ZjY4ZDNiNDZiMjM3NzVmOGU2MzNjMzMwNzUyYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxYzhjZWMyZjM2MzU3NDA1OGRjNTI0ZjBjYzBhYzg0NjA4MTc4Y2M4In0=', '2018-12-30 10:54:27.098417');
INSERT INTO `django_session` VALUES ('2nutdm5jucbh34ujx2ucppy82ou73y7b', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-02-13 04:17:56.838601');
INSERT INTO `django_session` VALUES ('36vvoro8ywpn5myhjcq1cw5vdyqno6bq', 'OWZkN2RjNTMwNzBlNTg2OTZmMWJlNjgwYWEzMjA1OTE4YjhkZjY5NDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1sidXNlciIsInVzZXJwcm9maWxlIl0sIiJdfQ==', '2019-03-11 07:16:49.266019');
INSERT INTO `django_session` VALUES ('3awe4jsvbb3lu2ucc697oz51qpliczin', 'YThmNjRhODk1ZjlmOTg0Y2U0ODMxNGYzN2Y5MzUxODFiM2EyNDJlYTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0bWFkZSIsImhhdGNvbG9yaW1hZ2UiXSwiIl19', '2019-02-05 03:12:24.607642');
INSERT INTO `django_session` VALUES ('4nv7tfv4hdpby61t28323ahwbr583ke6', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-02-12 02:03:40.493000');
INSERT INTO `django_session` VALUES ('5dmjmkr0q0k3rwsu3yt4h47uyx07sojb', 'NDAwZTJmMjkyOGYwZmI1ZTcwYzA4YWM0MjdiMTAwNzBiZDk1MjJkNjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1sibWVzc2FnZXJlcGx5IiwiaGF0bWVzc2FnZXJlcGx5Il0sIiJdfQ==', '2019-03-06 05:38:02.958688');
INSERT INTO `django_session` VALUES ('5uv12el49ugrmtsba8vxh1995vcdaly2', 'OWZkN2RjNTMwNzBlNTg2OTZmMWJlNjgwYWEzMjA1OTE4YjhkZjY5NDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1sidXNlciIsInVzZXJwcm9maWxlIl0sIiJdfQ==', '2019-03-11 06:49:33.577019');
INSERT INTO `django_session` VALUES ('5xuhl9dlmbzara40ec365k29jm9fzdm8', 'OWZkN2RjNTMwNzBlNTg2OTZmMWJlNjgwYWEzMjA1OTE4YjhkZjY5NDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1sidXNlciIsInVzZXJwcm9maWxlIl0sIiJdfQ==', '2019-03-12 08:23:36.539000');
INSERT INTO `django_session` VALUES ('63td6ynav95gpta29ome1c7v6yb4xbtc', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-01-30 09:35:46.425236');
INSERT INTO `django_session` VALUES ('66webt513k1ho77tc6lqakil74wlfp3j', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-03-25 06:05:25.322680');
INSERT INTO `django_session` VALUES ('6bnb27a1s776srahd0ivb6bshk1rktx8', 'OWZkN2RjNTMwNzBlNTg2OTZmMWJlNjgwYWEzMjA1OTE4YjhkZjY5NDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1sidXNlciIsInVzZXJwcm9maWxlIl0sIiJdfQ==', '2019-03-12 08:05:38.320000');
INSERT INTO `django_session` VALUES ('6vfvti6eyc2cvt8dg3n8o2fuott859ga', 'NDA0NWNmODcxYmYxYTk3ZTUwOTBjMjIxZjlkZTVjZjJkNDAxNzQ0ZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0bWFkZSIsImhhdGRpeSJdLCIiXX0=', '2019-01-04 02:38:41.892344');
INSERT INTO `django_session` VALUES ('779squ1cc3m0od2gc4y2xpe8pl9ccynv', 'MTA2M2JiNDE4MjU5OTFjMWY1NDIwNWVjYmE5NDE5ZDQ3ZjZiZTMyOTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0bWFkZSIsImhhdGNvbG91cm5hbWUiXSwiIl19', '2019-02-07 02:18:12.624782');
INSERT INTO `django_session` VALUES ('7goef08blhtcvsibwi3tfq6m58cln8f4', 'NDAwZTJmMjkyOGYwZmI1ZTcwYzA4YWM0MjdiMTAwNzBiZDk1MjJkNjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1sibWVzc2FnZXJlcGx5IiwiaGF0bWVzc2FnZXJlcGx5Il0sIiJdfQ==', '2019-02-01 07:20:54.522135');
INSERT INTO `django_session` VALUES ('7mywbl7ra19a4dofssv0otd69ofwuy27', 'OWZkN2RjNTMwNzBlNTg2OTZmMWJlNjgwYWEzMjA1OTE4YjhkZjY5NDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1sidXNlciIsInVzZXJwcm9maWxlIl0sIiJdfQ==', '2019-03-11 07:04:45.261019');
INSERT INTO `django_session` VALUES ('7ora9xayv7a7q2i7s9nnwynu922sq003', 'OWZkN2RjNTMwNzBlNTg2OTZmMWJlNjgwYWEzMjA1OTE4YjhkZjY5NDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1sidXNlciIsInVzZXJwcm9maWxlIl0sIiJdfQ==', '2019-03-12 02:11:52.116000');
INSERT INTO `django_session` VALUES ('86opr027pewwhqr8zem2blf5s3f0ofxa', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-03-28 08:40:36.826000');
INSERT INTO `django_session` VALUES ('8a6v26dxzbl5rfwochn9zvpaxg4hu6yu', 'NDA0NWNmODcxYmYxYTk3ZTUwOTBjMjIxZjlkZTVjZjJkNDAxNzQ0ZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0bWFkZSIsImhhdGRpeSJdLCIiXX0=', '2019-01-26 13:42:04.800946');
INSERT INTO `django_session` VALUES ('93dbtwstwjkclwmsamlu100rzmubhoyz', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-02-13 02:18:59.073000');
INSERT INTO `django_session` VALUES ('9y1bkdvvkvwihyvq18gylg5ste75oyn7', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-03-05 06:22:48.355096');
INSERT INTO `django_session` VALUES ('b4fqmyhyyllt32pki8zsq2t0gdhy80d5', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-01-23 15:00:16.746442');
INSERT INTO `django_session` VALUES ('b563uaaodraihhzprcbaf3z8zphvyf1t', 'NDAwZTJmMjkyOGYwZmI1ZTcwYzA4YWM0MjdiMTAwNzBiZDk1MjJkNjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1sibWVzc2FnZXJlcGx5IiwiaGF0bWVzc2FnZXJlcGx5Il0sIiJdfQ==', '2019-02-01 08:38:51.538645');
INSERT INTO `django_session` VALUES ('bpseuc4wo0gzan1cxkdsvquesewgq1a2', 'OTE4NGViODk2MTY0ZWM4OTY4Y2I2ZGRkNDcyNGJmMTY1YmU1ZmVlYzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1sibWVzc2FnZXJlcGx5IiwiaGF0bWVzc2FnZXJlcGx5Il0sIl9jb2xzPWlkLmhhdF9yZW1hcmsuaGF0X21lc3NhZ2VfcmVwbHkuYWRkX3RpbWUuaGF0X3VwZGF0ZV9JZCJdfQ==', '2019-01-30 10:10:56.838945');
INSERT INTO `django_session` VALUES ('cgx2cz9gai15koeazengfxl9uuk96ldu', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-02-05 05:25:59.731840');
INSERT INTO `django_session` VALUES ('ck1ekb805wk18fn58pl8foc910qohonf', 'NDA0NWNmODcxYmYxYTk3ZTUwOTBjMjIxZjlkZTVjZjJkNDAxNzQ0ZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0bWFkZSIsImhhdGRpeSJdLCIiXX0=', '2019-01-28 02:50:58.036795');
INSERT INTO `django_session` VALUES ('cxdthdx2c0vu85xgajksx1s79p0jfibq', 'NDA0NWNmODcxYmYxYTk3ZTUwOTBjMjIxZjlkZTVjZjJkNDAxNzQ0ZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0bWFkZSIsImhhdGRpeSJdLCIiXX0=', '2019-04-01 02:02:59.801235');
INSERT INTO `django_session` VALUES ('dijjtd2x25yf4vvgqtaxxqvnka18ndun', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-03-05 06:22:26.130096');
INSERT INTO `django_session` VALUES ('dj9muwf8fpubn92wu5ljc1t38ks509di', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-02-04 00:42:51.786527');
INSERT INTO `django_session` VALUES ('dn3jv3exe7qr55iebvndftl829ilt0me', 'MmE2NjE2NmNlNTVmZjBjZTg1MDUwZTgwZmI4NTkyZjMwMTQ1OTFlNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0Y2hhbmdlIiwiaGF0Y2hhbmdlIl0sIiJdfQ==', '2019-03-07 00:15:20.138004');
INSERT INTO `django_session` VALUES ('dwyhcsv8a9u8avn5atkvfthj7flzt9di', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-04-01 02:23:14.445643');
INSERT INTO `django_session` VALUES ('dy8gcozfejo7oj1hyi1plnarh78994wl', 'MDRhOWI0OWUyNmZlYTQzZTAxNzg1ZmM2YWQ0MTFjMjg4NWIwOGI1NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1sib3JkZXJmbG93Iiwib3JkZXJmbG93Il0sIl9yZWxfaGF0X29yZGVyX19oYXRfdXBkYXRlX0lkX19leGFjdD03NCJdfQ==', '2019-02-06 08:02:34.585257');
INSERT INTO `django_session` VALUES ('eculwrov9gqcrnxnfkn07n1r39bgpx52', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-03-05 01:51:50.099801');
INSERT INTO `django_session` VALUES ('epajjo8m8570jcg767cxsei38jndegng', 'NDA0NWNmODcxYmYxYTk3ZTUwOTBjMjIxZjlkZTVjZjJkNDAxNzQ0ZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0bWFkZSIsImhhdGRpeSJdLCIiXX0=', '2019-04-06 04:30:32.914016');
INSERT INTO `django_session` VALUES ('fayitfsiqbke9xib4oy8bfvpodsz62p7', 'ZTVhMjgxMGEyZTJiYjhmNTJiMzEzOGIwZDNiMjI3ZTE5YzQ5N2VlNzp7Il9hdXRoX3VzZXJfaWQiOiIyMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGZlYjhiZTdlZDllMWZkN2ZlY2U2ZjlmZmMzMDNjZWRiMjI1NjIyZCIsIkxJU1RfUVVFUlkiOltbInVzZXIiLCJ1c2VycHJvZmlsZSJdLCIiXX0=', '2019-05-01 08:34:33.341001');
INSERT INTO `django_session` VALUES ('g2i565dydxrdooh7a3vhoa6w5dxxov1v', 'YThmNjRhODk1ZjlmOTg0Y2U0ODMxNGYzN2Y5MzUxODFiM2EyNDJlYTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0bWFkZSIsImhhdGNvbG9yaW1hZ2UiXSwiIl19', '2019-02-07 06:34:21.740000');
INSERT INTO `django_session` VALUES ('g6664zt8vss4su19u7pouvuc8k3ds08r', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-03-05 07:01:00.685096');
INSERT INTO `django_session` VALUES ('gb382fw2p4fx6th6wx0f6uwo5kclhu0s', 'OWZkN2RjNTMwNzBlNTg2OTZmMWJlNjgwYWEzMjA1OTE4YjhkZjY5NDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1sidXNlciIsInVzZXJwcm9maWxlIl0sIiJdfQ==', '2019-03-11 06:52:29.287019');
INSERT INTO `django_session` VALUES ('gj5jo1y4jno68myjt8ovz27h4fr5jps2', 'NDAwZTJmMjkyOGYwZmI1ZTcwYzA4YWM0MjdiMTAwNzBiZDk1MjJkNjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1sibWVzc2FnZXJlcGx5IiwiaGF0bWVzc2FnZXJlcGx5Il0sIiJdfQ==', '2019-02-07 01:52:07.174243');
INSERT INTO `django_session` VALUES ('gn906wl1oi2d5cdq5cg7l0rq6x4sh3mq', 'YmM4NjBkODg2OGFlNGQ0ZWMzMjMwN2Q5NmE3YWM3M2U5NjgyM2M1ZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1sieGFkbWluIiwibG9nIl0sIl9xXz0iXX0=', '2019-03-27 01:55:04.349000');
INSERT INTO `django_session` VALUES ('h5mvybgtu9blvrn4e7jcalpmti6omhih', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-02-13 06:20:03.994016');
INSERT INTO `django_session` VALUES ('hjish8hxwp2zaymap1f3moi27vet6w7k', 'NDA0NWNmODcxYmYxYTk3ZTUwOTBjMjIxZjlkZTVjZjJkNDAxNzQ0ZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0bWFkZSIsImhhdGRpeSJdLCIiXX0=', '2019-02-07 06:00:56.238000');
INSERT INTO `django_session` VALUES ('hpt6tcnsv34i9va2rc142k51les303ys', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-01-25 06:54:48.047037');
INSERT INTO `django_session` VALUES ('hurmgka7hpb2c4gslb8j79n7qa1xp5m7', 'YWFjOTRmYTdiNWQ1YTcyODhhMjVjZDY5MGM3NjdiMDYxOTEzYjZhNjp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYWRjN2Y2ZDExNzA2YzAzYzMxN2U3YjdiNDNhODg2YjE2YmI1MmYyIiwiTElTVF9RVUVSWSI6W1sidXNlciIsInVzZXJwcm9maWxlIl0sIiJdfQ==', '2019-03-11 07:05:02.587019');
INSERT INTO `django_session` VALUES ('i015gmcmmnf99awqqk187mrkgbarbema', 'NDAwZTJmMjkyOGYwZmI1ZTcwYzA4YWM0MjdiMTAwNzBiZDk1MjJkNjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1sibWVzc2FnZXJlcGx5IiwiaGF0bWVzc2FnZXJlcGx5Il0sIiJdfQ==', '2019-03-06 02:38:51.193823');
INSERT INTO `django_session` VALUES ('iapc54mgrwj2vgnkz27d778qarv95ecv', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-02-05 08:57:09.745523');
INSERT INTO `django_session` VALUES ('ix63nbdu4klg2vwohff3km0742cspx2a', 'NmJmYmVkYWIzZDc2NDk3N2M0MzM1NWY5OTY0NDQzNjFmODI2OTMzNzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0bWFkZSIsImhhdG1lc3NhZ2VyZXBseSJdLCJfY29scz1pZC5oYXRfcmVtYXJrLmhhdF9tZXNzYWdlX3JlcGx5LmFkZF90aW1lLmhhdF91cGRhdGVfSWQiXX0=', '2019-01-03 06:45:05.648979');
INSERT INTO `django_session` VALUES ('ixth3uq5ehl8hslo14zc2xv3b01cjghg', 'MjRkNzliYzY1NjJhZDJhYTE4NGUxOThmZWVmMzlhMDA2Nzg3YjNkOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxYzhjZWMyZjM2MzU3NDA1OGRjNTI0ZjBjYzBhYzg0NjA4MTc4Y2M4IiwiTElTVF9RVUVSWSI6W1sib3JkZXJmbG93Iiwib3JkZXJmbG93Il0sIiJdfQ==', '2018-12-31 08:01:49.267279');
INSERT INTO `django_session` VALUES ('jtmupd0a6z7iicp3zz5vo46zn4zjulj7', 'NDA0NWNmODcxYmYxYTk3ZTUwOTBjMjIxZjlkZTVjZjJkNDAxNzQ0ZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0bWFkZSIsImhhdGRpeSJdLCIiXX0=', '2019-01-28 05:10:38.252091');
INSERT INTO `django_session` VALUES ('l4d1mg9lzow13ibnowumus6jxj08217e', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-02-04 00:15:08.500279');
INSERT INTO `django_session` VALUES ('l74z0ng7pvpil2blovj70ozvclhqxfkn', 'NzYyZjU5ZTJhMDQ0ZjY4ZDNiNDZiMjM3NzVmOGU2MzNjMzMwNzUyYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxYzhjZWMyZjM2MzU3NDA1OGRjNTI0ZjBjYzBhYzg0NjA4MTc4Y2M4In0=', '2018-12-31 00:39:51.886055');
INSERT INTO `django_session` VALUES ('m8hjq9s4d5unhplba9skc4g3rgteek20', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-03-06 08:32:04.140529');
INSERT INTO `django_session` VALUES ('matu43t6po03sll46dk2f7qzkr7xi1c6', 'NDA0NWNmODcxYmYxYTk3ZTUwOTBjMjIxZjlkZTVjZjJkNDAxNzQ0ZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0bWFkZSIsImhhdGRpeSJdLCIiXX0=', '2019-04-05 08:25:46.734191');
INSERT INTO `django_session` VALUES ('mdmqa02tgm3j8i6enf776yjbxrlkqgz8', 'YThmNjRhODk1ZjlmOTg0Y2U0ODMxNGYzN2Y5MzUxODFiM2EyNDJlYTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0bWFkZSIsImhhdGNvbG9yaW1hZ2UiXSwiIl19', '2019-01-28 01:48:28.530335');
INSERT INTO `django_session` VALUES ('nc9663eiowhr117mnkf4cn14ttn6s6zs', 'NTQxNjAyODBmZjI2YTY1ZTRiNzMxNjVlZWM0M2UwMTY3ODYzMjBiYTp7fQ==', '2019-03-05 08:06:11.821096');
INSERT INTO `django_session` VALUES ('pi5thvzpp8d19jtawzqkckdsa9bkklbu', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-02-12 06:22:03.005000');
INSERT INTO `django_session` VALUES ('pmmsf7xea2mxo4sp58uhzb5evjicteeq', 'ZWMyNWFhODY2MjdkZDEyNzMwMjM3YTI5NzJhYmUyOWQyNjU2MTBiMTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1sib3JkZXJmbG93Iiwib3JkZXJmbG93Il0sIl9yZWxfaGF0X29yZGVyX19oYXRfdXBkYXRlX0lkX19leGFjdD04Il19', '2018-12-31 09:30:59.525994');
INSERT INTO `django_session` VALUES ('pq6yu0zumqtgqm5ucno5pfpqlynvjpyh', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-03-27 02:44:57.797000');
INSERT INTO `django_session` VALUES ('q1p2m9p59b5ugr37b7udfn5rla041qv7', 'NDA0NWNmODcxYmYxYTk3ZTUwOTBjMjIxZjlkZTVjZjJkNDAxNzQ0ZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0bWFkZSIsImhhdGRpeSJdLCIiXX0=', '2019-01-28 06:43:42.122000');
INSERT INTO `django_session` VALUES ('q8whpinh65yqsbjz07urhkjwklqxj6g5', 'NGRhMWE0MTY1MDQ2MjhlMzZkNmY4ZDczNDJiMjc4YTVhZmMzZGVkNjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siYmFja3BhY2siLCJwYWNrY29sb3JpbWFnZSJdLCIiXX0=', '2019-03-27 05:34:59.527000');
INSERT INTO `django_session` VALUES ('r48jbt16ahpv1urgh7fpd5je78oyqwlm', 'MmE2NjE2NmNlNTVmZjBjZTg1MDUwZTgwZmI4NTkyZjMwMTQ1OTFlNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0Y2hhbmdlIiwiaGF0Y2hhbmdlIl0sIiJdfQ==', '2019-02-14 03:05:31.233020');
INSERT INTO `django_session` VALUES ('rbsriu0czase7hqdj7lchluscd51uuug', 'YThmNjRhODk1ZjlmOTg0Y2U0ODMxNGYzN2Y5MzUxODFiM2EyNDJlYTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0bWFkZSIsImhhdGNvbG9yaW1hZ2UiXSwiIl19', '2019-01-28 03:06:00.757427');
INSERT INTO `django_session` VALUES ('rfxd0btofgv8xyqjyvrt5luotfbwkryp', 'NDA0NWNmODcxYmYxYTk3ZTUwOTBjMjIxZjlkZTVjZjJkNDAxNzQ0ZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0bWFkZSIsImhhdGRpeSJdLCIiXX0=', '2019-02-01 05:52:35.294037');
INSERT INTO `django_session` VALUES ('rvwdae3r9uidr5oucodzgtcizsy88dlt', 'NDJlYmMyMzNjMDkyOGYwZTJkYjlhMmYzOTU3Y2JkMzM1NjdiNDhhNzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1sidXNlciIsInVzZXJwcm9maWxlIl0sIl9jb2xzPXVzZXJuYW1lLm5pY2tfbmFtZS5nZW5kZXIubW9iaWxlLmFkZF90aW1lLmNvbXBhbnlfbmFtZS5wYXNzd29yZCJdfQ==', '2019-03-13 00:11:00.393000');
INSERT INTO `django_session` VALUES ('rwv21mze3q20ikrsynxc8b6vv5id8awd', 'YThmNjRhODk1ZjlmOTg0Y2U0ODMxNGYzN2Y5MzUxODFiM2EyNDJlYTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0bWFkZSIsImhhdGNvbG9yaW1hZ2UiXSwiIl19', '2019-02-05 02:09:33.812965');
INSERT INTO `django_session` VALUES ('rwxr84fsinavmnp0w6zyie11sjga1zge', 'NDA0NWNmODcxYmYxYTk3ZTUwOTBjMjIxZjlkZTVjZjJkNDAxNzQ0ZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0bWFkZSIsImhhdGRpeSJdLCIiXX0=', '2019-01-02 02:24:00.437254');
INSERT INTO `django_session` VALUES ('s2v0cqvmu14ty9oex5vmjqicbkpu170j', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-02-01 08:50:57.935193');
INSERT INTO `django_session` VALUES ('squ350gxqmwccv0rz6lsgqjqudygbcct', 'OWZkN2RjNTMwNzBlNTg2OTZmMWJlNjgwYWEzMjA1OTE4YjhkZjY5NDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1sidXNlciIsInVzZXJwcm9maWxlIl0sIiJdfQ==', '2019-03-12 07:33:54.708000');
INSERT INTO `django_session` VALUES ('sshg1215cy5tpqgjbugeoo0dxa5332el', 'Y2VjODllNzU0ZWE4YjdmMzI0NDc1ZDgzNDExOGVmNDIwZTM2ZjM2MDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0Y2hhbmdlIiwiaGF0Y2hhbmdlIl0sIl9jb2xzPXN0YXRlLmhhdF91cGRhdGVfSWQuaGF0X29yZGVyX2lkLmhhdF9udW1zLmhhdF90b3RhbF9wcmljZS5oYXRfY2hhbmdlX2ltYWdlLmFkZF90aW1lLmhhdF9jb21wb25lbnRzX3ByaWNlIl19', '2019-02-13 06:15:51.814215');
INSERT INTO `django_session` VALUES ('tiykb0srh6eluk6e6i5iuwjdrrn9y1ju', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-04-03 08:56:00.957413');
INSERT INTO `django_session` VALUES ('trx7zhxdpgd4fetdho02k1b5jbc67kcv', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-02-13 03:17:18.148000');
INSERT INTO `django_session` VALUES ('u4sixnq6h5s3wt4l2hpb77qt7git09k4', 'ZDA3N2U2M2M3YjY5ZTcwNmMwZGRhNDZjZmY1MzBmZmIzM2Q4Njg0OTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0bWFkZSIsImhhdGRpeSJdLCJfY29scz1zdGF0ZS5oYXRfbnVtYmVyLmhhdF9uYW1lLmhhdF9icmFuZC5oYXRfcHJpY2UuZ29vZHNfY2F0ZWdvci5zdGF0dXMuYWRkX3RpbWUuaGF0ZGl5X2J1dHRvbi5nb29kc19zdHlsZSJdfQ==', '2019-04-04 08:43:14.316965');
INSERT INTO `django_session` VALUES ('wetkw0jwv6t4ftgrmad861td69shgasm', 'NTQxNjAyODBmZjI2YTY1ZTRiNzMxNjVlZWM0M2UwMTY3ODYzMjBiYTp7fQ==', '2019-03-15 05:34:00.406201');
INSERT INTO `django_session` VALUES ('wltzei8svr3vhu7hffzl6wbv42tvs79f', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-01-30 08:57:53.625239');
INSERT INTO `django_session` VALUES ('xsvouv1ns79aueovllu67l10wba3arun', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-03-05 06:59:43.355096');
INSERT INTO `django_session` VALUES ('xxan00uyoyqi75hdcrama0h3s1lounrz', 'OWZkN2RjNTMwNzBlNTg2OTZmMWJlNjgwYWEzMjA1OTE4YjhkZjY5NDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1sidXNlciIsInVzZXJwcm9maWxlIl0sIiJdfQ==', '2019-03-11 06:53:45.436019');
INSERT INTO `django_session` VALUES ('y597ux7faxyrm5sw6fjnzfo581bksjjl', 'OWZkN2RjNTMwNzBlNTg2OTZmMWJlNjgwYWEzMjA1OTE4YjhkZjY5NDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1sidXNlciIsInVzZXJwcm9maWxlIl0sIiJdfQ==', '2019-03-08 08:26:55.863883');
INSERT INTO `django_session` VALUES ('yiz0j9akk1xnzcw7omewe9nicmtu2723', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-03-05 06:10:05.839096');
INSERT INTO `django_session` VALUES ('yn2y6634y8ng3pxhamtixbjgshwtz0hg', 'MmE2NjE2NmNlNTVmZjBjZTg1MDUwZTgwZmI4NTkyZjMwMTQ1OTFlNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0Y2hhbmdlIiwiaGF0Y2hhbmdlIl0sIiJdfQ==', '2019-03-28 08:16:44.693000');
INSERT INTO `django_session` VALUES ('ypl3mdfgg2zkxtcdp0w6h1erzb2yfiwb', 'NDA0NWNmODcxYmYxYTk3ZTUwOTBjMjIxZjlkZTVjZjJkNDAxNzQ0ZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0bWFkZSIsImhhdGRpeSJdLCIiXX0=', '2019-02-07 07:03:53.126000');
INSERT INTO `django_session` VALUES ('ys3mgyxs06w810sv4y80pzg71zwkden6', 'MDRhOWI0OWUyNmZlYTQzZTAxNzg1ZmM2YWQ0MTFjMjg4NWIwOGI1NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1sib3JkZXJmbG93Iiwib3JkZXJmbG93Il0sIl9yZWxfaGF0X29yZGVyX19oYXRfdXBkYXRlX0lkX19leGFjdD03NCJdfQ==', '2019-02-06 07:05:06.483037');
INSERT INTO `django_session` VALUES ('yukcdjmerwv2xu4uyno0w36qkt78n8qx', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-02-13 03:51:58.532600');
INSERT INTO `django_session` VALUES ('yvf4krjjec13i1coy2xxr1b83x0qov8q', 'ZTQxZDdhYWVlYTI5NzUzMmI2MjJhNzcwNGEyNzJiMThhOTQyZjM0NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIn0=', '2019-02-06 01:30:04.830019');
INSERT INTO `django_session` VALUES ('z4sqpn4kxp8zniidjt0kfwqocgh5ui0i', 'MmE2NjE2NmNlNTVmZjBjZTg1MDUwZTgwZmI4NTkyZjMwMTQ1OTFlNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0Y2hhbmdlIiwiaGF0Y2hhbmdlIl0sIiJdfQ==', '2019-02-05 08:26:13.958378');
INSERT INTO `django_session` VALUES ('z9cuqdvsdkqis2q2hfph8rbwb00jkd3b', 'NDhlZmU1ODkwYWY5ZGNjM2E4N2ViY2I1NDU2NzdiMjBmYzU3ZjcyOTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNDJhZGQzOGQ3YjIyMDIxOGIwNmQ4YzQzOWJkMjliZmNkYjYzNmVhIiwiTElTVF9RVUVSWSI6W1siaGF0bWFkZSIsImhhdGRpeSJdLCJfY29scz1zdGF0ZS5oYXRfbnVtYmVyLmhhdF9uYW1lLmhhdF9icmFuZC5oYXRfcHJpY2UuZ29vZHNfY2F0ZWdvci5oYXRfc3RhdHVzLmFkZF90aW1lLmhhdGRpeV9idXR0b24uZ29vZHNfc3R5bGUiXX0=', '2019-04-03 09:06:09.018413');
INSERT INTO `django_session` VALUES ('zxbn5m4wgdz2g1rgdu2yvw1th38d5mlv', 'ZTk4NTFkMWIwYWY2NjcxZTFlZTkxYmJlY2YzZjY4N2RmOGRhOGVlOTp7Il9hdXRoX3VzZXJfaWQiOiIyMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGUyMDMyMTk2MzNiNDk2ZmI4YjllMDJmMDVjODVmNTY0YTU4OTQ5MSJ9', '2019-04-06 07:43:12.061000');

-- ----------------------------
-- Table structure for `hatbutton_hatbutton`
-- ----------------------------
DROP TABLE IF EXISTS `hatbutton_hatbutton`;
CREATE TABLE `hatbutton_hatbutton` (
  `hat_back_Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hat_back_button` varchar(50) NOT NULL,
  `hat_number` varchar(4) DEFAULT NULL,
  `hat_back_image` varchar(1000) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`hat_back_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hatbutton_hatbutton
-- ----------------------------
INSERT INTO `hatbutton_hatbutton` VALUES ('2', '帆布01', '701', 'images/button/back8.PNG', '2018-12-17 02:17:00.000000');
INSERT INTO `hatbutton_hatbutton` VALUES ('3', '帆布02', '702', 'images/button/back9.png', '2018-12-17 02:17:00.000000');
INSERT INTO `hatbutton_hatbutton` VALUES ('4', '帆布03', '703', 'images/button/back10.png', '2018-12-17 02:17:00.000000');

-- ----------------------------
-- Table structure for `hatchange_hatchange`
-- ----------------------------
DROP TABLE IF EXISTS `hatchange_hatchange`;
CREATE TABLE `hatchange_hatchange` (
  `hat_update_Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hat_components_color` varchar(100) DEFAULT NULL,
  `hat_components_price` varchar(100) DEFAULT NULL,
  `hat_change_color` varchar(200) DEFAULT NULL,
  `hat_change_style` varchar(500) DEFAULT NULL,
  `hat_total_price` varchar(2000) NOT NULL,
  `hat_nums` int(11) DEFAULT NULL,
  `hat_order_id` varchar(120) DEFAULT NULL,
  `add_time` datetime(6) DEFAULT NULL,
  `hat_change_materials_id` bigint(20) DEFAULT NULL,
  `hat_change_id` bigint(20) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `hat_change_image1` varchar(2000) DEFAULT NULL,
  `hat_change_image2` varchar(2000) DEFAULT NULL,
  `hat_change_image3` varchar(2000) DEFAULT NULL,
  `hat_change_image4` varchar(2000) DEFAULT NULL,
  `hat_change_image5` varchar(2000) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`hat_update_Id`),
  KEY `hatchange_hatchange_hat_change_materials_24ce68d0_fk_hatmateri` (`hat_change_materials_id`),
  KEY `hatchange_hatchange_hat_change_id_ef739383_fk_hatmade_h` (`hat_change_id`),
  KEY `hatchange_hatchange_user_id_e88de10c_fk_user_userprofile_id` (`user_id`),
  CONSTRAINT `hatchange_hatchange_hat_change_id_ef739383_fk_hatmade_h` FOREIGN KEY (`hat_change_id`) REFERENCES `hatmade_hatdiy` (`hat_made_Id`),
  CONSTRAINT `hatchange_hatchange_hat_change_materials_24ce68d0_fk_hatmateri` FOREIGN KEY (`hat_change_materials_id`) REFERENCES `hatmaterials_hatmaterials` (`hat_materials_Id`),
  CONSTRAINT `hatchange_hatchange_user_id_e88de10c_fk_user_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `user_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hatchange_hatchange
-- ----------------------------
INSERT INTO `hatchange_hatchange` VALUES ('147', null, '41', '蓝色', null, '82', '2', '9064637720190308', '2019-03-08 07:16:08.895000', '2', '6', '点击进入', '', '', '', '', '/media/images/front/18KS-013%E8%93%9D%E8%89%B2%E4%B8%BB%E5%9B%BEIMG_8912.jpg', null);
INSERT INTO `hatchange_hatchange` VALUES ('148', null, '41', '黄色', null, '82', '2', '9062772220190308', '2019-03-08 07:16:16.619000', '2', '6', '点击进入', '', '', '', '', '/media/hat_color_images/front/18KS-013%E5%A7%9C%E9%BB%84%E6%AD%A3%E9%9D%A2.jpg', null);
INSERT INTO `hatchange_hatchange` VALUES ('149', null, '41', '蓝色', null, '123', '3', '9064484920190308', '2019-03-08 07:16:50.750000', '2', '6', '点击进入', '/media/create_image/20190308151650_373.jpg', '/media/create_image/20190308151650_436.jpg', '/media/create_image/20190308151650_976.jpg', '/media/create_image/20190308151650_892.jpg', '', null);
INSERT INTO `hatchange_hatchange` VALUES ('150', null, '41', '蓝色', null, '123', '3', '9064939820190308', '2019-03-08 07:19:57.060000', '2', '6', '点击进入', '/media/create_image/20190308151957_39.jpg', '/media/create_image/20190308151957_899.jpg', '/media/create_image/20190308151957_240.jpg', '/media/create_image/20190308151957_585.jpg', '', null);
INSERT INTO `hatchange_hatchange` VALUES ('151', null, '41', '蓝色', null, '123', '3', '9064456020190308', '2019-03-08 07:22:07.720000', '2', '6', '点击进入', '/media/create_image/20190308152207_139.jpg', '/media/create_image/20190308152207_980.jpg', '/media/create_image/20190308152207_424.jpg', '/media/create_image/20190308152207_266.jpg', '', null);
INSERT INTO `hatchange_hatchange` VALUES ('152', null, '41', '黄色', null, '82', '2', '9062755620190308', '2019-03-08 07:29:45.978000', '2', '6', '点击进入', '', '', '', '', '/media/hat_color_images/front/18KS-013%E5%A7%9C%E9%BB%84%E6%AD%A3%E9%9D%A2.jpg', null);
INSERT INTO `hatchange_hatchange` VALUES ('153', null, '41', '蓝色', null, '41', '1', '9064744820190313', '2019-03-13 06:12:02.694000', '2', '6', '点击进入', '', '', '', '', '/media/images/front/18KS-013%E8%93%9D%E8%89%B2%E4%B8%BB%E5%9B%BEIMG_8912.jpg', null);
INSERT INTO `hatchange_hatchange` VALUES ('154', null, '41', '黄色', null, '41', '1', '9062332120190313', '2019-03-13 06:13:53.470000', '2', '6', '点击进入', '', '', '', '', '/media/hat_color_images/front/18KS-013%E5%A7%9C%E9%BB%84%E6%AD%A3%E9%9D%A2.jpg', null);
INSERT INTO `hatchange_hatchange` VALUES ('155', null, '41', '黄色', null, '82', '2', '9062107820190313', '2019-03-13 06:14:17.691000', '2', '6', '点击进入', '/media/create_image/20190313141417_682.jpg', '/media/create_image/20190313141417_862.jpg', '/media/create_image/20190313141417_887.jpg', '/media/create_image/20190313141417_308.jpg', '', null);
INSERT INTO `hatchange_hatchange` VALUES ('156', null, '41', '蓝色', null, '41', '1', '9064487720190313', '2019-03-13 06:18:03.744000', '2', '6', '点击进入', '', '', '', '', '/media/images/front/18KS-013%E8%93%9D%E8%89%B2%E4%B8%BB%E5%9B%BEIMG_8912.jpg', null);
INSERT INTO `hatchange_hatchange` VALUES ('157', null, '41', '蓝色', null, '82', '2', '906457920190313', '2019-03-13 06:25:52.701000', '2', '6', '点击进入', '', '', '', '', '/media/images/front/18KS-013%E8%93%9D%E8%89%B2%E4%B8%BB%E5%9B%BEIMG_8912.jpg', null);
INSERT INTO `hatchange_hatchange` VALUES ('158', null, '41', '蓝色', null, '41', '1', '9064964220190313', '2019-03-13 06:36:18.495000', '2', '6', '点击进入', '', '', '', '', '/media/images/front/18KS-013%E8%93%9D%E8%89%B2%E4%B8%BB%E5%9B%BEIMG_8912.jpg', null);
INSERT INTO `hatchange_hatchange` VALUES ('159', null, '41', '蓝色', null, '41', '1', '9064878720190313', '2019-03-13 06:36:36.511000', '2', '6', '点击进入', '', '', '', '', '/media/images/front/18KS-013%E8%93%9D%E8%89%B2%E4%B8%BB%E5%9B%BEIMG_8912.jpg', null);
INSERT INTO `hatchange_hatchange` VALUES ('160', null, '35', '白色', null, '35', '1', '9018430220190313', '2019-03-13 07:03:30.337000', '5', '7', '点击进入', '', '', '', '', '/media/images/front/9018-%E5%B8%86%E5%B8%83%E8%A2%8B_2.jpg', null);
INSERT INTO `hatchange_hatchange` VALUES ('161', null, '35', '白色', null, '35', '1', '9018101320190313', '2019-03-13 08:05:45.624086', '5', '7', '点击进入', '', '', '', '', '/media/images/front/9018-%E5%B8%86%E5%B8%83%E8%A2%8B_2.jpg', null);
INSERT INTO `hatchange_hatchange` VALUES ('162', null, '35', '白色', null, '35', '1', '9018936420190314', '2019-03-14 00:54:50.378000', '5', '7', '点击进入', '', '', '', '', '/media/images/front/9018-%E5%B8%86%E5%B8%83%E8%A2%8B_2.jpg', null);
INSERT INTO `hatchange_hatchange` VALUES ('163', null, '41', '蓝色', null, '41', '1', '9064147220190314', '2019-03-14 08:12:05.984000', '2', '6', '点击进入', '', '', '', '', '/media/images/front/18KS-013%E8%93%9D%E8%89%B2%E4%B8%BB%E5%9B%BEIMG_8912.jpg', '2');
INSERT INTO `hatchange_hatchange` VALUES ('164', null, '50', '条纹色', null, '50', '1', '9056996320190314', '2019-03-14 09:14:29.260000', '2', '5', '点击进入', '', '', '', '', '/media/images/front/%E6%A0%BC%E5%AD%90%E6%AD%A3%E9%9D%A2%E5%9B%BE.jpg', '20');
INSERT INTO `hatchange_hatchange` VALUES ('165', null, '29', 'None', null, '3219', '111', '9038434820190318', '2019-03-18 02:39:25.806249', '5', '9', '点击进入', '/media/create_image/20190318103926_695.jpg', '/media/create_image/20190318103926_736.jpg', '', '', '', '2');
INSERT INTO `hatchange_hatchange` VALUES ('166', null, '51', '蓝色', null, '102', '2', '906470820190323', '2019-03-23 07:00:36.829000', '1', '6', '点击进入', '/media/create_image/20190323150036_940.jpg', '/media/create_image/20190323150036_236.jpg', '/media/create_image/20190323150036_257.jpg', '/media/create_image/20190323150036_893.jpg', '/media/hat_color_images/front/18KS-013%E8%93%9D%E8%89%B2%E4%B8%BB%E5%9B%BEIMG_8912.jpg', '2');
INSERT INTO `hatchange_hatchange` VALUES ('167', null, '56', '灰色', null, '112', '2', '9113163620190323', '2019-03-23 07:43:36.925000', '5', '11', '点击进入', '/media/create_image/20190323154336_228.jpg', '/media/create_image/20190323154337_693.jpg', '/media/create_image/20190323154337_323.jpg', '/media/create_image/20190323154337_10.jpg', '', '21');
INSERT INTO `hatchange_hatchange` VALUES ('168', null, '56', '蓝色', null, '56', '1', '9114178020190323', '2019-03-23 07:47:16.324000', '5', '11', '点击进入', '', '', '', '', '/media/hat_color_images/front/3.5.jpg', '21');
INSERT INTO `hatchange_hatchange` VALUES ('169', null, '56', '藏青色', null, '168', '3', '9119473420190323', '2019-03-23 07:47:24.881000', '5', '11', '点击进入', '', '', '', '', '/media/hat_color_images/front/1.5.jpg', '21');
INSERT INTO `hatchange_hatchange` VALUES ('170', null, '56', '灰色', null, '224', '4', '9113934220190323', '2019-03-23 07:47:32.037000', '5', '11', '点击进入', '', '', '', '', '/media/images/front/2.5.jpg', '21');
INSERT INTO `hatchange_hatchange` VALUES ('171', null, '56', '蓝色', null, '168', '3', '9114515020190323', '2019-03-23 07:47:54.210000', '5', '11', '点击进入', '', '', '', '', '/media/hat_color_images/front/3.5.jpg', '21');

-- ----------------------------
-- Table structure for `hatchange_uploadfile`
-- ----------------------------
DROP TABLE IF EXISTS `hatchange_uploadfile`;
CREATE TABLE `hatchange_uploadfile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `state` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hatchange_uploadfile
-- ----------------------------
INSERT INTO `hatchange_uploadfile` VALUES ('6', 'upload_file/2019/01/23/测试.docx', '点击进入');
INSERT INTO `hatchange_uploadfile` VALUES ('7', 'upload_file/2019/01/30/舌芯.png', '点击进入');

-- ----------------------------
-- Table structure for `hatchange_uploadimagelogo`
-- ----------------------------
DROP TABLE IF EXISTS `hatchange_uploadimagelogo`;
CREATE TABLE `hatchange_uploadimagelogo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `state` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=652 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hatchange_uploadimagelogo
-- ----------------------------
INSERT INTO `hatchange_uploadimagelogo` VALUES ('168', 'upload_logo/2019/01/29/logo03.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('169', 'upload_logo/2019/01/29/logo01.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('170', 'upload_logo/2019/01/29/logo02.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('171', 'upload_logo/2019/01/29/logo02_VUYAUk7.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('172', 'upload_logo/2019/01/29/logo03_1VhBYns.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('173', 'upload_logo/2019/01/30/logo03.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('174', 'upload_logo/2019/01/30/logo03_E70jLoj.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('175', 'upload_logo/2019/01/30/hpi-hp-logo-pr.gif', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('176', 'upload_logo/2019/01/30/WechatIMG121.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('177', 'upload_logo/2019/01/30/WechatIMG121_OHV2SH8.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('178', 'upload_logo/2019/01/30/WechatIMG119.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('179', 'upload_logo/2019/01/30/WechatIMG119_87xlAYw.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('180', 'upload_logo/2019/01/30/WechatIMG119_RuG4NxX.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('181', 'upload_logo/2019/01/30/WechatIMG119_v8CBEHF.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('182', 'upload_logo/2019/01/30/WechatIMG120.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('183', 'upload_logo/2019/01/30/WechatIMG121_tXWmixV.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('184', 'upload_logo/2019/01/31/logo01.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('185', 'upload_logo/2019/02/21/logo03.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('186', 'upload_logo/2019/02/21/logo01.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('187', 'upload_logo/2019/02/21/logo03_hQq6jwu.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('188', 'upload_logo/2019/02/21/logo03_UqqmnNy.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('189', 'upload_logo/2019/02/21/logo03_A77D5MO.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('190', 'upload_logo/2019/02/21/logo01_kJxn3fq.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('191', 'upload_logo/2019/02/21/logo01_uxiXDUS.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('192', 'upload_logo/2019/02/21/ks.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('193', 'upload_logo/2019/02/21/ks_f899nnR.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('194', 'upload_logo/2019/02/21/ks_g58s0R8.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('195', 'upload_logo/2019/02/21/ks_ahy35Pz.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('196', 'upload_logo/2019/02/21/logo01_urPj3k1.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('197', 'upload_logo/2019/02/21/logo01_hiRb6Ff.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('198', 'upload_logo/2019/02/21/logo03_oi6Hkpx.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('199', 'upload_logo/2019/02/21/logo03_CJNd5TG.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('200', 'upload_logo/2019/02/21/logo03_VQzEHnT.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('201', 'upload_logo/2019/02/21/logo03_QzwSgP6.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('202', 'upload_logo/2019/02/21/logo01_9ZHsTnw.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('203', 'upload_logo/2019/02/21/logo01_uQZymHH.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('204', 'upload_logo/2019/02/21/ks_Ha8xcdr.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('205', 'upload_logo/2019/02/21/ks_94ixG4G.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('206', 'upload_logo/2019/02/21/ks_GCN0zzJ.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('207', 'upload_logo/2019/02/21/logo03_JrbyZ7F.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('208', 'upload_logo/2019/02/21/logo03_XNStTj3.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('209', 'upload_logo/2019/02/21/logo03_Qw9GFg9.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('210', 'upload_logo/2019/02/21/logo03_0sp5o4W.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('211', 'upload_logo/2019/02/21/logo02.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('212', 'upload_logo/2019/02/21/logo02_lsZmbAj.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('213', 'upload_logo/2019/02/21/logo02_DuPvx8H.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('214', 'upload_logo/2019/02/21/logo02_Kvdp1y6.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('215', 'upload_logo/2019/02/21/logo02_Q3zD7mb.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('216', 'upload_logo/2019/02/21/logo02_QZJhB06.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('217', 'upload_logo/2019/02/21/53000efa283e8.jpg', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('218', 'upload_logo/2019/02/21/logo02_kBYfZX0.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('219', 'upload_logo/2019/02/21/2f022c6cacf2933552f3fb2d4edda8db0ef690a93599-uRET97_fw658.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('220', 'upload_logo/2019/02/21/2f022c6cacf2933552f3fb2d4edda8db0ef690a93599-uRET97_fw658_FKMpYn3.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('221', 'upload_logo/2019/02/21/0.jpg', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('222', 'upload_logo/2019/02/21/0_KmeZv6O.jpg', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('223', 'upload_logo/2019/02/21/0_shRGeFt.jpg', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('224', 'upload_logo/2019/02/21/154452106123772_9UTWOhY.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('225', 'upload_logo/2019/02/21/154452106123772.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('226', 'upload_logo/2019/02/21/154452106123772_hSx9Hz0.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('227', 'upload_logo/2019/02/21/154452106123772_GHJOM5i.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('228', 'upload_logo/2019/02/21/154452106123772_Cn1WaSB.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('229', 'upload_logo/2019/02/21/154452106123772_ZJain4q.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('230', 'upload_logo/2019/02/21/154452106123772_Wn1hgPu.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('231', 'upload_logo/2019/02/21/154452106123772_Fcogk9y.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('232', 'upload_logo/2019/02/21/u2100268981259230011fm26gp0.jpg', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('233', 'upload_logo/2019/02/21/u2100268981259230011fm26gp0_O99brDF.jpg', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('234', 'upload_logo/2019/02/21/u2100268981259230011fm26gp0_EcdFKYj.jpg', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('235', 'upload_logo/2019/02/21/u2100268981259230011fm26gp0_VKO50a8.jpg', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('236', 'upload_logo/2019/02/21/u2100268981259230011fm26gp0_sDCbTsr.jpg', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('237', 'upload_logo/2019/02/21/u2100268981259230011fm26gp0_treiM5b.jpg', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('238', 'upload_logo/2019/02/21/logo01_CEvv0Ua.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('239', 'upload_logo/2019/02/21/logo01_QHbkBx6.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('240', 'upload_logo/2019/02/21/logo02_RtpwL3A.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('241', 'upload_logo/2019/02/21/logo02_a3Pk3R4.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('242', 'upload_logo/2019/02/21/logo02_U945Vkv.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('243', 'upload_logo/2019/02/21/center.jpg', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('244', 'upload_logo/2019/02/21/center_HZpnQkp.jpg', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('245', 'upload_logo/2019/02/21/logo02_XnlCv6G.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('246', 'upload_logo/2019/02/21/logo02_jGJp24U.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('247', 'upload_logo/2019/02/21/logo02_Ai2XKn9.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('248', 'upload_logo/2019/02/21/logo02_Ent6o7W.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('249', 'upload_logo/2019/02/21/logo02_2oHgMrK.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('250', 'upload_logo/2019/02/21/logo02_qw8xWO4.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('251', 'upload_logo/2019/02/21/logo01_JBm2rVw.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('252', 'upload_logo/2019/02/21/logo01_n0n3dUx.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('253', 'upload_logo/2019/02/21/logo02_zoXLypi.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('254', 'upload_logo/2019/02/21/logo02_fXQ7vBc.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('255', 'upload_logo/2019/02/21/logo02_2hhfQGM.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('256', 'upload_logo/2019/02/21/logo01_K9LL2Bt.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('257', 'upload_logo/2019/02/21/logo01_jkk5tvg.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('258', 'upload_logo/2019/02/21/logo01_KfHThIO.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('259', 'upload_logo/2019/02/21/logo01_fHkjWFd.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('260', 'upload_logo/2019/02/21/logo01_jaxFEJy.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('261', 'upload_logo/2019/02/21/logo01_qIIWTYy.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('262', 'upload_logo/2019/02/21/logo01_HOZdzfl.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('263', 'upload_logo/2019/02/21/logo01_x52Mkel.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('264', 'upload_logo/2019/02/21/odoo笔记.doc', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('265', 'upload_logo/2019/02/21/odoo笔记_J6L23V0.doc', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('266', 'upload_logo/2019/02/21/odoo笔记_hPkfWmG.doc', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('267', 'upload_logo/2019/02/21/odoo笔记_E9aTTiC.doc', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('268', 'upload_logo/2019/02/21/odoo笔记_7MzeDau.doc', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('269', 'upload_logo/2019/02/21/odoo笔记_1KBxBdn.doc', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('270', 'upload_logo/2019/02/22/logo03.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('271', 'upload_logo/2019/02/22/logo01.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('272', 'upload_logo/2019/02/22/logo01_mqC7mVe.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('273', 'upload_logo/2019/02/22/logo03_5h6fnKo.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('274', 'upload_logo/2019/02/22/logo01_fbEfqo9.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('275', 'upload_logo/2019/02/22/logo01_W0ekjgl.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('276', 'upload_logo/2019/02/22/logo03_XemGXgy.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('277', 'upload_logo/2019/02/22/ks.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('278', 'upload_logo/2019/02/22/logo02.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('279', 'upload_logo/2019/02/22/logo02_TLjH42R.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('280', 'upload_logo/2019/02/22/logo01_TPol1dp.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('281', 'upload_logo/2019/02/22/logo01_9inqylx.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('282', 'upload_logo/2019/02/22/logo01_YDtSwyh.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('283', 'upload_logo/2019/02/22/logo03_Btau6XO.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('284', 'upload_logo/2019/02/22/logo03_JJ8BJ5X.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('285', 'upload_logo/2019/03/01/20190103131617_48.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('286', 'upload_logo/2019/03/04/20190103131617_48.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('287', 'upload_logo/2019/03/04/20190103131617_48_edxJjtL.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('288', 'upload_logo/2019/03/04/20190126154036_82.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('289', 'upload_logo/2019/03/04/20190126154036_82_8glCHiw.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('290', 'upload_logo/2019/03/04/20190126154036_82_aPqhGyu.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('291', 'upload_logo/2019/03/04/20190126152517_5.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('292', 'upload_logo/2019/03/04/20190126152517_5_iSaq4Eo.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('293', 'upload_logo/2019/03/04/20190126152517_5_oeYmCm6.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('294', 'upload_logo/2019/03/04/20190126152517_5_IaXtUZY.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('295', 'upload_logo/2019/03/05/20190128084657_17.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('296', 'upload_logo/2019/03/05/20190128084657_17_YfydR53.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('297', 'upload_logo/2019/03/05/20190126152517_5.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('298', 'upload_logo/2019/03/05/20190128084657_17_ZNtDQgU.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('299', 'upload_logo/2019/03/05/20190126152517_5_toCqoRP.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('300', 'upload_logo/2019/03/05/20190126152517_5_PzmXotC.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('301', 'upload_logo/2019/03/05/20190126152517_5_pxiQIMd.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('302', 'upload_logo/2019/03/05/20190126152517_5_m5fn9y0.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('303', 'upload_logo/2019/03/05/20190126152517_5_WgKIP1Y.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('304', 'upload_logo/2019/03/05/20190126152517_5_LLS0Uxj.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('305', 'upload_logo/2019/03/05/20190126152517_5_iJfeNOR.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('306', 'upload_logo/2019/03/05/20190126152517_5_Xu2v3Xo.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('307', 'upload_logo/2019/03/05/20190103131617_48.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('308', 'upload_logo/2019/03/07/20190103131617_48.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('309', 'upload_logo/2019/03/07/20190103131617_48_4PA0A6t.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('310', 'upload_logo/2019/03/07/20190103131617_48_aRvfM2V.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('311', 'upload_logo/2019/03/07/20190103131617_48_2gumSA7.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('312', 'upload_logo/2019/03/07/20190103131617_48_b2kfQJZ.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('313', 'upload_logo/2019/03/07/20190103131617_48_Cm59SW7.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('314', 'upload_logo/2019/03/07/20190126152517_5.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('315', 'upload_logo/2019/03/07/20190126152517_5_bGnSGAa.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('316', 'upload_logo/2019/03/08/20190103131617_48.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('317', 'upload_logo/2019/03/08/20190103131617_48_F2DcFaY.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('318', 'upload_logo/2019/03/08/20190103131617_48_DxP1KyJ.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('319', 'upload_logo/2019/03/08/20190103131617_48_943i8Lf.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('320', 'upload_logo/2019/03/08/20190103131617_48_mxjq9XN.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('321', 'upload_logo/2019/03/08/20190103131617_48_eO578gm.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('322', 'upload_logo/2019/03/08/20190103131617_48_dRuaCTQ.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('323', 'upload_logo/2019/03/08/20190103131617_48_xqIyNML.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('324', 'upload_logo/2019/03/08/20190103131617_48_nQlxvee.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('325', 'upload_logo/2019/03/08/20190103131617_48_w1gcfif.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('326', 'upload_logo/2019/03/13/20190103131617_48.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('327', 'upload_logo/2019/03/14/20190103131617_48.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('328', 'upload_logo/2019/03/15/20190103131617_48.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('329', 'upload_logo/2019/03/15/20190103131617_48_wiIsq7j.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('330', 'upload_logo/2019/03/15/20190103131617_48_Ui3SL3M.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('331', 'upload_logo/2019/03/15/20190103131617_48_bqIBLnV.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('332', 'upload_logo/2019/03/15/20190126152517_5.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('333', 'upload_logo/2019/03/15/20190103131617_48_EcGnFDi.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('334', 'upload_logo/2019/03/15/20190126152517_5_HGybXIl.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('335', 'upload_logo/2019/03/18/金蝶.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('336', 'upload_logo/2019/03/18/鼎捷logo.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('337', 'upload_logo/2019/03/18/鼎捷logo_9Z2eQo0.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('338', 'upload_logo/2019/03/18/鼎捷文字.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('339', 'upload_logo/2019/03/18/鼎捷文字_N1Fa7RB.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('340', 'upload_logo/2019/03/18/鼎捷文字_9KPAlGU.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('341', 'upload_logo/2019/03/18/鼎捷logo_qf62HYV.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('342', 'upload_logo/2019/03/18/鼎捷logo_Vf5JA4h.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('343', 'upload_logo/2019/03/18/鼎捷logo_GvKQDNv.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('344', 'upload_logo/2019/03/18/鼎捷logo_MpoZXJu.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('345', 'upload_logo/2019/03/18/鼎捷logo_T3lWK9f.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('346', 'upload_logo/2019/03/18/鼎捷logo_6pWU94q.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('347', 'upload_logo/2019/03/18/鼎捷logo_Tkk9jc2.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('348', 'upload_logo/2019/03/18/鼎捷logo_IzELaQR.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('349', 'upload_logo/2019/03/18/鼎捷logo_hQ4q3p0.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('350', 'upload_logo/2019/03/18/鼎捷logo_Mw2nqBE.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('351', 'upload_logo/2019/03/18/鼎捷logo_BvxW7Yo.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('352', 'upload_logo/2019/03/18/鼎捷logo_rq3zZCR.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('353', 'upload_logo/2019/03/18/鼎捷logo_YKYPCYo.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('354', 'upload_logo/2019/03/18/鼎捷logo_hAl9FOE.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('355', 'upload_logo/2019/03/18/鼎捷logo_8LwRoFl.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('356', 'upload_logo/2019/03/18/鼎捷logo_Bj26pqg.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('357', 'upload_logo/2019/03/18/鼎捷logo_xQhU4dD.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('358', 'upload_logo/2019/03/18/泛微logo.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('359', 'upload_logo/2019/03/18/泛微文字.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('360', 'upload_logo/2019/03/18/泛微文字_YMBSF4i.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('361', 'upload_logo/2019/03/18/鼎捷logo_38pHUhg.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('362', 'upload_logo/2019/03/18/鼎捷logo_AEsY5Zu.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('363', 'upload_logo/2019/03/18/鼎捷logo_5y02xxp.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('364', 'upload_logo/2019/03/18/鼎捷文字_XZwSi23.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('365', 'upload_logo/2019/03/18/鼎捷文字_yi1FjJS.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('366', 'upload_logo/2019/03/18/鼎捷文字_KyqtKFA.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('367', 'upload_logo/2019/03/18/鼎捷文字_b3oMlMH.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('368', 'upload_logo/2019/03/18/鼎捷logo_cd5PPR2.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('369', 'upload_logo/2019/03/18/鼎捷logo_x4HQP8C.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('370', 'upload_logo/2019/03/18/鼎捷logo_mY12xHn.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('371', 'upload_logo/2019/03/18/鼎捷logo_6cNoe4o.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('372', 'upload_logo/2019/03/18/鼎捷logo_ZXPa6U2.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('373', 'upload_logo/2019/03/18/鼎捷logo_9vgTxon.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('374', 'upload_logo/2019/03/18/泛微logo.jpg', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('375', 'upload_logo/2019/03/18/泛微logo_dA27eY6.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('376', 'upload_logo/2019/03/18/泛微logo_LzkzgiR.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('377', 'upload_logo/2019/03/18/20190103131617_48.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('378', 'upload_logo/2019/03/18/20190126152517_5.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('379', 'upload_logo/2019/03/18/20190126152517_5_7GoPncA.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('380', 'upload_logo/2019/03/18/20190103131617_48_y8mF8pV.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('381', 'upload_logo/2019/03/18/20190103131617_48_oHvcdV1.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('382', 'upload_logo/2019/03/18/20190103131617_48_VWBZZY6.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('383', 'upload_logo/2019/03/18/20190103131617_48_mBzl0wX.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('384', 'upload_logo/2019/03/18/20190103131617_48_M5iMp5S.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('385', 'upload_logo/2019/03/18/20190103131617_48_pCNiKMo.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('386', 'upload_logo/2019/03/18/20190103131617_48_aaa1c72.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('387', 'upload_logo/2019/03/18/20190103131617_48_PtxTphC.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('388', 'upload_logo/2019/03/18/20190103131617_48_BBeh9nd.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('389', 'upload_logo/2019/03/18/20190103131617_48_qOR9VqT.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('390', 'upload_logo/2019/03/18/20190103131617_48_Fuu7PN0.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('391', 'upload_logo/2019/03/18/20190126152517_5_ebz9Lyd.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('392', '', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('393', '[', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('394', '', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('395', '', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('396', '', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('397', 'upload_logo/2019/03/19/20190103131617_48.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('398', 'upload_logo/2019/03/19/20190126152517_5.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('399', 'upload_logo/2019/03/19/20190126152517_5_vstOmb5.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('400', 'upload_logo/2019/03/19/20190103131617_48_KqBgZz3.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('401', 'upload_logo/2019/03/19/20190103131617_48_0hxM6iw.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('402', 'upload_logo/2019/03/19/20190126152517_5_G48S3sG.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('403', 'upload_logo/2019/03/19/20190126152517_5_tmnNLmj.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('404', 'upload_logo/2019/03/19/20190103131617_48_cdVQBmS.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('405', 'upload_logo/2019/03/19/20190126152517_5_MDCqCXk.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('406', 'upload_logo/2019/03/19/20190126152517_5_BCk7NRa.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('407', 'upload_logo/2019/03/19/20190103131617_48_DEutJTz.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('408', 'upload_logo/2019/03/19/20190126152517_5_sKs2FSU.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('409', 'upload_logo/2019/03/19/20190126152517_5_Ijqlv63.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('410', 'upload_logo/2019/03/19/20190103131617_48_L5cLPEt.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('411', 'upload_logo/2019/03/19/20190126152517_5_q9sR4DJ.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('412', 'upload_logo/2019/03/19/20190126152517_5_9IyNqY5.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('413', 'upload_logo/2019/03/19/20190103131617_48_Mgb1Qlj.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('414', 'upload_logo/2019/03/19/20190126152517_5_7Ed2uuY.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('415', 'upload_logo/2019/03/19/20190126152517_5_umxPTsj.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('416', 'upload_logo/2019/03/19/20190103131617_48_UZJ1PWO.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('417', 'upload_logo/2019/03/19/20190103131617_48_OrAHIC6.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('418', 'upload_logo/2019/03/19/20190126152517_5_femp4fX.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('419', 'upload_logo/2019/03/19/20190126152517_5_bpHBujh.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('420', 'upload_logo/2019/03/19/20190126154036_82.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('421', 'upload_logo/2019/03/19/20190126154036_82_3GS67Vj.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('422', 'upload_logo/2019/03/19/20190126154036_82_jhgoGaJ.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('423', 'upload_logo/2019/03/19/20190126152517_5_4C2u9vc.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('424', 'upload_logo/2019/03/19/20190103131617_48_Omdfkvn.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('425', 'upload_logo/2019/03/19/20190126152517_5_txNQG42.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('426', 'upload_logo/2019/03/19/20190126152517_5_FL9Miaz.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('427', 'upload_logo/2019/03/19/20190103131617_48_qdh0vYp.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('428', 'upload_logo/2019/03/19/20190126152517_5_5YJQYml.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('429', 'upload_logo/2019/03/19/20190126152517_5_IFXqa2Y.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('430', 'upload_logo/2019/03/19/20190103131617_48_wlWznxW.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('431', 'upload_logo/2019/03/19/20190126152517_5_97GYGXT.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('432', 'upload_logo/2019/03/19/20190126152517_5_vQaFN2Y.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('433', 'upload_logo/2019/03/19/20190103131617_48_tkYvwLS.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('434', 'upload_logo/2019/03/19/20190126152517_5_kwnee5U.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('435', 'upload_logo/2019/03/19/20190126152517_5_cY2gD84.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('436', 'upload_logo/2019/03/19/20190103131617_48_eUKEtdN.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('437', 'upload_logo/2019/03/19/20190126152517_5_32lY8wz.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('438', 'upload_logo/2019/03/19/20190126152517_5_gOIwY6W.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('439', 'upload_logo/2019/03/19/20190103131617_48_q8t4qZO.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('440', 'upload_logo/2019/03/19/20190126152517_5_948CWGE.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('441', 'upload_logo/2019/03/19/20190126152517_5_qGnw0oD.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('442', 'upload_logo/2019/03/19/20190103131617_48_a4hdf08.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('443', 'upload_logo/2019/03/19/20190126152517_5_iPS6Zve.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('444', 'upload_logo/2019/03/19/20190126152517_5_A9xEKgc.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('445', 'upload_logo/2019/03/19/20190103131617_48_LcYywOS.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('446', 'upload_logo/2019/03/19/20190126152517_5_Xk7e8na.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('447', 'upload_logo/2019/03/19/20190126152517_5_DMjWfaH.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('448', 'upload_logo/2019/03/19/20190103131617_48_1xKgysZ.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('449', 'upload_logo/2019/03/19/20190126152517_5_XCAHF53.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('450', 'upload_logo/2019/03/19/20190126152517_5_wNgjtQO.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('451', 'upload_logo/2019/03/19/20190103131617_48_6GOWct7.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('452', 'upload_logo/2019/03/19/20190126152517_5_X1sCpFi.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('453', 'upload_logo/2019/03/19/20190126152517_5_h06cXR4.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('454', 'upload_logo/2019/03/19/20190103131617_48_GPXOHC9.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('455', 'upload_logo/2019/03/19/20190126152517_5_OvOo1kQ.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('456', 'upload_logo/2019/03/19/20190126152517_5_ebutelY.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('457', 'upload_logo/2019/03/19/20190103131617_48_a7yopbn.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('458', 'upload_logo/2019/03/19/20190126152517_5_X2oonCe.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('459', 'upload_logo/2019/03/19/20190126152517_5_GozclET.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('460', 'upload_logo/2019/03/19/20190103131617_48_1ZvCOQp.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('461', 'upload_logo/2019/03/19/20190126152517_5_2l2X0wq.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('462', 'upload_logo/2019/03/19/20190126152517_5_wBDnkV3.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('463', 'upload_logo/2019/03/19/20190103131617_48_kDW3pLA.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('464', 'upload_logo/2019/03/19/20190126152517_5_8BeJHCU.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('465', 'upload_logo/2019/03/19/20190126152517_5_a68Kux7.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('466', 'upload_logo/2019/03/19/20190103131617_48_YiRbDJF.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('467', 'upload_logo/2019/03/19/20190126152517_5_RI8SNg7.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('468', 'upload_logo/2019/03/19/20190126152517_5_8ntAF7d.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('469', 'upload_logo/2019/03/19/20190103131617_48_oU84uSy.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('470', 'upload_logo/2019/03/19/20190126152517_5_AXuGjmm.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('471', 'upload_logo/2019/03/19/20190126152517_5_HlmsSTr.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('472', 'upload_logo/2019/03/19/20190103131617_48_JJUZ6Pz.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('473', 'upload_logo/2019/03/19/20190126152517_5_UzlKhBt.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('474', 'upload_logo/2019/03/19/20190126152517_5_wmu76bL.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('475', 'upload_logo/2019/03/20/20190103131617_48.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('476', 'upload_logo/2019/03/20/20190126152517_5.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('477', 'upload_logo/2019/03/20/20190126152517_5_y3FisnC.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('478', 'upload_logo/2019/03/20/20190103131617_48_rnH7VB6.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('479', 'upload_logo/2019/03/20/20190103131617_48_Wh1CUW4.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('480', 'upload_logo/2019/03/20/20190126152517_5_IEd3fpl.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('481', 'upload_logo/2019/03/20/20190126152517_5_UQWliTa.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('482', 'upload_logo/2019/03/20/20190103131617_48_xfg13J7.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('483', 'upload_logo/2019/03/20/20190126152517_5_E4CQW28.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('484', 'upload_logo/2019/03/20/20190126152517_5_YTIjZ4T.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('485', 'upload_logo/2019/03/20/20190103131617_48_sd7M7zC.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('486', 'upload_logo/2019/03/20/20190126152517_5_qdmrqcM.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('487', 'upload_logo/2019/03/20/20190126152517_5_NwfctxL.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('488', 'upload_logo/2019/03/20/20190103131617_48_GSlsn3Q.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('489', 'upload_logo/2019/03/20/20190126152517_5_lM2KeC1.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('490', 'upload_logo/2019/03/20/20190126152517_5_nxg7U8b.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('491', 'upload_logo/2019/03/20/20190103131617_48_CovipJn.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('492', 'upload_logo/2019/03/20/20190126152517_5_bh7AKHo.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('493', 'upload_logo/2019/03/20/20190126152517_5_c6G1FBS.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('494', 'upload_logo/2019/03/20/20190126154036_82.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('495', 'upload_logo/2019/03/20/20190126154036_82_BQ48KfB.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('496', 'upload_logo/2019/03/20/20190126154036_82_oVoavyH.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('497', 'upload_logo/2019/03/20/20190103131617_48_tG1HAZY.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('498', 'upload_logo/2019/03/20/20190103131617_48_Zhgiafl.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('499', 'upload_logo/2019/03/20/20190103131617_48_A1of1LB.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('500', 'upload_logo/2019/03/20/20190103131617_48_7mXddlI.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('501', 'upload_logo/2019/03/20/20190103131617_48_fz1MS10.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('502', 'upload_logo/2019/03/20/20190103131617_48_Oh3KS5M.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('503', 'upload_logo/2019/03/20/20190103131617_48_BFP33Zw.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('504', 'upload_logo/2019/03/20/20190103131617_48_EmhdFkA.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('505', 'upload_logo/2019/03/20/20190103131617_48_Ktd2gtZ.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('506', 'upload_logo/2019/03/20/20190126152517_5_hCEPjnc.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('507', 'upload_logo/2019/03/20/20190126152517_5_6xAcZ4S.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('508', 'upload_logo/2019/03/20/20190103131617_48_xZd7eCb.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('509', 'upload_logo/2019/03/20/20190126152517_5_bWTQy7c.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('510', 'upload_logo/2019/03/20/20190126152517_5_DCaEnlm.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('511', 'upload_logo/2019/03/20/20190103131617_48_awDA3PL.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('512', 'upload_logo/2019/03/20/20190126152517_5_VkInFk1.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('513', 'upload_logo/2019/03/20/20190126152517_5_6CnYKvK.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('514', 'upload_logo/2019/03/20/20190103131617_48_RsZM3Ui.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('515', 'upload_logo/2019/03/20/20190126152517_5_6iMrdY1.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('516', 'upload_logo/2019/03/20/20190126152517_5_VKSQX9R.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('517', 'upload_logo/2019/03/20/20190103131617_48_7wfHnW4.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('518', 'upload_logo/2019/03/20/20190103131617_48_c0CX0Ci.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('519', 'upload_logo/2019/03/20/20190103131617_48_ORcDTuv.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('520', 'upload_logo/2019/03/20/20190103131617_48_atEZptT.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('521', 'upload_logo/2019/03/20/20190126152517_5_pqu5qYy.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('522', 'upload_logo/2019/03/20/20190126152517_5_DgzXq3V.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('523', 'upload_logo/2019/03/20/20190103131617_48_jC85y82.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('524', 'upload_logo/2019/03/20/20190126152517_5_E9sPtKd.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('525', 'upload_logo/2019/03/20/20190126152517_5_Wi80ApW.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('526', 'upload_logo/2019/03/20/20190103131617_48_cXqBP4K.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('527', 'upload_logo/2019/03/20/20190103131617_48_9JlQ7xQ.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('528', 'upload_logo/2019/03/20/20190126152517_5_1rd3ZeO.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('529', 'upload_logo/2019/03/20/20190126152517_5_zg0vQdC.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('530', 'upload_logo/2019/03/20/20190103131617_48_O7Kj16f.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('531', 'upload_logo/2019/03/20/20190126152517_5_CIZi8iE.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('532', 'upload_logo/2019/03/20/20190126152517_5_M2x3tgS.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('533', 'upload_logo/2019/03/20/20190126154036_82_1Et13eJ.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('534', 'upload_logo/2019/03/20/20190126154036_82_SFfDHtY.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('535', 'upload_logo/2019/03/20/20190126154036_82_QFQMwwK.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('536', 'upload_logo/2019/03/20/20190128084657_17.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('537', 'upload_logo/2019/03/20/20190128084657_17_vAyMYdl.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('538', 'upload_logo/2019/03/20/20190128084657_17_Z8zljcu.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('539', 'upload_logo/2019/03/20/20190128084657_17_gBdzs90.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('540', 'upload_logo/2019/03/20/20190103131617_48_PI7L3p5.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('541', 'upload_logo/2019/03/20/20190103131617_48_g9hQixw.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('542', 'upload_logo/2019/03/20/20190126152517_5_SigH7Qz.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('543', 'upload_logo/2019/03/20/20190126152517_5_z7eBmTI.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('544', 'upload_logo/2019/03/20/20190103131617_48_9GpUHmE.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('545', 'upload_logo/2019/03/20/20190126152517_5_klQQWkc.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('546', 'upload_logo/2019/03/20/20190126152517_5_m4rdrVa.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('547', 'upload_logo/2019/03/20/20190126154036_82_bmmXMlr.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('548', 'upload_logo/2019/03/20/20190126154036_82_jqQ06Ui.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('549', 'upload_logo/2019/03/20/20190126154036_82_4SXNCer.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('550', 'upload_logo/2019/03/20/20190103131617_48_tSfPQVH.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('551', 'upload_logo/2019/03/20/20190126152517_5_IoZCAD8.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('552', 'upload_logo/2019/03/20/20190126152517_5_jGnmxx7.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('553', 'upload_logo/2019/03/20/20190126152517_5_WWqN87o.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('554', 'upload_logo/2019/03/20/20190126152517_5_8UkhHQK.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('555', 'upload_logo/2019/03/20/20190126154036_82_Z9IYppJ.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('556', 'upload_logo/2019/03/20/20190126154036_82_KY5heSM.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('557', 'upload_logo/2019/03/20/20190126154036_82_eSU2CD8.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('558', 'upload_logo/2019/03/20/20190128084657_17_a0ZkQFd.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('559', 'upload_logo/2019/03/20/20190128084657_17_ejs4IdZ.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('560', 'upload_logo/2019/03/20/20190128084657_17_j3qfJMy.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('561', 'upload_logo/2019/03/20/20190128084657_17_j05f3F7.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('562', 'upload_logo/2019/03/20/20190103131617_48_xmB8qow.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('563', 'upload_logo/2019/03/20/20190126152517_5_YXMLl0n.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('564', 'upload_logo/2019/03/20/20190126152517_5_BFt7WHE.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('565', 'upload_logo/2019/03/20/20190103131617_48_xEHBq3S.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('566', 'upload_logo/2019/03/20/20190126152517_5_WfJAumy.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('567', 'upload_logo/2019/03/20/20190126152517_5_pfTuuC4.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('568', 'upload_logo/2019/03/20/20190103131617_48_t07GOkK.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('569', 'upload_logo/2019/03/20/20190126152517_5_s5HPI7e.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('570', 'upload_logo/2019/03/20/20190126152517_5_OOqrFuH.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('571', 'upload_logo/2019/03/20/20190103131617_48_JFIVJyo.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('572', 'upload_logo/2019/03/20/20190126152517_5_8p9osdi.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('573', 'upload_logo/2019/03/20/20190126152517_5_gaKGKIu.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('574', 'upload_logo/2019/03/20/20190126154036_82_box6eaf.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('575', 'upload_logo/2019/03/20/20190126154036_82_4bnsFBR.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('576', 'upload_logo/2019/03/20/20190126154036_82_rvz0ocd.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('577', 'upload_logo/2019/03/20/20190128084657_17_E8VdVAG.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('578', 'upload_logo/2019/03/20/20190128084657_17_7S0fCwT.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('579', 'upload_logo/2019/03/20/20190128084657_17_X8zk3ui.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('580', 'upload_logo/2019/03/20/20190128084657_17_Cu4CpPj.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('581', 'upload_logo/2019/03/20/QQ截图20181210151303.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('582', 'upload_logo/2019/03/20/QQ截图20181210151303_7vkgcMr.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('583', 'upload_logo/2019/03/20/QQ截图20181210151303_GU79BxZ.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('584', 'upload_logo/2019/03/20/QQ截图20181210151303_HNV7irt.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('585', 'upload_logo/2019/03/20/QQ截图20181210151303_elp1Qze.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('586', 'upload_logo/2019/03/20/20190103131617_48_RL6aGPv.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('587', 'upload_logo/2019/03/20/20190103131617_48_GfJPBQI.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('588', 'upload_logo/2019/03/20/20190103131617_48_FPakPh4.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('589', 'upload_logo/2019/03/20/20190103131617_48_Qu4zI8d.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('590', 'upload_logo/2019/03/20/20190103131617_48_iCg1mPs.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('591', 'upload_logo/2019/03/20/20190103131617_48_MLsJ1lW.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('592', 'upload_logo/2019/03/20/20190103131617_48_fZRdpvT.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('593', 'upload_logo/2019/03/20/20190126152517_5_kSiA0EA.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('594', 'upload_logo/2019/03/20/20190126152517_5_ph9iXOc.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('595', 'upload_logo/2019/03/20/20190126154036_82_5Pemu5A.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('596', 'upload_logo/2019/03/20/20190126154036_82_qxdUWFi.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('597', 'upload_logo/2019/03/20/20190126154036_82_MK1wAa3.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('598', 'upload_logo/2019/03/20/20190103131617_48_p0rLOzB.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('599', 'upload_logo/2019/03/20/20190126152517_5_VJco7oR.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('600', 'upload_logo/2019/03/20/20190126152517_5_srRWvDx.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('601', 'upload_logo/2019/03/20/20190126154036_82_1ScURhf.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('602', 'upload_logo/2019/03/20/20190126154036_82_5AJROAi.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('603', 'upload_logo/2019/03/20/20190126154036_82_sLzm5LG.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('604', 'upload_logo/2019/03/20/20190126152517_5_37t1mZx.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('605', 'upload_logo/2019/03/20/20190126152517_5_zgcSI79.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('606', 'upload_logo/2019/03/20/20190126152517_5_nF9e067.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('607', 'upload_logo/2019/03/20/20190126152517_5_FazLEEh.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('608', 'upload_logo/2019/03/20/20190103131617_48_oWx8kgC.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('609', 'upload_logo/2019/03/20/20190126152517_5_LHc4kbo.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('610', 'upload_logo/2019/03/20/20190126152517_5_NtG9KPE.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('611', 'upload_logo/2019/03/20/20190103131617_48_YwSiuYf.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('612', 'upload_logo/2019/03/20/20190103131617_48_p4XLooj.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('613', 'upload_logo/2019/03/20/20190103131617_48_wYdjEMk.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('614', 'upload_logo/2019/03/21/20190103131617_48.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('615', 'upload_logo/2019/03/21/20190126152517_5.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('616', 'upload_logo/2019/03/21/20190126152517_5_r06MIo1.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('617', 'upload_logo/2019/03/21/ks.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('618', 'upload_logo/2019/03/21/ks02.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('619', 'upload_logo/2019/03/21/ks02_EftHKM4.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('620', 'upload_logo/2019/03/21/ks_vChmX0d.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('621', 'upload_logo/2019/03/21/ks_yWjyHuG.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('622', 'upload_logo/2019/03/21/ks_kD1kiEg.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('623', 'upload_logo/2019/03/21/ks01.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('624', 'upload_logo/2019/03/21/ks01_gP58Is9.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('625', 'upload_logo/2019/03/21/ks01_rYykfIf.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('626', 'upload_logo/2019/03/21/ks01_h7tqHex.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('627', 'upload_logo/2019/03/21/ks_k5J3MK4.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('628', 'upload_logo/2019/03/21/ks02_eyZatCo.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('629', 'upload_logo/2019/03/21/ks02_3KIVInF.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('630', 'upload_logo/2019/03/21/ks_D88iwPC.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('631', 'upload_logo/2019/03/21/ks01_ptZqAI6.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('632', 'upload_logo/2019/03/21/ks01_3Ze4nXD.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('633', 'upload_logo/2019/03/23/20190103131617_48.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('634', 'upload_logo/2019/03/23/20190126152517_5.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('635', 'upload_logo/2019/03/23/20190126152517_5_HAvtDXI.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('636', 'upload_logo/2019/03/23/20190128084657_17.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('637', 'upload_logo/2019/03/23/20190128084657_17_8u4EnBC.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('638', 'upload_logo/2019/03/23/20190128084657_17_KXD2f76.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('639', 'upload_logo/2019/03/23/20190126154036_82.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('640', 'upload_logo/2019/03/23/20190126154036_82_YtTRSxG.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('641', 'upload_logo/2019/03/23/20190126154036_82_GRqtQnC.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('642', 'upload_logo/2019/03/23/20190126154036_82_h6R9jX1.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('643', 'upload_logo/2019/03/23/QQ截图20181210151303.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('644', 'upload_logo/2019/03/23/QQ截图20181210151303_gACzkuR.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('645', 'upload_logo/2019/03/23/QQ截图20181210151303_ufcllnp.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('646', 'upload_logo/2019/03/23/QQ截图20181210151303_qJWPCqY.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('647', 'upload_logo/2019/03/23/QQ截图20181210151303_UK41M2r.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('648', 'upload_logo/2019/03/23/20190103131617_48_dy68XEh.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('649', 'upload_logo/2019/04/10/20190126152517_5.png', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('650', 'upload_logo/2019/04/10/图片2.jpg', '点击进入');
INSERT INTO `hatchange_uploadimagelogo` VALUES ('651', 'upload_logo/2019/04/10/图片2_Ip2UhMo.jpg', '点击进入');

-- ----------------------------
-- Table structure for `hatmade_goodscategor`
-- ----------------------------
DROP TABLE IF EXISTS `hatmade_goodscategor`;
CREATE TABLE `hatmade_goodscategor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hatmade_goodscategor
-- ----------------------------
INSERT INTO `hatmade_goodscategor` VALUES ('1', '头饰系列', 'banner/1图2x.png');
INSERT INTO `hatmade_goodscategor` VALUES ('2', '服饰系列', 'banner/2图2x.png');
INSERT INTO `hatmade_goodscategor` VALUES ('3', '潮鞋系列', 'banner/3图2x.png');
INSERT INTO `hatmade_goodscategor` VALUES ('4', '包包系列', 'banner/4图2x.png');
INSERT INTO `hatmade_goodscategor` VALUES ('5', '裤子系列', 'banner/5图2x.png');

-- ----------------------------
-- Table structure for `hatmade_goodscategor_goods_name`
-- ----------------------------
DROP TABLE IF EXISTS `hatmade_goodscategor_goods_name`;
CREATE TABLE `hatmade_goodscategor_goods_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodscategor_id` int(11) NOT NULL,
  `goodsname_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hatmade_goodscategor_goo_goodscategor_id_goodsnam_60ea0f4a_uniq` (`goodscategor_id`,`goodsname_id`),
  KEY `hatmade_goodscategor_goodsname_id_a1eba26b_fk_hatmade_g` (`goodsname_id`),
  CONSTRAINT `hatmade_goodscategor_goodscategor_id_e75f0473_fk_hatmade_g` FOREIGN KEY (`goodscategor_id`) REFERENCES `hatmade_goodscategor` (`id`),
  CONSTRAINT `hatmade_goodscategor_goodsname_id_a1eba26b_fk_hatmade_g` FOREIGN KEY (`goodsname_id`) REFERENCES `hatmade_goodsname` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hatmade_goodscategor_goods_name
-- ----------------------------
INSERT INTO `hatmade_goodscategor_goods_name` VALUES ('6', '1', '6');
INSERT INTO `hatmade_goodscategor_goods_name` VALUES ('7', '1', '7');
INSERT INTO `hatmade_goodscategor_goods_name` VALUES ('8', '1', '8');
INSERT INTO `hatmade_goodscategor_goods_name` VALUES ('9', '1', '9');
INSERT INTO `hatmade_goodscategor_goods_name` VALUES ('10', '1', '10');

-- ----------------------------
-- Table structure for `hatmade_goodsname`
-- ----------------------------
DROP TABLE IF EXISTS `hatmade_goodsname`;
CREATE TABLE `hatmade_goodsname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hatmade_goodsname
-- ----------------------------
INSERT INTO `hatmade_goodsname` VALUES ('6', '全部');
INSERT INTO `hatmade_goodsname` VALUES ('7', '帽子');
INSERT INTO `hatmade_goodsname` VALUES ('8', '口罩');
INSERT INTO `hatmade_goodsname` VALUES ('9', '围巾');
INSERT INTO `hatmade_goodsname` VALUES ('10', '耳环');
INSERT INTO `hatmade_goodsname` VALUES ('11', '手提袋');

-- ----------------------------
-- Table structure for `hatmade_goodsstyle`
-- ----------------------------
DROP TABLE IF EXISTS `hatmade_goodsstyle`;
CREATE TABLE `hatmade_goodsstyle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hatmade_goodsstyle
-- ----------------------------
INSERT INTO `hatmade_goodsstyle` VALUES ('1', '基本款');
INSERT INTO `hatmade_goodsstyle` VALUES ('2', '特殊款');

-- ----------------------------
-- Table structure for `hatmade_hatcolorimage`
-- ----------------------------
DROP TABLE IF EXISTS `hatmade_hatcolorimage`;
CREATE TABLE `hatmade_hatcolorimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hat_number` varchar(8) DEFAULT NULL,
  `image` varchar(1000) NOT NULL,
  `hat_left` varchar(1000) NOT NULL,
  `hat_right` varchar(1000) NOT NULL,
  `hat_bottom` varchar(100) DEFAULT NULL,
  `color` varchar(1000) DEFAULT NULL,
  `hat_colour_id` int(11) DEFAULT NULL,
  `hat_null_button` varchar(100) DEFAULT NULL,
  `hat_back` varchar(100) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hatmade_hatcolorimag_hat_colour_id_5c19bebd_fk_hatmade_h` (`hat_colour_id`),
  CONSTRAINT `hatmade_hatcolorimag_hat_colour_id_5c19bebd_fk_hatmade_h` FOREIGN KEY (`hat_colour_id`) REFERENCES `hatmade_hatcolourname` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hatmade_hatcolorimage
-- ----------------------------
INSERT INTO `hatmade_hatcolorimage` VALUES ('6', '9056', 'hat_color_images/front/格子正面图_sIEyMoi.jpg', 'hat_color_images/left/咖啡格左侧图_EQmfMO9.jpg', 'hat_color_images/right/咖啡格右侧图_KOmX9Sd.jpg', 'hat_color_images/bottom/咖啡格内侧图_u1pBurH.jpg', 'hat_color_images/color/9061-color.jpg', '6', 'hat_color_images/null_button/咖啡格后视图扣.jpg', 'hat_color_images/back/咖啡格后视图_gHRht42.jpg', '点击进入');
INSERT INTO `hatmade_hatcolorimage` VALUES ('7', '9046', 'hat_color_images/front/IMG_7335格子主图_VjIBhBC.jpg', 'hat_color_images/left/IMG_7336格子左侧.jpg', 'hat_color_images/right/IMG_7336格子右侧.jpg', 'hat_color_images/bottom/IMG_7339格子汗带内部_HqkIZ4F.jpg', 'hat_color_images/color/9046-color.jpg', '6', 'hat_color_images/null_button/格子后扣扣_Th6ms2C.jpg', 'hat_color_images/back/格子后扣图.jpg', '点击进入');
INSERT INTO `hatmade_hatcolorimage` VALUES ('10', '9064', 'hat_color_images/front/18KS-013蓝色主图IMG_8912.jpg', 'hat_color_images/left/18ks-013左侧图.jpg', 'hat_color_images/right/18KS-013蓝色右侧图.jpg', 'hat_color_images/bottom/18KS-013蓝色内侧图.jpg', 'hat_color_images/color/9064.jpg', '4', 'hat_color_images/null_button/18ks-013蓝色后扣-2.jpg', 'hat_color_images/back/18ks-013蓝色后视图_ORWgKrN.jpg', '点击进入');
INSERT INTO `hatmade_hatcolorimage` VALUES ('11', '9062', 'hat_color_images/front/18KS-013姜黄正面.jpg', 'hat_color_images/left/18KS-013姜黄左侧图.jpg', 'hat_color_images/right/18ks-013姜黄右侧图.jpg', 'hat_color_images/bottom/18KS-013姜黄内侧.jpg', 'hat_color_images/color/3.jpg', '2', 'hat_color_images/null_button/18KS-013姜黄后扣扣_aWmPH1A.jpg', 'hat_color_images/back/18KS-013姜黄后视.jpg', '点击进入');
INSERT INTO `hatmade_hatcolorimage` VALUES ('12', '90642', 'hat_color_images/front/18KS-013宝蓝正面.jpg', 'hat_color_images/left/18ks-013宝蓝左侧图.jpg', 'hat_color_images/right/18KS-013宝蓝右侧图.jpg', 'hat_color_images/bottom/18KS-013宝蓝内侧.jpg', 'hat_color_images/color/1.jpg', '4', 'hat_color_images/null_button/18KS-013宝蓝后扣扣.jpg', 'hat_color_images/back/18KS-013宝蓝后视图.jpg', '点击进入');
INSERT INTO `hatmade_hatcolorimage` VALUES ('13', '9067', 'hat_color_images/front/18KS-013黑色正面.jpg', 'hat_color_images/left/18KS-013黑色左侧.jpg', 'hat_color_images/right/18KS-013黑色右侧.jpg', 'hat_color_images/bottom/18KS-013黑色内侧.jpg', 'hat_color_images/color/2.jpg', '7', 'hat_color_images/null_button/18KS-013黑色后扣扣_rYHRGZr.jpg', 'hat_color_images/back/18KS-013黑帽子后视.jpg', '点击进入');
INSERT INTO `hatmade_hatcolorimage` VALUES ('14', '9089', 'hat_color_images/front/18KS-023藏青正面.jpg', 'hat_color_images/left/18KS-023藏青左侧.jpg', 'hat_color_images/right/18KS-023藏青右侧.jpg', 'hat_color_images/bottom/18ks-023藏蓝内里.jpg', 'hat_color_images/color/5.jpg', '9', 'hat_color_images/null_button/18KS-023藏蓝后扣扣.jpg', 'hat_color_images/back/18KS-023藏蓝后扣.jpg', '点击进入');
INSERT INTO `hatmade_hatcolorimage` VALUES ('15', '9074', 'hat_color_images/front/18KS-023宝蓝正面.jpg', 'hat_color_images/left/18KS-023宝蓝左侧.jpg', 'hat_color_images/right/18KS-023宝蓝右侧.jpg', 'hat_color_images/bottom/18KS-023宝蓝内侧.jpg', 'hat_color_images/color/4.jpg', '4', 'hat_color_images/null_button/18KS-023宝蓝后扣扣.jpg', 'hat_color_images/back/18KS-023宝蓝后扣.jpg', '点击进入');
INSERT INTO `hatmade_hatcolorimage` VALUES ('16', '9097', 'hat_color_images/front/18KS-023黑色正面.jpg', 'hat_color_images/left/18KS-023黑色左侧.jpg', 'hat_color_images/right/18KS-023黑色右侧.jpg', 'hat_color_images/bottom/18KS-023黑色内里.jpg', 'hat_color_images/color/2_hma2SzI.jpg', '7', 'hat_color_images/null_button/18KS-023黑色后扣扣.jpg', 'hat_color_images/back/18KS-023黑色后扣.jpg', '点击进入');
INSERT INTO `hatmade_hatcolorimage` VALUES ('17', '9103', 'hat_color_images/front/18KS-023灰色正面.jpg', 'hat_color_images/left/18KS-023灰色左侧.jpg', 'hat_color_images/right/18KS-023灰色右侧.jpg', 'hat_color_images/bottom/18KS-023灰色内里.jpg', 'hat_color_images/color/6.jpg', '3', 'hat_color_images/null_button/18KS-023灰色后扣扣.jpg', 'hat_color_images/back/18KS-023灰色后扣.jpg', '点击进入');
INSERT INTO `hatmade_hatcolorimage` VALUES ('18', '9113', 'hat_color_images/front/2.5.jpg', 'hat_color_images/left/2.3.jpg', 'hat_color_images/right/2.6.jpg', 'hat_color_images/bottom/2.4.jpg', 'hat_color_images/color/2.2-1.jpg', '3', 'hat_color_images/null_button/2.2.jpg', 'hat_color_images/back/2.2.jpg', '点击进入');
INSERT INTO `hatmade_hatcolorimage` VALUES ('19', '9114', 'hat_color_images/front/3.5.jpg', 'hat_color_images/left/3.3.jpg', 'hat_color_images/right/3.6.jpg', 'hat_color_images/bottom/3.4.jpg', 'hat_color_images/color/3.2-1.jpg', '4', 'hat_color_images/null_button/3.2.jpg', 'hat_color_images/back/3.2.jpg', '点击进入');
INSERT INTO `hatmade_hatcolorimage` VALUES ('20', '9119', 'hat_color_images/front/1.5.jpg', 'hat_color_images/left/1.3.jpg', 'hat_color_images/right/1.6.jpg', 'hat_color_images/bottom/1.4.jpg', 'hat_color_images/color/1.1-1.jpg', '9', 'hat_color_images/null_button/1.22.jpg', 'hat_color_images/back/1.22.jpg', '点击进入');

-- ----------------------------
-- Table structure for `hatmade_hatcolourname`
-- ----------------------------
DROP TABLE IF EXISTS `hatmade_hatcolourname`;
CREATE TABLE `hatmade_hatcolourname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hat_colour_number` int(11) DEFAULT NULL,
  `hat_colour_name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hatmade_hatcolourname
-- ----------------------------
INSERT INTO `hatmade_hatcolourname` VALUES ('1', '1', '红色');
INSERT INTO `hatmade_hatcolourname` VALUES ('2', '2', '黄色');
INSERT INTO `hatmade_hatcolourname` VALUES ('3', '3', '灰色');
INSERT INTO `hatmade_hatcolourname` VALUES ('4', '4', '蓝色');
INSERT INTO `hatmade_hatcolourname` VALUES ('5', '5', '紫色');
INSERT INTO `hatmade_hatcolourname` VALUES ('6', '6', '条纹色');
INSERT INTO `hatmade_hatcolourname` VALUES ('7', '7', '黑色');
INSERT INTO `hatmade_hatcolourname` VALUES ('8', '8', '白色');
INSERT INTO `hatmade_hatcolourname` VALUES ('9', null, '藏青色');

-- ----------------------------
-- Table structure for `hatmade_hatdiy`
-- ----------------------------
DROP TABLE IF EXISTS `hatmade_hatdiy`;
CREATE TABLE `hatmade_hatdiy` (
  `hat_made_Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hat_number` varchar(8) DEFAULT NULL,
  `hat_name` varchar(100) DEFAULT NULL,
  `hat_brand` varchar(100) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `hat_right` varchar(1000) DEFAULT NULL,
  `hat_left` varchar(1000) DEFAULT NULL,
  `hat_bottom` varchar(100) DEFAULT NULL,
  `hat_back` varchar(100) DEFAULT NULL,
  `hat_front` varchar(1000) DEFAULT NULL,
  `hat_price` varchar(500) NOT NULL,
  `hat_desc` varchar(1000) DEFAULT NULL,
  `add_time` datetime(6) DEFAULT NULL,
  `detail` longtext,
  `hat_change_materials_id` bigint(20) DEFAULT NULL,
  `hat_colour_id` int(11) DEFAULT NULL,
  `hat_null_button` varchar(100) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `goods_categor_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `goods_style_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`hat_made_Id`),
  KEY `hatmade_hatdiy_hat_change_materials_88dce4dc_fk_hatmateri` (`hat_change_materials_id`),
  KEY `hatmade_hatdiy_hat_colour_id_ddf69055_fk_hatmade_h` (`hat_colour_id`),
  KEY `hatmade_hatdiy_goods_categor_id_f0fb7511_fk_hatmade_g` (`goods_categor_id`),
  KEY `hatmade_hatdiy_goods_style_id_9a183b9f_fk_hatmade_goodsstyle_id` (`goods_style_id`),
  CONSTRAINT `hatmade_hatdiy_goods_categor_id_f0fb7511_fk_hatmade_g` FOREIGN KEY (`goods_categor_id`) REFERENCES `hatmade_goodscategor` (`id`),
  CONSTRAINT `hatmade_hatdiy_goods_style_id_9a183b9f_fk_hatmade_goodsstyle_id` FOREIGN KEY (`goods_style_id`) REFERENCES `hatmade_goodsstyle` (`id`),
  CONSTRAINT `hatmade_hatdiy_hat_change_materials_88dce4dc_fk_hatmateri` FOREIGN KEY (`hat_change_materials_id`) REFERENCES `hatmaterials_hatmaterials` (`hat_materials_Id`),
  CONSTRAINT `hatmade_hatdiy_hat_colour_id_ddf69055_fk_hatmade_h` FOREIGN KEY (`hat_colour_id`) REFERENCES `hatmade_hatcolourname` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hatmade_hatdiy
-- ----------------------------
INSERT INTO `hatmade_hatdiy` VALUES ('4', '9046', '格纹花帽', '今世多', 'images/main/IMG_7638.png', 'images/right/IMG_7336格子右侧.jpg', 'images/left/IMG_7336格子左侧.jpg', 'images/bottom/IMG_7339格子汗带内部_cDy0GCF.jpg', 'images/back/格子后扣图.jpg', 'images/front/IMG_7335格子主图_wmBxlcv.jpg', '30', null, '2018-12-17 03:05:00.000000', '<p><img src=\"/media/hatmade/ueditor/hat01_20181217110755_503.jpg\" style=\"\"/> </p><p><img src=\"/media/hatmade/ueditor/hat02_20181217110756_910.jpg\" style=\"\"/> </p><p><img src=\"/media/hatmade/ueditor/hat03_20181217110756_479.jpg\" style=\"\"/> </p><p><img src=\"/media/hatmade/ueditor/hat04_20181217110756_209.jpg\" style=\"\"/> </p><p><img src=\"/media/hatmade/ueditor/hat05_20181217110756_966.jpg\" style=\"\"/> </p><p><br/> </p>', '5', '6', 'images/null_button/格子后扣扣_xIzB2ED.jpg', '点击进入', '1', '0', '2');
INSERT INTO `hatmade_hatdiy` VALUES ('5', '9056', '休闲格子帽', '今世多', 'images/main/咖啡格侧面图.jpg', 'images/right/咖啡格右侧图.jpg', 'images/left/咖啡格左侧图.jpg', 'images/bottom/咖啡格内侧图.jpg', 'images/back/咖啡格后视图.jpg', 'images/front/格子正面图.jpg', '55', null, '2019-01-14 06:23:00.000000', '<p><img src=\"/media/hatmade/ueditor/咖啡格子正面图大_20190114143130_432.jpg\"/> <img src=\"/media/hatmade/ueditor/咖啡格子后扣_20190114143130_372.jpg\"/> </p><p><img src=\"/media/hatmade/ueditor/咖啡格帽檐_20190114143130_319.jpg\" style=\"\"/> </p><p><img src=\"/media/hatmade/ueditor/咖啡格子帽子细节_20190114143130_832.jpg\" style=\"\"/> </p><p><br/> </p>', '2', '6', 'images/null_button/咖啡格后视图扣_Q2ZcGEq.jpg', '点击进入', '1', '1', '2');
INSERT INTO `hatmade_hatdiy` VALUES ('6', '9064', '沙滩休闲帽', '今世多', 'images/main/18KS-013蓝主侧图.jpg', 'images/right/18KS-013蓝色右侧图.jpg', 'images/left/18ks-013左侧图.jpg', 'images/bottom/18KS-013蓝色内侧图.jpg', 'images/back/18ks-013蓝色后视图.jpg', 'images/front/18KS-013蓝色主图IMG_8912.jpg', '41', null, '2019-01-18 05:49:00.000000', '<p><br/> </p><p><img src=\"/media/hatmade/ueditor/18KS-013蓝色主图大_20190125100602_720.jpg\" title=\"\" alt=\"18KS-013蓝色主图大.jpg\"/> </p><p><img src=\"/media/hatmade/ueditor/18KS-013蓝色后扣_20190125100518_549.jpg\" style=\"\"/> </p><p><img src=\"/media/hatmade/ueditor/18ks-013蓝色细节_20190125100613_326.jpg\" title=\"\" alt=\"18ks-013蓝色细节.jpg\"/> </p>', '2', '4', 'images/null_button/18ks-013蓝色后扣-2_s7VxvIt.jpg', '点击进入', '1', '1', '1');
INSERT INTO `hatmade_hatdiy` VALUES ('7', '9018', '手提袋', '今世多', 'images/main/9018-帆布袋_4.jpg', 'images/right/9018-帆布袋_2.jpg', 'images/left/9018-帆布袋_1.jpg', 'images/bottom/9018-帆布袋_1.jpg', 'images/back/9018-帆布袋_1.jpg', 'images/front/9018-帆布袋_2.jpg', '35', null, '2019-03-13 06:55:00.000000', '<p>亲 正在加载中.....</p>', '5', '8', 'images/null_button/9018-帆布袋_1.jpg', '点击进入', '4', '1', '1');
INSERT INTO `hatmade_hatdiy` VALUES ('8', '9028', '手提袋休闲款02', '今世多', 'images/main/9028-帆布袋_4.jpg', 'images/right/9028-帆布袋_2.jpg', 'images/left/9028-帆布袋_1.jpg', 'images/bottom/9028-帆布袋_2.jpg', 'images/back/9028-帆布袋_1.jpg', 'images/front/9028-帆布袋_2.jpg', '32', null, '2019-03-18 01:17:00.000000', '<p>亲 正在加载中.....</p>', '5', '8', 'images/null_button/9028-帆布袋_3.jpg', '点击进入', '4', '1', '2');
INSERT INTO `hatmade_hatdiy` VALUES ('9', '9038', '手提袋休闲款03', '今世多', 'images/main/9038-帆布袋_4.jpg', 'images/right/9038-帆布袋_2.jpg', 'images/left/9038-帆布袋_1.jpg', 'images/bottom/9038-帆布袋_1.jpg', 'images/back/9038-帆布袋_1.jpg', 'images/front/9038-帆布袋_2.jpg', '29', null, '2019-03-18 01:38:00.000000', '<p>亲 正在加载中......</p>', '5', '8', 'images/null_button/9038-帆布袋_3.jpg', '点击进入', '4', '1', '1');
INSERT INTO `hatmade_hatdiy` VALUES ('10', '9074', '弯眉蓝色', '今世多', 'images/main/18KS-023宝蓝侧面.jpg', 'images/right/18KS-023宝蓝右侧.jpg', 'images/left/18KS-023宝蓝左侧.jpg', 'images/bottom/18KS-023宝蓝内侧.jpg', 'images/back/18KS-023宝蓝后扣.jpg', 'images/front/18KS-023宝蓝正面.jpg', '39', null, '2019-03-18 01:50:00.000000', '<p>亲 正在加载中</p>', '3', '4', 'images/null_button/18KS-023宝蓝后扣扣.jpg', '点击进入', '1', '1', '1');
INSERT INTO `hatmade_hatdiy` VALUES ('11', '9113', '平眉军帽', '今世多', 'images/main/2.1.jpg', 'images/right/2.6.jpg', 'images/left/2.3.jpg', 'images/bottom/2.4.jpg', 'images/back/2.2.jpg', 'images/front/2.5.jpg', '56', null, '2019-03-23 07:23:00.000000', '<p>亲 正在加载中......</p>', '5', '3', 'images/null_button/2.2.jpg', '点击进入', '1', '1', '1');

-- ----------------------------
-- Table structure for `hatmade_hatdiy_hatdiy_button`
-- ----------------------------
DROP TABLE IF EXISTS `hatmade_hatdiy_hatdiy_button`;
CREATE TABLE `hatmade_hatdiy_hatdiy_button` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hatdiy_id` bigint(20) NOT NULL,
  `hatbutton_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hatmade_hatdiy_hatdiy_bu_hatdiy_id_hatbutton_id_6c70fde2_uniq` (`hatdiy_id`,`hatbutton_id`),
  KEY `hatmade_hatdiy_hatdi_hatbutton_id_647d500b_fk_hatbutton` (`hatbutton_id`),
  CONSTRAINT `hatmade_hatdiy_hatdi_hatbutton_id_647d500b_fk_hatbutton` FOREIGN KEY (`hatbutton_id`) REFERENCES `hatbutton_hatbutton` (`hat_back_Id`),
  CONSTRAINT `hatmade_hatdiy_hatdi_hatdiy_id_bb6eabd6_fk_hatmade_h` FOREIGN KEY (`hatdiy_id`) REFERENCES `hatmade_hatdiy` (`hat_made_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hatmade_hatdiy_hatdiy_button
-- ----------------------------
INSERT INTO `hatmade_hatdiy_hatdiy_button` VALUES ('10', '4', '2');
INSERT INTO `hatmade_hatdiy_hatdiy_button` VALUES ('15', '5', '2');
INSERT INTO `hatmade_hatdiy_hatdiy_button` VALUES ('12', '5', '3');
INSERT INTO `hatmade_hatdiy_hatdiy_button` VALUES ('14', '6', '2');
INSERT INTO `hatmade_hatdiy_hatdiy_button` VALUES ('16', '6', '3');
INSERT INTO `hatmade_hatdiy_hatdiy_button` VALUES ('17', '6', '4');
INSERT INTO `hatmade_hatdiy_hatdiy_button` VALUES ('18', '7', '2');
INSERT INTO `hatmade_hatdiy_hatdiy_button` VALUES ('19', '8', '2');
INSERT INTO `hatmade_hatdiy_hatdiy_button` VALUES ('20', '9', '2');
INSERT INTO `hatmade_hatdiy_hatdiy_button` VALUES ('21', '10', '2');
INSERT INTO `hatmade_hatdiy_hatdiy_button` VALUES ('22', '10', '3');
INSERT INTO `hatmade_hatdiy_hatdiy_button` VALUES ('23', '11', '2');

-- ----------------------------
-- Table structure for `hatmade_hatdiy_hatdiy_color`
-- ----------------------------
DROP TABLE IF EXISTS `hatmade_hatdiy_hatdiy_color`;
CREATE TABLE `hatmade_hatdiy_hatdiy_color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hatdiy_id` bigint(20) NOT NULL,
  `hatcolorimage_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hatmade_hatdiy_hatdiy_co_hatdiy_id_hatcolorimage__5ba6d851_uniq` (`hatdiy_id`,`hatcolorimage_id`),
  KEY `hatmade_hatdiy_hatdi_hatcolorimage_id_f824ab52_fk_hatmade_h` (`hatcolorimage_id`),
  CONSTRAINT `hatmade_hatdiy_hatdi_hatcolorimage_id_f824ab52_fk_hatmade_h` FOREIGN KEY (`hatcolorimage_id`) REFERENCES `hatmade_hatcolorimage` (`id`),
  CONSTRAINT `hatmade_hatdiy_hatdi_hatdiy_id_b7eca093_fk_hatmade_h` FOREIGN KEY (`hatdiy_id`) REFERENCES `hatmade_hatdiy` (`hat_made_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hatmade_hatdiy_hatdiy_color
-- ----------------------------
INSERT INTO `hatmade_hatdiy_hatdiy_color` VALUES ('7', '4', '7');
INSERT INTO `hatmade_hatdiy_hatdiy_color` VALUES ('6', '5', '6');
INSERT INTO `hatmade_hatdiy_hatdiy_color` VALUES ('10', '6', '10');
INSERT INTO `hatmade_hatdiy_hatdiy_color` VALUES ('11', '6', '11');
INSERT INTO `hatmade_hatdiy_hatdiy_color` VALUES ('12', '6', '12');
INSERT INTO `hatmade_hatdiy_hatdiy_color` VALUES ('13', '6', '13');
INSERT INTO `hatmade_hatdiy_hatdiy_color` VALUES ('14', '7', '6');
INSERT INTO `hatmade_hatdiy_hatdiy_color` VALUES ('15', '8', '6');
INSERT INTO `hatmade_hatdiy_hatdiy_color` VALUES ('16', '9', '6');
INSERT INTO `hatmade_hatdiy_hatdiy_color` VALUES ('20', '10', '14');
INSERT INTO `hatmade_hatdiy_hatdiy_color` VALUES ('21', '10', '15');
INSERT INTO `hatmade_hatdiy_hatdiy_color` VALUES ('18', '10', '16');
INSERT INTO `hatmade_hatdiy_hatdiy_color` VALUES ('19', '10', '17');
INSERT INTO `hatmade_hatdiy_hatdiy_color` VALUES ('23', '11', '18');
INSERT INTO `hatmade_hatdiy_hatdiy_color` VALUES ('24', '11', '19');
INSERT INTO `hatmade_hatdiy_hatdiy_color` VALUES ('25', '11', '20');

-- ----------------------------
-- Table structure for `hatmaterials_hatmaterials`
-- ----------------------------
DROP TABLE IF EXISTS `hatmaterials_hatmaterials`;
CREATE TABLE `hatmaterials_hatmaterials` (
  `hat_materials_Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `materials` varchar(150) DEFAULT NULL,
  `materials_number` varchar(4) DEFAULT NULL,
  `price` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`hat_materials_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hatmaterials_hatmaterials
-- ----------------------------
INSERT INTO `hatmaterials_hatmaterials` VALUES ('1', '网格纱布', '601', '10', '2018-12-16 09:12:00.000000');
INSERT INTO `hatmaterials_hatmaterials` VALUES ('2', '16x12纱卡', '602', '20', '2018-12-17 02:30:00.000000');
INSERT INTO `hatmaterials_hatmaterials` VALUES ('3', '磨毛纱卡', '603', '63', '2018-12-17 02:31:00.000000');
INSERT INTO `hatmaterials_hatmaterials` VALUES ('4', '涤纶', '604', '22', '2018-12-17 02:31:00.000000');
INSERT INTO `hatmaterials_hatmaterials` VALUES ('5', '麻棉帆布', '605', '18', '2018-12-17 02:31:00.000000');

-- ----------------------------
-- Table structure for `messagereply_hatmessagereply`
-- ----------------------------
DROP TABLE IF EXISTS `messagereply_hatmessagereply`;
CREATE TABLE `messagereply_hatmessagereply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hat_remark` longtext,
  `hat_message_reply` longtext,
  `add_time` datetime(6) NOT NULL,
  `hat_update_Id` int(11) DEFAULT NULL,
  `add_time2` datetime(6) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of messagereply_hatmessagereply
-- ----------------------------
INSERT INTO `messagereply_hatmessagereply` VALUES ('7', '55555', null, '2019-01-16 10:06:10.005539', '59', '2019-01-17 00:22:16.045307', '点击进入', null);
INSERT INTO `messagereply_hatmessagereply` VALUES ('8', '3333', '66666', '2019-01-17 00:17:00.000000', '59', '2019-01-17 00:22:16.045307', '点击进入', null);
INSERT INTO `messagereply_hatmessagereply` VALUES ('9', '2222', null, '2019-01-16 10:27:52.348029', '59', '2019-01-17 00:22:16.045307', '点击进入', null);
INSERT INTO `messagereply_hatmessagereply` VALUES ('10', '9999', '的减肥的数据加载句一惊声尖叫句所句军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军', '2019-01-16 10:29:00.000000', '59', '2019-01-17 00:25:00.000000', '点击进入', null);
INSERT INTO `messagereply_hatmessagereply` VALUES ('11', '你好', null, '2019-01-18 07:01:38.141994', '67', '2019-01-18 07:01:38.142994', '点击进入', null);
INSERT INTO `messagereply_hatmessagereply` VALUES ('12', '在吗', '在的的', '2019-01-18 07:09:00.000000', '68', '2019-01-18 07:20:00.000000', '点击进入', null);
INSERT INTO `messagereply_hatmessagereply` VALUES ('13', '11111', '2222', '2019-01-18 07:32:00.000000', '67', '2019-01-18 07:33:00.000000', '点击进入', null);
INSERT INTO `messagereply_hatmessagereply` VALUES ('14', '333333', '4444444', '2019-01-18 08:24:00.000000', '67', '2019-01-18 08:25:00.000000', '点击进入', null);
INSERT INTO `messagereply_hatmessagereply` VALUES ('15', '88888', '999999999992222', '2019-01-18 08:32:00.000000', '67', '2019-01-18 08:38:00.000000', '点击进入', null);
INSERT INTO `messagereply_hatmessagereply` VALUES ('16', '777', null, '2019-01-18 08:36:07.913287', '67', '2019-01-18 08:36:07.913287', '点击进入', null);
INSERT INTO `messagereply_hatmessagereply` VALUES ('17', '1111', '222222', '2019-01-23 08:35:00.000000', '74', '2019-01-24 01:52:00.000000', '点击进入', null);
INSERT INTO `messagereply_hatmessagereply` VALUES ('18', '3333', null, '2019-01-24 02:50:21.639115', '73', '2019-01-24 02:50:21.639115', '点击进入', null);
INSERT INTO `messagereply_hatmessagereply` VALUES ('19', '请在2月8日前送到xx地点', '有点困难，除非加钱！', '2019-01-30 07:25:00.000000', '107', '2019-01-30 07:26:00.000000', '点击进入', null);
INSERT INTO `messagereply_hatmessagereply` VALUES ('20', '1111', null, '2019-02-20 01:32:34.822816', '116', '2019-02-20 01:32:34.822816', '点击进入', null);
INSERT INTO `messagereply_hatmessagereply` VALUES ('21', '2222', null, '2019-02-20 01:32:54.011816', '116', '2019-02-20 01:32:54.011816', '点击进入', null);
INSERT INTO `messagereply_hatmessagereply` VALUES ('22', '33', null, '2019-02-20 03:16:44.004636', '116', '2019-02-20 03:16:44.004636', '点击进入', null);
INSERT INTO `messagereply_hatmessagereply` VALUES ('23', '555', null, '2019-02-20 05:35:45.182687', '116', '2019-02-20 05:35:45.182687', '点击进入', '55');
INSERT INTO `messagereply_hatmessagereply` VALUES ('24', '888', null, '2019-02-20 05:37:03.056087', '116', '2019-02-20 05:37:03.056087', '点击进入', '你好');
INSERT INTO `messagereply_hatmessagereply` VALUES ('25', '7777', '11', '2019-02-20 05:37:00.000000', '116', '2019-02-20 05:37:00.000000', '点击进入', 'hat02');
INSERT INTO `messagereply_hatmessagereply` VALUES ('26', '有人在吗', '在的', '2019-03-23 07:03:00.000000', '163', '2019-03-23 07:05:00.000000', '点击进入', 'hat02');

-- ----------------------------
-- Table structure for `orderflow_orderflow`
-- ----------------------------
DROP TABLE IF EXISTS `orderflow_orderflow`;
CREATE TABLE `orderflow_orderflow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hat_status_one` varchar(20) DEFAULT NULL,
  `add_time_one` datetime(6) NOT NULL,
  `hat_status_two` varchar(20) DEFAULT NULL,
  `add_time_two` datetime(6) NOT NULL,
  `hat_status_three` varchar(20) DEFAULT NULL,
  `add_time_three` datetime(6) NOT NULL,
  `hat_status_four` varchar(20) DEFAULT NULL,
  `add_time_four` datetime(6) NOT NULL,
  `hat_status_five` varchar(20) DEFAULT NULL,
  `add_time_five` datetime(6) NOT NULL,
  `hat_status_six` varchar(20) DEFAULT NULL,
  `add_time_six` datetime(6) NOT NULL,
  `hat_status_seven` varchar(20) DEFAULT NULL,
  `add_time_seven` datetime(6) NOT NULL,
  `hat_order_id` bigint(20) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderflow_orderflow_hat_order_id_d4df55b5_fk_hatchange` (`hat_order_id`),
  CONSTRAINT `orderflow_orderflow_hat_order_id_d4df55b5_fk_hatchange` FOREIGN KEY (`hat_order_id`) REFERENCES `hatchange_hatchange` (`hat_update_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderflow_orderflow
-- ----------------------------
INSERT INTO `orderflow_orderflow` VALUES ('1', '1', '2019-03-23 07:03:00.000000', '1', '2019-03-23 07:02:00.000000', '1', '2019-03-23 07:02:00.000000', '1', '2019-03-23 07:02:00.000000', '1', '2019-03-23 07:02:00.000000', '1', '2019-03-23 07:02:00.000000', '1', '2019-03-23 07:02:00.000000', '163', '点击进入');

-- ----------------------------
-- Table structure for `user_userprofile`
-- ----------------------------
DROP TABLE IF EXISTS `user_userprofile`;
CREATE TABLE `user_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_userprofile
-- ----------------------------
INSERT INTO `user_userprofile` VALUES ('2', 'pbkdf2_sha256$100000$le7IYn4dhtyU$wLFEcL2aRzxx63QvFKBV6jZJLGHuw8Ju2xnazfbl28I=', '2019-03-23 07:09:57.750000', '1', 'hat02', '', '', '132@163.com', '1', '1', '2018-12-16 09:08:49.617934', '新新快递', null, 'female', '', '', null, '2018-12-16 09:08:49.617934');
INSERT INTO `user_userprofile` VALUES ('4', 'pbkdf2_sha256$100000$hXMOxHzOBQzO$vSaGHbflPdesuiTsLoZbF6H7eyyOurfEnB93atvRgj0=', '2019-02-25 07:17:31.893019', '1', 'hat03', '', '', '145@qq.com', '1', '1', '2019-02-25 06:05:00.000000', '办公室01', null, 'female', 'ww', 'ww', null, '2019-02-25 06:05:00.000000');
INSERT INTO `user_userprofile` VALUES ('19', 'pbkdf2_sha256$100000$2gA8nPtKIH1i$UN4kP+QSUoBSf6+HJuBtzsPwPem28vUlWMrMElGpK0M=', '2019-03-11 03:06:20.173257', '0', 'hat05', '', '', '7895@qq.com', '0', '1', '2019-03-11 03:06:08.049857', '', null, 'female', '', '', null, '2019-03-11 03:06:08.049857');
INSERT INTO `user_userprofile` VALUES ('20', 'pbkdf2_sha256$100000$IDbRyB6ZHmtg$QQBOeyKunPyoVZFTm1w5xhYQv+L5kNFLQk9ivUMGQdM=', '2019-03-14 09:14:22.313000', '0', 'hat04', '', '', '123457@qq.com', '0', '1', '2019-03-11 03:10:30.579859', '', null, 'female', '', '', null, '2019-03-11 03:10:30.579859');
INSERT INTO `user_userprofile` VALUES ('21', 'pbkdf2_sha256$100000$qfGHApLhFJYS$Dfbl/GzQgTPRH8lgKCSyD5qcayS/1uZwVX4Y7xYiAjw=', '2019-03-23 07:43:12.051000', '0', 'hat06', '', '', '4568999@qq.com', '0', '1', '2019-03-23 07:08:41.606000', '', null, 'female', '', '', null, '2019-03-23 07:08:41.607000');
INSERT INTO `user_userprofile` VALUES ('22', 'pbkdf2_sha256$100000$jCZIWWZLKT3B$rK/H5gMua5iZeR6FfZZzfOHcvCMD0oSqvtWrc9WLKLw=', '2019-04-10 07:31:29.095607', '1', 'admin', '', '', '123@qq.com', '1', '1', '2019-04-10 07:31:14.296007', '', null, 'female', '', '', null, '2019-04-10 07:31:14.296007');

-- ----------------------------
-- Table structure for `user_userprofile_groups`
-- ----------------------------
DROP TABLE IF EXISTS `user_userprofile_groups`;
CREATE TABLE `user_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_userprofile_groups_userprofile_id_group_id_52847a61_uniq` (`userprofile_id`,`group_id`),
  KEY `user_userprofile_groups_group_id_98cc4038_fk_auth_group_id` (`group_id`),
  CONSTRAINT `user_userprofile_gro_userprofile_id_49724c40_fk_user_user` FOREIGN KEY (`userprofile_id`) REFERENCES `user_userprofile` (`id`),
  CONSTRAINT `user_userprofile_groups_group_id_98cc4038_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_userprofile_groups
-- ----------------------------
INSERT INTO `user_userprofile_groups` VALUES ('1', '4', '1');

-- ----------------------------
-- Table structure for `user_userprofile_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `user_userprofile_user_permissions`;
CREATE TABLE `user_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_userprofile_user_pe_userprofile_id_permissio_2e86ceca_uniq` (`userprofile_id`,`permission_id`),
  KEY `user_userprofile_use_permission_id_7f559b23_fk_auth_perm` (`permission_id`),
  CONSTRAINT `user_userprofile_use_permission_id_7f559b23_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_userprofile_use_userprofile_id_68dc814c_fk_user_user` FOREIGN KEY (`userprofile_id`) REFERENCES `user_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_userprofile_user_permissions
-- ----------------------------
INSERT INTO `user_userprofile_user_permissions` VALUES ('1', '4', '1');
INSERT INTO `user_userprofile_user_permissions` VALUES ('2', '4', '2');
INSERT INTO `user_userprofile_user_permissions` VALUES ('3', '4', '3');
INSERT INTO `user_userprofile_user_permissions` VALUES ('4', '4', '4');

-- ----------------------------
-- Table structure for `xadmin_bookmark`
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_user_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_user_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `user_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for `xadmin_log`
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_user_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_user_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `user_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=322 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2018-12-16 09:10:31.574766', '127.0.0.1', '1', 'logo5', 'create', '已添加。', '19', '2');
INSERT INTO `xadmin_log` VALUES ('2', '2018-12-16 09:11:00.275407', '127.0.0.1', '1', 'None', 'create', '已添加。', '18', '2');
INSERT INTO `xadmin_log` VALUES ('3', '2018-12-16 09:12:23.582172', '127.0.0.1', '1', '1', 'create', '已添加。', '12', '2');
INSERT INTO `xadmin_log` VALUES ('4', '2018-12-16 09:13:04.292501', '127.0.0.1', '1', '普通纱布', 'create', '已添加。', '17', '2');
INSERT INTO `xadmin_log` VALUES ('5', '2018-12-16 09:13:35.648294', '127.0.0.1', '1', 'Banner object (1)', 'create', '已添加。', '11', '2');
INSERT INTO `xadmin_log` VALUES ('6', '2018-12-16 09:13:52.900281', '127.0.0.1', '2', 'Banner object (2)', 'create', '已添加。', '11', '2');
INSERT INTO `xadmin_log` VALUES ('7', '2018-12-16 09:14:09.511231', '127.0.0.1', '3', 'Banner object (3)', 'create', '已添加。', '11', '2');
INSERT INTO `xadmin_log` VALUES ('8', '2018-12-16 09:16:20.732736', '127.0.0.1', '1', '弯眉', 'create', '已添加。', '14', '2');
INSERT INTO `xadmin_log` VALUES ('9', '2018-12-16 09:17:45.194567', '127.0.0.1', '2', '2', 'create', '已添加。', '12', '2');
INSERT INTO `xadmin_log` VALUES ('10', '2018-12-16 09:18:18.823491', '127.0.0.1', '1', '弯眉', 'change', '修改 hatdiy_color 和 detail', '14', '2');
INSERT INTO `xadmin_log` VALUES ('11', '2018-12-16 09:19:41.911243', '127.0.0.1', '2', 'logo6', 'create', '已添加。', '19', '2');
INSERT INTO `xadmin_log` VALUES ('12', '2018-12-16 09:21:13.100459', '127.0.0.1', '1', '1111', 'change', '修改 hat_number', '18', '2');
INSERT INTO `xadmin_log` VALUES ('13', '2018-12-16 09:21:28.115318', '127.0.0.1', '1', '弯眉', 'change', '修改 hatdiy_button', '14', '2');
INSERT INTO `xadmin_log` VALUES ('14', '2018-12-16 10:53:42.415861', '127.0.0.1', '3', 'admin123', 'create', '已添加。', '10', '2');
INSERT INTO `xadmin_log` VALUES ('57', '2018-12-17 09:30:58.529937', '127.0.0.1', '5', '5', 'create', '已添加。', '20', '2');
INSERT INTO `xadmin_log` VALUES ('58', '2018-12-19 02:23:56.894052', '127.0.0.1', '1', '弯眉帽子', 'change', '修改 detail', '14', '2');
INSERT INTO `xadmin_log` VALUES ('59', '2018-12-21 02:06:35.942186', '127.0.0.1', '1', '弯眉帽子', 'change', '修改 hat_back 和 detail', '14', '2');
INSERT INTO `xadmin_log` VALUES ('60', '2018-12-21 02:38:37.776109', '127.0.0.1', '1', '弯眉帽子', 'change', '修改 hat_right，hat_left，hat_bottom，hat_back 和 detail', '14', '2');
INSERT INTO `xadmin_log` VALUES ('61', '2018-12-21 05:49:44.170587', '127.0.0.1', '4', '9013', 'change', '修改 hat_back', '12', '2');
INSERT INTO `xadmin_log` VALUES ('62', '2018-12-21 05:51:37.972096', '127.0.0.1', '4', '9013', 'change', '修改 hat_back', '12', '2');
INSERT INTO `xadmin_log` VALUES ('63', '2018-12-22 07:48:31.088874', '127.0.0.1', '1', 'UploadFile object (1)', 'change', '没有字段被修改。', '22', '2');
INSERT INTO `xadmin_log` VALUES ('64', '2018-12-26 01:14:32.190898', '127.0.0.1', null, '', 'delete', '批量删除 18 个 DIY后的样品', null, '2');
INSERT INTO `xadmin_log` VALUES ('65', '2018-12-26 09:57:43.463334', '127.0.0.1', null, '', 'delete', '批量删除 15 个 DIY后的样品', null, '2');
INSERT INTO `xadmin_log` VALUES ('66', '2018-12-26 13:43:02.607036', '127.0.0.1', null, '', 'delete', '批量删除 8 个 DIY后的样品', null, '2');
INSERT INTO `xadmin_log` VALUES ('67', '2018-12-26 13:44:00.681358', '127.0.0.1', '6', '6', 'create', '已添加。', '20', '2');
INSERT INTO `xadmin_log` VALUES ('68', '2018-12-26 14:21:26.867833', '127.0.0.1', null, '', 'delete', '批量删除 4 个 DIY后的样品', null, '2');
INSERT INTO `xadmin_log` VALUES ('69', '2018-12-27 03:04:36.442579', '127.0.0.1', '4', 'UploadFile object (4)', 'change', '没有字段被修改。', '22', '2');
INSERT INTO `xadmin_log` VALUES ('70', '2019-01-08 01:25:12.599235', '127.0.0.1', '1', '1', 'create', '已添加。', '20', '2');
INSERT INTO `xadmin_log` VALUES ('71', '2019-01-08 02:38:26.808569', '127.0.0.1', '2', '2', 'create', '已添加。', '20', '2');
INSERT INTO `xadmin_log` VALUES ('72', '2019-01-11 05:45:53.345546', '127.0.0.1', '1', '弯眉帽子', 'change', '修改 hatdiy_button', '14', '2');
INSERT INTO `xadmin_log` VALUES ('73', '2019-01-11 05:47:37.241488', '127.0.0.1', '4', '格纹花帽', 'change', '修改 hatdiy_button', '14', '2');
INSERT INTO `xadmin_log` VALUES ('74', '2019-01-12 13:42:04.586934', '192.168.199.191', '1', '弯眉帽子', 'change', '修改 hat_change_materials', '14', '2');
INSERT INTO `xadmin_log` VALUES ('75', '2019-01-14 01:48:17.581709', '127.0.0.1', '3', '9012', 'change', '修改 color', '12', '2');
INSERT INTO `xadmin_log` VALUES ('76', '2019-01-14 01:48:27.482275', '127.0.0.1', '4', '9013', 'change', '修改 color', '12', '2');
INSERT INTO `xadmin_log` VALUES ('77', '2019-01-14 02:17:50.280102', '127.0.0.1', '1', '弯眉帽子', 'change', '修改 color', '14', '2');
INSERT INTO `xadmin_log` VALUES ('78', '2019-01-14 02:49:41.646426', '127.0.0.1', '5', '9011', 'create', '已添加。', '12', '2');
INSERT INTO `xadmin_log` VALUES ('79', '2019-01-14 02:50:56.913731', '127.0.0.1', '1', '弯眉帽子', 'change', '修改 hatdiy_color', '14', '2');
INSERT INTO `xadmin_log` VALUES ('80', '2019-01-14 05:10:37.132027', '127.0.0.1', '1', '弯眉帽子', 'change', '修改 detail', '14', '2');
INSERT INTO `xadmin_log` VALUES ('81', '2019-01-14 05:22:07.625521', '127.0.0.1', '1', '弯眉帽子', 'change', '修改 detail', '14', '2');
INSERT INTO `xadmin_log` VALUES ('82', '2019-01-14 05:34:03.625474', '127.0.0.1', '1', '弯眉帽子', 'change', '修改 detail', '14', '2');
INSERT INTO `xadmin_log` VALUES ('83', '2019-01-14 06:11:23.725000', '192.168.0.106', '1', '弯眉帽子', 'change', '修改 detail', '14', '2');
INSERT INTO `xadmin_log` VALUES ('84', '2019-01-14 06:32:50.189000', '192.168.0.106', '5', '多色彩帽', 'create', '已添加。', '14', '2');
INSERT INTO `xadmin_log` VALUES ('85', '2019-01-14 06:33:35.097000', '192.168.0.106', '5', '多色彩帽', 'change', '修改 hatdiy_button 和 detail', '14', '2');
INSERT INTO `xadmin_log` VALUES ('86', '2019-01-14 06:34:05.395000', '192.168.0.106', '5', '多色彩帽', 'change', '修改 hatdiy_button', '14', '2');
INSERT INTO `xadmin_log` VALUES ('87', '2019-01-14 06:34:32.621000', '192.168.0.106', '5', '多色彩帽', 'change', '修改 hatdiy_button', '14', '2');
INSERT INTO `xadmin_log` VALUES ('88', '2019-01-14 06:43:27.449000', '192.168.0.106', '6', '9061', 'create', '已添加。', '12', '2');
INSERT INTO `xadmin_log` VALUES ('89', '2019-01-14 06:43:42.024000', '192.168.0.106', '5', '多色彩帽', 'change', '修改 hatdiy_color', '14', '2');
INSERT INTO `xadmin_log` VALUES ('90', '2019-01-14 08:27:40.923309', '127.0.0.1', '3', '3', 'create', '已添加。', '20', '2');
INSERT INTO `xadmin_log` VALUES ('91', '2019-01-15 00:22:21.604977', '127.0.0.1', '5', '多色彩帽', 'change', '修改 hat_number', '14', '2');
INSERT INTO `xadmin_log` VALUES ('92', '2019-01-15 00:23:16.413112', '127.0.0.1', '4', '格纹花帽', 'change', '修改 hat_number 和 color', '14', '2');
INSERT INTO `xadmin_log` VALUES ('93', '2019-01-15 00:29:12.696490', '127.0.0.1', '6', '9056', 'change', '修改 hat_number', '12', '2');
INSERT INTO `xadmin_log` VALUES ('94', '2019-01-15 00:31:11.152266', '127.0.0.1', '7', '9046', 'create', '已添加。', '12', '2');
INSERT INTO `xadmin_log` VALUES ('95', '2019-01-15 00:32:27.274620', '127.0.0.1', '8', '9017', 'create', '已添加。', '12', '2');
INSERT INTO `xadmin_log` VALUES ('96', '2019-01-15 00:33:52.848514', '127.0.0.1', '9', '9014', 'create', '已添加。', '12', '2');
INSERT INTO `xadmin_log` VALUES ('97', '2019-01-15 01:17:07.452917', '127.0.0.1', '5', '多色彩帽', 'change', '没有字段被修改。', '14', '2');
INSERT INTO `xadmin_log` VALUES ('98', '2019-01-15 01:17:27.602069', '127.0.0.1', '4', '格纹花帽', 'change', '修改 hatdiy_color', '14', '2');
INSERT INTO `xadmin_log` VALUES ('99', '2019-01-15 01:18:48.407691', '127.0.0.1', '2', '弯眉黑蓝', 'change', '修改 hat_number 和 detail', '14', '2');
INSERT INTO `xadmin_log` VALUES ('100', '2019-01-15 01:19:12.675079', '127.0.0.1', '9', '9024', 'change', '修改 hat_number', '12', '2');
INSERT INTO `xadmin_log` VALUES ('101', '2019-01-15 01:19:47.375064', '127.0.0.1', '3', '弯眉绒毛', 'change', '修改 hat_number 和 detail', '14', '2');
INSERT INTO `xadmin_log` VALUES ('102', '2019-01-15 01:20:35.125795', '127.0.0.1', '8', '9037', 'change', '修改 hat_number', '12', '2');
INSERT INTO `xadmin_log` VALUES ('103', '2019-01-15 01:21:03.556421', '127.0.0.1', '3', '弯眉绒毛', 'change', '修改 hatdiy_color', '14', '2');
INSERT INTO `xadmin_log` VALUES ('104', '2019-01-15 01:21:56.402444', '127.0.0.1', '2', '弯眉黑蓝', 'change', '修改 hatdiy_color', '14', '2');
INSERT INTO `xadmin_log` VALUES ('105', '2019-01-15 06:07:23.643658', '127.0.0.1', '4', '4', 'create', '已添加。', '20', '2');
INSERT INTO `xadmin_log` VALUES ('106', '2019-01-16 01:17:52.529933', '127.0.0.1', null, '', 'delete', '批量删除 6 个 DIY后的样品', null, '2');
INSERT INTO `xadmin_log` VALUES ('107', '2019-01-16 01:30:51.257473', '127.0.0.1', '3', '3', 'change', '修改 hat_status_four，hat_status_five，hat_status_six 和 hat_status_seven', '20', '2');
INSERT INTO `xadmin_log` VALUES ('108', '2019-01-16 01:52:13.544816', '127.0.0.1', '5', '5', 'create', '已添加。', '20', '2');
INSERT INTO `xadmin_log` VALUES ('109', '2019-01-17 00:17:19.288333', '127.0.0.1', '8', '3333', 'change', '修改 add_time', '24', '2');
INSERT INTO `xadmin_log` VALUES ('110', '2019-01-17 00:25:04.991970', '127.0.0.1', '10', '9999', 'change', '修改 add_time2', '24', '2');
INSERT INTO `xadmin_log` VALUES ('111', '2019-01-18 05:48:00.398314', '127.0.0.1', '10', '9064', 'create', '已添加。', '12', '2');
INSERT INTO `xadmin_log` VALUES ('112', '2019-01-18 05:52:33.806952', '127.0.0.1', '6', '蓝色休闲帽', 'create', '已添加。', '14', '2');
INSERT INTO `xadmin_log` VALUES ('113', '2019-01-18 07:20:53.463075', '127.0.0.1', '12', '在吗', 'change', '修改 hat_message_reply 和 add_time2', '24', '2');
INSERT INTO `xadmin_log` VALUES ('114', '2019-01-18 07:33:10.879253', '127.0.0.1', '13', '11111', 'change', '修改 hat_message_reply', '24', '2');
INSERT INTO `xadmin_log` VALUES ('115', '2019-01-18 07:33:20.378796', '127.0.0.1', '13', '11111', 'change', '修改 add_time2', '24', '2');
INSERT INTO `xadmin_log` VALUES ('116', '2019-01-18 08:25:29.249757', '127.0.0.1', '14', '333333', 'change', '修改 hat_message_reply 和 add_time2', '24', '2');
INSERT INTO `xadmin_log` VALUES ('117', '2019-01-18 08:33:13.636318', '127.0.0.1', '15', '88888', 'change', '修改 hat_message_reply 和 add_time2', '24', '2');
INSERT INTO `xadmin_log` VALUES ('118', '2019-01-18 08:33:36.334617', '127.0.0.1', '15', '88888', 'change', '没有字段被修改。', '24', '2');
INSERT INTO `xadmin_log` VALUES ('119', '2019-01-18 08:38:50.211569', '127.0.0.1', '15', '88888', 'change', '修改 hat_message_reply 和 add_time2', '24', '2');
INSERT INTO `xadmin_log` VALUES ('120', '2019-01-22 00:53:22.737217', '127.0.0.1', '1', '网格纱布', 'change', '修改 materials 和 price', '17', '2');
INSERT INTO `xadmin_log` VALUES ('121', '2019-01-22 00:55:01.132845', '127.0.0.1', '2', '弯眉黑蓝', 'change', '修改 hat_change_materials', '14', '2');
INSERT INTO `xadmin_log` VALUES ('122', '2019-01-22 00:55:14.554613', '127.0.0.1', '3', '弯眉绒毛', 'change', '修改 hat_change_materials', '14', '2');
INSERT INTO `xadmin_log` VALUES ('123', '2019-01-22 00:55:28.013383', '127.0.0.1', '4', '格纹花帽', 'change', '修改 hat_change_materials', '14', '2');
INSERT INTO `xadmin_log` VALUES ('124', '2019-01-22 00:55:43.350260', '127.0.0.1', '5', '多色彩帽', 'change', '修改 hat_change_materials', '14', '2');
INSERT INTO `xadmin_log` VALUES ('125', '2019-01-22 00:55:56.728025', '127.0.0.1', '6', '蓝色休闲帽', 'change', '修改 hat_change_materials', '14', '2');
INSERT INTO `xadmin_log` VALUES ('126', '2019-01-22 01:25:16.737692', '127.0.0.1', '1', 'None', 'create', '已添加。', '25', '2');
INSERT INTO `xadmin_log` VALUES ('127', '2019-01-22 01:25:30.962506', '127.0.0.1', '2', 'None', 'create', '已添加。', '25', '2');
INSERT INTO `xadmin_log` VALUES ('128', '2019-01-22 01:25:39.462992', '127.0.0.1', '3', 'None', 'create', '已添加。', '25', '2');
INSERT INTO `xadmin_log` VALUES ('129', '2019-01-22 01:25:46.503394', '127.0.0.1', '4', 'None', 'create', '已添加。', '25', '2');
INSERT INTO `xadmin_log` VALUES ('130', '2019-01-22 01:25:54.637860', '127.0.0.1', '5', 'None', 'create', '已添加。', '25', '2');
INSERT INTO `xadmin_log` VALUES ('131', '2019-01-22 01:26:01.706264', '127.0.0.1', '6', 'None', 'create', '已添加。', '25', '2');
INSERT INTO `xadmin_log` VALUES ('132', '2019-01-22 01:26:08.780669', '127.0.0.1', '7', 'None', 'create', '已添加。', '25', '2');
INSERT INTO `xadmin_log` VALUES ('133', '2019-01-22 01:26:15.182035', '127.0.0.1', '8', 'None', 'create', '已添加。', '25', '2');
INSERT INTO `xadmin_log` VALUES ('134', '2019-01-22 01:26:15.997081', '127.0.0.1', '9', 'None', 'create', '已添加。', '25', '2');
INSERT INTO `xadmin_log` VALUES ('135', '2019-01-22 01:27:34.137551', '127.0.0.1', null, '', 'delete', '批量删除 1 个 帽子颜色', null, '2');
INSERT INTO `xadmin_log` VALUES ('136', '2019-01-22 01:27:49.606436', '127.0.0.1', '1', '弯眉帽子', 'change', '修改 hat_colour', '14', '2');
INSERT INTO `xadmin_log` VALUES ('137', '2019-01-22 01:28:00.639067', '127.0.0.1', '2', '弯眉黑蓝', 'change', '修改 hat_colour', '14', '2');
INSERT INTO `xadmin_log` VALUES ('138', '2019-01-22 01:28:11.168669', '127.0.0.1', '3', '弯眉绒毛', 'change', '修改 hat_colour', '14', '2');
INSERT INTO `xadmin_log` VALUES ('139', '2019-01-22 01:28:20.750217', '127.0.0.1', '4', '格纹花帽', 'change', '修改 hat_colour', '14', '2');
INSERT INTO `xadmin_log` VALUES ('140', '2019-01-22 01:28:30.700786', '127.0.0.1', '5', '多色彩帽', 'change', '修改 hat_colour', '14', '2');
INSERT INTO `xadmin_log` VALUES ('141', '2019-01-22 01:28:40.660356', '127.0.0.1', '6', '蓝色休闲帽', 'change', '修改 hat_colour', '14', '2');
INSERT INTO `xadmin_log` VALUES ('142', '2019-01-22 01:29:06.510834', '127.0.0.1', '3', '9012', 'change', '修改 hat_colour', '12', '2');
INSERT INTO `xadmin_log` VALUES ('143', '2019-01-22 02:08:18.590662', '127.0.0.1', '4', '9013', 'change', '修改 hat_colour', '12', '2');
INSERT INTO `xadmin_log` VALUES ('144', '2019-01-22 02:08:29.742300', '127.0.0.1', '5', '9011', 'change', '修改 hat_colour', '12', '2');
INSERT INTO `xadmin_log` VALUES ('145', '2019-01-22 02:08:41.506973', '127.0.0.1', '6', '9056', 'change', '修改 hat_colour', '12', '2');
INSERT INTO `xadmin_log` VALUES ('146', '2019-01-22 02:08:57.600893', '127.0.0.1', '7', '9046', 'change', '修改 hat_colour', '12', '2');
INSERT INTO `xadmin_log` VALUES ('147', '2019-01-22 02:09:09.573578', '127.0.0.1', '8', '9037', 'change', '修改 hat_colour', '12', '2');
INSERT INTO `xadmin_log` VALUES ('148', '2019-01-22 02:09:21.310250', '127.0.0.1', '9', '9024', 'change', '修改 hat_colour', '12', '2');
INSERT INTO `xadmin_log` VALUES ('149', '2019-01-22 02:09:32.082866', '127.0.0.1', '10', '9064', 'change', '修改 hat_colour', '12', '2');
INSERT INTO `xadmin_log` VALUES ('150', '2019-01-22 02:51:29.173835', '127.0.0.1', '6', '蓝色休闲帽', 'change', '修改 hat_null_button', '14', '2');
INSERT INTO `xadmin_log` VALUES ('151', '2019-01-22 03:04:44.294313', '127.0.0.1', '10', '9064', 'change', '修改 hat_null_button', '12', '2');
INSERT INTO `xadmin_log` VALUES ('152', '2019-01-22 03:12:22.930546', '127.0.0.1', '10', '9064', 'change', '修改 hat_back', '12', '2');
INSERT INTO `xadmin_log` VALUES ('153', '2019-01-22 08:26:10.883202', '127.0.0.1', null, '', 'delete', '批量删除 13 个 DIY后的样品', null, '2');
INSERT INTO `xadmin_log` VALUES ('154', '2019-01-23 03:13:16.358154', '127.0.0.1', null, '', 'delete', '批量删除 5 个 客户上传文件', null, '2');
INSERT INTO `xadmin_log` VALUES ('155', '2019-01-23 05:57:29.768006', '127.0.0.1', '6', '6', 'create', '已添加。', '20', '2');
INSERT INTO `xadmin_log` VALUES ('156', '2019-01-23 07:05:03.874888', '127.0.0.1', '7', '7', 'create', '已添加。', '20', '2');
INSERT INTO `xadmin_log` VALUES ('157', '2019-01-23 08:02:31.936106', '127.0.0.1', '7', '7', 'change', '修改 add_time_one，hat_status_two，add_time_two，hat_status_three，add_time_three，hat_status_four，add_time_four，hat_status_five，add_time_five，hat_status_six，add_time_six，hat_status_seven 和 add_time_seven', '20', '2');
INSERT INTO `xadmin_log` VALUES ('158', '2019-01-24 01:52:53.226877', '127.0.0.1', '17', '1111', 'change', '修改 hat_message_reply 和 add_time2', '24', '2');
INSERT INTO `xadmin_log` VALUES ('159', '2019-01-24 05:46:16.894000', '192.168.0.106', null, '', 'delete', '批量删除 3 个 帽子详情页', null, '2');
INSERT INTO `xadmin_log` VALUES ('160', '2019-01-24 05:49:04.362000', '192.168.0.106', null, '', 'delete', '批量删除 5 个 帽子多色图', null, '2');
INSERT INTO `xadmin_log` VALUES ('161', '2019-01-24 06:00:55.866000', '192.168.0.106', '5', '多色彩帽', 'change', '修改 hat_null_button', '14', '2');
INSERT INTO `xadmin_log` VALUES ('162', '2019-01-24 06:02:20.201000', '192.168.0.106', '5', '多色彩帽', 'change', '没有字段被修改。', '14', '2');
INSERT INTO `xadmin_log` VALUES ('163', '2019-01-24 06:09:55.241000', '192.168.0.106', '6', '9056', 'change', '修改 image，hat_left，hat_right，hat_bottom，hat_back 和 hat_null_button', '12', '2');
INSERT INTO `xadmin_log` VALUES ('164', '2019-01-24 06:34:20.508000', '192.168.0.106', '11', '9062', 'create', '已添加。', '12', '2');
INSERT INTO `xadmin_log` VALUES ('165', '2019-01-24 06:38:23.821000', '192.168.0.106', '12', '90642', 'create', '已添加。', '12', '2');
INSERT INTO `xadmin_log` VALUES ('166', '2019-01-24 06:39:22.201000', '192.168.0.106', '13', '9067', 'create', '已添加。', '12', '2');
INSERT INTO `xadmin_log` VALUES ('167', '2019-01-24 06:40:25.300000', '192.168.0.106', '6', '蓝色休闲帽', 'change', '修改 hatdiy_color', '14', '2');
INSERT INTO `xadmin_log` VALUES ('168', '2019-01-24 06:42:07.975000', '192.168.0.106', '12', '90642', 'change', '修改 image，hat_left，hat_right，hat_bottom，hat_back，hat_null_button 和 hat_colour', '12', '2');
INSERT INTO `xadmin_log` VALUES ('169', '2019-01-24 07:00:42.928000', '192.168.0.106', '11', '9062', 'change', '修改 hat_null_button', '12', '2');
INSERT INTO `xadmin_log` VALUES ('170', '2019-01-24 07:03:51.961000', '192.168.0.106', '5', '多色彩帽', 'change', '修改 hatdiy_button', '14', '2');
INSERT INTO `xadmin_log` VALUES ('171', '2019-01-24 07:25:21.318000', '192.168.0.106', '5', '多色彩帽', 'change', '修改 hat_null_button', '14', '2');
INSERT INTO `xadmin_log` VALUES ('172', '2019-01-24 07:29:19.417000', '192.168.0.106', '4', '格纹花帽', 'change', '修改 hat_right，hat_left，hat_bottom，hat_back，hat_null_button 和 hat_front', '14', '2');
INSERT INTO `xadmin_log` VALUES ('173', '2019-01-24 07:35:19.264000', '192.168.0.106', '7', '9046', 'change', '修改 image，hat_left，hat_right，hat_bottom，hat_back 和 hat_null_button', '12', '2');
INSERT INTO `xadmin_log` VALUES ('174', '2019-01-24 07:56:51.401000', '192.168.0.106', '4', '格纹花帽', 'change', '修改 hat_null_button', '14', '2');
INSERT INTO `xadmin_log` VALUES ('175', '2019-01-24 07:57:13.749000', '192.168.0.106', '7', '9046', 'change', '修改 hat_null_button', '12', '2');
INSERT INTO `xadmin_log` VALUES ('176', '2019-01-24 08:11:57.183000', '192.168.0.106', '4', '格纹花帽', 'change', '修改 hat_null_button', '14', '2');
INSERT INTO `xadmin_log` VALUES ('177', '2019-01-24 08:13:55.178000', '192.168.0.106', '4', '格纹花帽', 'change', '修改 hat_null_button', '14', '2');
INSERT INTO `xadmin_log` VALUES ('178', '2019-01-24 08:14:28.716000', '192.168.0.106', '7', '9046', 'change', '修改 hat_null_button', '12', '2');
INSERT INTO `xadmin_log` VALUES ('179', '2019-01-24 08:17:49.399000', '192.168.0.106', '7', '9046', 'change', '修改 hat_bottom', '12', '2');
INSERT INTO `xadmin_log` VALUES ('180', '2019-01-24 08:18:04.453000', '192.168.0.106', '4', '格纹花帽', 'change', '修改 hat_bottom', '14', '2');
INSERT INTO `xadmin_log` VALUES ('181', '2019-01-25 02:06:24.745000', '192.168.0.106', '6', '蓝色休闲帽', 'change', '修改 detail', '14', '2');
INSERT INTO `xadmin_log` VALUES ('182', '2019-01-26 05:55:20.442000', '192.168.0.106', '6', '蓝色休闲帽', 'change', '修改 hatdiy_button 和 detail', '14', '2');
INSERT INTO `xadmin_log` VALUES ('183', '2019-01-26 06:04:03.042000', '192.168.0.106', '6', '沙滩休闲帽', 'change', '修改 hat_name 和 detail', '14', '2');
INSERT INTO `xadmin_log` VALUES ('184', '2019-01-26 06:04:49.853000', '192.168.0.106', '5', '休闲格子帽', 'change', '修改 hat_name', '14', '2');
INSERT INTO `xadmin_log` VALUES ('185', '2019-01-26 06:05:39.448000', '192.168.0.106', '2', '16x12纱卡', 'change', '修改 materials', '17', '2');
INSERT INTO `xadmin_log` VALUES ('186', '2019-01-26 06:33:24.287000', '192.168.0.106', '7', '9046', 'change', '修改 image', '12', '2');
INSERT INTO `xadmin_log` VALUES ('187', '2019-01-26 06:33:41.154000', '192.168.0.106', '7', '9046', 'change', '修改 image', '12', '2');
INSERT INTO `xadmin_log` VALUES ('188', '2019-01-26 06:45:57.041000', '192.168.0.106', '4', '格纹花帽', 'change', '修改 hat_front', '14', '2');
INSERT INTO `xadmin_log` VALUES ('189', '2019-01-26 06:48:43.191000', '192.168.0.106', '11', '9062', 'change', '修改 hat_null_button', '12', '2');
INSERT INTO `xadmin_log` VALUES ('190', '2019-01-26 06:49:36.572000', '192.168.0.106', '11', '9062', 'change', '修改 hat_null_button', '12', '2');
INSERT INTO `xadmin_log` VALUES ('191', '2019-01-26 06:50:31.632000', '192.168.0.106', '11', '9062', 'change', '修改 hat_null_button', '12', '2');
INSERT INTO `xadmin_log` VALUES ('192', '2019-01-26 06:51:26.882000', '192.168.0.106', '11', '9062', 'change', '修改 hat_null_button', '12', '2');
INSERT INTO `xadmin_log` VALUES ('193', '2019-01-26 06:53:26.006000', '192.168.0.106', '6', '沙滩休闲帽', 'change', '修改 hat_null_button', '14', '2');
INSERT INTO `xadmin_log` VALUES ('194', '2019-01-26 06:56:55.031000', '192.168.0.106', '13', '9067', 'change', '修改 hat_null_button', '12', '2');
INSERT INTO `xadmin_log` VALUES ('195', '2019-01-26 06:57:59.427000', '192.168.0.106', '13', '9067', 'change', '修改 hat_null_button', '12', '2');
INSERT INTO `xadmin_log` VALUES ('196', '2019-01-28 09:12:34.234000', '192.168.0.106', null, '', 'delete', '批量删除 50 个 客户上传logo', null, '2');
INSERT INTO `xadmin_log` VALUES ('197', '2019-01-28 09:12:43.412000', '192.168.0.106', null, '', 'delete', '批量删除 50 个 客户上传logo', null, '2');
INSERT INTO `xadmin_log` VALUES ('198', '2019-01-28 09:12:50.734000', '192.168.0.106', null, '', 'delete', '批量删除 50 个 客户上传logo', null, '2');
INSERT INTO `xadmin_log` VALUES ('199', '2019-01-28 09:12:57.372000', '192.168.0.106', null, '', 'delete', '批量删除 17 个 客户上传logo', null, '2');
INSERT INTO `xadmin_log` VALUES ('200', '2019-01-30 06:15:50.853215', '192.168.0.106', null, '', 'delete', '批量删除 31 个 DIY后的样品', null, '2');
INSERT INTO `xadmin_log` VALUES ('201', '2019-01-30 07:26:40.563641', '192.168.0.110', '19', '请在2月8日前送到xx地点', 'change', '修改 hat_message_reply 和 add_time2', '24', '2');
INSERT INTO `xadmin_log` VALUES ('202', '2019-01-30 07:36:08.308244', '192.168.0.110', '8', '8', 'create', '已添加。', '20', '2');
INSERT INTO `xadmin_log` VALUES ('203', '2019-01-30 07:36:51.500045', '192.168.0.110', '8', '8', 'change', '修改 hat_status_two，add_time_two 和 add_time_three', '20', '2');
INSERT INTO `xadmin_log` VALUES ('204', '2019-01-30 07:36:52.373645', '192.168.0.110', '8', '8', 'change', '修改 add_time_two 和 add_time_three', '20', '2');
INSERT INTO `xadmin_log` VALUES ('205', '2019-01-31 03:05:30.338020', '192.168.0.106', null, '', 'delete', '批量删除 10 个 DIY后的样品', null, '2');
INSERT INTO `xadmin_log` VALUES ('206', '2019-02-20 02:00:16.801816', '192.168.0.106', '1', '1', 'create', '已添加。', '20', '2');
INSERT INTO `xadmin_log` VALUES ('207', '2019-02-21 00:15:20.051004', '192.168.0.106', null, '', 'delete', '批量删除 3 个 DIY后的样品', null, '2');
INSERT INTO `xadmin_log` VALUES ('208', '2019-02-22 06:40:14.372883', '192.168.0.106', '4', '王', 'create', '已添加。', '10', '2');
INSERT INTO `xadmin_log` VALUES ('209', '2019-02-22 06:40:52.198883', '192.168.0.106', null, '', 'delete', '批量删除 1 个 用户信息', null, '2');
INSERT INTO `xadmin_log` VALUES ('210', '2019-02-22 06:42:56.348883', '192.168.0.106', '5', '张总', 'create', '已添加。', '10', '2');
INSERT INTO `xadmin_log` VALUES ('211', '2019-02-22 06:43:40.960883', '192.168.0.106', null, '', 'delete', '批量删除 1 个 用户信息', null, '2');
INSERT INTO `xadmin_log` VALUES ('212', '2019-02-25 02:14:51.325019', '192.168.0.106', '1', '新新快递 chart widget', 'delete', '', '8', '2');
INSERT INTO `xadmin_log` VALUES ('213', '2019-02-25 06:52:05.768019', '192.168.0.106', '4', 'ww', 'change', '修改 last_login，is_staff，nick_name，address 和 company_name', '10', '4');
INSERT INTO `xadmin_log` VALUES ('214', '2019-02-25 06:53:45.005019', '192.168.0.106', '4', 'ww', 'change', '修改 is_superuser 和 user_permissions', '10', '2');
INSERT INTO `xadmin_log` VALUES ('215', '2019-02-25 07:00:08.053019', '192.168.0.106', '1', '办公室', 'create', '已添加。', '3', '2');
INSERT INTO `xadmin_log` VALUES ('216', '2019-02-25 07:00:35.393019', '192.168.0.106', '4', '办公室01', 'change', '修改 is_superuser，groups 和 nick_name', '10', '2');
INSERT INTO `xadmin_log` VALUES ('217', '2019-02-25 07:04:44.082019', '192.168.0.106', '4', '办公室01', 'change', '修改 is_staff', '10', '2');
INSERT INTO `xadmin_log` VALUES ('218', '2019-02-25 07:08:02.536019', '192.168.0.106', '4', '办公室01', 'change', '修改 last_login 和 user_permissions', '10', '2');
INSERT INTO `xadmin_log` VALUES ('219', '2019-02-25 07:09:04.738019', '192.168.0.106', '25', '7777', 'change', '修改 hat_message_reply', '24', '4');
INSERT INTO `xadmin_log` VALUES ('220', '2019-02-25 07:16:34.573019', '192.168.0.106', '1', '办公室', 'change', '没有字段被修改。', '3', '2');
INSERT INTO `xadmin_log` VALUES ('221', '2019-02-26 08:05:37.802000', '192.168.0.106', '11', '6号', 'change', '修改 nick_name，address 和 company_name', '10', '2');
INSERT INTO `xadmin_log` VALUES ('222', '2019-02-27 00:10:54.527000', '192.168.0.106', '13', '10号', 'create', '已添加。', '10', '2');
INSERT INTO `xadmin_log` VALUES ('223', '2019-02-27 02:46:11.416000', '192.168.0.106', null, '', 'delete', '批量删除 11 个 用户信息', null, '2');
INSERT INTO `xadmin_log` VALUES ('224', '2019-02-27 05:45:08.963000', '192.168.0.106', null, '', 'delete', '批量删除 1 个 用户信息', null, '2');
INSERT INTO `xadmin_log` VALUES ('225', '2019-02-27 05:45:54.730000', '192.168.0.106', '18', 'ffff', 'change', '修改 nick_name，address 和 company_name', '10', '2');
INSERT INTO `xadmin_log` VALUES ('226', '2019-02-28 07:09:00.848358', '192.168.0.106', null, '', 'delete', '批量删除 2 个 用户信息', null, '2');
INSERT INTO `xadmin_log` VALUES ('227', '2019-03-07 01:12:11.105000', '192.168.0.106', null, '', 'delete', '批量删除 11 个 DIY后的样品', null, '2');
INSERT INTO `xadmin_log` VALUES ('228', '2019-03-07 02:42:21.416000', '192.168.0.106', null, '', 'delete', '批量删除 7 个 DIY后的样品', null, '2');
INSERT INTO `xadmin_log` VALUES ('229', '2019-03-07 05:58:36.085000', '192.168.0.106', null, '', 'delete', '批量删除 4 个 DIY后的样品', null, '2');
INSERT INTO `xadmin_log` VALUES ('230', '2019-03-08 07:15:59.074000', '192.168.0.106', null, '', 'delete', '批量删除 11 个 DIY后的样品', null, '2');
INSERT INTO `xadmin_log` VALUES ('231', '2019-03-08 08:12:26.743000', '192.168.0.106', null, '', 'delete', '批量删除 4 个 logo', null, '2');
INSERT INTO `xadmin_log` VALUES ('232', '2019-03-11 03:09:34.072258', '192.168.0.106', null, '', 'delete', '批量删除 2 个 用户信息', null, '2');
INSERT INTO `xadmin_log` VALUES ('233', '2019-03-12 07:52:09.643000', '192.168.0.106', '6', '沙滩休闲帽', 'change', '修改 status2', '14', '2');
INSERT INTO `xadmin_log` VALUES ('234', '2019-03-13 03:15:25.104000', '192.168.0.106', '1', '今世多手提袋休闲款', 'create', '已添加。', '26', '2');
INSERT INTO `xadmin_log` VALUES ('235', '2019-03-13 03:17:13.593000', '192.168.0.106', '2', '今世多手提袋休闲款02', 'create', '已添加。', '26', '2');
INSERT INTO `xadmin_log` VALUES ('236', '2019-03-13 05:13:13.830000', '192.168.0.106', '3', '今世多手提袋休闲款03', 'create', '已添加。', '26', '2');
INSERT INTO `xadmin_log` VALUES ('237', '2019-03-13 06:57:40.211000', '192.168.0.106', '7', '手提袋', 'create', '已添加。', '14', '2');
INSERT INTO `xadmin_log` VALUES ('238', '2019-03-13 07:01:54.954000', '192.168.0.106', '7', '手提袋', 'change', '修改 hatdiy_color 和 hatdiy_button', '14', '2');
INSERT INTO `xadmin_log` VALUES ('239', '2019-03-13 07:02:38.636000', '192.168.0.106', '7', '手提袋', 'change', '修改 hat_bottom，hat_back 和 hat_null_button', '14', '2');
INSERT INTO `xadmin_log` VALUES ('240', '2019-03-13 08:30:22.544561', '127.0.0.1', '1', 'GoodsCategor object (1)', 'create', '已添加。', '31', '2');
INSERT INTO `xadmin_log` VALUES ('241', '2019-03-13 08:30:45.503874', '127.0.0.1', '2', 'GoodsCategor object (2)', 'create', '已添加。', '31', '2');
INSERT INTO `xadmin_log` VALUES ('242', '2019-03-13 08:31:06.724088', '127.0.0.1', '3', 'GoodsCategor object (3)', 'create', '已添加。', '31', '2');
INSERT INTO `xadmin_log` VALUES ('243', '2019-03-13 08:31:23.303036', '127.0.0.1', '4', 'GoodsCategor object (4)', 'create', '已添加。', '31', '2');
INSERT INTO `xadmin_log` VALUES ('244', '2019-03-13 08:31:40.282007', '127.0.0.1', '5', 'GoodsCategor object (5)', 'create', '已添加。', '31', '2');
INSERT INTO `xadmin_log` VALUES ('245', '2019-03-13 09:07:27.841841', '127.0.0.1', '7', '手提袋', 'change', '修改 goods_categor', '14', '2');
INSERT INTO `xadmin_log` VALUES ('246', '2019-03-13 09:07:47.237950', '127.0.0.1', '6', '沙滩休闲帽', 'change', '修改 goods_categor', '14', '2');
INSERT INTO `xadmin_log` VALUES ('247', '2019-03-13 09:08:02.722836', '127.0.0.1', '5', '休闲格子帽', 'change', '修改 goods_categor', '14', '2');
INSERT INTO `xadmin_log` VALUES ('248', '2019-03-13 09:08:15.573571', '127.0.0.1', '4', '格纹花帽', 'change', '修改 goods_categor', '14', '2');
INSERT INTO `xadmin_log` VALUES ('249', '2019-03-13 11:45:48.169970', '127.0.0.1', '7', '手提袋', 'change', '修改 goods_categor', '14', '2');
INSERT INTO `xadmin_log` VALUES ('250', '2019-03-13 11:46:00.291663', '127.0.0.1', '6', '沙滩休闲帽', 'change', '修改 goods_categor', '14', '2');
INSERT INTO `xadmin_log` VALUES ('251', '2019-03-13 11:46:13.087395', '127.0.0.1', '5', '休闲格子帽', 'change', '修改 goods_categor', '14', '2');
INSERT INTO `xadmin_log` VALUES ('252', '2019-03-13 11:46:25.079081', '127.0.0.1', '4', '格纹花帽', 'change', '修改 goods_categor', '14', '2');
INSERT INTO `xadmin_log` VALUES ('253', '2019-03-18 01:19:09.343427', '192.168.0.106', '8', '手提袋休闲款02', 'create', '已添加。', '14', '2');
INSERT INTO `xadmin_log` VALUES ('254', '2019-03-18 01:30:34.571027', '192.168.0.106', '8', '手提袋休闲款02', 'change', '修改 hat_null_button', '14', '2');
INSERT INTO `xadmin_log` VALUES ('255', '2019-03-18 01:37:46.389828', '192.168.0.106', '8', '手提袋休闲款02', 'change', '修改 hat_bottom 和 hat_back', '14', '2');
INSERT INTO `xadmin_log` VALUES ('256', '2019-03-18 01:40:44.130629', '192.168.0.106', '9', '手提袋休闲款03', 'create', '已添加。', '14', '2');
INSERT INTO `xadmin_log` VALUES ('257', '2019-03-18 01:51:59.109632', '192.168.0.106', '10', '弯眉蓝色', 'create', '已添加。', '14', '2');
INSERT INTO `xadmin_log` VALUES ('258', '2019-03-18 01:56:47.066434', '192.168.0.106', '14', '9089', 'create', '已添加。', '12', '2');
INSERT INTO `xadmin_log` VALUES ('259', '2019-03-18 01:57:47.802434', '192.168.0.106', '15', '9074', 'create', '已添加。', '12', '2');
INSERT INTO `xadmin_log` VALUES ('260', '2019-03-18 01:58:52.507634', '192.168.0.106', '16', '9097', 'create', '已添加。', '12', '2');
INSERT INTO `xadmin_log` VALUES ('261', '2019-03-18 01:59:39.879634', '192.168.0.106', '17', '9103', 'create', '已添加。', '12', '2');
INSERT INTO `xadmin_log` VALUES ('262', '2019-03-18 01:59:52.499835', '192.168.0.106', '9', '9', 'create', '已添加。', '25', '2');
INSERT INTO `xadmin_log` VALUES ('263', '2019-03-18 02:00:23.722235', '192.168.0.106', '9', '藏青色', 'change', '修改 hat_colour_name', '25', '2');
INSERT INTO `xadmin_log` VALUES ('264', '2019-03-18 02:00:32.805035', '192.168.0.106', '9', '藏青色', 'change', '没有字段被修改。', '25', '2');
INSERT INTO `xadmin_log` VALUES ('265', '2019-03-18 02:01:17.847835', '192.168.0.106', '17', '9103', 'change', '修改 hat_colour', '12', '2');
INSERT INTO `xadmin_log` VALUES ('266', '2019-03-18 02:01:30.592835', '192.168.0.106', '14', '9089', 'change', '修改 hat_colour', '12', '2');
INSERT INTO `xadmin_log` VALUES ('267', '2019-03-18 02:02:58.228235', '192.168.0.106', '10', '弯眉蓝色', 'change', '修改 hat_colour，hatdiy_color 和 hatdiy_button', '14', '2');
INSERT INTO `xadmin_log` VALUES ('268', '2019-03-20 09:02:38.152413', '192.168.0.106', '1', '基本款', 'create', '已添加。', '32', '2');
INSERT INTO `xadmin_log` VALUES ('269', '2019-03-20 09:03:07.045413', '192.168.0.106', '2', '特殊款', 'create', '已添加。', '32', '2');
INSERT INTO `xadmin_log` VALUES ('270', '2019-03-20 09:03:55.574413', '192.168.0.106', '4', '格纹花帽', 'change', '修改 goods_style', '14', '2');
INSERT INTO `xadmin_log` VALUES ('271', '2019-03-20 09:04:04.538413', '192.168.0.106', '5', '休闲格子帽', 'change', '修改 goods_style', '14', '2');
INSERT INTO `xadmin_log` VALUES ('272', '2019-03-20 09:04:14.261413', '192.168.0.106', '6', '沙滩休闲帽', 'change', '修改 goods_style', '14', '2');
INSERT INTO `xadmin_log` VALUES ('273', '2019-03-20 09:04:32.108413', '192.168.0.106', '7', '手提袋', 'change', '修改 goods_style', '14', '2');
INSERT INTO `xadmin_log` VALUES ('274', '2019-03-20 09:04:45.130413', '192.168.0.106', '8', '手提袋休闲款02', 'change', '修改 goods_style', '14', '2');
INSERT INTO `xadmin_log` VALUES ('275', '2019-03-20 09:04:55.117413', '192.168.0.106', '9', '手提袋休闲款03', 'change', '修改 goods_style', '14', '2');
INSERT INTO `xadmin_log` VALUES ('276', '2019-03-20 09:05:08.249413', '192.168.0.106', '10', '弯眉蓝色', 'change', '修改 goods_style', '14', '2');
INSERT INTO `xadmin_log` VALUES ('277', '2019-03-20 09:05:19.829413', '192.168.0.106', '9', '手提袋休闲款03', 'change', '修改 goods_style', '14', '2');
INSERT INTO `xadmin_log` VALUES ('278', '2019-03-20 09:06:01.958413', '192.168.0.106', '4', '格纹花帽', 'change', '修改 goods_style', '14', '2');
INSERT INTO `xadmin_log` VALUES ('279', '2019-03-21 06:28:57.278129', '127.0.0.1', '4', '格纹花帽', 'change', '修改 status', '14', '2');
INSERT INTO `xadmin_log` VALUES ('280', '2019-03-21 07:55:34.762408', '127.0.0.1', '1', '帽子', 'create', '已添加。', '33', '2');
INSERT INTO `xadmin_log` VALUES ('281', '2019-03-21 07:55:47.176118', '127.0.0.1', '2', '口罩', 'create', '已添加。', '33', '2');
INSERT INTO `xadmin_log` VALUES ('282', '2019-03-21 07:55:55.169575', '127.0.0.1', '3', '围巾', 'create', '已添加。', '33', '2');
INSERT INTO `xadmin_log` VALUES ('283', '2019-03-21 07:56:04.776125', '127.0.0.1', '4', '耳环', 'create', '已添加。', '33', '2');
INSERT INTO `xadmin_log` VALUES ('284', '2019-03-21 08:04:26.531823', '127.0.0.1', '1', '头饰系列', 'change', '修改 goods_name', '31', '2');
INSERT INTO `xadmin_log` VALUES ('285', '2019-03-21 08:09:58.383804', '127.0.0.1', '5', '全部', 'create', '已添加。', '33', '2');
INSERT INTO `xadmin_log` VALUES ('286', '2019-03-21 08:10:29.308573', '127.0.0.1', '1', '头饰系列', 'change', '修改 goods_name', '31', '2');
INSERT INTO `xadmin_log` VALUES ('287', '2019-03-21 08:30:07.753976', '127.0.0.1', null, '', 'delete', '批量删除 5 个 商品分类', null, '2');
INSERT INTO `xadmin_log` VALUES ('288', '2019-03-21 08:30:18.869612', '127.0.0.1', '6', '全部', 'create', '已添加。', '33', '2');
INSERT INTO `xadmin_log` VALUES ('289', '2019-03-21 08:30:29.577225', '127.0.0.1', '7', '帽子', 'create', '已添加。', '33', '2');
INSERT INTO `xadmin_log` VALUES ('290', '2019-03-21 08:30:43.539023', '127.0.0.1', '8', '口罩', 'create', '已添加。', '33', '2');
INSERT INTO `xadmin_log` VALUES ('291', '2019-03-21 08:30:53.847613', '127.0.0.1', '9', '围巾', 'create', '已添加。', '33', '2');
INSERT INTO `xadmin_log` VALUES ('292', '2019-03-21 08:31:01.554053', '127.0.0.1', '10', '耳环', 'create', '已添加。', '33', '2');
INSERT INTO `xadmin_log` VALUES ('293', '2019-03-21 08:31:14.741808', '127.0.0.1', '1', '头饰系列', 'change', '没有字段被修改。', '31', '2');
INSERT INTO `xadmin_log` VALUES ('294', '2019-03-21 08:32:10.865018', '127.0.0.1', '1', '头饰系列', 'change', '修改 goods_name', '31', '2');
INSERT INTO `xadmin_log` VALUES ('295', '2019-03-21 08:41:28.286901', '127.0.0.1', '4', '格纹花帽', 'change', '修改 goods_style', '14', '2');
INSERT INTO `xadmin_log` VALUES ('296', '2019-03-21 08:41:45.014857', '127.0.0.1', '5', '休闲格子帽', 'change', '修改 goods_style', '14', '2');
INSERT INTO `xadmin_log` VALUES ('297', '2019-03-21 08:42:00.375736', '127.0.0.1', '6', '沙滩休闲帽', 'change', '修改 goods_style', '14', '2');
INSERT INTO `xadmin_log` VALUES ('298', '2019-03-21 08:42:14.540546', '127.0.0.1', '7', '手提袋', 'change', '修改 goods_style', '14', '2');
INSERT INTO `xadmin_log` VALUES ('299', '2019-03-21 08:42:35.716757', '127.0.0.1', '8', '手提袋休闲款02', 'change', '修改 goods_style', '14', '2');
INSERT INTO `xadmin_log` VALUES ('300', '2019-03-21 08:42:48.588494', '127.0.0.1', '9', '手提袋休闲款03', 'change', '修改 goods_style', '14', '2');
INSERT INTO `xadmin_log` VALUES ('301', '2019-03-21 08:43:05.359453', '127.0.0.1', '10', '弯眉蓝色', 'change', '修改 goods_style', '14', '2');
INSERT INTO `xadmin_log` VALUES ('302', '2019-03-22 08:25:21.951774', '127.0.0.1', '10', '弯眉蓝色', 'change', '修改 hat_change_materials', '14', '2');
INSERT INTO `xadmin_log` VALUES ('303', '2019-03-22 09:29:27.283714', '127.0.0.1', '4', '格纹花帽', 'change', '修改 hat_change_materials', '14', '2');
INSERT INTO `xadmin_log` VALUES ('304', '2019-03-22 12:15:43.542487', '127.0.0.1', '11', '手提袋', 'create', '已添加。', '33', '2');
INSERT INTO `xadmin_log` VALUES ('305', '2019-03-22 12:16:29.186098', '127.0.0.1', '4', '格纹花帽', 'change', '修改 goods_name', '14', '2');
INSERT INTO `xadmin_log` VALUES ('306', '2019-03-22 12:19:10.079300', '127.0.0.1', '5', '休闲格子帽', 'change', '修改 goods_name', '14', '2');
INSERT INTO `xadmin_log` VALUES ('307', '2019-03-22 12:19:25.036156', '127.0.0.1', '6', '沙滩休闲帽', 'change', '修改 goods_name', '14', '2');
INSERT INTO `xadmin_log` VALUES ('308', '2019-03-22 12:19:43.034185', '127.0.0.1', '7', '手提袋', 'change', '修改 goods_name', '14', '2');
INSERT INTO `xadmin_log` VALUES ('309', '2019-03-22 12:20:08.671652', '127.0.0.1', '8', '手提袋休闲款02', 'change', '修改 hat_colour 和 goods_name', '14', '2');
INSERT INTO `xadmin_log` VALUES ('310', '2019-03-22 12:20:25.673624', '127.0.0.1', '9', '手提袋休闲款03', 'change', '修改 hat_colour 和 goods_name', '14', '2');
INSERT INTO `xadmin_log` VALUES ('311', '2019-03-22 12:20:40.264459', '127.0.0.1', '10', '弯眉蓝色', 'change', '修改 goods_name', '14', '2');
INSERT INTO `xadmin_log` VALUES ('312', '2019-03-23 04:30:31.006907', '127.0.0.1', '5', '休闲格子帽', 'change', '修改 hat_price', '14', '2');
INSERT INTO `xadmin_log` VALUES ('313', '2019-03-23 07:03:32.162000', '192.168.0.106', '1', '1', 'create', '已添加。', '20', '2');
INSERT INTO `xadmin_log` VALUES ('314', '2019-03-23 07:05:09.457000', '192.168.0.106', '26', '有人在吗', 'change', '修改 hat_message_reply 和 add_time2', '24', '2');
INSERT INTO `xadmin_log` VALUES ('315', '2019-03-23 07:26:58.939000', '192.168.0.106', '11', '平眉军帽', 'create', '已添加。', '14', '2');
INSERT INTO `xadmin_log` VALUES ('316', '2019-03-23 07:29:17.267000', '192.168.0.106', '18', '9113', 'create', '已添加。', '12', '2');
INSERT INTO `xadmin_log` VALUES ('317', '2019-03-23 07:29:57.570000', '192.168.0.106', '19', '9114', 'create', '已添加。', '12', '2');
INSERT INTO `xadmin_log` VALUES ('318', '2019-03-23 07:30:36.108000', '192.168.0.106', '20', '9119', 'create', '已添加。', '12', '2');
INSERT INTO `xadmin_log` VALUES ('319', '2019-03-23 07:31:36.190000', '192.168.0.106', '11', '平眉军帽', 'change', '修改 hatdiy_color', '14', '2');
INSERT INTO `xadmin_log` VALUES ('320', '2019-03-23 07:32:35.381000', '192.168.0.106', '11', '平眉军帽', 'change', '没有字段被修改。', '14', '2');
INSERT INTO `xadmin_log` VALUES ('321', '2019-03-23 07:33:55.567000', '192.168.0.106', '20', '9119', 'change', '修改 image，hat_left，hat_right，hat_bottom，hat_back 和 hat_null_button', '12', '2');

-- ----------------------------
-- Table structure for `xadmin_usersettings`
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_user_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_user_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `user_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '2');
INSERT INTO `xadmin_usersettings` VALUES ('3', 'dashboard:home:pos', '', '4');
INSERT INTO `xadmin_usersettings` VALUES ('4', 'dashboard:home:pos', '', '22');

-- ----------------------------
-- Table structure for `xadmin_userwidget`
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_user_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_user_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `user_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
