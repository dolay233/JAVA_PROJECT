/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : tlf

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 24/09/2022 10:17:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for demo_user
-- ----------------------------
DROP TABLE IF EXISTS `demo_user`;
CREATE TABLE `demo_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` char(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `age` int(0) NULL DEFAULT NULL,
  `sex` char(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cc`(`id`) USING BTREE,
  INDEX `user_index`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 231 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of demo_user
-- ----------------------------
INSERT INTO `demo_user` VALUES (1, '黑熊精', 3000, '男');
INSERT INTO `demo_user` VALUES (3, '金角大王', 3000, '男');
INSERT INTO `demo_user` VALUES (4, '银角大王', 4000, '男');
INSERT INTO `demo_user` VALUES (5, '唐僧', 30, '男');
INSERT INTO `demo_user` VALUES (6, '孙悟空', 500, '男');
INSERT INTO `demo_user` VALUES (7, '白龙驴', 2000, '男');
INSERT INTO `demo_user` VALUES (8, '八戒', 502, '男');
INSERT INTO `demo_user` VALUES (9, '沙悟净', 503, '男');
INSERT INTO `demo_user` VALUES (11, '小乔', 17, '女');
INSERT INTO `demo_user` VALUES (12, '貂蝉', 18, '女');
INSERT INTO `demo_user` VALUES (16, '黄月英', 18, '女');
INSERT INTO `demo_user` VALUES (17, '孙尚香', 18, '女');
INSERT INTO `demo_user` VALUES (18, '甄姬c', 20, '女');
INSERT INTO `demo_user` VALUES (21, '孙尚香D', 18, '女');
INSERT INTO `demo_user` VALUES (22, '刘备', 40, '男');
INSERT INTO `demo_user` VALUES (23, '潘凤', 35, '男');
INSERT INTO `demo_user` VALUES (24, '陆逊', 33, '男');
INSERT INTO `demo_user` VALUES (25, '关羽', 40, '男');
INSERT INTO `demo_user` VALUES (27, '阿科', 20, '女');
INSERT INTO `demo_user` VALUES (31, '王昭君', 19, '女');
INSERT INTO `demo_user` VALUES (38, '貂蝉', 18, '女');
INSERT INTO `demo_user` VALUES (39, '西施', 18, '女');
INSERT INTO `demo_user` VALUES (40, '严真煌', 16, '女');
INSERT INTO `demo_user` VALUES (41, '白骨精', 3000, '女');
INSERT INTO `demo_user` VALUES (43, '小乔', 19, '男');
INSERT INTO `demo_user` VALUES (44, '大乔', 19, '女');
INSERT INTO `demo_user` VALUES (46, '不知火舞', 18, '女');
INSERT INTO `demo_user` VALUES (49, '小兰兰', 18, '男');
INSERT INTO `demo_user` VALUES (50, '柳鹏林', 18, '男');
INSERT INTO `demo_user` VALUES (51, '妲己', 18, '男');
INSERT INTO `demo_user` VALUES (52, '如花', 17, '男');
INSERT INTO `demo_user` VALUES (53, '小明', 18, '男');
INSERT INTO `demo_user` VALUES (55, '金刚葫芦娃', 7, '男');
INSERT INTO `demo_user` VALUES (58, '马云', 46, '男');
INSERT INTO `demo_user` VALUES (62, '赵云', 18, '男');
INSERT INTO `demo_user` VALUES (66, '诺克赛斯之手', 100, '男');
INSERT INTO `demo_user` VALUES (68, '复仇炎魂', 2000, '男');
INSERT INTO `demo_user` VALUES (173, '年兽', 5000, '公');
INSERT INTO `demo_user` VALUES (182, '霸波尔奔', 4000, '男');
INSERT INTO `demo_user` VALUES (194, '齐天大圣', 600, '男');
INSERT INTO `demo_user` VALUES (196, '猪八戒', 8000, '男');
INSERT INTO `demo_user` VALUES (227, '小法', 20, '男');

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '商品id，同时也是商品编号',
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品标题',
  `sell_point` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品卖点',
  `price` int(0) NULL DEFAULT NULL COMMENT '商品价格，单位为：分',
  `num` int(0) NULL DEFAULT NULL COMMENT '库存数量',
  `images` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '商品图片',
  `item_cat_id` int(0) NULL DEFAULT NULL COMMENT '所属类目，叶子类目',
  `status` tinyint(0) NULL DEFAULT NULL COMMENT '商品状态，1-正常，2-下架，3-删除',
  `created` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updated` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cid`(`item_cat_id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `updated`(`updated`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES (1, '荣耀Play4T Pro 麒麟810芯片 OLED屏幕指纹 4800万高感光夜拍三摄 22.5W超级快充 全网通8GB+128GB 蓝水翡翠', '4800万高感光夜拍三摄，光学屏幕指纹，OLED珍珠屏！【新品V40轻奢版，新品上市，轻薄上手~】', 169900, 100, 'https://img14.360buyimg.com/n0/jfs/t1/86366/6/18025/255635/5e8c4c04E11bd27a1/ed4ea4c49827f378.jpg,https://img14.360buyimg.com/n0/jfs/t1/86366/6/18025/255635/5e8c4c04E11bd27a1/ed4ea4c49827f378.jpg,https://img14.360buyimg.com/n0/jfs/t1/86366/6/18025/255635/5e8c4c04E11bd27a1/ed4ea4c49827f378.jpg', 560, 1, '2021-04-07 15:28:02', '2021-04-07 20:07:42');
INSERT INTO `item` VALUES (2, '荣耀V40轻奢版 5G 超级快充 6400万超清四摄 8GB+128GB钛空银 移动联通电信5G 双卡双待手机', '【限时12期白条免息】标配66W超级快充有线充电器，超曲面屏轻薄上手！V40轻奢新品更多活动', 298900, 100, 'https://img14.360buyimg.com/n0/jfs/t1/164103/5/13092/213005/60505a06E4cfa3280/9a28034971309f0d.jpg,https://img14.360buyimg.com/n0/jfs/t1/159880/37/14166/181023/60541401Eb827e84d/d8fdb9ffbc210dd0.jpg,https://img14.360buyimg.com/n0/jfs/t1/155948/33/16925/161835/60541402E716bbf1c/538e450545afe33e.jpg', 560, 1, '2021-04-07 15:28:02', '2021-04-07 20:07:45');
INSERT INTO `item` VALUES (3, '华为mate40pro 5G手机 秘银色 8+256G全网通（碎屏险套餐）', '【华为官方直供】大量现货，当天发货，全国联保，原封正品【赠】碎屏险+无线充+2年保修+运费险+晒单红包+手机壳+贴膜', 699900, 100, 'https://img14.360buyimg.com/n0/jfs/t1/170978/5/16332/204840/60692ed6E633bd219/9bc0a3781a3a221c.jpg,https://img14.360buyimg.com/n0/jfs/t1/170978/5/16332/204840/60692ed6E633bd219/9bc0a3781a3a221c.jpg,https://img14.360buyimg.com/n0/jfs/t1/136433/13/13271/57921/5f918984E56739e4b/226641315d87fb96.jpg', 560, 1, '2021-04-07 15:28:02', '2021-04-07 20:07:45');
INSERT INTO `item` VALUES (4, '华为畅享20se 手机 幻夜黑 8+128G 全网通（碎屏险套餐）', '【华为官方直供】现货当天发，全国联保，原封正品【赠】碎屏险+2年保修+晒单红包+运费险', 179900, 100, 'https://img14.360buyimg.com/n0/jfs/t1/170573/15/15285/174782/606190d4E9a6383fc/84353dda60ed7503.jpg,https://img14.360buyimg.com/n0/jfs/t1/156471/12/4879/20094/5ff7c426E5708f46e/5c7780dbbd34541a.jpg,https://img14.360buyimg.com/n0/jfs/t1/170010/40/1575/22356/5ff7c426E3649270d/3b7d6896e7c2cebc.jpg', 560, 1, '2021-04-07 15:28:02', '2021-04-07 20:07:46');
INSERT INTO `item` VALUES (6, '华为 HUAWEI Mate 40 Pro麒麟9000 SoC芯片 超感知徕卡电影影像 有线无线双超级快充8GB+128GB亮黑色5G全网通', '【华为Mate40Pro】5nm麒麟芯片!超感知徕卡电影影像!双线超级快充!隔空操控屏!!!限量抢购更多选择猛戳查看>', 649900, 100, '/2021/04/16/55f86147299b4fd7bb3433e82c9e1953.jpg,/2021/04/16/fd53eafa2f684581be45aa9b828183b3.jpg,/2021/04/16/2219703664a442e797d017fbc0afdc49.jpg,/2021/04/16/de7cf577790244778b9cbf30c2b81c00.jpg', 560, 1, '2021-04-16 17:10:53', '2021-04-16 17:11:06');

-- ----------------------------
-- Table structure for item_cat
-- ----------------------------
DROP TABLE IF EXISTS `item_cat`;
CREATE TABLE `item_cat`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `parent_id` int(0) NULL DEFAULT NULL,
  `name` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` int(0) NULL DEFAULT NULL,
  `level` int(0) NULL DEFAULT NULL,
  `created` datetime(0) NULL DEFAULT NULL,
  `updated` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1183 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_cat
-- ----------------------------
INSERT INTO `item_cat` VALUES (1, 0, '图书、音像、电子书刊', 1, 1, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (2, 1, '电子书刊', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (3, 2, '电子书', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (4, 2, '网络原创', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (5, 2, '数字杂志', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (6, 2, '多媒体图书', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (7, 1, '音像', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (8, 7, '音乐', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (9, 7, '影视', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (10, 7, '教育音像', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (11, 1, '英文原版', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (12, 11, '少儿', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (13, 11, '商务投资', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (14, 11, '英语学习与考试', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (15, 11, '小说', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (16, 11, '传记', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (17, 11, '励志', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (18, 1, '文艺', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (19, 18, '小说', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (20, 18, '文学', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (21, 18, '青春文学', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (22, 18, '传记', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (23, 18, '艺术', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (24, 1, '少儿', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (25, 24, '少儿', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (26, 24, '0-2岁', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (27, 24, '3-6岁', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (28, 24, '7-10岁', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (29, 24, '11-14岁', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (30, 1, '人文社科', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (31, 30, '历史', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (32, 30, '哲学', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (33, 30, '国学', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (34, 30, '政治/军事', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (35, 30, '法律', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (36, 30, '宗教', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (37, 30, '心理学', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (38, 30, '文化', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (39, 30, '社会科学', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (40, 1, '经管励志', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (41, 40, '经济', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (42, 40, '金融与投资', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (43, 40, '管理', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (44, 40, '励志与成功', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (45, 1, '生活', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (46, 45, '生活', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (47, 45, '健身与保健', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (48, 45, '家庭与育儿', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (49, 45, '旅游', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (50, 45, '动漫/幽默', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (51, 1, '科技', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (52, 51, '科技', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (53, 51, '工程', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (54, 51, '建筑', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (55, 51, '医学', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (56, 51, '科学与自然', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (57, 51, '计算机与互联网', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (58, 51, '体育/运动', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (59, 1, '教育', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (60, 59, '教材教辅', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (61, 59, '教育与考试', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (62, 59, '外语学习', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (63, 59, '新闻出版', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (64, 59, '语言文字', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (65, 1, '港台图书', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (66, 65, '艺术/设计/收藏', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (67, 65, '经济管理', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (68, 65, '文化/学术', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (69, 65, '少儿文学/国学', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (70, 1, '其它', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (71, 70, '工具书', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (72, 70, '影印版', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (73, 70, '套装书', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (74, 0, '家用电器', 1, 1, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (75, 74, '大 家 电', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (76, 75, '平板电视', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (77, 75, '空调', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (78, 75, '冰箱', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (79, 75, '洗衣机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (80, 75, '家庭影院', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (81, 75, 'DVD播放机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (82, 75, '迷你音响', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (83, 75, '烟机/灶具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (84, 75, '热水器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (85, 75, '消毒柜/洗碗机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (86, 75, '酒柜/冰吧/冷柜', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (87, 75, '家电配件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (88, 75, '家电下乡', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (89, 74, '生活电器', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (90, 89, '电风扇', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (91, 89, '冷风扇', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (92, 89, '净化器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (93, 89, '饮水机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (94, 89, '净水设备', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (95, 89, '挂烫机/熨斗', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (96, 89, '吸尘器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (97, 89, '电话机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (98, 89, '插座', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (99, 89, '收录/音机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (100, 89, '清洁机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (101, 89, '加湿器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (102, 89, '除湿机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (103, 89, '取暖电器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (104, 89, '其它生活电器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (105, 89, '扫地机器人', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (106, 89, '干衣机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (107, 89, '生活电器配件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (108, 74, '厨房电器', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (109, 108, '料理/榨汁机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (110, 108, '豆浆机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (111, 108, '电饭煲', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (112, 108, '电压力锅', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (113, 108, '面包机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (114, 108, '咖啡机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (115, 108, '微波炉', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (116, 108, '电烤箱', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (117, 108, '电磁炉', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (118, 108, '电饼铛/烧烤盘', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (119, 108, '煮蛋器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (120, 108, '酸奶机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (121, 108, '电炖锅', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (122, 108, '电水壶/热水瓶', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (123, 108, '多用途锅', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (124, 108, '果蔬解毒机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (125, 108, '其它厨房电器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (126, 74, '个护健康', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (127, 126, '剃须刀', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (128, 126, '剃/脱毛器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (129, 126, '口腔护理', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (130, 126, '电吹风', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (131, 126, '美容器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (132, 126, '美发器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (133, 126, '按摩椅', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (134, 126, '按摩器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (135, 126, '足浴盆', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (136, 126, '血压计', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (137, 126, '健康秤/厨房秤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (138, 126, '血糖仪', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (139, 126, '体温计', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (140, 126, '计步器/脂肪检测仪', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (141, 126, '其它健康电器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (142, 74, '五金家装', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (143, 142, '电动工具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (144, 142, '手动工具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (145, 142, '仪器仪表', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (146, 142, '浴霸/排气扇', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (147, 142, '灯具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (148, 142, 'LED灯', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (149, 142, '洁身器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (150, 142, '水槽', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (151, 142, '龙头', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (152, 142, '淋浴花洒', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (153, 142, '厨卫五金', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (154, 142, '家具五金', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (155, 142, '门铃', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (156, 142, '电气开关', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (157, 142, '插座', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (158, 142, '电工电料', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (159, 142, '监控安防', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (160, 142, '电线/线缆', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (161, 0, '电脑、办公', 1, 1, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (162, 161, '电脑整机', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (163, 162, '笔记本', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (164, 162, '超极本', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (165, 162, '游戏本', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (166, 162, '平板电脑', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (167, 162, '平板电脑配件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (168, 162, '台式机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (169, 162, '服务器/工作站', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (170, 162, '笔记本配件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (171, 161, '电脑配件', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (172, 171, 'CPU', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (173, 171, '主板', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (174, 171, '显卡', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (175, 171, '硬盘', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (176, 171, 'SSD固态硬盘', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (177, 171, '内存', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (178, 171, '机箱', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (179, 171, '电源', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (180, 171, '显示器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (181, 171, '刻录机/光驱', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (182, 171, '散热器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (183, 171, '声卡/扩展卡', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (184, 171, '装机配件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (185, 171, '组装电脑', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (186, 161, '外设产品', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (187, 186, '移动硬盘', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (188, 186, 'U盘', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (189, 186, '鼠标', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (190, 186, '键盘', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (191, 186, '鼠标垫', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (192, 186, '摄像头', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (193, 186, '手写板', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (194, 186, '外置盒', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (195, 186, '插座', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (196, 186, '线缆', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (197, 186, 'UPS电源', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (198, 186, '电脑工具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (199, 186, '游戏设备', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (200, 186, '电玩', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (201, 186, '电脑清洁', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (202, 161, '网络产品', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (203, 202, '路由器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (204, 202, '网卡', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (205, 202, '交换机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (206, 202, '网络存储', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (207, 202, '4G/3G上网', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (208, 202, '网络盒子', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (209, 202, '网络配件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (210, 161, '办公设备', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (211, 210, '投影机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (212, 210, '投影配件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (213, 210, '多功能一体机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (214, 210, '打印机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (215, 210, '传真设备', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (216, 210, '验钞/点钞机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (217, 210, '扫描设备', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (218, 210, '复合机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (219, 210, '碎纸机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (220, 210, '考勤机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (221, 210, '墨粉', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (222, 210, '收款/POS机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (223, 210, '会议音频视频', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (224, 210, '保险柜', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (225, 210, '装订/封装机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (226, 210, '安防监控', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (227, 210, '办公家具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (228, 210, '白板', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (229, 161, '文具/耗材', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (230, 229, '硒鼓/墨粉', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (231, 229, '墨盒', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (232, 229, '色带', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (233, 229, '纸类', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (234, 229, '办公文具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (235, 229, '学生文具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (236, 229, '文件管理', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (237, 229, '财会用品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (238, 229, '本册/便签', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (239, 229, '计算器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (240, 229, '激光笔', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (241, 229, '笔类', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (242, 229, '画具画材', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (243, 229, '刻录碟片/附件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (244, 161, '服务产品', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (245, 244, '上门服务', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (246, 244, '远程服务', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (247, 244, '电脑软件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (248, 244, '京东服务', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (249, 0, '个护化妆', 1, 1, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (250, 249, '面部护肤', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (251, 250, '清洁', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (252, 250, '护肤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (253, 250, '面膜', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (254, 250, '剃须', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (255, 250, '套装', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (256, 249, '身体护肤', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (257, 256, '沐浴', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (258, 256, '润肤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (259, 256, '颈部', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (260, 256, '手足', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (261, 256, '纤体塑形', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (262, 256, '美胸', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (263, 256, '套装', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (264, 249, '口腔护理', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (265, 264, '牙膏/牙粉', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (266, 264, '牙刷/牙线', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (267, 264, '漱口水', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (268, 264, '套装', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (269, 249, '女性护理', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (270, 269, '卫生巾', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (271, 269, '卫生护垫', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (272, 269, '私密护理', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (273, 269, '脱毛膏', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (274, 249, '洗发护发', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (275, 274, '洗发', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (276, 274, '护发', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (277, 274, '染发', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (278, 274, '造型', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (279, 274, '假发', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (280, 274, '套装', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (281, 249, '香水彩妆', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (282, 281, '香水', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (283, 281, '底妆', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (284, 281, '腮红', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (285, 281, '眼部', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (286, 281, '唇部', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (287, 281, '美甲', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (288, 281, '美容工具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (289, 281, '套装', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (290, 0, '钟表', 1, 1, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (291, 290, '钟表', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (292, 291, '男表', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (293, 291, '女表', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (294, 291, '儿童手表', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (295, 291, '座钟挂钟', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (296, 0, '母婴', 1, 1, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (297, 296, '奶粉', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (298, 297, '婴幼奶粉', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (299, 297, '成人奶粉', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (300, 296, '营养辅食', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (301, 300, '益生菌/初乳', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (302, 300, '米粉/菜粉', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (303, 300, '果泥/果汁', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (304, 300, 'DHA', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (305, 300, '宝宝零食', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (306, 300, '钙铁锌/维生素', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (307, 300, '清火/开胃', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (308, 300, '面条/粥', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (309, 296, '尿裤湿巾', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (310, 309, '婴儿尿裤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (311, 309, '拉拉裤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (312, 309, '湿巾', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (313, 309, '成人尿裤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (314, 296, '喂养用品', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (315, 314, '奶瓶奶嘴', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (316, 314, '吸奶器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (317, 314, '暖奶消毒', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (318, 314, '碗盘叉勺', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (319, 314, '水壶/水杯', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (320, 314, '牙胶安抚', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (321, 314, '辅食料理机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (322, 296, '洗护用品', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (323, 322, '宝宝护肤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (324, 322, '宝宝洗浴', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (325, 322, '奶瓶清洗', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (326, 322, '驱蚊防蚊', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (327, 322, '理发器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (328, 322, '洗衣液/皂', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (329, 322, '日常护理', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (330, 322, '座便器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (331, 296, '童车童床', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (332, 331, '婴儿推车', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (333, 331, '餐椅摇椅', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (334, 331, '婴儿床', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (335, 331, '学步车', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (336, 331, '三轮车', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (337, 331, '自行车', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (338, 331, '电动车', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (339, 331, '扭扭车', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (340, 331, '滑板车', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (341, 296, '寝居服饰', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (342, 341, '婴儿外出服', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (343, 341, '婴儿内衣', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (344, 341, '婴儿礼盒', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (345, 341, '婴儿鞋帽袜', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (346, 341, '安全防护', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (347, 341, '家居床品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (348, 296, '妈妈专区', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (349, 348, '妈咪包/背婴带', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (350, 348, '产后塑身', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (351, 348, '文胸/内裤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (352, 348, '防辐射服', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (353, 348, '孕妇装', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (354, 348, '孕期营养', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (355, 348, '孕妈美容', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (356, 348, '待产/新生', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (357, 348, '月子装', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (358, 296, '童装童鞋', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (359, 358, '套装', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (360, 358, '上衣', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (361, 358, '裤子', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (362, 358, '裙子', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (363, 358, '内衣/家居服', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (364, 358, '羽绒服/棉服', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (365, 358, '亲子装', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (366, 358, '儿童配饰', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (367, 358, '礼服/演出服', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (368, 358, '运动鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (369, 358, '皮鞋/帆布鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (370, 358, '靴子', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (371, 358, '凉鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (372, 358, '功能鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (373, 358, '户外/运动服', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (374, 296, '安全座椅', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (375, 374, '提篮式', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (376, 374, '安全座椅', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (377, 374, '增高垫', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (378, 0, '食品饮料、保健食品', 1, 1, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (379, 378, '进口食品', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (380, 379, '饼干蛋糕', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (381, 379, '糖果/巧克力', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (382, 379, '休闲零食', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (383, 379, '冲调饮品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (384, 379, '粮油调味', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (385, 379, '牛奶', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (386, 378, '地方特产', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (387, 386, '其他特产', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (388, 386, '新疆', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (389, 386, '北京', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (390, 386, '山西', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (391, 386, '内蒙古', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (392, 386, '福建', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (393, 386, '湖南', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (394, 386, '四川', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (395, 386, '云南', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (396, 386, '东北', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (397, 378, '休闲食品', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (398, 397, '休闲零食', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (399, 397, '坚果炒货', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (400, 397, '肉干肉脯', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (401, 397, '蜜饯果干', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (402, 397, '糖果/巧克力', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (403, 397, '饼干蛋糕', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (404, 397, '无糖食品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (405, 378, '粮油调味', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (406, 405, '米面杂粮', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (407, 405, '食用油', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (408, 405, '调味品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (409, 405, '南北干货', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (410, 405, '方便食品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (411, 405, '有机食品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (412, 378, '饮料冲调', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (413, 412, '饮用水', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (414, 412, '饮料', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (415, 412, '牛奶乳品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (416, 412, '咖啡/奶茶', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (417, 412, '冲饮谷物', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (418, 412, '蜂蜜/柚子茶', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (419, 412, '成人奶粉', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (420, 378, '食品礼券', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (421, 420, '月饼', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (422, 420, '大闸蟹', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (423, 420, '粽子', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (424, 420, '卡券', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (425, 378, '茗茶', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (426, 425, '铁观音', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (427, 425, '普洱', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (428, 425, '龙井', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (429, 425, '绿茶', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (430, 425, '红茶', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (431, 425, '乌龙茶', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (432, 425, '花草茶', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (433, 425, '花果茶', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (434, 425, '养生茶', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (435, 425, '黑茶', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (436, 425, '白茶', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (437, 425, '其它茶', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (438, 0, '汽车用品', 1, 1, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (439, 438, '维修保养', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (440, 439, '润滑油', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (441, 439, '添加剂', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (442, 439, '防冻液', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (443, 439, '滤清器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (444, 439, '火花塞', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (445, 439, '雨刷', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (446, 439, '车灯', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (447, 439, '后视镜', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (448, 439, '轮胎', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (449, 439, '轮毂', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (450, 439, '刹车片/盘', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (451, 439, '喇叭/皮带', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (452, 439, '蓄电池', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (453, 439, '底盘装甲/护板', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (454, 439, '贴膜', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (455, 439, '汽修工具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (456, 438, '车载电器', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (457, 456, '导航仪', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (458, 456, '安全预警仪', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (459, 456, '行车记录仪', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (460, 456, '倒车雷达', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (461, 456, '蓝牙设备', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (462, 456, '时尚影音', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (463, 456, '净化器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (464, 456, '电源', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (465, 456, '冰箱', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (466, 456, '吸尘器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (467, 438, '美容清洗', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (468, 467, '车蜡', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (469, 467, '补漆笔', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (470, 467, '玻璃水', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (471, 467, '清洁剂', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (472, 467, '洗车工具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (473, 467, '洗车配件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (474, 438, '汽车装饰', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (475, 474, '脚垫', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (476, 474, '座垫', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (477, 474, '座套', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (478, 474, '后备箱垫', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (479, 474, '头枕腰靠', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (480, 474, '香水', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (481, 474, '空气净化', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (482, 474, '车内饰品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (483, 474, '功能小件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (484, 474, '车身装饰件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (485, 474, '车衣', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (486, 438, '安全自驾', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (487, 486, '安全座椅', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (488, 486, '胎压充气', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (489, 486, '防盗设备', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (490, 486, '应急救援', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (491, 486, '保温箱', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (492, 486, '储物箱', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (493, 486, '自驾野营', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (494, 486, '摩托车装备', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (495, 0, '玩具乐器', 1, 1, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (496, 495, '适用年龄', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (497, 496, '0-6个月', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (498, 496, '6-12个月', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (499, 496, '1-3岁', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (500, 496, '3-6岁', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (501, 496, '6-14岁', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (502, 496, '14岁以上', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (503, 495, '遥控/电动', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (504, 503, '遥控车', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (505, 503, '遥控飞机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (506, 503, '遥控船', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (507, 503, '机器人/电动', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (508, 503, '轨道/助力', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (509, 495, '毛绒布艺', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (510, 509, '毛绒/布艺', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (511, 509, '靠垫/抱枕', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (512, 495, '娃娃玩具', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (513, 512, '芭比娃娃', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (514, 512, '卡通娃娃', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (515, 512, '智能娃娃', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (516, 495, '模型玩具', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (517, 516, '仿真模型', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (518, 516, '拼插模型', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (519, 516, '收藏爱好', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (520, 495, '健身玩具', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (521, 520, '炫舞毯', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (522, 520, '爬行垫/毯', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (523, 520, '户外玩具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (524, 520, '戏水玩具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (525, 495, '动漫玩具', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (526, 525, '电影周边', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (527, 525, '卡通周边', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (528, 525, '网游周边', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (529, 495, '益智玩具', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (530, 529, '摇铃/床铃', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (531, 529, '健身架', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (532, 529, '早教启智', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (533, 529, '拖拉玩具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (534, 495, '积木拼插', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (535, 534, '积木', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (536, 534, '拼图', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (537, 534, '磁力棒', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (538, 534, '立体拼插', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (539, 495, 'DIY玩具', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (540, 539, '手工彩泥', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (541, 539, '绘画工具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (542, 539, '情景玩具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (543, 495, '创意减压', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (544, 543, '减压玩具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (545, 543, '创意玩具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (546, 495, '乐器相关', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (547, 546, '钢琴', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (548, 546, '电子琴', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (549, 546, '手风琴', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (550, 546, '吉他/贝斯', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (551, 546, '民族管弦乐器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (552, 546, '西洋管弦乐', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (553, 546, '口琴/口风琴/竖笛', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (554, 546, '西洋打击乐器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (555, 546, '各式乐器配件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (556, 546, '电脑音乐', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (557, 546, '工艺礼品乐器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (558, 0, '手机', 1, 1, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (559, 558, '手机通讯', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (560, 559, '手机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (561, 559, '对讲机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (562, 558, '运营商', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (563, 562, '购机送费', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (564, 562, '“0”元购机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (565, 562, '选号中心', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (566, 562, '选号入网', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (567, 558, '手机配件', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (568, 567, '手机电池', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (569, 567, '蓝牙耳机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (570, 567, '充电器/数据线', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (571, 567, '手机耳机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (572, 567, '手机贴膜', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (573, 567, '手机存储卡', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (574, 567, '手机保护套', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (575, 567, '车载配件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (576, 567, 'iPhone 配件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (577, 567, '创意配件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (578, 567, '便携/无线音响', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (579, 567, '手机饰品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (580, 0, '数码', 1, 1, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (581, 580, '摄影摄像', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (582, 581, '数码相机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (583, 581, '单电/微单相机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (584, 581, '单反相机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (585, 581, '摄像机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (586, 581, '拍立得', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (587, 581, '运动相机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (588, 581, '镜头', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (589, 581, '户外器材', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (590, 581, '影棚器材', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (591, 580, '数码配件', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (592, 591, '存储卡', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (593, 591, '读卡器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (594, 591, '滤镜', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (595, 591, '闪光灯/手柄', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (596, 591, '相机包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (597, 591, '三脚架/云台', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (598, 591, '相机清洁', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (599, 591, '相机贴膜', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (600, 591, '机身附件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (601, 591, '镜头附件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (602, 591, '电池/充电器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (603, 591, '移动电源', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (604, 580, '智能设备', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (605, 604, '智能手环', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (606, 604, '智能手表', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (607, 604, '智能眼镜', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (608, 604, '运动跟踪器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (609, 604, '健康监测', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (610, 604, '智能配饰', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (611, 604, '智能家居', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (612, 604, '体感车', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (613, 604, '其他配件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (614, 580, '时尚影音', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (615, 614, 'MP3/MP4', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (616, 614, '智能设备', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (617, 614, '耳机/耳麦', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (618, 614, '音箱', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (619, 614, '高清播放器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (620, 614, 'MP3/MP4配件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (621, 614, '麦克风', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (622, 614, '专业音频', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (623, 614, '数码相框', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (624, 614, '苹果配件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (625, 580, '电子教育', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (626, 625, '电子词典', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (627, 625, '电纸书', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (628, 625, '录音笔', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (629, 625, '复读机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (630, 625, '点读机/笔', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (631, 625, '学生平板', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (632, 625, '早教机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (633, 0, '家居家装', 1, 1, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (634, 633, '家纺', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (635, 634, '床品套件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (636, 634, '被子', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (637, 634, '枕芯', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (638, 634, '床单被罩', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (639, 634, '毯子', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (640, 634, '床垫/床褥', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (641, 634, '蚊帐', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (642, 634, '抱枕靠垫', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (643, 634, '毛巾浴巾', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (644, 634, '电热毯', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (645, 634, '窗帘/窗纱', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (646, 634, '布艺软饰', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (647, 634, '凉席', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (648, 633, '灯具', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (649, 648, '台灯', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (650, 648, '节能灯', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (651, 648, '装饰灯', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (652, 648, '落地灯', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (653, 648, '应急灯/手电', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (654, 648, 'LED灯', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (655, 648, '吸顶灯', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (656, 648, '五金电器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (657, 648, '筒灯射灯', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (658, 648, '吊灯', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (659, 648, '氛围照明', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (660, 633, '生活日用', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (661, 660, '收纳用品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (662, 660, '雨伞雨具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (663, 660, '浴室用品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (664, 660, '缝纫/针织用品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (665, 660, '洗晒/熨烫', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (666, 660, '净化除味', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (667, 633, '家装软饰', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (668, 667, '桌布/罩件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (669, 667, '地毯地垫', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (670, 667, '沙发垫套/椅垫', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (671, 667, '相框/照片墙', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (672, 667, '装饰字画', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (673, 667, '节庆饰品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (674, 667, '手工/十字绣', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (675, 667, '装饰摆件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (676, 667, '保暖防护', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (677, 667, '帘艺隔断', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (678, 667, '墙贴/装饰贴', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (679, 667, '钟饰', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (680, 667, '花瓶花艺', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (681, 667, '香薰蜡烛', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (682, 667, '创意家居', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (683, 633, '清洁用品', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (684, 683, '纸品湿巾', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (685, 683, '衣物清洁', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (686, 683, '清洁工具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (687, 683, '驱虫用品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (688, 683, '家庭清洁', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (689, 683, '皮具护理', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (690, 683, '一次性用品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (691, 633, '宠物生活', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (692, 691, '宠物主粮', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (693, 691, '宠物零食', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (694, 691, '医疗保健', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (695, 691, '家居日用', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (696, 691, '宠物玩具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (697, 691, '出行装备', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (698, 691, '洗护美容', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (699, 0, '厨具', 1, 1, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (700, 699, '烹饪锅具', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (701, 700, '炒锅', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (702, 700, '煎锅', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (703, 700, '压力锅', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (704, 700, '蒸锅', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (705, 700, '汤锅', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (706, 700, '奶锅', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (707, 700, '锅具套装', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (708, 700, '煲类', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (709, 700, '水壶', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (710, 700, '火锅', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (711, 699, '刀剪菜板', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (712, 711, '菜刀', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (713, 711, '剪刀', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (714, 711, '刀具套装', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (715, 711, '砧板', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (716, 711, '瓜果刀/刨', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (717, 711, '多功能刀', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (718, 699, '厨房配件', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (719, 718, '保鲜盒', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (720, 718, '烘焙/烧烤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (721, 718, '饭盒/提锅', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (722, 718, '储物/置物架', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (723, 718, '厨房DIY/小工具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (724, 699, '水具酒具', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (725, 724, '塑料杯', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (726, 724, '运动水壶', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (727, 724, '玻璃杯', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (728, 724, '陶瓷/马克杯', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (729, 724, '保温杯', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (730, 724, '保温壶', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (731, 724, '酒杯/酒具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (732, 724, '杯具套装', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (733, 699, '餐具', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (734, 733, '餐具套装', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (735, 733, '碗/碟/盘', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (736, 733, '筷勺/刀叉', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (737, 733, '一次性用品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (738, 733, '果盘/果篮', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (739, 699, '茶具/咖啡具', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (740, 739, '整套茶具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (741, 739, '茶杯', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (742, 739, '茶壶', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (743, 739, '茶盘茶托', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (744, 739, '茶叶罐', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (745, 739, '茶具配件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (746, 739, '茶宠摆件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (747, 739, '咖啡具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (748, 739, '其他', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (749, 0, '服饰内衣', 1, 1, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (750, 749, '女装', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (751, 750, 'T恤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (752, 750, '衬衫', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (753, 750, '针织衫', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (754, 750, '雪纺衫', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (755, 750, '卫衣', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (756, 750, '马甲', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (757, 750, '连衣裙', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (758, 750, '半身裙', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (759, 750, '牛仔裤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (760, 750, '休闲裤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (761, 750, '打底裤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (762, 750, '正装裤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (763, 750, '小西装', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (764, 750, '短外套', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (765, 750, '风衣', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (766, 750, '毛呢大衣', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (767, 750, '真皮皮衣', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (768, 750, '棉服', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (769, 750, '羽绒服', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (770, 750, '大码女装', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (771, 750, '中老年女装', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (772, 750, '婚纱', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (773, 750, '打底衫', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (774, 750, '旗袍/唐装', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (775, 750, '加绒裤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (776, 750, '吊带/背心', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (777, 750, '羊绒衫', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (778, 750, '短裤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (779, 750, '皮草', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (780, 750, '礼服', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (781, 750, '仿皮皮衣', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (782, 750, '羊毛衫', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (783, 750, '设计师/潮牌', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (784, 749, '男装', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (785, 784, '衬衫', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (786, 784, 'T恤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (787, 784, 'POLO衫', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (788, 784, '针织衫', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (789, 784, '羊绒衫', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (790, 784, '卫衣', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (791, 784, '马甲/背心', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (792, 784, '夹克', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (793, 784, '风衣', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (794, 784, '毛呢大衣', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (795, 784, '仿皮皮衣', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (796, 784, '西服', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (797, 784, '棉服', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (798, 784, '羽绒服', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (799, 784, '牛仔裤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (800, 784, '休闲裤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (801, 784, '西裤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (802, 784, '西服套装', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (803, 784, '大码男装', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (804, 784, '中老年男装', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (805, 784, '唐装/中山装', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (806, 784, '工装', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (807, 784, '真皮皮衣', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (808, 784, '加绒裤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (809, 784, '卫裤/运动裤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (810, 784, '短裤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (811, 784, '设计师/潮牌', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (812, 784, '羊毛衫', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (813, 749, '内衣', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (814, 813, '文胸', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (815, 813, '女式内裤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (816, 813, '男式内裤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (817, 813, '睡衣/家居服', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (818, 813, '塑身美体', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (819, 813, '泳衣', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (820, 813, '吊带/背心', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (821, 813, '抹胸', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (822, 813, '连裤袜/丝袜', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (823, 813, '美腿袜', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (824, 813, '商务男袜', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (825, 813, '保暖内衣', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (826, 813, '情侣睡衣', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (827, 813, '文胸套装', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (828, 813, '少女文胸', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (829, 813, '休闲棉袜', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (830, 813, '大码内衣', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (831, 813, '内衣配件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (832, 813, '打底裤袜', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (833, 813, '打底衫', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (834, 813, '秋衣秋裤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (835, 813, '情趣内衣', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (836, 749, '服饰配件', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (837, 836, '太阳镜', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (838, 836, '光学镜架/镜片', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (839, 836, '围巾/手套/帽子套装', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (840, 836, '袖扣', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (841, 836, '棒球帽', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (842, 836, '毛线帽', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (843, 836, '遮阳帽', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (844, 836, '老花镜', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (845, 836, '装饰眼镜', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (846, 836, '防辐射眼镜', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (847, 836, '游泳镜', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (848, 836, '女士丝巾/围巾/披肩', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (849, 836, '男士丝巾/围巾', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (850, 836, '鸭舌帽', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (851, 836, '贝雷帽', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (852, 836, '礼帽', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (853, 836, '真皮手套', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (854, 836, '毛线手套', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (855, 836, '防晒手套', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (856, 836, '男士腰带/礼盒', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (857, 836, '女士腰带/礼盒', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (858, 836, '钥匙扣', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (859, 836, '遮阳伞/雨伞', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (860, 836, '口罩', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (861, 836, '耳罩/耳包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (862, 836, '假领', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (863, 836, '毛线/布面料', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (864, 836, '领带/领结/领带夹', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (865, 0, '鞋靴', 1, 1, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (866, 865, '流行男鞋', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (867, 866, '商务休闲鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (868, 866, '正装鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (869, 866, '休闲鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (870, 866, '凉鞋/沙滩鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (871, 866, '男靴', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (872, 866, '功能鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (873, 866, '拖鞋/人字拖', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (874, 866, '雨鞋/雨靴', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (875, 866, '传统布鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (876, 866, '鞋配件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (877, 866, '帆布鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (878, 866, '增高鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (879, 866, '工装鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (880, 866, '定制鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (881, 865, '时尚女鞋', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (882, 881, '高跟鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (883, 881, '单鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (884, 881, '休闲鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (885, 881, '凉鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (886, 881, '女靴', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (887, 881, '雪地靴', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (888, 881, '拖鞋/人字拖', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (889, 881, '踝靴', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (890, 881, '筒靴', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (891, 881, '帆布鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (892, 881, '雨鞋/雨靴', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (893, 881, '妈妈鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (894, 881, '鞋配件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (895, 881, '特色鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (896, 881, '鱼嘴鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (897, 881, '布鞋/绣花鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (898, 881, '马丁靴', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (899, 881, '坡跟鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (900, 881, '松糕鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (901, 881, '内增高', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (902, 881, '防水台', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (903, 0, '礼品箱包', 1, 1, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (904, 903, '潮流女包', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (905, 904, '钱包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (906, 904, '手拿包/晚宴包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (907, 904, '单肩包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (908, 904, '双肩包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (909, 904, '手提包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (910, 904, '斜挎包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (911, 904, '钥匙包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (912, 904, '卡包/零钱包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (913, 903, '精品男包', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (914, 913, '钱包/卡包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (915, 913, '男士手包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (916, 913, '商务公文包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (917, 913, '双肩包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (918, 913, '单肩/斜挎包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (919, 913, '钥匙包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (920, 903, '功能箱包', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (921, 920, '电脑包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (922, 920, '拉杆箱/拉杆包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (923, 920, '旅行包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (924, 920, '旅行配件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (925, 920, '休闲运动包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (926, 920, '登山包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (927, 920, '妈咪包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (928, 920, '书包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (929, 920, '相机包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (930, 920, '腰包/胸包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (931, 903, '礼品', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (932, 931, '火机烟具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (933, 931, '礼品文具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (934, 931, '军刀军具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (935, 931, '收藏品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (936, 931, '工艺礼品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (937, 931, '创意礼品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (938, 931, '礼盒礼券', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (939, 931, '鲜花绿植', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (940, 931, '婚庆用品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (941, 931, '京东卡', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (942, 931, '美妆礼品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (943, 931, '地方礼品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (944, 931, '古董把玩', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (945, 903, '奢侈品', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (946, 945, '箱包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (947, 945, '钱包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (948, 945, '服饰', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (949, 945, '腰带', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (950, 945, '太阳镜/眼镜框', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (951, 945, '配件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (952, 945, '鞋靴', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (953, 945, '饰品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (954, 945, '名品腕表', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (955, 945, '高档化妆品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (956, 903, '婚庆', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (957, 956, '婚嫁首饰', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (958, 956, '婚纱摄影', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (959, 956, '婚纱礼服', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (960, 956, '婚庆服务', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (961, 956, '婚庆礼品/用品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (962, 956, '婚宴', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (963, 0, '珠宝', 1, 1, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (964, 963, '时尚饰品', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (965, 964, '项链', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (966, 964, '手链/脚链', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (967, 964, '戒指', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (968, 964, '耳饰', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (969, 964, '头饰', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (970, 964, '胸针', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (971, 964, '婚庆饰品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (972, 964, '饰品配件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (973, 963, '纯金K金饰品', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (974, 973, '吊坠/项链', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (975, 973, '手镯/手链/脚链', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (976, 973, '戒指', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (977, 973, '耳饰', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (978, 963, '金银投资', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (979, 978, '工艺金', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (980, 978, '工艺银', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (981, 963, '银饰', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (982, 981, '吊坠/项链', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (983, 981, '手镯/手链/脚链', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (984, 981, '戒指/耳饰', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (985, 981, '宝宝银饰', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (986, 981, '千足银手镯', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (987, 963, '钻石', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (988, 987, '裸钻', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (989, 987, '戒指', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (990, 987, '项链/吊坠', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (991, 987, '耳饰', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (992, 987, '手镯/手链', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (993, 963, '翡翠玉石', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (994, 993, '项链/吊坠', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (995, 993, '手镯/手串', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (996, 993, '戒指', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (997, 993, '耳饰', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (998, 993, '挂件/摆件/把件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (999, 993, '高值收藏', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1000, 963, '水晶玛瑙', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1001, 1000, '项链/吊坠', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1002, 1000, '耳饰', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1003, 1000, '手镯/手链/脚链', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1004, 1000, '戒指', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1005, 1000, '头饰/胸针', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1006, 1000, '摆件/挂件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1007, 963, '彩宝', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1008, 1007, '项链/吊坠', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1009, 1007, '耳饰', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1010, 1007, '手镯/手链', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1011, 1007, '戒指', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1012, 963, '铂金', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1013, 1012, '项链/吊坠', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1014, 1012, '手镯/手链/脚链', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1015, 1012, '戒指', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1016, 1012, '耳饰', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1017, 963, '天然木饰', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1018, 1017, '小叶紫檀', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1019, 1017, '黄花梨', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1020, 1017, '沉香', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1021, 1017, '金丝楠', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1022, 1017, '菩提', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1023, 1017, '其他', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1024, 963, '珍珠', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1025, 1024, '项链', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1026, 1024, '吊坠', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1027, 1024, '耳饰', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1028, 1024, '手链', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1029, 1024, '戒指', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1030, 1024, '胸针', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1031, 0, '运动健康', 1, 1, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (1032, 1031, '运动鞋包', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1033, 1032, '休闲鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1034, 1032, '板鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1035, 1032, '帆布鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1036, 1032, '专项运动鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1037, 1032, '跑步鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1038, 1032, '篮球鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1039, 1032, '足球鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1040, 1032, '训练鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1041, 1032, '乒羽网鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1042, 1032, '拖鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1043, 1032, '运动包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1044, 1031, '运动服饰', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1045, 1044, '运动配饰', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1046, 1044, '羽绒服', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1047, 1044, '毛衫/线衫', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1048, 1044, '乒羽网服', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1049, 1044, '训练服', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1050, 1044, '运动背心', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1051, 1044, '卫衣/套头衫', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1052, 1044, '夹克/风衣', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1053, 1044, 'T恤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1054, 1044, '棉服', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1055, 1044, '运动裤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1056, 1044, '套装', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1057, 1031, '骑行运动', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1058, 1057, '折叠车', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1059, 1057, '山地车/公路车', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1060, 1057, '电动车', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1061, 1057, '其他整车', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1062, 1057, '骑行服', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1063, 1057, '骑行装备', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1064, 1031, '垂钓用品', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1065, 1064, '鱼竿鱼线', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1066, 1064, '浮漂鱼饵', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1067, 1064, '钓鱼桌椅', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1068, 1064, '钓鱼配件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1069, 1064, '钓箱鱼包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1070, 1064, '其它', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1071, 1031, '游泳用品', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1072, 1071, '泳镜', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1073, 1071, '泳帽', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1074, 1071, '游泳包防水包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1075, 1071, '女士泳衣', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1076, 1071, '男士泳衣', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1077, 1071, '比基尼', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1078, 1071, '其它', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1079, 1031, '户外鞋服', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1080, 1079, '冲锋衣裤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1081, 1079, '速干衣裤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1082, 1079, '滑雪服', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1083, 1079, '羽绒服/棉服', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1084, 1079, '休闲衣裤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1085, 1079, '抓绒衣裤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1086, 1079, '软壳衣裤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1087, 1079, 'T恤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1088, 1079, '户外风衣', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1089, 1079, '功能内衣', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1090, 1079, '军迷服饰', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1091, 1079, '登山鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1092, 1079, '雪地靴', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1093, 1079, '徒步鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1094, 1079, '越野跑鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1095, 1079, '休闲鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1096, 1079, '工装鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1097, 1079, '溯溪鞋', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1098, 1079, '沙滩/凉拖', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1099, 1079, '户外袜', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1100, 1031, '户外装备', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1101, 1100, '帐篷/垫子', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1102, 1100, '睡袋/吊床', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1103, 1100, '登山攀岩', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1104, 1100, '背包', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1105, 1100, '户外配饰', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1106, 1100, '户外照明', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1107, 1100, '户外仪表', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1108, 1100, '户外工具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1109, 1100, '望远镜', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1110, 1100, '旅游用品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1111, 1100, '便携桌椅床', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1112, 1100, '野餐烧烤', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1113, 1100, '军迷用品', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1114, 1100, '救援装备', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1115, 1100, '滑雪装备', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1116, 1100, '极限户外', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1117, 1100, '冲浪潜水', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1118, 1031, '健身训练', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1119, 1118, '综合训练器', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1120, 1118, '其他大型器械', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1121, 1118, '哑铃', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1122, 1118, '仰卧板/收腹机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1123, 1118, '其他中小型器材', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1124, 1118, '瑜伽舞蹈', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1125, 1118, '武术搏击', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1126, 1118, '健身车/动感单车', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1127, 1118, '跑步机', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1128, 1118, '运动护具', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1129, 1031, '纤体瑜伽', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1130, 1129, '瑜伽垫', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1131, 1129, '瑜伽服', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1132, 1129, '瑜伽配件', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1133, 1129, '瑜伽套装', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1134, 1129, '舞蹈鞋服', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1135, 1031, '体育用品', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1136, 1135, '羽毛球', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1137, 1135, '乒乓球', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1138, 1135, '篮球', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1139, 1135, '足球', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1140, 1135, '网球', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1141, 1135, '排球', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1142, 1135, '高尔夫', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1143, 1135, '台球', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1144, 1135, '棋牌麻将', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1145, 1135, '轮滑滑板', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1146, 1135, '其他', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1147, 0, '彩票、旅行、充值、票务', 1, 1, '2021-03-29 18:09:38', '2021-03-29 18:10:02');
INSERT INTO `item_cat` VALUES (1148, 1147, '彩票', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1149, 1148, '双色球', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1150, 1148, '大乐透', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1151, 1148, '福彩3D', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1152, 1148, '排列三', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1153, 1148, '排列五', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1154, 1148, '七星彩', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1155, 1148, '七乐彩', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1156, 1148, '竞彩足球', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1157, 1148, '竞彩篮球', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1158, 1148, '新时时彩', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1159, 1147, '机票', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1160, 1159, '国内机票', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1161, 1147, '酒店', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1162, 1161, '国内酒店', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1163, 1161, '酒店团购', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1164, 1147, '旅行', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1165, 1164, '度假', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1166, 1164, '景点', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1167, 1164, '租车', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1168, 1164, '火车票', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1169, 1164, '旅游团购', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1170, 1147, '充值', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1171, 1170, '手机充值', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1172, 1147, '游戏', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1173, 1172, '游戏点卡', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1174, 1172, 'QQ充值', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1175, 1147, '票务', 1, 2, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1176, 1175, '电影票', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1177, 1175, '演唱会', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1178, 1175, '话剧歌剧', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1179, 1175, '音乐会', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1180, 1175, '体育赛事', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1181, 1175, '舞蹈芭蕾', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');
INSERT INTO `item_cat` VALUES (1182, 1175, '戏曲综艺', 1, 3, '2021-03-29 18:09:38', '2021-03-29 18:10:03');

-- ----------------------------
-- Table structure for item_desc
-- ----------------------------
DROP TABLE IF EXISTS `item_desc`;
CREATE TABLE `item_desc`  (
  `id` int(0) NOT NULL COMMENT '商品ID',
  `item_desc` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '商品描述',
  `created` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updated` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `item_id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '商品描述表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_desc
-- ----------------------------
INSERT INTO `item_desc` VALUES (6, '<ul><li>品牌：&nbsp;<a href=\"https://list.jd.com/list.html?cat=9987,653,655&amp;ev=exbrand_8557\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(94, 105, 173);\">华为（HUAWEI）</a></li><li>商品名称：华为Mate 40 Pro</li><li>商品编号：100009424247</li><li>商品毛重：0.575kg</li><li>商品产地：中国大陆</li><li>CPU型号：其他</li><li>运行内存：8GB</li><li>机身存储：128GB</li><li>存储卡：NM存储卡</li><li>摄像头数量：后置三摄</li><li>后摄主摄像素：5000万像素</li><li>前摄主摄像素：1300万像素</li><li>主屏幕尺寸（英寸）：其他英寸</li><li>分辨率：其它分辨率</li><li>屏幕比例：其它屏幕比例</li><li>屏幕前摄组合：其他</li><li>充电器：10V/4A；4.5V/5A；11V/6A；5V/2A；10V/2.25A；5V/4.5A；9V/2A</li><li>热点：无线充电，快速充电，防水防尘，NFC，屏幕指纹，高倍率变焦，曲面屏，5G，3D(ToF或结构光)，屏幕高刷新率</li><li>操作系统：其他OS</li></ul><p class=\"ql-align-right\"><a href=\"https://item.jd.com/100009424247.html#product-detail\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 90, 160);\">更多参数&gt;&gt;</a></p><p class=\"ql-align-center\"><a href=\"https://prodev.jd.com/mall/active/4MmNbTkve7YDv3cqfN65jyU54rSB/index.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(102, 102, 102);\"><img src=\"https://img30.360buyimg.com/jgsq-productsoa/jfs/t1/175410/16/1288/138398/60643912Eb556f8dd/b5dddd77bfb1189d.jpg\"></a></p><p><br></p><p><br></p><p><br></p><p class=\"ql-align-center\"><img src=\"https://img30.360buyimg.com/sku/jfs/t1/171353/28/18918/597397/60792c26Ea7af3162/a3d01d86a26914c7.jpg\" height=\"1665\" width=\"750\"><img src=\"https://img30.360buyimg.com/sku/jfs/t1/170519/21/18918/252212/60792c26E3ffeec48/e72803fd0e0ee024.jpg\" height=\"1040\" width=\"750\"><img src=\"https://img30.360buyimg.com/sku/jfs/t1/127525/12/15934/192855/5f92ad88Ef1d8a1d0/308eeb396c1b4f0c.jpg\" height=\"980\" width=\"750\"><img src=\"https://img30.360buyimg.com/sku/jfs/t1/127737/29/16107/53864/5f92ad87E2f31013f/296cc6da2147e8c6.jpg\" height=\"980\" width=\"750\"><img src=\"https://img30.360buyimg.com/sku/jfs/t1/150644/33/4055/87380/5f92ad88Ec6dc8304/bcc4722ace0f3a26.jpg\" height=\"980\" width=\"750\"><img src=\"https://img30.360buyimg.com/sku/jfs/t1/138990/29/11931/107588/5f92ad88E8f593e81/aa10f6fb142f1cc7.jpg\" height=\"980\" width=\"750\"><img src=\"https://img30.360buyimg.com/sku/jfs/t1/147316/22/11802/90171/5f92ad88E126be777/49a8533ab4b2a0f1.jpg\" height=\"980\" width=\"750\"></p><p><br></p>', '2021-04-16 17:10:53', '2021-04-16 17:10:53');
INSERT INTO `item_desc` VALUES (7, '<iframe class=\"ql-video\" frameborder=\"0\" allowfullscreen=\"true\" src=\"https://vod.300hu.com/4c1f7a6atransbjngwcloud1oss/70da0da8353541978833035265/v.f30.mp4?source=1&amp;h265=v.f1022_h265.mp4\"></iframe><p><br></p>', '2021-04-19 11:02:01', '2021-04-19 11:02:01');
INSERT INTO `item_desc` VALUES (8, '<ul><li>品牌：&nbsp;<a href=\"https://list.jd.com/list.html?cat=9987,653,655&amp;ev=exbrand_316578\" target=\"_blank\" style=\"color: rgb(94, 105, 173);\">克里特（kreta）</a></li><li>商品名称：克里特（kreta）12Pro</li><li>商品编号：10023875891222</li><li>店铺：&nbsp;<a href=\"https://kreta.jd.com/\" target=\"_blank\" style=\"color: rgb(94, 105, 173);\">克里特KRETA手机官方旗舰店</a></li><li>商品毛重：0.8kg</li><li>商品产地：中国大陆</li><li>货号：12Pro</li><li>操作系统：Android(安卓)</li></ul><p class=\"ql-align-right\"><a href=\"https://item.jd.com/10023875891222.html#product-detail\" target=\"_blank\" style=\"color: rgb(0, 90, 160);\">更多参数&gt;&gt;</a></p><p><img src=\"https://img11.360buyimg.com/devfe/jfs/t19249/266/555939662/10324/447efd03/5a965eb2Nf83fd68c.jpg\" alt=\"品质生活\"></p><ul><li class=\"ql-align-center\"><a href=\"https://item.jd.com/10023875891222.html#none\" target=\"_blank\" style=\"color: rgb(102, 102, 102); background-color: initial;\"><img src=\"https://static.360buyimg.com/pop-vender-static/qua/2018/spu/images/qua_mark_refimg_52.png\"></a></li><li class=\"ql-align-center\"><a href=\"https://item.jd.com/10023875891222.html#none\" target=\"_blank\" style=\"color: rgb(102, 102, 102);\">电信设备进网许可证</a></li><li><a href=\"https://item.jd.com/10023875891222.html\" target=\"_blank\" style=\"color: rgb(243, 2, 19);\"><img src=\"https://img30.360buyimg.com/sku/jfs/t1/176413/34/5316/271325/607d2bd8E258ccd03/6a85805a7f71ad3e.jpg\"></a></li><li><br></li></ul><p><br></p>', '2021-04-20 13:46:20', '2021-04-20 13:46:20');
INSERT INTO `item_desc` VALUES (9, '<p>fsdfsadsaddsf</p>', '2021-05-21 17:28:27', '2021-05-21 17:28:27');
INSERT INTO `item_desc` VALUES (10, '<p>123123</p>', '2021-05-21 17:30:04', '2021-05-21 17:30:04');
INSERT INTO `item_desc` VALUES (11, '<p>3123</p>', '2021-05-21 17:38:55', '2021-05-21 17:38:55');
INSERT INTO `item_desc` VALUES (12, '<p>3234</p>', '2021-05-21 17:42:04', '2021-05-21 17:42:04');

-- ----------------------------
-- Table structure for report
-- ----------------------------
DROP TABLE IF EXISTS `report`;
CREATE TABLE `report`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `count` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of report
-- ----------------------------
INSERT INTO `report` VALUES (1, '平板', 10);
INSERT INTO `report` VALUES (2, '电视', 24);
INSERT INTO `report` VALUES (3, '手机', 70);
INSERT INTO `report` VALUES (4, '笔记本', 34);
INSERT INTO `report` VALUES (5, '液晶显示器', 50);
INSERT INTO `report` VALUES (6, '化妆品', 60);

-- ----------------------------
-- Table structure for rights
-- ----------------------------
DROP TABLE IF EXISTS `rights`;
CREATE TABLE `rights`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `parent_id` int(0) NULL DEFAULT NULL,
  `path` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `level` int(0) NULL DEFAULT NULL,
  `created` datetime(0) NULL DEFAULT NULL,
  `updated` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rights
-- ----------------------------
INSERT INTO `rights` VALUES (1, '用户管理', 0, NULL, 1, '2021-02-18 19:17:23', '2021-02-18 19:17:23');
INSERT INTO `rights` VALUES (2, '用户列表', 1, '/user', 2, '2021-02-18 19:22:19', '2021-02-18 19:22:19');
INSERT INTO `rights` VALUES (3, '商品管理', 0, NULL, 1, '2021-02-18 19:22:41', '2021-02-18 19:22:41');
INSERT INTO `rights` VALUES (4, '商品列表', 3, '/item', 2, '2021-02-18 19:23:12', '2021-02-18 19:23:12');
INSERT INTO `rights` VALUES (6, '商品分类', 3, '/itemCat', 2, '2021-02-18 19:25:00', '2021-02-18 19:25:00');
INSERT INTO `rights` VALUES (7, '权限管理', 0, '', 1, '2021-02-18 19:23:44', '2021-02-18 19:23:44');
INSERT INTO `rights` VALUES (8, '数据统计', 0, NULL, 1, '2021-02-18 19:24:12', '2021-02-18 19:24:12');
INSERT INTO `rights` VALUES (9, '权限列表', 7, '/rights', 2, '2021-02-18 19:24:12', '2021-02-18 19:24:12');
INSERT INTO `rights` VALUES (10, '角色列表', 7, '/role', 2, '2021-02-18 19:24:12', '2021-02-18 19:24:12');
INSERT INTO `rights` VALUES (11, '用户列表-新增按钮', 2, NULL, 3, '2021-02-18 19:24:12', '2021-02-18 19:24:12');
INSERT INTO `rights` VALUES (12, '用户列表-修改按钮', 2, NULL, 3, '2021-02-18 19:24:12', '2021-02-18 19:24:12');
INSERT INTO `rights` VALUES (13, '用户列表-删除按钮', 2, NULL, 3, '2021-02-18 19:24:12', '2021-02-18 19:24:12');
INSERT INTO `rights` VALUES (15, '统计报表', 8, '/report', 2, '2021-02-18 19:24:12', '2021-02-18 19:24:12');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `role_id` int(0) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `role_duty` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `role_status` tinyint(0) NULL DEFAULT NULL COMMENT '0 禁用 1启用',
  `sort_num` int(0) NULL DEFAULT NULL,
  `created` datetime(0) NULL DEFAULT NULL,
  `updated` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '超级管理员', '负责管理整个系统', 1, 1, '2021-02-18 19:17:23', '2021-02-18 19:17:23');
INSERT INTO `role` VALUES (2, '总经理', '总经理', 1, 2, '2021-02-18 19:17:23', '2021-02-18 19:17:23');
INSERT INTO `role` VALUES (3, '主管', '主管项目', 1, 3, '2021-02-18 19:17:23', '2021-02-18 19:17:23');

-- ----------------------------
-- Table structure for role_rights
-- ----------------------------
DROP TABLE IF EXISTS `role_rights`;
CREATE TABLE `role_rights`  (
  `role_id` int(0) NULL DEFAULT NULL,
  `rights_id` int(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_rights
-- ----------------------------
INSERT INTO `role_rights` VALUES (2, 1);
INSERT INTO `role_rights` VALUES (2, 2);
INSERT INTO `role_rights` VALUES (2, 12);
INSERT INTO `role_rights` VALUES (2, 13);
INSERT INTO `role_rights` VALUES (3, 11);
INSERT INTO `role_rights` VALUES (3, 1);
INSERT INTO `role_rights` VALUES (3, 2);
INSERT INTO `role_rights` VALUES (1, 1);
INSERT INTO `role_rights` VALUES (1, 2);
INSERT INTO `role_rights` VALUES (1, 11);
INSERT INTO `role_rights` VALUES (1, 12);
INSERT INTO `role_rights` VALUES (1, 13);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `password` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `created` datetime(0) NULL DEFAULT NULL,
  `updated` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '13111112222', '1235678@qq.com', 1, '2021-02-18 19:17:23', '2021-03-26 14:47:20');
INSERT INTO `user` VALUES (2, 'admin123', 'e10adc3949ba59abbe56e057f20f883e', '13111112223', '1235678@qq.com', 1, '2021-02-18 19:17:23', '2022-09-24 09:57:30');
INSERT INTO `user` VALUES (4, 'admin666', '0192023a7bbd73250516f069df18b500', '13111112222', '11@qq.com', 1, '2021-03-22 21:25:06', '2021-03-22 21:25:06');
INSERT INTO `user` VALUES (5, 'harrylyj', 'cf8f7ab6054c6b147cdb35e494c291e9', '17688888888', '527161772@qq.com', 1, '2021-05-10 19:01:45', '2021-05-10 19:01:45');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` int(0) NULL DEFAULT NULL,
  `role_id` int(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (2, 1);
INSERT INTO `user_role` VALUES (1, 1);
INSERT INTO `user_role` VALUES (4, 2);

SET FOREIGN_KEY_CHECKS = 1;
