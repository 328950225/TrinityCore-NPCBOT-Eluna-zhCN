/*
 Navicat Premium Dump SQL

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80400 (8.4.0)
 Source Host           : 127.0.0.1:3306
 Source Schema         : world_new

 Target Server Type    : MySQL
 Target Server Version : 80400 (8.4.0)
 File Encoding         : 65001

 Date: 05/04/2026 21:35:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for creature_template_npcbot_appearance
-- ----------------------------
DROP TABLE IF EXISTS `creature_template_npcbot_appearance`;
CREATE TABLE `creature_template_npcbot_appearance`  (
  `entry` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name*` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'unk' COMMENT 'unused',
  `gender` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `skin` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `face` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `hair` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `haircolor` tinyint UNSIGNED NOT NULL DEFAULT 0,
  `features` tinyint UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`entry`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70556 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature_template_npcbot_appearance
-- ----------------------------
INSERT INTO `creature_template_npcbot_appearance` VALUES (70001, '凸神', 0, 3, 0, 1, 1, 6);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70002, '冥雪', 0, 0, 0, 4, 5, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70003, '倣棄灬殘魂', 1, 3, 4, 6, 4, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70004, '全装甲少女', 0, 1, 11, 1, 7, 6);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70005, '马踏飞燕', 0, 7, 0, 5, 5, 5);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70006, '丝滑尼斯', 0, 0, 2, 9, 4, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70007, '凯旋蹦迪', 0, 5, 4, 2, 2, 2);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70008, '丹心照穴', 0, 1, 0, 8, 5, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70009, '奥利给', 0, 4, 1, 8, 1, 7);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70010, '全装甲杜蕾丝', 0, 7, 1, 2, 0, 2);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70011, '萨满克星', 0, 0, 3, 7, 0, 5);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70012, '科班出身', 1, 4, 0, 0, 0, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70013, '哈口气热', 0, 1, 3, 7, 0, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70014, '夜袭寡妇村', 0, 5, 2, 6, 2, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70015, '极乐肖魂散', 0, 0, 4, 1, 1, 3);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70016, '格调连体袜', 0, 3, 3, 1, 0, 7);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70017, '索爱深喉咙', 0, 3, 5, 1, 0, 3);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70018, '泽润后花园', 0, 2, 1, 3, 1, 6);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70019, '跪下叫女王', 0, 1, 0, 4, 8, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70020, '凯旋大白兔', 1, 5, 1, 5, 2, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70021, '浪到飞起', 1, 6, 8, 4, 6, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70022, '天使看的戏', 1, 0, 6, 3, 4, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70023, '奶香小甜筒', 1, 3, 0, 2, 4, 2);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70024, '克里斯开裆', 0, 3, 2, 2, 2, 10);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70025, '安吉拉拉胯', 1, 2, 7, 3, 8, 6);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70026, '巴尔蒂撕裂', 0, 0, 0, 1, 8, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70027, '凯尔夫套牢', 0, 5, 1, 7, 3, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70028, '铁盾', 0, 2, 2, 2, 7, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70029, '之星远', 0, 4, 5, 1, 0, 8);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70030, '裙底无限风光', 1, 5, 6, 7, 3, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70031, '胯下疯狂输出', 0, 7, 8, 3, 0, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70032, '卷土重来', 0, 5, 9, 2, 4, 2);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70033, '科技感过膝', 0, 4, 0, 2, 1, 6);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70034, '霍香正气水', 0, 6, 1, 1, 6, 5);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70035, '被窝马杀鸡', 0, 4, 8, 3, 6, 3);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70036, '鲁起袖子干', 1, 1, 2, 1, 6, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70037, '喀斯特溶洞', 1, 1, 2, 3, 3, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70038, '克制不住辣', 1, 2, 0, 2, 2, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70051, '开堂手', 0, 9, 11, 6, 2, 7);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70052, '九天翔妖', 0, 6, 4, 2, 9, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70053, '黑色忧郁', 0, 4, 2, 2, 1, 6);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70054, '大力金刚', 0, 3, 2, 2, 0, 2);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70055, '阿娇羞羞哒', 0, 2, 4, 3, 1, 6);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70056, '瓦解防线', 0, 4, 3, 0, 0, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70057, '贝尔深蹲', 0, 4, 6, 2, 4, 2);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70058, '布料离谱', 0, 5, 4, 1, 1, 3);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70059, '阿斯莫德撑', 0, 1, 0, 1, 5, 2);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70060, '凯瑟琳', 1, 1, 3, 2, 4, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70061, '卡住慢点', 0, 3, 11, 10, 5, 8);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70062, '杰出丝足', 0, 4, 0, 0, 0, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70063, '诺大的粉', 1, 0, 1, 1, 1, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70064, '奥秘花园', 0, 8, 0, 0, 0, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70065, '奥塞进去', 0, 8, 1, 1, 2, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70066, '伊人离丝', 0, 9, 2, 2, 2, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70067, '巴不得亲', 0, 3, 0, 10, 1, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70068, '巴托内衣', 0, 6, 4, 3, 0, 7);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70069, '卡位完爆', 0, 2, 5, 5, 6, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70070, '图个痛快', 1, 0, 9, 9, 2, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70071, '暴走的手电筒', 1, 0, 8, 8, 6, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70072, '赛高御姐', 1, 4, 1, 7, 6, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70073, '百事可乐', 0, 3, 3, 2, 7, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70074, '鲁起快感', 1, 5, 8, 4, 4, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70101, '劣人', 0, 4, 5, 8, 4, 8);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70102, '向心力', 0, 4, 4, 3, 1, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70103, '燕子杀手', 0, 0, 1, 5, 4, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70104, '克扣粮草', 0, 7, 4, 3, 2, 2);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70105, '卡里没钱', 1, 2, 1, 1, 2, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70106, '霍香识骨', 0, 18, 3, 4, 0, 3);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70107, '乌合之众', 0, 4, 2, 2, 1, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70108, '兰博基尼', 0, 4, 2, 2, 1, 2);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70109, '雅兴不浅', 0, 1, 1, 5, 2, 2);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70110, '杰出贡献', 1, 3, 0, 2, 6, 3);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70111, '托塔天王', 0, 0, 3, 3, 1, 9);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70112, '托举卡点马赛克', 0, 5, 8, 1, 0, 5);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70113, '图中色气不准露', 0, 2, 3, 2, 0, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70114, '西域风情杜蕾丝', 1, 2, 4, 1, 2, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70115, '杀死你的宠物', 1, 5, 0, 6, 5, 8);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70116, '达令萨哈拉', 0, 8, 0, 6, 2, 3);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70117, '丹红一点春', 0, 0, 0, 3, 6, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70118, '吉利服里钻', 1, 7, 2, 1, 4, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70119, '卡在死角里', 1, 6, 1, 1, 6, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70120, '多情安拉', 0, 4, 6, 5, 0, 5);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70121, '达人秀身材', 1, 0, 3, 12, 4, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70122, '奥德赛式缠绵', 0, 3, 1, 2, 2, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70123, '雷德利战袍', 0, 3, 9, 1, 4, 2);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70124, '卡住伯爵拉斯', 0, 2, 0, 0, 2, 2);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70125, '瑞雪兆丰乳', 1, 1, 1, 5, 4, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70126, '乌云盖雪', 0, 6, 2, 5, 8, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70127, '索命小妖精', 0, 2, 2, 5, 4, 7);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70128, '阿伦戴尔冰封', 0, 2, 6, 3, 2, 2);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70129, '达人沃野', 0, 3, 1, 1, 4, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70130, '莎莉娜的秘密', 1, 4, 2, 1, 1, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70131, '汉诺威肉色丝袜', 1, 0, 2, 2, 1, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70132, '基情燃烧内衣', 1, 7, 5, 2, 4, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70133, '塔下拿捏', 1, 8, 1, 1, 2, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70134, '奥特曼皮衣', 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70135, '凌乱之心', 1, 8, 0, 1, 4, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70136, '德玛西亚米线', 0, 11, 0, 5, 6, 7);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70137, '阿克琉斯之踵', 0, 2, 0, 0, 0, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70138, '沃德玛呀', 0, 11, 0, 5, 6, 7);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70139, '基操勿六拉克', 0, 11, 0, 5, 6, 7);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70151, '壹世无橙', 0, 3, 0, 11, 1, 2);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70152, '阿尔忒弥丝', 0, 7, 8, 4, 9, 6);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70153, '花尸折', 1, 4, 4, 7, 0, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70154, '奥秘花园', 0, 4, 9, 9, 0, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70155, '霍香识骨', 0, 6, 7, 10, 5, 7);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70156, '伊人如画', 0, 5, 9, 9, 1, 6);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70157, '戴上紧箍咒', 0, 4, 2, 1, 1, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70158, '马场御姐', 1, 5, 2, 3, 5, 7);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70159, '塞外红尘', 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70160, '卡点变装', 0, 3, 5, 0, 0, 3);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70161, '格调小野猫', 0, 4, 0, 2, 0, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70162, '哈哈贼', 0, 3, 8, 4, 0, 3);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70163, '森林系学妹', 0, 3, 0, 5, 5, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70164, '弗如东海', 0, 2, 1, 3, 5, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70165, '斯文败类', 0, 3, 2, 4, 5, 3);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70166, '就爱盗你的钱', 1, 0, 3, 5, 4, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70167, '伊见钟情', 0, 5, 0, 3, 4, 3);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70168, '阿西吧老铁', 0, 5, 6, 4, 6, 5);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70169, '七月十三日', 1, 0, 6, 3, 1, 7);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70170, '迈步前突', 0, 0, 0, 1, 9, 8);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70171, '格老子的', 0, 3, 7, 8, 4, 14);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70172, '胡搞瞎搞', 0, 8, 8, 8, 5, 6);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70173, '奥义连射', 0, 0, 6, 4, 4, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70174, '阿尔忒弥丝', 0, 0, 2, 2, 5, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70175, '费劲心机', 0, 3, 0, 9, 4, 2);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70176, '柯以柔术', 0, 3, 0, 1, 0, 2);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70177, '卡在深处', 0, 1, 0, 0, 0, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70178, '苍天妹', 1, 2, 2, 0, 2, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70179, '泽里透红', 0, 0, 1, 1, 1, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70180, '艾欲难平', 1, 2, 2, 1, 4, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70181, '尼玛极品', 0, 1, 1, 2, 1, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70201, '水殿风来', 1, 0, 9, 14, 5, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70202, '劳斯莱斯', 1, 0, 1, 4, 5, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70203, '约么小妹', 1, 1, 3, 17, 2, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70204, '布多穿点', 0, 2, 7, 1, 8, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70205, '马场激战', 0, 2, 0, 6, 1, 5);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70206, '杜不可以', 0, 0, 9, 5, 1, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70207, '贝塔迷宫', 0, 0, 0, 0, 0, 12);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70208, '米线少女', 0, 0, 2, 7, 9, 2);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70209, '马拉松长腿', 0, 4, 3, 2, 6, 8);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70210, '科班尤物', 0, 5, 6, 6, 4, 14);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70211, '尚好体位', 1, 1, 0, 2, 7, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70212, '囡囡的懒人', 1, 0, 7, 0, 2, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70213, '泰式按摩', 1, 0, 3, 1, 6, 5);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70214, '克制不住', 0, 5, 2, 4, 3, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70215, '阿斯莫德', 1, 0, 0, 0, 0, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70216, '詹显身手', 1, 1, 1, 5, 3, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70217, '拉扯到底', 1, 0, 3, 3, 6, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70218, '兰博基尼', 0, 2, 0, 9, 4, 16);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70219, '拉开拉链', 0, 0, 0, 6, 6, 14);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70220, '提臀迎战', 0, 2, 6, 5, 7, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70221, '布料透明', 1, 0, 1, 1, 0, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70222, '托付终身', 0, 4, 1, 3, 3, 10);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70223, '贝多芬芳', 0, 9, 11, 0, 0, 8);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70224, '约会圣地', 0, 3, 0, 1, 1, 8);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70225, '扎心老铁', 0, 2, 0, 3, 1, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70226, '西域魅魔', 0, 2, 1, 2, 4, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70227, '东京热', 0, 0, 2, 2, 3, 2);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70228, '娜就拉稀里糊涂', 1, 0, 7, 4, 1, 3);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70229, '阿拉蕾丝诱惑', 1, 4, 3, 0, 4, 5);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70230, '亚洲奶爸', 0, 0, 9, 4, 7, 5);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70231, '阿娇斯哈雷丝', 1, 0, 2, 2, 1, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70232, '波涛汹涌那里湿', 0, 1, 0, 1, 2, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70233, '扎根入魂', 0, 9, 0, 0, 0, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70234, '奥妙兰花指', 0, 3, 1, 1, 1, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70235, '洛丽塔翘屁', 0, 8, 8, 1, 2, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70236, '贝母勒索蕾丝', 1, 4, 0, 1, 3, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70237, '卡位道德模范', 0, 4, 0, 0, 4, 3);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70238, '古法德味', 0, 12, 0, 5, 6, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70239, '伊人密境', 0, 7, 0, 4, 6, 6);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70240, '法外狂徒特浪', 0, 7, 1, 4, 6, 6);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70251, '橡皮锤', 0, 0, 3, 5, 0, 6);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70252, 'sunli', 1, 10, 1, 3, 2, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70253, '祭月星司', 0, 13, 2, 2, 2, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70254, '那个萨满', 0, 10, 0, 2, 0, 5);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70255, '米其林长腿', 1, 8, 1, 3, 0, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70256, '纳凉美腿', 0, 17, 0, 6, 1, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70257, '什锦克制', 1, 3, 4, 5, 1, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70258, '斯文败类特产', 0, 0, 4, 5, 0, 7);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70259, '卡尔德里扣人心', 1, 0, 4, 7, 0, 6);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70260, '西恩思春不归', 1, 3, 3, 3, 1, 3);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70261, '萨日朗之花', 0, 6, 1, 1, 1, 2);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70265, '西施伊人胡闹', 1, 7, 2, 2, 4, 6);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70266, '霍乱红尘巴不得', 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70267, '貝影', 1, 1, 7, 5, 5, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70268, '加瓦德福', 0, 4, 1, 6, 0, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70301, '笨光光', 0, 7, 5, 7, 0, 5);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70302, '红尘冰', 0, 2, 10, 11, 9, 3);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70303, '我漂亮吗', 0, 1, 9, 8, 7, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70304, '茱莉亚私教', 0, 0, 4, 6, 7, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70305, '龙的传说', 0, 1, 5, 4, 6, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70306, '伊人纱帐摇', 1, 2, 0, 7, 1, 5);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70307, '卡点女教师', 0, 0, 0, 7, 1, 10);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70308, '希腊式缠绵', 0, 5, 6, 6, 5, 12);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70309, '乌托邦欲海', 1, 0, 5, 9, 1, 7);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70310, '瑟瑟小野猫', 0, 4, 1, 5, 5, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70311, '皮衣御姐控', 0, 0, 2, 5, 8, 2);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70312, '斯文女败类', 1, 2, 7, 3, 8, 5);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70313, '宾馆深处见', 1, 2, 1, 1, 6, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70314, '包子', 1, 1, 5, 5, 3, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70315, '特等小尤物', 0, 0, 4, 0, 7, 6);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70316, '詹妮娅叫春', 1, 5, 4, 5, 4, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70317, '图谋不轨时', 0, 1, 2, 1, 3, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70318, '佩服这身段', 1, 0, 4, 1, 2, 5);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70319, '埃着你出汗', 1, 3, 4, 4, 0, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70320, '赫赫红唇印', 1, 1, 2, 1, 1, 5);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70321, '德味大长腿', 1, 2, 0, 3, 3, 2);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70322, '乌合之欢场', 0, 3, 4, 2, 3, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70323, '丁字裤诱惑', 0, 1, 3, 2, 6, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70324, '朱颜润如玉', 1, 2, 6, 2, 0, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70325, '三季稻', 1, 3, 1, 2, 2, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70326, '瓦解防线后', 1, 9, 6, 7, 6, 5);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70327, '狂舔奶头', 1, 3, 2, 2, 1, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70328, '踏实干', 0, 2, 3, 1, 1, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70329, '阴内探纹', 0, 0, 0, 0, 3, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70330, '纳灵舔', 1, 0, 2, 2, 0, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70331, '一地蜡', 1, 5, 0, 5, 3, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70332, '露丝特拉', 1, 5, 5, 9, 6, 5);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70333, '塞米洞', 0, 8, 9, 8, 0, 7);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70334, '含儿大', 0, 8, 8, 7, 1, 3);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70335, '把弟摸', 1, 8, 1, 2, 1, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70336, '得第一刻', 0, 5, 3, 3, 1, 5);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70351, 'Shaitan', 1, 0, 10, 4, 0, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70352, '阿休', 0, 2, 2, 3, 2, 5);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70353, '那一天', 1, 0, 9, 2, 0, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70354, '细米里按', 0, 1, 10, 6, 0, 6);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70355, '灭世狂舞', 0, 0, 7, 0, 1, 6);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70356, '马膝密儿', 0, 5, 0, 9, 5, 5);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70357, '撸破它', 0, 0, 0, 0, 0, 8);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70358, '奶头卡', 0, 0, 6, 4, 0, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70359, '肚哥撸', 0, 5, 6, 4, 3, 9);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70360, '裹肉打儿', 0, 3, 2, 3, 1, 2);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70361, '蜜儿开透', 1, 5, 3, 7, 0, 5);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70362, '泽肉丝特', 0, 3, 7, 5, 5, 9);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70363, '卡得发儿', 0, 3, 1, 4, 2, 3);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70364, '撸瑟', 0, 4, 9, 0, 0, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70365, '里咔哒', 0, 5, 5, 0, 0, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70366, '得耗死它', 0, 3, 2, 6, 3, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70367, '不离牙深', 0, 0, 6, 1, 0, 3);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70368, '亚力山大', 0, 0, 10, 11, 0, 6);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70369, '肉夹馍', 1, 1, 4, 18, 3, 6);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70370, '浪翻云', 0, 4, 2, 11, 1, 6);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70371, '极乐鸟', 0, 2, 5, 2, 0, 3);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70372, '探花郎', 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70373, '深喉咙', 0, 0, 0, 2, 0, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70374, '玉蒲团', 0, 0, 1, 0, 0, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70375, '红帐暖', 1, 0, 2, 1, 2, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70376, '春意浓', 0, 0, 0, 0, 3, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70377, '蝴蝶结', 1, 0, 6, 0, 3, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70401, '取个名字好难', 0, 4, 3, 5, 0, 5);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70402, '无药可救', 1, 7, 0, 3, 1, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70403, '后庭', 1, 9, 2, 3, 0, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70404, '磨豆腐', 0, 13, 1, 3, 2, 2);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70405, '桃花源', 1, 9, 3, 0, 1, 3);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70406, '闷骚男', 0, 1, 1, 2, 0, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70407, '很帅很有型', 0, 2, 2, 4, 4, 2);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70408, '午夜飞行', 1, 0, 2, 0, 4, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70409, '奶壳脱离', 0, 4, 8, 3, 2, 5);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70410, '肺热你安', 0, 2, 1, 4, 5, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70411, '卸儿底裤', 0, 0, 3, 2, 2, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70412, '泽儿得蓝', 0, 2, 1, 3, 7, 3);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70413, '码儿得紧', 0, 2, 8, 5, 4, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70414, '粘肉丝', 0, 5, 3, 2, 1, 5);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70415, '隔邻', 0, 0, 2, 6, 0, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70416, '裸加那儿', 0, 2, 1, 1, 0, 1);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70417, '吃牛排', 1, 6, 0, 3, 2, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70418, '沙软', 0, 4, 3, 0, 4, 5);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70451, '燕子', 1, 9, 9, 3, 4, 9);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70452, '一亩里压', 1, 10, 8, 6, 1, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70453, '挖轮', 0, 16, 9, 11, 9, 8);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70454, '摸阴刻丝', 1, 10, 0, 17, 11, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70455, '来恩客啦', 0, 6, 13, 16, 12, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70456, '塞利夫', 0, 10, 11, 11, 6, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70457, '围蕾丝', 0, 4, 0, 8, 9, 10);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70458, '暮成雪', 1, 7, 9, 2, 8, 4);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70459, '塞塔儿', 1, 14, 12, 15, 9, 2);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70460, '捂嘴', 0, 8, 7, 8, 9, 18);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70461, '衣离瑞', 1, 9, 11, 1, 12, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70462, '口裸口', 0, 11, 9, 10, 7, 3);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70463, '做儿', 0, 8, 7, 6, 9, 18);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70464, '慢脱落', 1, 10, 11, 11, 18, 0);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70465, '鸵鸟归来', 0, 10, 12, 6, 12, 2);
INSERT INTO `creature_template_npcbot_appearance` VALUES (70555, '得特辣', 0, 3, 12, 11, 19, 4);

SET FOREIGN_KEY_CHECKS = 1;
