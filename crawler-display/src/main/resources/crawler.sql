/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : crawler

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-30 17:54:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for crawler_content
-- ----------------------------
DROP TABLE IF EXISTS `crawler_content`;
CREATE TABLE `crawler_content` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `pageId` bigint(20) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `male` int(2) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `leaveFrom` varchar(255) DEFAULT NULL,
  `introduction` text,
  `gmt_create` date DEFAULT NULL,
  `browsed` int(10) DEFAULT NULL COMMENT '浏览人数',
  `

sign` int(10) DEFAULT NULL,
  `attention` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crawler_content
-- ----------------------------
INSERT INTO `crawler_content` VALUES ('1', '2305211', 'http://www.mafengwo.cn/together/detail/2305211.html?male=1', '1', '比较懒的左大二', '新西兰南岛自驾，用冰川，星空和跳伞见证我们的青春', '2019-03-27 16:00:00', '11', '目的地：新西兰', '出发地：杭州', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  新西兰南岛自驾，用冰川，星空和跳伞见证我们的青春\n </div> 没有别的限制，只希望大家都是可以享受旅程的人，在外结伴就要一起开心一起帮助，逛完这南半球天堂的10天，当作2019的礼物送给自己，我们希望自驾逆时针环游基督城，瓦纳卡，皇后镇，但尼丁再回到基督城，跳伞，冰川，蒸汽船，飞行体验，库克山徒步，吉百利巧克力工厂等待大家。 \n <br>\n <br>\n <img border=\"0\" src=\"http://p3-q.mafengwo.net/s12/M00/8A/24/wKgED1wxkeiACZQ_AEU2sWPnUWo43.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://p4-q.mafengwo.net/s11/M00/04/94/wKgBEFtQvNmASEfTACHrtE4JBDk38.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://p2-q.mafengwo.net/s11/M00/04/80/wKgBEFtQvKWAaGTTABNFLsy9kgs14.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://n3-q.mafengwo.net/s12/M00/0D/55/wKgED1wwxq6AVNB0AE2KalDQTMs02.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('2', '2305211', 'http://www.mafengwo.cn/together/detail/2305211.html?male=1', '1', '比较懒的左大二', '新西兰南岛自驾，用冰川，星空和跳伞见证我们的青春', '2019-03-27 16:00:00', '11', '目的地：新西兰', '出发地：杭州', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  新西兰南岛自驾，用冰川，星空和跳伞见证我们的青春\n </div> 没有别的限制，只希望大家都是可以享受旅程的人，在外结伴就要一起开心一起帮助，逛完这南半球天堂的10天，当作2019的礼物送给自己，我们希望自驾逆时针环游基督城，瓦纳卡，皇后镇，但尼丁再回到基督城，跳伞，冰川，蒸汽船，飞行体验，库克山徒步，吉百利巧克力工厂等待大家。 \n <br>\n <br>\n <img border=\"0\" src=\"http://p3-q.mafengwo.net/s12/M00/8A/24/wKgED1wxkeiACZQ_AEU2sWPnUWo43.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://p4-q.mafengwo.net/s11/M00/04/94/wKgBEFtQvNmASEfTACHrtE4JBDk38.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://p2-q.mafengwo.net/s11/M00/04/80/wKgBEFtQvKWAaGTTABNFLsy9kgs14.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://n3-q.mafengwo.net/s12/M00/0D/55/wKgED1wwxq6AVNB0AE2KalDQTMs02.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('3', '2305211', 'http://www.mafengwo.cn/together/detail/2305211.html?male=1', '1', '比较懒的左大二', '新西兰南岛自驾，用冰川，星空和跳伞见证我们的青春', '2019-03-27 16:00:00', '11', '新西兰', '杭州', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  新西兰南岛自驾，用冰川，星空和跳伞见证我们的青春\n </div> 没有别的限制，只希望大家都是可以享受旅程的人，在外结伴就要一起开心一起帮助，逛完这南半球天堂的10天，当作2019的礼物送给自己，我们希望自驾逆时针环游基督城，瓦纳卡，皇后镇，但尼丁再回到基督城，跳伞，冰川，蒸汽船，飞行体验，库克山徒步，吉百利巧克力工厂等待大家。 \n <br>\n <br>\n <img border=\"0\" src=\"http://p3-q.mafengwo.net/s12/M00/8A/24/wKgED1wxkeiACZQ_AEU2sWPnUWo43.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://p4-q.mafengwo.net/s11/M00/04/94/wKgBEFtQvNmASEfTACHrtE4JBDk38.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://p2-q.mafengwo.net/s11/M00/04/80/wKgBEFtQvKWAaGTTABNFLsy9kgs14.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://n3-q.mafengwo.net/s12/M00/0D/55/wKgED1wwxq6AVNB0AE2KalDQTMs02.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('4', '2314803', 'http://www.mafengwo.cn/together/detail/2314803.html?male=0', '0', '一路花开', '机票已出，求同行女一枚', '2019-03-08 16:00:00', '15', '台湾', '台湾', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  机票已出，求同行女一枚\n </div> 机票已出，3.9达到台北，3.22日台北返程，行程可以商量，也可以由我来定，策划过多条旅游路线，吃住丰俭由人，大概环岛一周，本人89年女，好相处，基本偏向穷游一些，求同行女一枚，要求不矫情，什么事商量着来即可，时间允许的话请微信联系，非诚勿扰，非诚勿扰！ \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('5', '2210943', 'http://www.mafengwo.cn/together/detail/2210943.html?male=1', '1', '千里荡蔻', '自驾穿越高加索经欧洲到圣彼得堡', '2019-05-19 16:00:00', '85', '哈萨克斯坦|高加索|波罗的海|俄罗斯', '霍尔果斯市', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  自驾穿越高加索经欧洲到圣彼得堡\n </div> 此次行程从新疆霍尔果斯出关进入哈萨克斯坦，经过高加索三国进入土耳其，经保加利亚、塞尔维亚、匈牙利、波兰到波罗的海三国进入俄罗斯，在俄罗斯我们可以选择走蒙古回国，如果因签证或其他原因，我们只能走满洲里入境。此次境外行程线路预计在20000公里左右，途径12个国家（不包括蒙古这个不确定的国家），境外住宿天数计划75~80天。\n <br> 此次计划没有商业行为，费用AA制， 费用计划在每人每天700~800元（人民币）。 计划组织2~3辆车，人数不超过12人, 本人自备一辆SUV,。\n <br> \n <br> 此次行程由本人负责组织行程计划，过程中参与者可提供自己的想法、诉求，提供参考，尽量做到满足共同出行的要求。车辆出关的ATA和护照签证由本人联系统一办理。\n <br> \n <br> 参加报名人须有过国外自驾游或自由行经历。有自带车参与者优先考虑，有语言能力者优先考虑，有俄罗斯自由行经历者优先考虑。\n <br> \n <br> 关于结伴旅行队伍中的角色说明\n <br> \n <br> 一、“领队”需要具备的：\n <br> 1、有组织策划及操作能力：\n <br> 能策划设计线路，有能力解决全程的住、行并能指导大家如何办理签证。（本人完成）\n <br> \n <br> 2、有奉献精神：\n <br> 为了自己喜欢的这次旅行活动的成功，心甘情愿地奉献自己的时间与精力——花时间做功课、预定宾馆等等；舍些小银两——不方便也不值得细算摊销的小钱。\n <br> \n <br> 3、有主见和决断魄力\n <br> 旅行中，总会有一些需要当机立断拍板的事，时间允许，可让大家谈想法，然后综合意见主流拍板定案，若时间仓猝，就拍板先定下，所谓“民主集中制”是很有效的领导艺术。\n <br> \n <br> 4、有宽容心和协调能力：\n <br> 一定要在行前把这个团队的“旅行纪律”说清楚，旅行中，旅友之间发生矛盾，要出来协调解决，“哄“好大家，安全顺利完成这次旅行才是第一位。\n <br> \n <br> 二、怎样做个优秀的“随行者”\n <br> 1、了解并理解“领队”的结伴条件，客观审视自己是否符合，尤其是消费能力，一定要在同一个档次。一旦参加，千万不要在旅行过程中抱怨预定的旅馆性价比不好！\n <br> \n <br> 2、要关注并充分理解行程路线图，若“领队”请您讨论，认真思考您感兴趣的、多提建议，但要注意倾听并理解领队为什么没采纳您的建议。一旦行程确定，不要对这个行程单考虑不周的地方抱怨。\n <br> \n <br> 3、对于自己没兴趣的，不要流露不耐烦的情绪，更不要抱怨别人费时间。\n <br> \n <br> 4、服从领队安排，有意见提前提出，提前商量。 \n <br>\n <br>\n <img border=\"0\" src=\"http://b2-q.mafengwo.net/s11/M00/55/4F/wKgBEFq00AKAK-QxAAC2dv48og815.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://b4-q.mafengwo.net/s11/M00/01/EB/wKgBEFsL-cCAUWBVAEniAK1S2HA41.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://b3-q.mafengwo.net/s11/M00/01/96/wKgBEFsL-VyAUMtyAFjPCEw2za810.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://p4-q.mafengwo.net/s11/M00/00/18/wKgBEFsL99KAIm6hAAG65_KgGrw25.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://n3-q.mafengwo.net/s11/M00/FF/FF/wKgBEFsL97qAMciaAAGFabJZ7MA35.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('6', '2311343', 'http://www.mafengwo.cn/together/detail/2311343.html?male=0', '0', '我叫妖孽', '去台湾吃吃喝喝', '2019-04-25 16:00:00', '7', '九份|高雄|垦丁|台北', '广州', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  去台湾吃吃喝喝\n </div> 一直都很想去台湾吃吃喝喝，机票已出，目前有两个妹子，本人90后老阿姨，独自去过很多国内地方，不事多，不矫情，爱吃，爱玩爱爆走。，去那些地方还没有订可以跟小伙伴一起商量，环岛也行。希望来几个不矫情爱吃的小姐姐和小哥哥。加微信请备注马蜂窝。\n <br> 4月26出发\n <br> 5月4号回，本来是想买5月5号的票，结果买错了就少了一天。 \n <br>\n <br>\n <img border=\"0\" src=\"http://n2-q.mafengwo.net/s12/M00/F3/B1/wKgED1xH5hyACnxzACRhY6nzTIo63.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('7', '2311499', 'http://www.mafengwo.cn/together/detail/2311499.html?male=0', '0', 'Yoyo.zhuang', '端午-莫斯科+金环小镇+圣彼得堡 9-10日游', '2019-06-06 16:00:00', '9', '俄罗斯', '上海', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  端午-莫斯科+金环小镇+圣彼得堡 9-10日游\n </div> 从上海出发，想找一个女生80,90后吧，一个男生搭伙儿照应。\n <br> 时间：6月（时间没有确定）\n <br> 天数：9-10天（搭上端午节）\n <br> 地点：莫斯科+金环小镇+圣彼得堡\n <br> \n <br> 目前我正在规划行程，大约是 在 莫斯科 三晚， 苏兹达尔 两晚，火车上一晚， 圣彼得堡 三晚\n <br> 如果有想要去这几处的小伙伴欢迎添加我的微信 reasonspphire，并注明俄罗斯旅行\n <br> \n <br> 希望小伙伴，能宽容有耐心（等我拍照），本人喜欢拍照，喜欢拍照喜欢拍照喜欢拍照！重要的事情说三遍。属于记录风景爱凹造型的一个妹子。此外，因为我还是个打工妹，所以费用大约15k左右 \n <br>\n <br>\n <img border=\"0\" src=\"http://p3-q.mafengwo.net/s12/M00/6F/29/wKgED1xIO7yAbNiYABPJvXWvP1M99.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('8', '2297543', 'http://www.mafengwo.cn/together/detail/2297543.html?male=0', '0', '凉生。', '菲律宾2019.03.28-2019.04.07', '2019-03-27 16:00:00', '11', '薄荷岛|锡基霍尔|杜马盖地|菲律宾', '上海', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  菲律宾2019.03.28-2019.04.07\n </div> 机票已出，大致行程已定，有全程或者一段同行的小伙伴吗，不矫情会拍照的更好。\n <br> 2019.3.28 上海飞马尼拉，马尼拉飞杜马盖地\n <br> 2019.3.29 oslob看鲸鲨+苏米龙岛\n <br> 2019.3.30 墨宝沙丁鱼风暴\n <br> 2019.3.31 杜马盖地市区闲逛或者Apo岛追海龟\n <br> 2019.4.1-4.3 锡基霍尔岛环岛享受满时光\n <br> 2019.4.4-4.7 薄荷岛（行程待定）\n <br> 2019.4.7 塔比拉兰飞马尼拉，马尼拉飞上海。 \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('9', '2297727', 'http://www.mafengwo.cn/together/detail/2297727.html?male=0', '0', '何为归处', '2019年五六月奥地利约伴', '2019-04-30 16:00:00', '10', '奥地利', '北京', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  2019年五六月奥地利约伴\n </div> 本人85后女，有多次自由行经验，也有自驾经验，打算2019年5月或者六月奥地利一地，北京出发，可在当地集合。\n <br> 对小伙伴要求：\n <br> 不求有自由行经验，有自驾经验，但求不多事，好相处，能随机应变。最好是女生，可以分摊房费。住宿方面，只有一个要求，不接受青旅。最重要一点，不接受任何理由的放鸽子，除非拒签原因。\n <br> 整个行程十天左右，以自驾为主，维也纳改为公共交通，因为城里开车不方便。整个行程主要轻松为主，暴走天团的，那也请绕行。\n <br> 现在时间还早，上来看看有没有同行小伙伴，可以一起办签证，做行程。 \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('10', '2263623', 'http://www.mafengwo.cn/together/detail/2263623.html?male=0', '0', '糖小鹿', '从南澳 阿德莱德-袋鼠岛 到西澳 珀斯-老鼠岛 自驾游找同行小伙伴', '2019-03-08 16:00:00', '12', '袋鼠岛|珀斯|澳大利亚', '北京', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  从南澳 阿德莱德-袋鼠岛 到西澳 珀斯-老鼠岛 自驾游找同行小伙伴\n </div> 是这样，我跟我老公两个人计划在19年3月中旬自驾南澳和西澳。\n <br> 因为我俩英语不好，又是第一次去澳洲，想要找些旅友一起同行可以互帮互助，一起找好吃的。我个人超爱动物，所以这次澳洲游不是大众路线，而是以南澳的袋鼠岛和西澳的珀斯 罗特内斯特岛 为主游玩。 如果你们也超级喜欢动物和风景，不以参观市中心建筑物为主，可以参考一下我计划的行程，因考虑时间问题行程酒店已定（目前我们酒店已定也可免费退订），基本不会有太大改变了哦，当然有想法可以商量的。想同行的小伙伴可以联系我哦，3月是南澳西澳旺季早定会便宜很多滴。人数可2人左右。\n <br> \n <br> 计划上午到达 阿德莱德机场。\n <br> Day1机场取车， 下午1.粉湖√ 回市逛周边 or 2.格雷尔海滩\n <br> 阿德莱德酒店\n <br> \n <br> Day2 克莱兰德野生动物园，下午德国镇 \n <br> 阿德莱德酒店 \n <br> \n <br> Day3上午前往杰维斯码头，上岛后前往袋鼠岛西边的木屋， 沿途可路过 蜜蜂农场、到达西侧汉森湾动物园 、 \n <br> 荒野度假村\n <br> \n <br> Day4 西侧弗林德斯蔡司国家公园、&nbsp;博尔达海角灯塔、神奇岩石、旗舰拱门， 下午返回东侧 蜜蜂农场冰激凌 \n <br> 袋鼠岛酒店\n <br> \n <br> Day5 帕德那野生公园、下午金斯科特-鹈鹕 ，待选（薰衣草园、鸸鹋湾 ）\n <br> 袋鼠岛酒店 \n <br> \n <br> Day6 海豚湾Seal bay 、爬行馆、小拉哈撒、微风湾Vivonne Bay、\n <br> 袋鼠岛酒店 \n <br> \n <br> Day7 上午离岛 回阿德莱德 下午 机场还车 -- 飞珀斯 --- 机场取车 \n <br> 珀斯酒店 \n <br> \n <br> Day8 费里曼特尔集市 狂吃逛的一天 向北科特索海滩Cottesloe Beach \n <br> 珀斯酒店\n <br> \n <br> Day9 上岛 老鼠岛 Quokka \n <br> 住岛-山林小屋\n <br> \n <br> Day10 罗特内斯岛 Quokka 下午离岛 \n <br> 珀斯酒店\n <br> \n <br> Day11 珀斯往南。。蓝色小屋 or市中心逛逛or国家公园 \n <br> 珀斯酒店\n <br> \n <br> Day12 珀斯往北。。珀斯龙虾工厂 尖峰石阵 \n <br> 凌晨回京\n <br> \n <br> 大概行程就是这样。小伙伴是不是北京的都可以我们可以在澳洲机场汇合，或者只想结伴玩西澳或者南澳都行，男女不限。年纪最好和我俩差不多，可有共同语言80后或90后。我们加2人的话一起租一辆SUV就可以费用平分。我俩车龄3.4年，已办理国际驾照翻译，会轮流开车，但是以前都没有右舵驾驶过。希望你们也能有国际驾照以防万一或轮流驾驶。希望你们在摄影方面比较有天赋可以拍到美美的景色共同分享，如果有大疆就更完美了嘿嘿嘿，基本就是这样。 \n <br>\n <br>\n <img border=\"0\" src=\"http://b3-q.mafengwo.net/s10/M00/B6/D0/wKgBZ1h8aimANbggAEwBpYJ7gfg829.png?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://n3-q.mafengwo.net/s12/M00/C1/80/wKgED1uSLL-AEL1IAAG_UwgWaXE83.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('11', '2304047', 'http://www.mafengwo.cn/together/detail/2304047.html?male=0', '0', '苹果Lingo', '2019年7~8月欧洲四十天！', '2019-07-27 16:00:00', '40', '德国|捷克|意大利|法国', '成都', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  2019年7~8月欧洲四十天！\n </div> 广州出发也可以商量！\n <br> 时间还未确定，具体依机票价格。\n <br> 西欧申根国家，不包括西葡。\n <br> 希望能来一个女生与我一起拼房！\n <br> 有人说一段旅行，有时去哪里都不重要，跟什么人去最重要。我是一个热爱欧洲历史、艺术的人，喜欢慢节奏旅游，英语流利，会初级法语。可能待在法国和意大利的时间会长一点。是个会吃的成都人，虽然会提前做很多攻略，但攻略只是保底措施，还是喜欢充满奇遇的旅行。总之跟着我绝对不会找不到好吃的！也可以免费当导游讲解一些历史文化，当然并不是专业的，肯定不完美。会跆拳道，不是路痴。\n <br> 之前去日本也有马蜂窝结伴同行，大家可以看我游记~\n <br> 总之希望能找到小伙伴与我一同前行！ \n <br>\n <br>\n <img border=\"0\" src=\"http://p2-q.mafengwo.net/s12/M00/67/80/wKgED1wsraCAMtsdACnFa3YUZF009.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('12', '2311667', 'http://www.mafengwo.cn/together/detail/2311667.html?male=0', '0', '可可', '有2019年9月去星月国的吗？', '2019-09-02 16:00:00', '12', '土耳其', '香港', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  有2019年9月去星月国的吗？\n </div> 打算9月自由行顺时针方向游土耳其，本人有驾照但从未在国外自驾，打算在当地搭乘公共交通工具（内陆机，大巴）；有国外自由行经历，英文一般，喜欢摄影（拍和被拍）。希望找个女生不穷游不富游，拼房一起玩一起拍……\n <br> 行程： A 香港--伊斯坦布尔--卡帕多奇亚（3）--安塔利亚（1）--棉花堡（1）--以费所（1）--伊斯坦布尔（2）--香港\n <br> B 香港--伊斯坦布尔--卡帕多奇亚（3）--伊斯坦布尔（2）--香港\n <br> 行程还未最终定下，机票未出，有9月出行计划的亲可加WX聊 \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('13', '2278339', 'http://www.mafengwo.cn/together/detail/2278339.html?male=0', '0', 'winysai', '明年端午英国伦敦牛津温莎白崖爱丁堡苏格兰高地自由行约伴（可仅拼房）', '2019-06-06 16:00:00', '13', '科茨沃尔德|牛津|爱丁堡|伦敦', '北京', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  明年端午英国伦敦牛津温莎白崖爱丁堡苏格兰高地自由行约伴（可仅拼房）\n </div> 行程计划书见链接\n <br> https://m.qyer.com/plan/trip/16157041/?campaign=app_share_plan&amp;category=myplan_email&amp;client_id=qyer_planner_ios&amp;share_platform=myplan_email&amp;style=deepgreen&amp;track_user_id=9710907\n <br> \n <br> 充分利用时间，请八天假，伦敦充分玩，大博物馆都留出4-5个小时时间，哈利波特工坊，白垩纪遗留七姐妹白崖，温莎城堡，爱丁堡，苏格兰高地三天，科茨沃尔德1一天，牛津一天。\n <br> \n <br> 可以只拼房（女生）或部分同行。有意向加微信。 \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('14', '2314179', 'http://www.mafengwo.cn/together/detail/2314179.html?male=0', '0', '睿小睿', '四月初济州岛首尔韩国七日游', '2019-03-29 16:00:00', '7', '首尔|济州岛', '郑州', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  四月初济州岛首尔韩国七日游\n </div> 请假四天，玩九天，计划这样。3.30-4.7\n <br> 本人90后女生，结伴出去玩过多次，也自由行去过国外，但英语一般，结伴一个女生拼住。当然玩的话男女皆可，毕竟韩国从来没去过。\n <br> \n <br> 计划，温州出发飞济州岛，玩四天左右，济州岛飞首尔，最后首尔回石家庄，我再火车回家，这样交通费大概1600多。大概机票都看好了 就差一个小伙伴了， 首尔可能就逛逛有名的地方吧，最多三天，如果你去过可以带我玩。 吃和购物不是主要的，经济党。\n <br> \n <br> 三四月是韩国旅游最美的季节，机票也这么便宜，如果有个一起玩的小伙伴那就完美了。 \n <br>\n <br>\n <img border=\"0\" src=\"http://n4-q.mafengwo.net/s11/M00/AE/59/wKgBEFxV3paAb2U3AAWTlaqzEwQ706.png?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://b2-q.mafengwo.net/s11/M00/AE/59/wKgBEFxV3pWARDmIAAYqpQinx2g583.png?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('15', '2305211', 'http://www.mafengwo.cn/together/detail/2305211.html?male=1', '1', '比较懒的左大二', '新西兰南岛自驾，用冰川，星空和跳伞见证我们的青春', '2019-03-27 16:00:00', '11', '新西兰', '杭州', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  新西兰南岛自驾，用冰川，星空和跳伞见证我们的青春\n </div> 没有别的限制，只希望大家都是可以享受旅程的人，在外结伴就要一起开心一起帮助，逛完这南半球天堂的10天，当作2019的礼物送给自己，我们希望自驾逆时针环游基督城，瓦纳卡，皇后镇，但尼丁再回到基督城，跳伞，冰川，蒸汽船，飞行体验，库克山徒步，吉百利巧克力工厂等待大家。 \n <br>\n <br>\n <img border=\"0\" src=\"http://p3-q.mafengwo.net/s12/M00/8A/24/wKgED1wxkeiACZQ_AEU2sWPnUWo43.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://p4-q.mafengwo.net/s11/M00/04/94/wKgBEFtQvNmASEfTACHrtE4JBDk38.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://p2-q.mafengwo.net/s11/M00/04/80/wKgBEFtQvKWAaGTTABNFLsy9kgs14.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://n3-q.mafengwo.net/s12/M00/0D/55/wKgED1wwxq6AVNB0AE2KalDQTMs02.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('16', '2314803', 'http://www.mafengwo.cn/together/detail/2314803.html?male=0', '0', '一路花开', '机票已出，求同行女一枚', '2019-03-08 16:00:00', '15', '台湾', '台湾', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  机票已出，求同行女一枚\n </div> 机票已出，3.9达到台北，3.22日台北返程，行程可以商量，也可以由我来定，策划过多条旅游路线，吃住丰俭由人，大概环岛一周，本人89年女，好相处，基本偏向穷游一些，求同行女一枚，要求不矫情，什么事商量着来即可，时间允许的话请微信联系，非诚勿扰，非诚勿扰！ \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('17', '2210943', 'http://www.mafengwo.cn/together/detail/2210943.html?male=1', '1', '千里荡蔻', '自驾穿越高加索经欧洲到圣彼得堡', '2019-05-19 16:00:00', '85', '哈萨克斯坦|高加索|波罗的海|俄罗斯', '霍尔果斯市', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  自驾穿越高加索经欧洲到圣彼得堡\n </div> 此次行程从新疆霍尔果斯出关进入哈萨克斯坦，经过高加索三国进入土耳其，经保加利亚、塞尔维亚、匈牙利、波兰到波罗的海三国进入俄罗斯，在俄罗斯我们可以选择走蒙古回国，如果因签证或其他原因，我们只能走满洲里入境。此次境外行程线路预计在20000公里左右，途径12个国家（不包括蒙古这个不确定的国家），境外住宿天数计划75~80天。\n <br> 此次计划没有商业行为，费用AA制， 费用计划在每人每天700~800元（人民币）。 计划组织2~3辆车，人数不超过12人, 本人自备一辆SUV,。\n <br> \n <br> 此次行程由本人负责组织行程计划，过程中参与者可提供自己的想法、诉求，提供参考，尽量做到满足共同出行的要求。车辆出关的ATA和护照签证由本人联系统一办理。\n <br> \n <br> 参加报名人须有过国外自驾游或自由行经历。有自带车参与者优先考虑，有语言能力者优先考虑，有俄罗斯自由行经历者优先考虑。\n <br> \n <br> 关于结伴旅行队伍中的角色说明\n <br> \n <br> 一、“领队”需要具备的：\n <br> 1、有组织策划及操作能力：\n <br> 能策划设计线路，有能力解决全程的住、行并能指导大家如何办理签证。（本人完成）\n <br> \n <br> 2、有奉献精神：\n <br> 为了自己喜欢的这次旅行活动的成功，心甘情愿地奉献自己的时间与精力——花时间做功课、预定宾馆等等；舍些小银两——不方便也不值得细算摊销的小钱。\n <br> \n <br> 3、有主见和决断魄力\n <br> 旅行中，总会有一些需要当机立断拍板的事，时间允许，可让大家谈想法，然后综合意见主流拍板定案，若时间仓猝，就拍板先定下，所谓“民主集中制”是很有效的领导艺术。\n <br> \n <br> 4、有宽容心和协调能力：\n <br> 一定要在行前把这个团队的“旅行纪律”说清楚，旅行中，旅友之间发生矛盾，要出来协调解决，“哄“好大家，安全顺利完成这次旅行才是第一位。\n <br> \n <br> 二、怎样做个优秀的“随行者”\n <br> 1、了解并理解“领队”的结伴条件，客观审视自己是否符合，尤其是消费能力，一定要在同一个档次。一旦参加，千万不要在旅行过程中抱怨预定的旅馆性价比不好！\n <br> \n <br> 2、要关注并充分理解行程路线图，若“领队”请您讨论，认真思考您感兴趣的、多提建议，但要注意倾听并理解领队为什么没采纳您的建议。一旦行程确定，不要对这个行程单考虑不周的地方抱怨。\n <br> \n <br> 3、对于自己没兴趣的，不要流露不耐烦的情绪，更不要抱怨别人费时间。\n <br> \n <br> 4、服从领队安排，有意见提前提出，提前商量。 \n <br>\n <br>\n <img border=\"0\" src=\"http://b2-q.mafengwo.net/s11/M00/55/4F/wKgBEFq00AKAK-QxAAC2dv48og815.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://b4-q.mafengwo.net/s11/M00/01/EB/wKgBEFsL-cCAUWBVAEniAK1S2HA41.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://b3-q.mafengwo.net/s11/M00/01/96/wKgBEFsL-VyAUMtyAFjPCEw2za810.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://p4-q.mafengwo.net/s11/M00/00/18/wKgBEFsL99KAIm6hAAG65_KgGrw25.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://n3-q.mafengwo.net/s11/M00/FF/FF/wKgBEFsL97qAMciaAAGFabJZ7MA35.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('18', '2311343', 'http://www.mafengwo.cn/together/detail/2311343.html?male=0', '0', '我叫妖孽', '去台湾吃吃喝喝', '2019-04-25 16:00:00', '7', '九份|高雄|垦丁|台北', '广州', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  去台湾吃吃喝喝\n </div> 一直都很想去台湾吃吃喝喝，机票已出，目前有两个妹子，本人90后老阿姨，独自去过很多国内地方，不事多，不矫情，爱吃，爱玩爱爆走。，去那些地方还没有订可以跟小伙伴一起商量，环岛也行。希望来几个不矫情爱吃的小姐姐和小哥哥。加微信请备注马蜂窝。\n <br> 4月26出发\n <br> 5月4号回，本来是想买5月5号的票，结果买错了就少了一天。 \n <br>\n <br>\n <img border=\"0\" src=\"http://n2-q.mafengwo.net/s12/M00/F3/B1/wKgED1xH5hyACnxzACRhY6nzTIo63.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('19', '2311499', 'http://www.mafengwo.cn/together/detail/2311499.html?male=0', '0', 'Yoyo.zhuang', '端午-莫斯科+金环小镇+圣彼得堡 9-10日游', '2019-06-06 16:00:00', '9', '俄罗斯', '上海', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  端午-莫斯科+金环小镇+圣彼得堡 9-10日游\n </div> 从上海出发，想找一个女生80,90后吧，一个男生搭伙儿照应。\n <br> 时间：6月（时间没有确定）\n <br> 天数：9-10天（搭上端午节）\n <br> 地点：莫斯科+金环小镇+圣彼得堡\n <br> \n <br> 目前我正在规划行程，大约是 在 莫斯科 三晚， 苏兹达尔 两晚，火车上一晚， 圣彼得堡 三晚\n <br> 如果有想要去这几处的小伙伴欢迎添加我的微信 reasonspphire，并注明俄罗斯旅行\n <br> \n <br> 希望小伙伴，能宽容有耐心（等我拍照），本人喜欢拍照，喜欢拍照喜欢拍照喜欢拍照！重要的事情说三遍。属于记录风景爱凹造型的一个妹子。此外，因为我还是个打工妹，所以费用大约15k左右 \n <br>\n <br>\n <img border=\"0\" src=\"http://p3-q.mafengwo.net/s12/M00/6F/29/wKgED1xIO7yAbNiYABPJvXWvP1M99.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('20', '2297543', 'http://www.mafengwo.cn/together/detail/2297543.html?male=0', '0', '凉生。', '菲律宾2019.03.28-2019.04.07', '2019-03-27 16:00:00', '11', '薄荷岛|锡基霍尔|杜马盖地|菲律宾', '上海', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  菲律宾2019.03.28-2019.04.07\n </div> 机票已出，大致行程已定，有全程或者一段同行的小伙伴吗，不矫情会拍照的更好。\n <br> 2019.3.28 上海飞马尼拉，马尼拉飞杜马盖地\n <br> 2019.3.29 oslob看鲸鲨+苏米龙岛\n <br> 2019.3.30 墨宝沙丁鱼风暴\n <br> 2019.3.31 杜马盖地市区闲逛或者Apo岛追海龟\n <br> 2019.4.1-4.3 锡基霍尔岛环岛享受满时光\n <br> 2019.4.4-4.7 薄荷岛（行程待定）\n <br> 2019.4.7 塔比拉兰飞马尼拉，马尼拉飞上海。 \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('21', '2263623', 'http://www.mafengwo.cn/together/detail/2263623.html?male=0', '0', '糖小鹿', '从南澳 阿德莱德-袋鼠岛 到西澳 珀斯-老鼠岛 自驾游找同行小伙伴', '2019-03-08 16:00:00', '12', '袋鼠岛|珀斯|澳大利亚', '北京', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  从南澳 阿德莱德-袋鼠岛 到西澳 珀斯-老鼠岛 自驾游找同行小伙伴\n </div> 是这样，我跟我老公两个人计划在19年3月中旬自驾南澳和西澳。\n <br> 因为我俩英语不好，又是第一次去澳洲，想要找些旅友一起同行可以互帮互助，一起找好吃的。我个人超爱动物，所以这次澳洲游不是大众路线，而是以南澳的袋鼠岛和西澳的珀斯 罗特内斯特岛 为主游玩。 如果你们也超级喜欢动物和风景，不以参观市中心建筑物为主，可以参考一下我计划的行程，因考虑时间问题行程酒店已定（目前我们酒店已定也可免费退订），基本不会有太大改变了哦，当然有想法可以商量的。想同行的小伙伴可以联系我哦，3月是南澳西澳旺季早定会便宜很多滴。人数可2人左右。\n <br> \n <br> 计划上午到达 阿德莱德机场。\n <br> Day1机场取车， 下午1.粉湖√ 回市逛周边 or 2.格雷尔海滩\n <br> 阿德莱德酒店\n <br> \n <br> Day2 克莱兰德野生动物园，下午德国镇 \n <br> 阿德莱德酒店 \n <br> \n <br> Day3上午前往杰维斯码头，上岛后前往袋鼠岛西边的木屋， 沿途可路过 蜜蜂农场、到达西侧汉森湾动物园 、 \n <br> 荒野度假村\n <br> \n <br> Day4 西侧弗林德斯蔡司国家公园、&nbsp;博尔达海角灯塔、神奇岩石、旗舰拱门， 下午返回东侧 蜜蜂农场冰激凌 \n <br> 袋鼠岛酒店\n <br> \n <br> Day5 帕德那野生公园、下午金斯科特-鹈鹕 ，待选（薰衣草园、鸸鹋湾 ）\n <br> 袋鼠岛酒店 \n <br> \n <br> Day6 海豚湾Seal bay 、爬行馆、小拉哈撒、微风湾Vivonne Bay、\n <br> 袋鼠岛酒店 \n <br> \n <br> Day7 上午离岛 回阿德莱德 下午 机场还车 -- 飞珀斯 --- 机场取车 \n <br> 珀斯酒店 \n <br> \n <br> Day8 费里曼特尔集市 狂吃逛的一天 向北科特索海滩Cottesloe Beach \n <br> 珀斯酒店\n <br> \n <br> Day9 上岛 老鼠岛 Quokka \n <br> 住岛-山林小屋\n <br> \n <br> Day10 罗特内斯岛 Quokka 下午离岛 \n <br> 珀斯酒店\n <br> \n <br> Day11 珀斯往南。。蓝色小屋 or市中心逛逛or国家公园 \n <br> 珀斯酒店\n <br> \n <br> Day12 珀斯往北。。珀斯龙虾工厂 尖峰石阵 \n <br> 凌晨回京\n <br> \n <br> 大概行程就是这样。小伙伴是不是北京的都可以我们可以在澳洲机场汇合，或者只想结伴玩西澳或者南澳都行，男女不限。年纪最好和我俩差不多，可有共同语言80后或90后。我们加2人的话一起租一辆SUV就可以费用平分。我俩车龄3.4年，已办理国际驾照翻译，会轮流开车，但是以前都没有右舵驾驶过。希望你们也能有国际驾照以防万一或轮流驾驶。希望你们在摄影方面比较有天赋可以拍到美美的景色共同分享，如果有大疆就更完美了嘿嘿嘿，基本就是这样。 \n <br>\n <br>\n <img border=\"0\" src=\"http://b3-q.mafengwo.net/s10/M00/B6/D0/wKgBZ1h8aimANbggAEwBpYJ7gfg829.png?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://n3-q.mafengwo.net/s12/M00/C1/80/wKgED1uSLL-AEL1IAAG_UwgWaXE83.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('22', '2304047', 'http://www.mafengwo.cn/together/detail/2304047.html?male=0', '0', '苹果Lingo', '2019年7~8月欧洲四十天！', '2019-07-27 16:00:00', '40', '德国|捷克|意大利|法国', '成都', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  2019年7~8月欧洲四十天！\n </div> 广州出发也可以商量！\n <br> 时间还未确定，具体依机票价格。\n <br> 西欧申根国家，不包括西葡。\n <br> 希望能来一个女生与我一起拼房！\n <br> 有人说一段旅行，有时去哪里都不重要，跟什么人去最重要。我是一个热爱欧洲历史、艺术的人，喜欢慢节奏旅游，英语流利，会初级法语。可能待在法国和意大利的时间会长一点。是个会吃的成都人，虽然会提前做很多攻略，但攻略只是保底措施，还是喜欢充满奇遇的旅行。总之跟着我绝对不会找不到好吃的！也可以免费当导游讲解一些历史文化，当然并不是专业的，肯定不完美。会跆拳道，不是路痴。\n <br> 之前去日本也有马蜂窝结伴同行，大家可以看我游记~\n <br> 总之希望能找到小伙伴与我一同前行！ \n <br>\n <br>\n <img border=\"0\" src=\"http://p2-q.mafengwo.net/s12/M00/67/80/wKgED1wsraCAMtsdACnFa3YUZF009.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('23', '2311667', 'http://www.mafengwo.cn/together/detail/2311667.html?male=0', '0', '可可', '有2019年9月去星月国的吗？', '2019-09-02 16:00:00', '12', '土耳其', '香港', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  有2019年9月去星月国的吗？\n </div> 打算9月自由行顺时针方向游土耳其，本人有驾照但从未在国外自驾，打算在当地搭乘公共交通工具（内陆机，大巴）；有国外自由行经历，英文一般，喜欢摄影（拍和被拍）。希望找个女生不穷游不富游，拼房一起玩一起拍……\n <br> 行程： A 香港--伊斯坦布尔--卡帕多奇亚（3）--安塔利亚（1）--棉花堡（1）--以费所（1）--伊斯坦布尔（2）--香港\n <br> B 香港--伊斯坦布尔--卡帕多奇亚（3）--伊斯坦布尔（2）--香港\n <br> 行程还未最终定下，机票未出，有9月出行计划的亲可加WX聊 \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('24', '2278339', 'http://www.mafengwo.cn/together/detail/2278339.html?male=0', '0', 'winysai', '明年端午英国伦敦牛津温莎白崖爱丁堡苏格兰高地自由行约伴（可仅拼房）', '2019-06-06 16:00:00', '13', '科茨沃尔德|牛津|爱丁堡|伦敦', '北京', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  明年端午英国伦敦牛津温莎白崖爱丁堡苏格兰高地自由行约伴（可仅拼房）\n </div> 行程计划书见链接\n <br> https://m.qyer.com/plan/trip/16157041/?campaign=app_share_plan&amp;category=myplan_email&amp;client_id=qyer_planner_ios&amp;share_platform=myplan_email&amp;style=deepgreen&amp;track_user_id=9710907\n <br> \n <br> 充分利用时间，请八天假，伦敦充分玩，大博物馆都留出4-5个小时时间，哈利波特工坊，白垩纪遗留七姐妹白崖，温莎城堡，爱丁堡，苏格兰高地三天，科茨沃尔德1一天，牛津一天。\n <br> \n <br> 可以只拼房（女生）或部分同行。有意向加微信。 \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('25', '2314179', 'http://www.mafengwo.cn/together/detail/2314179.html?male=0', '0', '睿小睿', '四月初济州岛首尔韩国七日游', '2019-03-29 16:00:00', '7', '首尔|济州岛', '郑州', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  四月初济州岛首尔韩国七日游\n </div> 请假四天，玩九天，计划这样。3.30-4.7\n <br> 本人90后女生，结伴出去玩过多次，也自由行去过国外，但英语一般，结伴一个女生拼住。当然玩的话男女皆可，毕竟韩国从来没去过。\n <br> \n <br> 计划，温州出发飞济州岛，玩四天左右，济州岛飞首尔，最后首尔回石家庄，我再火车回家，这样交通费大概1600多。大概机票都看好了 就差一个小伙伴了， 首尔可能就逛逛有名的地方吧，最多三天，如果你去过可以带我玩。 吃和购物不是主要的，经济党。\n <br> \n <br> 三四月是韩国旅游最美的季节，机票也这么便宜，如果有个一起玩的小伙伴那就完美了。 \n <br>\n <br>\n <img border=\"0\" src=\"http://n4-q.mafengwo.net/s11/M00/AE/59/wKgBEFxV3paAb2U3AAWTlaqzEwQ706.png?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://b2-q.mafengwo.net/s11/M00/AE/59/wKgBEFxV3pWARDmIAAYqpQinx2g583.png?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('26', '2314599', 'http://www.mafengwo.cn/together/detail/2314599.html?male=0', '0', 'mummy522', '泰国文艺 路线游~', '2019-02-28 16:00:00', '10', '清迈|曼谷', '广州', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  泰国文艺 路线游~\n </div> 目前已经出票~0301广州出发~0311清迈返回，第一次去泰国，已做曼谷路线，多数是文艺小众景点。\n <br> 0301~06在曼谷~中间会抽一天去大城~当日往返~\n <br> 0306曼谷飞清迈~\n <br> 0307~0311在清迈 抽一天去清莱，当日往返~其余日子在清迈逛吃逛吃~\n <br> 目前酒店还没有定~期盼小伙伴出现后一起商量~\n <br> 普吉岛等海岛暂时不考虑出行，如果你打算去，我们也可以分段结伴的~\n <br> 本人目前去过柬埔寨斯里兰卡，以色列约旦，土耳其埃及，意大利希腊，旅途中事情不多，可穷游也可以富游\n <br> 只限制女生结伴，拼吃拼住拼交通，如果会拍照更好啦~\n <br> 两人足够~ \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('27', '2305211', 'http://www.mafengwo.cn/together/detail/2305211.html?male=1', '1', '比较懒的左大二', '新西兰南岛自驾，用冰川，星空和跳伞见证我们的青春', '2019-03-27 16:00:00', '11', '新西兰', '杭州', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  新西兰南岛自驾，用冰川，星空和跳伞见证我们的青春\n </div> 没有别的限制，只希望大家都是可以享受旅程的人，在外结伴就要一起开心一起帮助，逛完这南半球天堂的10天，当作2019的礼物送给自己，我们希望自驾逆时针环游基督城，瓦纳卡，皇后镇，但尼丁再回到基督城，跳伞，冰川，蒸汽船，飞行体验，库克山徒步，吉百利巧克力工厂等待大家。 \n <br>\n <br>\n <img border=\"0\" src=\"http://p3-q.mafengwo.net/s12/M00/8A/24/wKgED1wxkeiACZQ_AEU2sWPnUWo43.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://p4-q.mafengwo.net/s11/M00/04/94/wKgBEFtQvNmASEfTACHrtE4JBDk38.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://p2-q.mafengwo.net/s11/M00/04/80/wKgBEFtQvKWAaGTTABNFLsy9kgs14.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://n3-q.mafengwo.net/s12/M00/0D/55/wKgED1wwxq6AVNB0AE2KalDQTMs02.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('28', '2305211', 'http://www.mafengwo.cn/together/detail/2305211.html?male=1', '1', '比较懒的左大二', '新西兰南岛自驾，用冰川，星空和跳伞见证我们的青春', '2019-03-27 16:00:00', '11', '新西兰', '杭州', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  新西兰南岛自驾，用冰川，星空和跳伞见证我们的青春\n </div> 没有别的限制，只希望大家都是可以享受旅程的人，在外结伴就要一起开心一起帮助，逛完这南半球天堂的10天，当作2019的礼物送给自己，我们希望自驾逆时针环游基督城，瓦纳卡，皇后镇，但尼丁再回到基督城，跳伞，冰川，蒸汽船，飞行体验，库克山徒步，吉百利巧克力工厂等待大家。 \n <br>\n <br>\n <img border=\"0\" src=\"http://p3-q.mafengwo.net/s12/M00/8A/24/wKgED1wxkeiACZQ_AEU2sWPnUWo43.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://p4-q.mafengwo.net/s11/M00/04/94/wKgBEFtQvNmASEfTACHrtE4JBDk38.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://p2-q.mafengwo.net/s11/M00/04/80/wKgBEFtQvKWAaGTTABNFLsy9kgs14.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://n3-q.mafengwo.net/s12/M00/0D/55/wKgED1wwxq6AVNB0AE2KalDQTMs02.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('29', '2305211', 'http://www.mafengwo.cn/together/detail/2305211.html?male=1', '1', '比较懒的左大二', '新西兰南岛自驾，用冰川，星空和跳伞见证我们的青春', '2019-03-27 16:00:00', '11', '新西兰', '杭州', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  新西兰南岛自驾，用冰川，星空和跳伞见证我们的青春\n </div> 没有别的限制，只希望大家都是可以享受旅程的人，在外结伴就要一起开心一起帮助，逛完这南半球天堂的10天，当作2019的礼物送给自己，我们希望自驾逆时针环游基督城，瓦纳卡，皇后镇，但尼丁再回到基督城，跳伞，冰川，蒸汽船，飞行体验，库克山徒步，吉百利巧克力工厂等待大家。 \n <br>\n <br>\n <img border=\"0\" src=\"http://p3-q.mafengwo.net/s12/M00/8A/24/wKgED1wxkeiACZQ_AEU2sWPnUWo43.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://p4-q.mafengwo.net/s11/M00/04/94/wKgBEFtQvNmASEfTACHrtE4JBDk38.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://p2-q.mafengwo.net/s11/M00/04/80/wKgBEFtQvKWAaGTTABNFLsy9kgs14.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://n3-q.mafengwo.net/s12/M00/0D/55/wKgED1wwxq6AVNB0AE2KalDQTMs02.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('30', '2305211', 'http://www.mafengwo.cn/together/detail/2305211.html?male=1', '1', '比较懒的左大二', '新西兰南岛自驾，用冰川，星空和跳伞见证我们的青春', '2019-03-27 16:00:00', '11', '新西兰', '杭州', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  新西兰南岛自驾，用冰川，星空和跳伞见证我们的青春\n </div> 没有别的限制，只希望大家都是可以享受旅程的人，在外结伴就要一起开心一起帮助，逛完这南半球天堂的10天，当作2019的礼物送给自己，我们希望自驾逆时针环游基督城，瓦纳卡，皇后镇，但尼丁再回到基督城，跳伞，冰川，蒸汽船，飞行体验，库克山徒步，吉百利巧克力工厂等待大家。 \n <br>\n <br>\n <img border=\"0\" src=\"http://p3-q.mafengwo.net/s12/M00/8A/24/wKgED1wxkeiACZQ_AEU2sWPnUWo43.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://p4-q.mafengwo.net/s11/M00/04/94/wKgBEFtQvNmASEfTACHrtE4JBDk38.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://p2-q.mafengwo.net/s11/M00/04/80/wKgBEFtQvKWAaGTTABNFLsy9kgs14.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://n3-q.mafengwo.net/s12/M00/0D/55/wKgED1wwxq6AVNB0AE2KalDQTMs02.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('31', '2305211', 'http://www.mafengwo.cn/together/detail/2305211.html?male=1', '1', '比较懒的左大二', '新西兰南岛自驾，用冰川，星空和跳伞见证我们的青春', '2019-03-27 16:00:00', '11', '新西兰', '杭州', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  新西兰南岛自驾，用冰川，星空和跳伞见证我们的青春\n </div> 没有别的限制，只希望大家都是可以享受旅程的人，在外结伴就要一起开心一起帮助，逛完这南半球天堂的10天，当作2019的礼物送给自己，我们希望自驾逆时针环游基督城，瓦纳卡，皇后镇，但尼丁再回到基督城，跳伞，冰川，蒸汽船，飞行体验，库克山徒步，吉百利巧克力工厂等待大家。 \n <br>\n <br>\n <img border=\"0\" src=\"http://p3-q.mafengwo.net/s12/M00/8A/24/wKgED1wxkeiACZQ_AEU2sWPnUWo43.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://p4-q.mafengwo.net/s11/M00/04/94/wKgBEFtQvNmASEfTACHrtE4JBDk38.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://p2-q.mafengwo.net/s11/M00/04/80/wKgBEFtQvKWAaGTTABNFLsy9kgs14.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://n3-q.mafengwo.net/s12/M00/0D/55/wKgED1wwxq6AVNB0AE2KalDQTMs02.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('32', '2305211', 'http://www.mafengwo.cn/together/detail/2305211.html?male=1', '1', '比较懒的左大二', '新西兰南岛自驾，用冰川，星空和跳伞见证我们的青春', '2019-03-27 16:00:00', '11', '新西兰', '杭州', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  新西兰南岛自驾，用冰川，星空和跳伞见证我们的青春\n </div> 没有别的限制，只希望大家都是可以享受旅程的人，在外结伴就要一起开心一起帮助，逛完这南半球天堂的10天，当作2019的礼物送给自己，我们希望自驾逆时针环游基督城，瓦纳卡，皇后镇，但尼丁再回到基督城，跳伞，冰川，蒸汽船，飞行体验，库克山徒步，吉百利巧克力工厂等待大家。 \n <br>\n <br>\n <img border=\"0\" src=\"http://p3-q.mafengwo.net/s12/M00/8A/24/wKgED1wxkeiACZQ_AEU2sWPnUWo43.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://p4-q.mafengwo.net/s11/M00/04/94/wKgBEFtQvNmASEfTACHrtE4JBDk38.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://p2-q.mafengwo.net/s11/M00/04/80/wKgBEFtQvKWAaGTTABNFLsy9kgs14.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n <br>\n <br>\n <img border=\"0\" src=\"http://n3-q.mafengwo.net/s12/M00/0D/55/wKgED1wwxq6AVNB0AE2KalDQTMs02.jpeg?imageView2%2F2%2Fw%2F600%2Fq%2F100\"> \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('33', '2316835', 'http://www.mafengwo.cn/together/detail/2316835.html?male=0', '0', '寻找四维', '西班牙意大利捷克最多15日游', '2019-04-18 16:00:00', '15', '捷克|意大利|西班牙', '广州', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  西班牙意大利捷克最多15日游\n </div> 本人80后，坐标广州，自由行过几次，但是英文水平不行，想找些伴旅一起去欧洲，时间没有具体定下来，\n <br> 大家可以商量具体的行程，就是国家城市我想去西班牙的巴塞罗那，意大利的罗马，捷克的布拉格。\n <br> 其实我现在什么还没订，有想法有兴趣的朋友加我商议。\n <br> \n <br> 我初步想的线路如下：\n <br> 广州---巴塞罗那\n <br> 巴塞罗那--罗马\n <br> 罗马---威尼斯\n <br> 威尼斯---布拉格\n <br> 布拉格---广州 \n</div>', '2019-04-30', null, null, null);
INSERT INTO `crawler_content` VALUES ('34', '2316835', 'http://www.mafengwo.cn/together/detail/2316835.html?male=0', '0', '寻找四维', '西班牙意大利捷克最多15日游', '2019-04-18 16:00:00', '15', '捷克|意大利|西班牙', '广州', '<div class=\"desc _j_description\"> \n <div class=\"title\">\n  西班牙意大利捷克最多15日游\n </div> 本人80后，坐标广州，自由行过几次，但是英文水平不行，想找些伴旅一起去欧洲，时间没有具体定下来，\n <br> 大家可以商量具体的行程，就是国家城市我想去西班牙的巴塞罗那，意大利的罗马，捷克的布拉格。\n <br> 其实我现在什么还没订，有想法有兴趣的朋友加我商议。\n <br> \n <br> 我初步想的线路如下：\n <br> 广州---巴塞罗那\n <br> 巴塞罗那--罗马\n <br> 罗马---威尼斯\n <br> 威尼斯---布拉格\n <br> 布拉格---广州 \n</div>', '2019-04-30', null, null, null);

-- ----------------------------
-- Table structure for c_authority
-- ----------------------------
DROP TABLE IF EXISTS `c_authority`;
CREATE TABLE `c_authority` (
  `id` varchar(32) NOT NULL,
  `sort` bigint(20) NOT NULL AUTO_INCREMENT,
  `auth_code` varchar(50) NOT NULL,
  `auth_text` varchar(50) NOT NULL,
  `auth_order` int(11) DEFAULT NULL,
  `auth_type` smallint(6) DEFAULT NULL,
  `resoureces_url` varchar(255) DEFAULT NULL,
  `flag` smallint(6) DEFAULT NULL,
  `menu_icon` varchar(255) DEFAULT NULL,
  `nav_bar_icon` varchar(255) DEFAULT NULL,
  `parent_id` varchar(32) DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `open_way` smallint(6) DEFAULT NULL,
  `position` smallint(6) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `authority_sort_key` (`sort`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=813 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of c_authority
-- ----------------------------
INSERT INTO `c_authority` VALUES ('03087423576c4504b86313d2620ccf28', '304', 'addSysWhiteDomain', '添加访问白名单', '3', '2', '/sysWhiteDomainController/addSysWhiteDomain.do', '1', '', null, 'f7936d0bea2d4228b21d6c4bb13e429a', '2017-12-19 15:25:57', '2017-12-19 15:25:57', null, '3', null);
INSERT INTO `c_authority` VALUES ('06cc6be614f211e7b61c507b9dae4454', '45', 'deleteSysLogs', '删除系统日志', '3', '2', '/sysLogsController/deleteSysLogs.do', '1', '', null, 'ca94dc3414f111e7b61c507b9dae4454', '2017-03-30 10:38:59', '2017-03-30 10:38:59', null, '3', null);
INSERT INTO `c_authority` VALUES ('075cef3db14411e68bc4507b9dae4454', '25', 'getDictList', '查询数字字典列表', '1', '1', '/dictController/getPageData.do', '0', '', null, 'f34538adb14311e68bc4507b9dae4454', '2016-11-23 14:14:03', '2019-02-20 11:35:17', null, '3', null);
INSERT INTO `c_authority` VALUES ('0ab359cfb4b611e7b9d4507b9dae4454', '113', 'getProcDefDetail', '跳转修改流程定义', '6', '2', '/procDefController/getDetail.do', '1', '', null, 'c2d8d93cb4ab11e7b9d4507b9dae4454', '2017-10-19 18:12:39', '2017-10-19 18:12:39', null, null, null);
INSERT INTO `c_authority` VALUES ('0bd88ede3c9f11e9b5be507b9dae4454', '802', 'adminViewEvaluateResult', '查看评价详细', '1', '2', null, '1', null, null, 'f13196e53c9e11e9b5be507b9dae4454', '2019-03-02 11:54:52', '2019-03-02 11:54:52', null, '3', null);
INSERT INTO `c_authority` VALUES ('0be7056d34f511e9a040507b9dae4454', '712', 'skipCheckProjectInfo', '查看项目详情', '3', '2', null, '1', null, null, 'f5820c1c34e511e9a040507b9dae4454', '2019-02-20 17:51:07', '2019-02-20 17:51:07', null, '3', null);
INSERT INTO `c_authority` VALUES ('0e748f076fd24398b1750d8274aa6558', '306', 'editSysWhiteDomain', '修改访问白名单', '5', '2', '/sysWhiteDomainController/editSysWhiteDomain.do', '1', '', null, 'f7936d0bea2d4228b21d6c4bb13e429a', '2017-12-19 15:27:13', '2017-12-19 15:27:13', null, '3', null);
INSERT INTO `c_authority` VALUES ('0f95872fb4af11e7b9d4507b9dae4454', '111', 'editProcDef', '修改流程定义', '4', '2', '/procDefController/editProcDef.do', '1', '', null, 'c2d8d93cb4ab11e7b9d4507b9dae4454', '2017-10-19 17:22:41', '2017-10-19 17:22:41', null, null, null);
INSERT INTO `c_authority` VALUES ('108db25ae4ed417b8ef17846d89e6b03', '302', 'getSysWhiteDomainData', '查询访问白名单列表', '1', '1', '/sysWhiteDomainController/getPageData.do', '0', '', null, 'f7936d0bea2d4228b21d6c4bb13e429a', '2017-12-19 15:25:09', '2017-12-19 15:25:09', null, '3', null);
INSERT INTO `c_authority` VALUES ('144B2E062AFE407B80FFE11494353EA2', '31', 'zonePathManage', '文件路径管理', '8', '0', '/zonePathController/viewPage.do', '1', '/view/2019/03-20/0fad4315-a0ae-46e5-8c63-f44e1c551126.png', null, '3b5ea9dcb11d11e68bc4507b9dae4454', '2016-09-01 14:26:20', '2017-05-31 09:39:48', null, '3', null);
INSERT INTO `c_authority` VALUES ('1624cd153b3f11e9bc9a507b9dae4454', '782', 'addEvaluateRecord2AgentUnit', '建设单位对代建单位评价', '0', '2', null, '1', null, null, '7cab575235c511e9bb48507b9d9e8623', '2019-02-28 17:56:13', '2019-02-28 17:56:13', null, '3', null);
INSERT INTO `c_authority` VALUES ('1a4a46493bd711e9bc9a507b9dae4454', '791', 'buildUnitTag', '建设单位的项目信息（标识用）', null, '2', null, '0', null, null, '7ec94aaf3bd511e9bc9a507b9dae4454', '2019-03-01 12:04:21', '2019-03-01 12:04:21', null, '3', null);
INSERT INTO `c_authority` VALUES ('1b24b73c22794db2a5586accc4d962c7', '303', 'skipAddSysWhiteDomain', '添加访问白名单页面', '2', '2', '/sysWhiteDomainController/skipAddSysWhiteDomain.do', '1', '', null, 'f7936d0bea2d4228b21d6c4bb13e429a', '2017-12-19 15:25:38', '2017-12-19 15:25:38', null, '3', null);
INSERT INTO `c_authority` VALUES ('1f97c4a2b14411e68bc4507b9dae4454', '26', 'skipAddDict', '跳转添加数字字典', '2', '2', '/dictController/skipAddDict.do', '1', '', null, 'f34538adb14311e68bc4507b9dae4454', '2016-11-23 14:14:43', '2019-02-20 11:35:21', null, '3', null);
INSERT INTO `c_authority` VALUES ('20db6022b12311e68bc4507b9dae4454', '19', 'getUserDetail', '查询用户详细', '4', '2', '/userController/getDetail.do', '1', '', null, 'ad2f2ee6b12011e68bc4507b9dae4454', '2016-11-23 10:18:32', '2019-02-20 11:35:07', null, '3', null);
INSERT INTO `c_authority` VALUES ('25ecaf37389b11e9ac97507b9dae4454', '749', 'departmentManage', '部门管理', '5', '0', '/departmentController/viewPage.do', '1', null, null, '3b5ea9dcb11d11e68bc4507b9dae4454', '2019-02-25 09:17:36', '2019-02-25 09:17:36', null, '3', null);
INSERT INTO `c_authority` VALUES ('25ee0dd9389b11e9ac97507b9dae4454', '750', 'skipAddDepartment', '跳转添加部门', '1', '2', '/departmentController/skipAddDepartment.do', '1', null, null, '25ecaf37389b11e9ac97507b9dae4454', '2019-02-25 09:17:36', '2019-02-25 09:17:36', null, null, null);
INSERT INTO `c_authority` VALUES ('25eefd3e389b11e9ac97507b9dae4454', '751', 'addDepartment', '添加部门', '2', '2', '/departmentController/addDepartment.do', '1', null, null, '25ecaf37389b11e9ac97507b9dae4454', '2019-02-25 09:17:36', '2019-02-25 09:17:36', null, null, null);
INSERT INTO `c_authority` VALUES ('25ef9a1d389b11e9ac97507b9dae4454', '752', 'getDepartmentDetail', '查询部门详细', '3', '2', '/departmentController/getDetail.do', '1', null, null, '25ecaf37389b11e9ac97507b9dae4454', '2019-02-25 09:17:36', '2019-02-25 09:17:36', null, null, null);
INSERT INTO `c_authority` VALUES ('25f02e94389b11e9ac97507b9dae4454', '753', 'editDepartment', '编辑部门', '4', '2', '/departmentController/editDepartment.do', '1', null, null, '25ecaf37389b11e9ac97507b9dae4454', '2019-02-25 09:17:36', '2019-02-25 09:17:36', null, null, null);
INSERT INTO `c_authority` VALUES ('25f1222a389b11e9ac97507b9dae4454', '754', 'deleteDepartment', '删除部门', '5', '2', '/departmentController/deleteDepartment.do', '1', null, null, '25ecaf37389b11e9ac97507b9dae4454', '2019-02-25 09:17:36', '2019-02-25 09:17:36', null, null, null);
INSERT INTO `c_authority` VALUES ('25f1b531389b11e9ac97507b9dae4454', '755', 'queryPageDepartment', '分页查询部门', '6', '1', '/departmentController/getPageData.do', '0', null, null, '25ecaf37389b11e9ac97507b9dae4454', '2019-02-25 09:17:36', '2019-02-25 09:17:36', null, null, null);
INSERT INTO `c_authority` VALUES ('2998e8d03bfe11e9bc9a507b9dae4454', '796', 'agentUnitEditEvaluateRecord', '修改履约评价', '1', '2', null, '1', null, null, 'b751e35b3bf311e9bc9a507b9dae4454', '2019-03-01 16:43:13', '2019-03-01 16:43:13', null, '3', null);
INSERT INTO `c_authority` VALUES ('308df89a3a3a11e98d57507b9dae4454', '761', 'evaluateAuditSuccess', '审核通过', '2', '1', '/execNodeController/handleSuccessNode.do', '1', null, null, 'be14dac2399e11e98d57507b9dae4454', '2019-02-27 10:48:29', '2019-02-27 10:48:29', null, '3', null);
INSERT INTO `c_authority` VALUES ('326efc643bfe11e9bc9a507b9dae4454', '797', 'agentUnitViewEvaluateResult', '查看评价详细', '2', '2', null, '1', null, null, 'b751e35b3bf311e9bc9a507b9dae4454', '2019-03-01 16:43:28', '2019-03-01 16:43:28', null, '3', null);
INSERT INTO `c_authority` VALUES ('32ca861bb12011e68bc4507b9dae4454', '8', 'roleManage', '角色管理', '2', '0', '/roleController/viewPage.do', '1', '/view/2019/03-20/8c8d2534-e2d1-46f7-a053-00732df1d780.png', null, '3b5ea9dcb11d11e68bc4507b9dae4454', '2016-11-23 09:57:33', '2017-05-31 09:38:13', null, '3', null);
INSERT INTO `c_authority` VALUES ('33C22D17058648ADA85169ACC6D0FE82', '32', 'editZonePath', '修改文件路径', '5', '2', '/zonePathController/editZonePath.do', '1', '', null, '144B2E062AFE407B80FFE11494353EA2', '2016-09-01 14:29:39', '2019-02-20 11:35:52', null, '3', null);
INSERT INTO `c_authority` VALUES ('3680f6afb12411e68bc4507b9dae4454', '23', 'siteIndex', '网站主页', '0', '1', '/index.do', '0', '', null, '', '2016-11-23 10:26:17', '2018-12-05 11:28:36', null, '3', null);
INSERT INTO `c_authority` VALUES ('368d7eaab4af11e7b9d4507b9dae4454', '112', 'deleteProcDef', '删除流程定义', '5', '2', '/procDefController/deleteProcDef.do', '1', '', null, 'c2d8d93cb4ab11e7b9d4507b9dae4454', '2017-10-19 17:23:46', '2017-10-19 17:23:46', null, null, null);
INSERT INTO `c_authority` VALUES ('3875e4feb14411e68bc4507b9dae4454', '27', 'addDict', '添加数字字典', '3', '2', '/dictController/addDict.do', '1', '', null, 'f34538adb14311e68bc4507b9dae4454', '2016-11-23 14:15:25', '2019-02-20 11:35:23', null, '3', null);
INSERT INTO `c_authority` VALUES ('3b5ea9dcb11d11e68bc4507b9dae4454', '1', 'systemManage', '系统管理', '8', '0', null, '1', '/view/2019/03-20/9e0ccce8-e77d-4fb2-99ea-b04262eafd51.png', '/view/2019/03-20/f7c8ea87-f526-4735-a63c-ee17107bd00e.png', null, '2016-11-23 09:36:19', '2017-05-26 09:11:17', null, '2', null);
INSERT INTO `c_authority` VALUES ('3fb9ccd43b5111e9bc9a507b9dae4454', '783', 'addEvaluateRecordAgentUnit2Contrator', '代建单位对承包商进行评价', '0', '2', null, '1', null, null, '7cab575235c511e9bb48507b9d9e8623', '2019-02-28 20:06:14', '2019-02-28 20:06:14', null, '3', null);
INSERT INTO `c_authority` VALUES ('474011dfb12211e68bc4507b9dae4454', '18', 'addUser', '添加用户', '3', '2', '/userController/addUser.do', '1', '', null, 'ad2f2ee6b12011e68bc4507b9dae4454', '2016-11-23 10:12:27', '2019-02-20 11:35:09', null, '3', null);
INSERT INTO `c_authority` VALUES ('47a04aaf3bd611e9bc9a507b9dae4454', '790', 'agentUnitProjectInfoManage', '代建项目信息管理', '3', '0', '/projectInfoController/viewPageAgentUnit.do', '1', '/view/2019/03-20/d80951f9-e89e-43df-b4f6-5c735afdde11.png', '/view/2019/03-20/aae1d7ff-e28a-4898-8546-149306a7d4b2.png', null, '2019-03-01 11:58:28', '2019-03-01 11:58:28', null, '1', null);
INSERT INTO `c_authority` VALUES ('4ad0e0dcb11f11e68bc4507b9dae4454', '4', 'skipAddAuth', '跳转添加权限', '2', '2', '/authController/skipAddAuth.do', '1', '', null, 'dd77e2b2b11e11e68bc4507b9dae4454', '2016-11-23 09:51:04', '2019-02-20 11:34:42', null, '3', null);
INSERT INTO `c_authority` VALUES ('4e4e636a3a3a11e98d57507b9dae4454', '762', 'evaluateAuditFail', '审核不通过', '3', '1', '/execNodeController/handleFailNode.do', '1', null, null, 'be14dac2399e11e98d57507b9dae4454', '2019-02-27 10:49:19', '2019-02-27 10:49:19', null, '3', null);
INSERT INTO `c_authority` VALUES ('5093869c3bd711e9bc9a507b9dae4454', '792', 'agentUnitTag', '代建单位的项目信息（标识用）', '0', '2', null, '0', null, null, '47a04aaf3bd611e9bc9a507b9dae4454', '2019-03-01 12:05:52', '2019-03-01 12:05:52', null, '3', null);
INSERT INTO `c_authority` VALUES ('523b0a82b12011e68bc4507b9dae4454', '9', 'getRoleList', '查询角色列表', '1', '1', '/roleController/getPageData.do', '0', '', null, '32ca861bb12011e68bc4507b9dae4454', '2016-11-23 09:58:26', '2019-02-20 11:34:50', null, '3', null);
INSERT INTO `c_authority` VALUES ('55bc7521b14411e68bc4507b9dae4454', '28', 'getDictDetail', '查询数字字典', '4', '2', '/dictController/getDetail.do', '1', '', null, 'f34538adb14311e68bc4507b9dae4454', '2016-11-23 14:16:14', '2019-02-20 11:35:25', null, '3', null);
INSERT INTO `c_authority` VALUES ('56d9467ab11f11e68bc4507b9dae4454', '5', 'addAuth', '添加权限', '3', '2', '/authController/addAuth.do', '1', '', null, 'dd77e2b2b11e11e68bc4507b9dae4454', '2016-11-23 09:51:24', '2019-02-20 11:34:44', null, '3', null);
INSERT INTO `c_authority` VALUES ('57a2df88f1bc4344a1e66122718d2689', '307', 'deleteSysWhiteDomain', '删除访问白名单', '6', '2', '/sysWhiteDomainController/deleteSysWhiteDomain.do', '1', '', null, 'f7936d0bea2d4228b21d6c4bb13e429a', '2017-12-19 15:27:30', '2017-12-19 15:27:30', null, '3', null);
INSERT INTO `c_authority` VALUES ('5de7d86a3bc311e9bc9a507b9dae4454', '784', 'contractorProjectPartInfo', '承包工程', '3', '0', '/projectPartInfoController/contractor/viewPage.do', '1', '/view/2019/03-20/d80951f9-e89e-43df-b4f6-5c735afdde11.png', '/view/2019/03-20/aae1d7ff-e28a-4898-8546-149306a7d4b2.png', null, '2019-03-01 09:42:20', '2019-03-01 09:42:20', null, '1', null);
INSERT INTO `c_authority` VALUES ('61ac9dceb12011e68bc4507b9dae4454', '10', 'skipAddRole', '跳转添加角色', '2', '2', '/roleController/skipAddRole.do', '1', '', null, '32ca861bb12011e68bc4507b9dae4454', '2016-11-23 09:58:52', '2019-02-20 11:34:52', null, '3', null);
INSERT INTO `c_authority` VALUES ('627ad9f9b14411e68bc4507b9dae4454', '29', 'editDict', '修改数字字典', '5', '2', '/dictController/editDict.do', '1', '', null, 'f34538adb14311e68bc4507b9dae4454', '2016-11-23 14:16:36', '2019-02-20 11:35:27', null, '3', null);
INSERT INTO `c_authority` VALUES ('69a17420b12311e68bc4507b9dae4454', '20', 'editUser', '修改用户', '5', '2', '/userController/editUser.do', '1', '', null, 'ad2f2ee6b12011e68bc4507b9dae4454', '2016-11-23 10:20:34', '2019-02-20 11:35:11', null, '3', null);
INSERT INTO `c_authority` VALUES ('6a8efaf8b11f11e68bc4507b9dae4454', '6', 'getAuthDetail', '查询权限详情', '4', '2', '/authController/getDetail.do', '1', '', null, 'dd77e2b2b11e11e68bc4507b9dae4454', '2016-11-23 09:51:57', '2019-02-20 11:34:46', null, '3', null);
INSERT INTO `c_authority` VALUES ('704da868b14411e68bc4507b9dae4454', '30', 'delDict', '删除数字字典', '6', '2', '/dictController/delDict.do', '1', '', null, 'f34538adb14311e68bc4507b9dae4454', '2016-11-23 14:16:59', '2019-02-20 11:35:29', null, '3', null);
INSERT INTO `c_authority` VALUES ('73A67F3C1367404ABBB67D0E111A7366', '33', 'skipAddZonePath', '跳转添加文件路径', '2', '2', '/zonePathController/skipAddZonePath.do', '1', '', null, '144B2E062AFE407B80FFE11494353EA2', '2016-09-01 14:27:49', '2019-02-20 11:35:50', null, '3', null);
INSERT INTO `c_authority` VALUES ('73a6fe8b3a7711e98d57507b9dae4454', '772', 'engineeringTypeManage', '工程类型管理', '9', '0', '/engineeringTypeController/viewPage.do', '1', '/view/2019/03-20/c83bd6af-303a-4dcd-8b53-9fe9a0e35a94.png', null, '3b5ea9dcb11d11e68bc4507b9dae4454', '2019-02-27 18:07:07', '2019-02-27 18:07:07', null, '3', null);
INSERT INTO `c_authority` VALUES ('73a9659e3a7711e98d57507b9dae4454', '773', 'skipAddEngineeringType', '跳转添加工程类型', '1', '2', '/engineeringTypeController/skipAddEngineeringType.do', '1', null, null, '73a6fe8b3a7711e98d57507b9dae4454', '2019-02-27 18:07:07', '2019-02-27 18:07:07', null, null, null);
INSERT INTO `c_authority` VALUES ('73ab984e3a7711e98d57507b9dae4454', '774', 'addEngineeringType', '添加工程类型', '2', '2', '/engineeringTypeController/addEngineeringType.do', '1', null, null, '73a6fe8b3a7711e98d57507b9dae4454', '2019-02-27 18:07:07', '2019-02-27 18:07:07', null, null, null);
INSERT INTO `c_authority` VALUES ('73ad903e3a7711e98d57507b9dae4454', '775', 'getEngineeringTypeDetail', '查询工程类型详细', '3', '2', '/engineeringTypeController/getDetail.do', '1', null, null, '73a6fe8b3a7711e98d57507b9dae4454', '2019-02-27 18:07:07', '2019-02-27 18:07:07', null, null, null);
INSERT INTO `c_authority` VALUES ('73af43ed3a7711e98d57507b9dae4454', '776', 'editEngineeringType', '编辑工程类型', '4', '2', '/engineeringTypeController/editEngineeringType.do', '1', null, null, '73a6fe8b3a7711e98d57507b9dae4454', '2019-02-27 18:07:07', '2019-02-27 18:07:07', null, null, null);
INSERT INTO `c_authority` VALUES ('73b0d7e43a7711e98d57507b9dae4454', '777', 'deleteEngineeringType', '删除工程类型', '5', '2', '/engineeringTypeController/deleteEngineeringType.do', '1', null, null, '73a6fe8b3a7711e98d57507b9dae4454', '2019-02-27 18:07:07', '2019-02-27 18:07:07', null, null, null);
INSERT INTO `c_authority` VALUES ('73b2bf1e3a7711e98d57507b9dae4454', '778', 'queryPageEngineeringType', '分页查询工程类型', '6', '1', '/engineeringTypeController/getPageData.do', '0', null, null, '73a6fe8b3a7711e98d57507b9dae4454', '2019-02-27 18:07:07', '2019-02-27 18:07:07', null, null, null);
INSERT INTO `c_authority` VALUES ('74faf7e3b12011e68bc4507b9dae4454', '11', 'addRole', '添加角色', '3', '2', '/roleController/addRole.do', '1', '', null, '32ca861bb12011e68bc4507b9dae4454', '2016-11-23 09:59:24', '2019-02-20 11:34:54', null, '3', null);
INSERT INTO `c_authority` VALUES ('77f188fab11f11e68bc4507b9dae4454', '7', 'delAuth', '删除权限', '5', '2', '/authController/delAuth.do', '1', '', null, 'dd77e2b2b11e11e68bc4507b9dae4454', '2016-11-23 09:52:20', '2019-02-20 11:34:48', null, '3', null);
INSERT INTO `c_authority` VALUES ('7cab575235c511e9bb48507b9d9e8623', '720', 'evaluateRecordManage', '评价记录', '4', '0', '/evaluateRecordController/viewPage.do', '0', 'list', null, null, '2019-02-21 18:42:40', '2019-02-21 18:42:40', null, '2', null);
INSERT INTO `c_authority` VALUES ('7cad4bc635c511e9bb48507b9d9e8623', '721', 'skipAddEvaluateRecord', '跳转添加评价记录', '1', '2', '/evaluateRecordController/skipAddEvaluateRecord.do', '1', null, null, '7cab575235c511e9bb48507b9d9e8623', '2019-02-21 18:42:40', '2019-02-21 18:42:40', null, null, null);
INSERT INTO `c_authority` VALUES ('7caf2f1035c511e9bb48507b9d9e8623', '722', 'addEvaluateRecord', '添加评价记录', '2', '2', '/evaluateRecordController/addEvaluateRecord.do', '1', null, null, '7cab575235c511e9bb48507b9d9e8623', '2019-02-21 18:42:40', '2019-02-21 18:42:40', null, null, null);
INSERT INTO `c_authority` VALUES ('7cbf196335c511e9bb48507b9d9e8623', '723', 'getEvaluateRecordDetail', '查询评价记录详细', '3', '2', '/evaluateRecordController/getDetail.do', '1', null, null, '7cab575235c511e9bb48507b9d9e8623', '2019-02-21 18:42:40', '2019-02-21 18:42:40', null, null, null);
INSERT INTO `c_authority` VALUES ('7cc7a03535c511e9bb48507b9d9e8623', '724', 'editEvaluateRecord', '编辑评价记录', '4', '2', '/evaluateRecordController/editEvaluateRecord.do', '1', null, null, '7cab575235c511e9bb48507b9d9e8623', '2019-02-21 18:42:40', '2019-02-21 18:42:40', null, null, null);
INSERT INTO `c_authority` VALUES ('7cc9ee3335c511e9bb48507b9d9e8623', '725', 'deleteEvaluateRecord', '删除评价记录', '5', '2', '/evaluateRecordController/deleteEvaluateRecord.do', '1', null, null, '7cab575235c511e9bb48507b9d9e8623', '2019-02-21 18:42:40', '2019-02-21 18:42:40', null, null, null);
INSERT INTO `c_authority` VALUES ('7ccc387035c511e9bb48507b9d9e8623', '726', 'queryPageEvaluateRecord', '分页查询评价记录', '6', '1', '/evaluateRecordController/getPageData.do', '0', null, null, '7cab575235c511e9bb48507b9d9e8623', '2019-02-21 18:42:40', '2019-02-21 18:42:40', null, null, null);
INSERT INTO `c_authority` VALUES ('7dd83b223e4f11e98e3c507b9dae4454', '803', 'deleteProjectInfo', '删除项目信息', '3', '2', null, '1', null, null, 'f5820c1c34e511e9a040507b9dae4454', '2019-03-04 15:31:14', '2019-03-04 15:31:14', null, '3', null);
INSERT INTO `c_authority` VALUES ('7ec94aaf3bd511e9bc9a507b9dae4454', '789', 'buildUnitProjectInfoManage', '建设项目信息管理', '2', '0', '/projectInfoController/viewPageBuildUnit.do', '1', '/view/2019/03-20/d80951f9-e89e-43df-b4f6-5c735afdde11.png', '/view/2019/03-20/aae1d7ff-e28a-4898-8546-149306a7d4b2.png', null, '2019-03-01 11:52:51', '2019-03-01 11:52:51', null, '1', null);
INSERT INTO `c_authority` VALUES ('816ed601b4ae11e7b9d4507b9dae4454', '109', 'addProcDef', '添加流程定义', '2', '2', '/procDefController/addProcDef.do', '1', '', null, 'c2d8d93cb4ab11e7b9d4507b9dae4454', '2017-10-19 17:18:42', '2017-10-19 17:18:42', null, null, null);
INSERT INTO `c_authority` VALUES ('83e2cf3934e811e9a040507b9dae4454', '684', 'projectPartInfoManage', '单项工程信息管理', '4', '1', '/projectPartInfoController/viewPage.do', '1', 'list', null, 'f5820c1c34e511e9a040507b9dae4454', '2019-02-20 16:21:22', '2019-02-20 16:21:22', null, '1', null);
INSERT INTO `c_authority` VALUES ('83e596e734e811e9a040507b9dae4454', '685', 'skipAddProjectPartInfo', '跳转添加单项工程信息', '1', '2', '/projectPartInfoController/skipAddProjectPartInfo.do', '1', null, null, '83e2cf3934e811e9a040507b9dae4454', '2019-02-20 16:21:22', '2019-02-20 16:21:22', null, null, null);
INSERT INTO `c_authority` VALUES ('83e87a0634e811e9a040507b9dae4454', '686', 'addProjectPartInfo', '添加单项工程信息', '2', '2', '/projectPartInfoController/addProjectPartInfo.do', '1', null, null, '83e2cf3934e811e9a040507b9dae4454', '2019-02-20 16:21:22', '2019-02-20 16:21:22', null, null, null);
INSERT INTO `c_authority` VALUES ('83eb1c4b34e811e9a040507b9dae4454', '687', 'getProjectPartInfoDetail', '查询单项工程信息详细', '3', '2', '/projectPartInfoController/getDetail.do', '1', null, null, '83e2cf3934e811e9a040507b9dae4454', '2019-02-20 16:21:22', '2019-02-20 16:21:22', null, null, null);
INSERT INTO `c_authority` VALUES ('83ed417d34e811e9a040507b9dae4454', '688', 'editProjectPartInfo', '编辑单项工程信息', '4', '2', '/projectPartInfoController/editProjectPartInfo.do', '1', null, null, '83e2cf3934e811e9a040507b9dae4454', '2019-02-20 16:21:22', '2019-02-20 16:21:22', null, null, null);
INSERT INTO `c_authority` VALUES ('83ef2a6c34e811e9a040507b9dae4454', '689', 'deleteProjectPartInfo', '删除单项工程信息', '5', '2', '/projectPartInfoController/deleteProjectPartInfo.do', '1', null, null, '83e2cf3934e811e9a040507b9dae4454', '2019-02-20 16:21:22', '2019-02-20 16:21:22', null, null, null);
INSERT INTO `c_authority` VALUES ('83f1b8c834e811e9a040507b9dae4454', '690', 'queryPageProjectPartInfo', '分页查询单项工程信息', '6', '1', '/projectPartInfoController/getPageData.do', '0', null, null, '83e2cf3934e811e9a040507b9dae4454', '2019-02-20 16:21:22', '2019-02-20 16:21:22', null, null, null);
INSERT INTO `c_authority` VALUES ('846821e83bf511e9bc9a507b9dae4454', '795', 'buildUnitViewEvaluateRecord', '查看履约评价', '1', '2', '/evaluateRecordController/buildUnit/viewPage.do', '1', null, null, '7ec94aaf3bd511e9bc9a507b9dae4454', '2019-03-01 15:41:20', '2019-03-01 15:41:20', null, '3', null);
INSERT INTO `c_authority` VALUES ('86C6BA4D08DF4086ABD89CD7C86C5DD6', '34', 'createFileDirectory', '创建物理目录', '7', '2', '/zonePathController/createFileDirectory.do', '1', '', null, '144B2E062AFE407B80FFE11494353EA2', '2016-09-01 14:32:19', '2019-02-20 11:35:48', null, '3', null);
INSERT INTO `c_authority` VALUES ('8a2ced2db12011e68bc4507b9dae4454', '12', 'getRoleDetail', '查询角色详细', '4', '2', '/roleController/viewPage.do', '1', '', null, '32ca861bb12011e68bc4507b9dae4454', '2016-11-23 10:00:00', '2019-02-20 11:34:56', null, '3', null);
INSERT INTO `c_authority` VALUES ('8a44316035c511e9bb48507b9d9e8623', '727', 'evaluateRecordFileManage', '评价记录附件管理', '8', '1', '/evaluateRecordFileController/viewPage.do', '0', 'list', null, '7cab575235c511e9bb48507b9d9e8623', '2019-02-21 18:43:03', '2019-02-21 18:43:03', null, '3', null);
INSERT INTO `c_authority` VALUES ('8a463e3435c511e9bb48507b9d9e8623', '728', 'skipAddEvaluateRecordFile', '跳转添加评价记录附件', '1', '2', '/evaluateRecordFileController/skipAddEvaluateRecordFile.do', '1', null, null, '8a44316035c511e9bb48507b9d9e8623', '2019-02-21 18:43:03', '2019-02-21 18:43:03', null, null, null);
INSERT INTO `c_authority` VALUES ('8a47ec1235c511e9bb48507b9d9e8623', '729', 'addEvaluateRecordFile', '添加评价记录附件', '2', '2', '/evaluateRecordFileController/addEvaluateRecordFile.do', '1', null, null, '8a44316035c511e9bb48507b9d9e8623', '2019-02-21 18:43:03', '2019-02-21 18:43:03', null, null, null);
INSERT INTO `c_authority` VALUES ('8a49eff235c511e9bb48507b9d9e8623', '730', 'getEvaluateRecordFileDetail', '查询评价记录附件详细', '3', '2', '/evaluateRecordFileController/getDetail.do', '1', null, null, '8a44316035c511e9bb48507b9d9e8623', '2019-02-21 18:43:03', '2019-02-21 18:43:03', null, null, null);
INSERT INTO `c_authority` VALUES ('8a4be82935c511e9bb48507b9d9e8623', '731', 'editEvaluateRecordFile', '编辑评价记录附件', '4', '2', '/evaluateRecordFileController/editEvaluateRecordFile.do', '1', null, null, '8a44316035c511e9bb48507b9d9e8623', '2019-02-21 18:43:03', '2019-02-21 18:43:03', null, null, null);
INSERT INTO `c_authority` VALUES ('8a4dea8e35c511e9bb48507b9d9e8623', '732', 'deleteEvaluateRecordFile', '删除评价记录附件', '5', '2', '/evaluateRecordFileController/deleteEvaluateRecordFile.do', '1', null, null, '8a44316035c511e9bb48507b9d9e8623', '2019-02-21 18:43:03', '2019-02-21 18:43:03', null, null, null);
INSERT INTO `c_authority` VALUES ('8a4fc07235c511e9bb48507b9d9e8623', '733', 'queryPageEvaluateRecordFile', '分页查询评价记录附件', '6', '1', '/evaluateRecordFileController/getPageData.do', '0', null, null, '8a44316035c511e9bb48507b9d9e8623', '2019-02-21 18:43:03', '2019-02-21 18:43:03', null, null, null);
INSERT INTO `c_authority` VALUES ('8b3cbbad08db4e48b7c3e9fa8bd6e52e', '305', 'getSysWhiteDomainDetail', '查询访问白名单详细', '4', '2', '/sysWhiteDomainController/getDetail.do', '1', '', null, 'f7936d0bea2d4228b21d6c4bb13e429a', '2017-12-19 15:26:45', '2017-12-19 15:26:45', null, '3', null);
INSERT INTO `c_authority` VALUES ('8cb05ff14ae911e98db3507b9dae4454', '806', 'iconConfigManage', '图标管理', '10', '0', '/iconConfigController/viewPage.do', '1', '/view/2019/03-21/0e181813-5773-4943-810c-c5b3d8769246.png', null, '3b5ea9dcb11d11e68bc4507b9dae4454', '2019-03-20 16:23:53', '2019-03-20 16:23:53', null, '3', null);
INSERT INTO `c_authority` VALUES ('8cb3c42d4ae911e98db3507b9dae4454', '807', 'skipAddIconConfig', '跳转添加图标', '1', '2', '/iconConfigController/skipAddIconConfig.do', '1', null, null, '8cb05ff14ae911e98db3507b9dae4454', '2019-03-20 16:23:53', '2019-03-20 16:23:53', null, null, null);
INSERT INTO `c_authority` VALUES ('8cb5d1524ae911e98db3507b9dae4454', '808', 'addIconConfig', '添加图标', '2', '2', '/iconConfigController/addIconConfig.do', '1', null, null, '8cb05ff14ae911e98db3507b9dae4454', '2019-03-20 16:23:53', '2019-03-20 16:23:53', null, null, null);
INSERT INTO `c_authority` VALUES ('8cb7b8ab4ae911e98db3507b9dae4454', '809', 'getIconConfigDetail', '查询图标详细', '3', '2', '/iconConfigController/getDetail.do', '1', null, null, '8cb05ff14ae911e98db3507b9dae4454', '2019-03-20 16:23:53', '2019-03-20 16:23:53', null, null, null);
INSERT INTO `c_authority` VALUES ('8cb9736c4ae911e98db3507b9dae4454', '810', 'editIconConfig', '编辑图标', '4', '2', '/iconConfigController/editIconConfig.do', '1', null, null, '8cb05ff14ae911e98db3507b9dae4454', '2019-03-20 16:23:53', '2019-03-20 16:23:53', null, null, null);
INSERT INTO `c_authority` VALUES ('8cbb663a4ae911e98db3507b9dae4454', '811', 'deleteIconConfig', '删除图标', '5', '2', '/iconConfigController/deleteIconConfig.do', '1', null, null, '8cb05ff14ae911e98db3507b9dae4454', '2019-03-20 16:23:53', '2019-03-20 16:23:53', null, null, null);
INSERT INTO `c_authority` VALUES ('8cbd72e74ae911e98db3507b9dae4454', '812', 'queryPageIconConfig', '分页查询图标', '6', '1', '/iconConfigController/getPageData.do', '0', null, null, '8cb05ff14ae911e98db3507b9dae4454', '2019-03-20 16:23:53', '2019-03-20 16:23:53', null, null, null);
INSERT INTO `c_authority` VALUES ('94CEF3D7561F45E4A38E7C5E86A9DF52', '39', 'loginLogManage', '登录日志管理', '99', '0', '/loginLogController/viewPage.do', '1', '/view/2019/03-20/54d9fd6b-f292-4dab-a03c-7a65143c0505.png', null, '3b5ea9dcb11d11e68bc4507b9dae4454', '2016-08-31 11:26:37', '2017-05-31 09:39:36', null, '3', null);
INSERT INTO `c_authority` VALUES ('955154513c0511e9bc9a507b9dae4454', '798', 'buildUnitEditEvaluateRecord', '修改履约评价', '1', '2', null, '1', null, null, '846821e83bf511e9bc9a507b9dae4454', '2019-03-01 17:36:20', '2019-03-01 17:36:20', null, '3', null);
INSERT INTO `c_authority` VALUES ('968624d034ea11e9a040507b9dae4454', '691', 'evaluateFormManage', '评分标准', '8', '0', '/evaluateFormController/viewPage.do', '1', '/view/2019/03-20/265ac085-a93f-4b64-bd50-b38d04af514b.png', '/view/2019/03-20/9381ee7c-28c3-46eb-a8b9-f05ad410e831.png', null, '2019-02-20 16:35:43', '2019-02-20 16:35:43', null, '1', null);
INSERT INTO `c_authority` VALUES ('968904f034ea11e9a040507b9dae4454', '692', 'skipAddEvaluateForm', '跳转添加评价表格', '1', '2', '/evaluateFormController/skipAddEvaluateForm.do', '1', null, null, '968624d034ea11e9a040507b9dae4454', '2019-02-20 16:35:43', '2019-02-20 16:35:43', null, null, null);
INSERT INTO `c_authority` VALUES ('968bc3e934ea11e9a040507b9dae4454', '693', 'addEvaluateForm', '添加评价表格', '2', '2', '/evaluateFormController/addEvaluateForm.do', '1', null, null, '968624d034ea11e9a040507b9dae4454', '2019-02-20 16:35:43', '2019-02-20 16:35:43', null, null, null);
INSERT INTO `c_authority` VALUES ('968e4a2c34ea11e9a040507b9dae4454', '694', 'getEvaluateFormDetail', '查询评价表格详细', '3', '2', '/evaluateFormController/getDetail.do', '1', null, null, '968624d034ea11e9a040507b9dae4454', '2019-02-20 16:35:43', '2019-02-20 16:35:43', null, null, null);
INSERT INTO `c_authority` VALUES ('9691485234ea11e9a040507b9dae4454', '695', 'editEvaluateForm', '编辑评价表格', '4', '2', '/evaluateFormController/editEvaluateForm.do', '1', null, null, '968624d034ea11e9a040507b9dae4454', '2019-02-20 16:35:43', '2019-02-20 16:35:43', null, null, null);
INSERT INTO `c_authority` VALUES ('9693a43b34ea11e9a040507b9dae4454', '696', 'deleteEvaluateForm', '删除评价表格', '5', '2', '/evaluateFormController/deleteEvaluateForm.do', '1', null, null, '968624d034ea11e9a040507b9dae4454', '2019-02-20 16:35:43', '2019-02-20 16:35:43', null, null, null);
INSERT INTO `c_authority` VALUES ('969692d034ea11e9a040507b9dae4454', '697', 'queryPageEvaluateForm', '分页查询评价表格', '6', '1', '/evaluateFormController/getPageData.do', '0', null, null, '968624d034ea11e9a040507b9dae4454', '2019-02-20 16:35:43', '2019-02-20 16:35:43', null, null, null);
INSERT INTO `c_authority` VALUES ('96f55f60b12011e68bc4507b9dae4454', '13', 'editRole', '修改角色', '5', '2', '/roleController/editRole.do', '1', '', null, '32ca861bb12011e68bc4507b9dae4454', '2016-11-23 10:00:21', '2019-02-20 11:34:58', null, '3', null);
INSERT INTO `c_authority` VALUES ('988eb94135c511e9bb48507b9d9e8623', '734', 'evaluateRecordInputManage', '评价记录录入项管理', '7', '1', '/evaluateRecordInputController/viewPage.do', '0', 'list', null, '7cab575235c511e9bb48507b9d9e8623', '2019-02-21 18:43:27', '2019-02-21 18:43:27', null, '3', null);
INSERT INTO `c_authority` VALUES ('989069fc35c511e9bb48507b9d9e8623', '735', 'skipAddEvaluateRecordInput', '跳转添加评价记录录入项', '1', '2', '/evaluateRecordInputController/skipAddEvaluateRecordInput.do', '1', null, null, '988eb94135c511e9bb48507b9d9e8623', '2019-02-21 18:43:27', '2019-02-21 18:43:27', null, null, null);
INSERT INTO `c_authority` VALUES ('9891ccde35c511e9bb48507b9d9e8623', '736', 'addEvaluateRecordInput', '添加评价记录录入项', '2', '2', '/evaluateRecordInputController/addEvaluateRecordInput.do', '1', null, null, '988eb94135c511e9bb48507b9d9e8623', '2019-02-21 18:43:27', '2019-02-21 18:43:27', null, null, null);
INSERT INTO `c_authority` VALUES ('9893504235c511e9bb48507b9d9e8623', '737', 'getEvaluateRecordInputDetail', '查询评价记录录入项详细', '3', '2', '/evaluateRecordInputController/getDetail.do', '1', null, null, '988eb94135c511e9bb48507b9d9e8623', '2019-02-21 18:43:27', '2019-02-21 18:43:27', null, null, null);
INSERT INTO `c_authority` VALUES ('98951aef35c511e9bb48507b9d9e8623', '738', 'editEvaluateRecordInput', '编辑评价记录录入项', '4', '2', '/evaluateRecordInputController/editEvaluateRecordInput.do', '1', null, null, '988eb94135c511e9bb48507b9d9e8623', '2019-02-21 18:43:27', '2019-02-21 18:43:27', null, null, null);
INSERT INTO `c_authority` VALUES ('9896ecfc35c511e9bb48507b9d9e8623', '739', 'deleteEvaluateRecordInput', '删除评价记录录入项', '5', '2', '/evaluateRecordInputController/deleteEvaluateRecordInput.do', '1', null, null, '988eb94135c511e9bb48507b9d9e8623', '2019-02-21 18:43:27', '2019-02-21 18:43:27', null, null, null);
INSERT INTO `c_authority` VALUES ('9898590935c511e9bb48507b9d9e8623', '740', 'queryPageEvaluateRecordInput', '分页查询评价记录录入项', '6', '1', '/evaluateRecordInputController/getPageData.do', '0', null, null, '988eb94135c511e9bb48507b9d9e8623', '2019-02-21 18:43:27', '2019-02-21 18:43:27', null, '3', null);
INSERT INTO `c_authority` VALUES ('98e5806f3a8311e98d57507b9dae4454', '779', 'manageEvaluateAudit', '管理单位评价审核', '6', '0', '/evaluateAuditController/viewManagePage.do', '1', '/view/2019/03-20/adf9760e-e18f-423f-b6c7-2de96e0ace72.png', '/view/2019/03-20/723e32d4-d1cc-4d97-8702-d5d1c3837e8d.png', null, '2019-02-27 19:33:58', '2019-02-27 19:33:58', null, '1', null);
INSERT INTO `c_authority` VALUES ('996c35593bd011e9bc9a507b9dae4454', '788', 'contractorViewEvaluateResult', '查看评价结果', '1', '2', null, '1', null, null, 'cdf0283f3bc711e9bc9a507b9dae4454', '2019-03-01 11:17:03', '2019-03-01 11:17:03', null, '3', null);
INSERT INTO `c_authority` VALUES ('9ac43a33b4bb11e7b9d4507b9dae4454', '114', 'designProcess', '设计流程页面', '10', '1', '/procNodeController/designProcess.do', '1', '', null, 'c2d8d93cb4ab11e7b9d4507b9dae4454', '2017-10-19 18:52:32', '2017-10-19 18:52:32', null, null, null);
INSERT INTO `c_authority` VALUES ('9ef5855e3c0511e9bc9a507b9dae4454', '799', 'buildUnitViewEvaluateResult', '查看评价详细', '2', '2', null, '1', null, null, '846821e83bf511e9bc9a507b9dae4454', '2019-03-01 17:36:36', '2019-03-01 17:36:36', null, '3', null);
INSERT INTO `c_authority` VALUES ('9f43d7ae34f511e9a040507b9dae4454', '713', 'unitManage', '单位管理', '4', '0', '/unitController/viewPage.do', '1', '/view/2019/03-20/6bbf8fd0-f32f-4b5c-b571-018469e83b0e.png', null, '3b5ea9dcb11d11e68bc4507b9dae4454', '2019-02-20 17:55:15', '2019-02-20 17:55:15', null, '3', null);
INSERT INTO `c_authority` VALUES ('9f465b6d34f511e9a040507b9dae4454', '714', 'skipAddUnit', '跳转添加单位', '1', '2', '/unitController/skipAddUnit.do', '1', null, null, '9f43d7ae34f511e9a040507b9dae4454', '2019-02-20 17:55:15', '2019-02-20 17:55:15', null, null, null);
INSERT INTO `c_authority` VALUES ('9f484e8734f511e9a040507b9dae4454', '715', 'addUnit', '添加单位', '2', '2', '/unitController/addUnit.do', '1', null, null, '9f43d7ae34f511e9a040507b9dae4454', '2019-02-20 17:55:15', '2019-02-20 17:55:15', null, null, null);
INSERT INTO `c_authority` VALUES ('9f4a365734f511e9a040507b9dae4454', '716', 'getUnitDetail', '查询单位详细', '3', '2', '/unitController/getDetail.do', '1', null, null, '9f43d7ae34f511e9a040507b9dae4454', '2019-02-20 17:55:15', '2019-02-20 17:55:15', null, null, null);
INSERT INTO `c_authority` VALUES ('9f4bf20634f511e9a040507b9dae4454', '717', 'editUnit', '编辑单位', '4', '2', '/unitController/editUnit.do', '1', null, null, '9f43d7ae34f511e9a040507b9dae4454', '2019-02-20 17:55:15', '2019-02-20 17:55:15', null, null, null);
INSERT INTO `c_authority` VALUES ('9f4e2e5a34f511e9a040507b9dae4454', '718', 'deleteUnit', '删除单位', '5', '2', '/unitController/deleteUnit.do', '1', null, null, '9f43d7ae34f511e9a040507b9dae4454', '2019-02-20 17:55:15', '2019-02-20 17:55:15', null, null, null);
INSERT INTO `c_authority` VALUES ('9f5053f834f511e9a040507b9dae4454', '719', 'queryPageUnit', '分页查询单位', '6', '1', '/unitController/getPageData.do', '0', null, null, '9f43d7ae34f511e9a040507b9dae4454', '2019-02-20 17:55:15', '2019-02-20 17:55:15', null, null, null);
INSERT INTO `c_authority` VALUES ('9faebf6fb7a749f69e89db0142632c72', '208', 'refreshWhiteDomain', '重置白名单缓存', '7', '2', '/sysWhiteDomainController/refreshWhiteDomain.do', '1', '', null, 'f7936d0bea2d4228b21d6c4bb13e429a', '2017-12-19 15:59:00', '2017-12-19 15:59:00', null, '3', null);
INSERT INTO `c_authority` VALUES ('a27f75b4b12011e68bc4507b9dae4454', '14', 'delRole', '删除角色', '6', '2', '/roleController/delRole.do', '1', '', null, '32ca861bb12011e68bc4507b9dae4454', '2016-11-23 10:00:41', '2019-02-20 11:34:59', null, '3', null);
INSERT INTO `c_authority` VALUES ('A485D461507C4C20846944B9EC66D507', '35', 'getZonePathList', '查询文件路径列表', '1', '1', '/zonePathController/getPageData.do', '0', '', null, '144B2E062AFE407B80FFE11494353EA2', '2016-09-01 14:27:17', '2019-02-20 11:35:46', null, '3', null);
INSERT INTO `c_authority` VALUES ('a5af4b903b3e11e9bc9a507b9dae4454', '781', 'addEvaluateRecordUnit2Contractor', '建设单位对承包商进行评价', '0', '2', null, '1', null, null, '7cab575235c511e9bb48507b9d9e8623', '2019-02-28 17:53:05', '2019-02-28 17:53:05', null, '3', null);
INSERT INTO `c_authority` VALUES ('a5cb92bd3bd911e9bc9a507b9dae4454', '793', 'editPleaReply', '异议反馈回复', '9', '2', null, '1', null, null, '7cab575235c511e9bb48507b9d9e8623', '2019-03-01 12:21:50', '2019-03-01 12:21:50', null, '3', null);
INSERT INTO `c_authority` VALUES ('a5ef800734ea11e9a040507b9dae4454', '698', 'evaluateFormIndexManage', '评价表格指标项管理', '7', '1', '/evaluateFormIndexController/viewPage.do', '0', 'list', null, '968624d034ea11e9a040507b9dae4454', '2019-02-20 16:36:09', '2019-02-20 16:36:09', null, '3', null);
INSERT INTO `c_authority` VALUES ('a5f2075934ea11e9a040507b9dae4454', '699', 'skipAddEvaluateFormIndex', '跳转添加评价表格指标项', '1', '2', '/evaluateFormIndexController/skipAddEvaluateFormIndex.do', '1', null, null, 'a5ef800734ea11e9a040507b9dae4454', '2019-02-20 16:36:09', '2019-02-20 16:36:09', null, null, null);
INSERT INTO `c_authority` VALUES ('a5f492e734ea11e9a040507b9dae4454', '700', 'addEvaluateFormIndex', '添加评价表格指标项', '2', '2', '/evaluateFormIndexController/addEvaluateFormIndex.do', '1', null, null, 'a5ef800734ea11e9a040507b9dae4454', '2019-02-20 16:36:09', '2019-02-20 16:36:09', null, null, null);
INSERT INTO `c_authority` VALUES ('a5f72b4334ea11e9a040507b9dae4454', '701', 'getEvaluateFormIndexDetail', '查询评价表格指标项详细', '3', '2', '/evaluateFormIndexController/getDetail.do', '1', null, null, 'a5ef800734ea11e9a040507b9dae4454', '2019-02-20 16:36:09', '2019-02-20 16:36:09', null, null, null);
INSERT INTO `c_authority` VALUES ('a5f9cc1334ea11e9a040507b9dae4454', '702', 'editEvaluateFormIndex', '编辑评价表格指标项', '4', '2', '/evaluateFormIndexController/editEvaluateFormIndex.do', '1', null, null, 'a5ef800734ea11e9a040507b9dae4454', '2019-02-20 16:36:09', '2019-02-20 16:36:09', null, null, null);
INSERT INTO `c_authority` VALUES ('a5fc134834ea11e9a040507b9dae4454', '703', 'deleteEvaluateFormIndex', '删除评价表格指标项', '5', '2', '/evaluateFormIndexController/deleteEvaluateFormIndex.do', '1', null, null, 'a5ef800734ea11e9a040507b9dae4454', '2019-02-20 16:36:09', '2019-02-20 16:36:09', null, null, null);
INSERT INTO `c_authority` VALUES ('a5fe63e634ea11e9a040507b9dae4454', '704', 'queryPageEvaluateFormIndex', '分页查询评价表格指标项', '6', '1', '/evaluateFormIndexController/getPageData.do', '0', null, null, 'a5ef800734ea11e9a040507b9dae4454', '2019-02-20 16:36:09', '2019-02-20 16:36:09', null, '3', null);
INSERT INTO `c_authority` VALUES ('ad2f2ee6b12011e68bc4507b9dae4454', '15', 'userManage', '用户管理', '1', '0', '/userController/viewPage.do', '1', '/view/2019/03-20/f2352225-aa28-4b47-86d2-6faf7bf2859a.png', null, '3b5ea9dcb11d11e68bc4507b9dae4454', '2016-11-23 10:00:59', '2017-05-18 11:23:20', null, '3', null);
INSERT INTO `c_authority` VALUES ('b5b408c9b12311e68bc4507b9dae4454', '21', 'changePassword', '管理员修改密码', '6', '2', '/userController/changePassword.do', '1', '', null, 'ad2f2ee6b12011e68bc4507b9dae4454', '2016-11-23 10:22:41', '2019-02-20 11:35:13', null, '3', null);
INSERT INTO `c_authority` VALUES ('b610547734ed11e9a040507b9dae4454', '705', 'contractorTypeManage', '承包商类型管理', '7', '0', '/contractorTypeController/viewPage.do', '1', 'window', null, '3b5ea9dcb11d11e68bc4507b9dae4454', '2019-02-20 16:58:34', '2019-02-20 16:58:34', null, '3', null);
INSERT INTO `c_authority` VALUES ('b612c85d34ed11e9a040507b9dae4454', '706', 'skipAddContractorType', '跳转添加承包商类型', '1', '2', '/contractorTypeController/skipAddContractorType.do', '1', null, null, 'b610547734ed11e9a040507b9dae4454', '2019-02-20 16:58:34', '2019-02-20 16:58:34', null, null, null);
INSERT INTO `c_authority` VALUES ('b614e9f334ed11e9a040507b9dae4454', '707', 'addContractorType', '添加承包商类型', '2', '2', '/contractorTypeController/addContractorType.do', '1', null, null, 'b610547734ed11e9a040507b9dae4454', '2019-02-20 16:58:34', '2019-02-20 16:58:34', null, null, null);
INSERT INTO `c_authority` VALUES ('b617802634ed11e9a040507b9dae4454', '708', 'getContractorTypeDetail', '查询承包商类型详细', '3', '2', '/contractorTypeController/getDetail.do', '1', null, null, 'b610547734ed11e9a040507b9dae4454', '2019-02-20 16:58:34', '2019-02-20 16:58:34', null, null, null);
INSERT INTO `c_authority` VALUES ('b61a3b3f34ed11e9a040507b9dae4454', '709', 'editContractorType', '编辑承包商类型', '4', '2', '/contractorTypeController/editContractorType.do', '1', null, null, 'b610547734ed11e9a040507b9dae4454', '2019-02-20 16:58:34', '2019-02-20 16:58:34', null, null, null);
INSERT INTO `c_authority` VALUES ('b61cad5734ed11e9a040507b9dae4454', '710', 'deleteContractorType', '删除承包商类型', '5', '2', '/contractorTypeController/deleteContractorType.do', '1', null, null, 'b610547734ed11e9a040507b9dae4454', '2019-02-20 16:58:34', '2019-02-20 16:58:34', null, null, null);
INSERT INTO `c_authority` VALUES ('b61f7c4d34ed11e9a040507b9dae4454', '711', 'queryPageContractorType', '分页查询承包商类型', '6', '1', '/contractorTypeController/getPageData.do', '0', null, null, 'b610547734ed11e9a040507b9dae4454', '2019-02-20 16:58:34', '2019-02-20 16:58:34', null, null, null);
INSERT INTO `c_authority` VALUES ('b751e35b3bf311e9bc9a507b9dae4454', '794', 'agentUnitViewEvaluateRecord', '查看履约评价', '1', '2', '/evaluateRecordController/agentUnit/viewPage.do', '1', null, null, '47a04aaf3bd611e9bc9a507b9dae4454', '2019-03-01 15:28:26', '2019-03-01 15:28:26', null, '3', null);
INSERT INTO `c_authority` VALUES ('be14dac2399e11e98d57507b9dae4454', '757', 'evaluateAuditManager', '评价审核', '5', '0', '/evaluateAuditController/viewPage.do', '1', '/view/2019/03-20/adf9760e-e18f-423f-b6c7-2de96e0ace72.png', '/view/2019/03-20/723e32d4-d1cc-4d97-8702-d5d1c3837e8d.png', null, '2019-02-26 16:15:49', '2019-02-26 16:15:49', null, '1', null);
INSERT INTO `c_authority` VALUES ('BE67B42B4F4C42258431DF0FCCB8BF1B', '40', 'getloginLogList', '查询登录日志列表', '1', '1', '/loginLogController/getPageData.do', '0', '', null, '94CEF3D7561F45E4A38E7C5E86A9DF52', '2016-08-31 11:30:26', '2019-02-20 11:35:34', null, '3', null);
INSERT INTO `c_authority` VALUES ('bffac23361084663bf470d2442e6861d', '205', 'changePwd', '重设密码', '2', '1', '/userController/changePwd.do', '1', null, null, '3680f6afb12411e68bc4507b9dae4454', '2017-06-05 15:43:17', '2017-06-05 15:43:17', null, '3', null);
INSERT INTO `c_authority` VALUES ('c2d8d93cb4ab11e7b9d4507b9dae4454', '108', 'prodefManage', '审核流程自定义', '6', '0', '/procDefController/viewPage.do', '1', '/view/2019/03-20/529c2cac-1ae9-423b-b755-4e8084d880fe.png', null, '3b5ea9dcb11d11e68bc4507b9dae4454', '2017-10-19 16:59:04', '2017-10-19 16:59:04', null, '3', null);
INSERT INTO `c_authority` VALUES ('c39858afb12311e68bc4507b9dae4454', '22', 'deleteUser', '删除用户', '7', '2', '/userController/deleteUser.do', '1', '', null, 'ad2f2ee6b12011e68bc4507b9dae4454', '2016-11-23 10:23:05', '2019-02-20 11:35:15', null, '3', null);
INSERT INTO `c_authority` VALUES ('c9bd3c4eb12111e68bc4507b9dae4454', '16', 'getUserList', '查询用户列表', '1', '1', '/userController/getPageData.do', '0', '', null, 'ad2f2ee6b12011e68bc4507b9dae4454', '2016-11-23 10:08:56', '2019-02-20 11:35:02', null, '3', null);
INSERT INTO `c_authority` VALUES ('ca94dc3414f111e7b61c507b9dae4454', '42', 'sysLogsManage', '系统日志管理', '15', '0', '/sysLogsController/viewPage.do', '1', '', null, '3b5ea9dcb11d11e68bc4507b9dae4454', '2017-03-30 10:37:18', '2017-03-30 10:37:18', null, '3', null);
INSERT INTO `c_authority` VALUES ('cdf0283f3bc711e9bc9a507b9dae4454', '785', 'contractorViewEvaluateRecord', '查看履约评价', '1', '2', '/evaluateRecordController/contractor/viewPage.do', '1', null, null, '5de7d86a3bc311e9bc9a507b9dae4454', '2019-03-01 10:14:06', '2019-03-01 10:14:06', null, '3', null);
INSERT INTO `c_authority` VALUES ('d471f8273a8511e98d57507b9dae4454', '780', 'skipEvaluateCheckPage', '查看审核详情', '4', '2', '/evaluateAuditController/skipCheckPage.do', '1', null, null, 'be14dac2399e11e98d57507b9dae4454', '2019-02-27 19:49:57', '2019-02-27 19:49:57', null, '3', null);
INSERT INTO `c_authority` VALUES ('D610CAB377F2475886011AED0BC04306', '36', 'delZonePath', '删除文件路径', '6', '2', '/zonePathController/delZonePath.do', '1', '', null, '144B2E062AFE407B80FFE11494353EA2', '2016-09-01 14:31:28', '2019-02-20 11:35:44', null, '3', null);
INSERT INTO `c_authority` VALUES ('D7A6DB3FD72C4F97A00DAC91E32541A5', '37', 'getZonePathDetail', '查询文件路径详细', '4', '2', '/zonePathController/getDetail.do', '1', '', null, '144B2E062AFE407B80FFE11494353EA2', '2016-09-01 14:29:12', '2019-02-20 11:35:41', null, '3', null);
INSERT INTO `c_authority` VALUES ('d92d154a3bc711e9bc9a507b9dae4454', '786', 'contractorEditPleaContent', '履约异议反馈', '3', '2', null, '1', null, null, 'cdf0283f3bc711e9bc9a507b9dae4454', '2019-03-01 10:14:25', '2019-03-01 10:14:25', null, '3', null);
INSERT INTO `c_authority` VALUES ('dcd0861ab4ae11e7b9d4507b9dae4454', '110', 'skipAddProcDef', '跳转添加流程定义', '3', '2', '/procDefController/skipAddProcDef.do', '1', '', null, 'c2d8d93cb4ab11e7b9d4507b9dae4454', '2017-10-19 17:21:16', '2017-10-19 17:21:16', null, null, null);
INSERT INTO `c_authority` VALUES ('dd77e2b2b11e11e68bc4507b9dae4454', '2', 'authManage', '权限管理', '3', '0', '/authController/viewPage.do', '1', '/view/2019/03-20/5d7abbf1-5386-42a0-8766-74ba32396b8e.png', null, '3b5ea9dcb11d11e68bc4507b9dae4454', '2016-11-23 09:48:01', '2017-05-31 09:38:17', null, '3', null);
INSERT INTO `c_authority` VALUES ('df69093afd3d467ab9f651bbd5a676be', '204', 'updateMyInfo', '修改个人信息', '1', '1', '/userController/updateMyInfo.do', '1', null, null, '3680f6afb12411e68bc4507b9dae4454', '2017-06-05 15:35:55', '2017-06-05 15:35:55', null, '3', null);
INSERT INTO `c_authority` VALUES ('e007c1f23a3311e98d57507b9dae4454', '760', 'skipEvaluateauditPage', '跳转审核页面', null, '1', '/evaluateAuditController/skipAuditPage.do', '1', null, null, 'be14dac2399e11e98d57507b9dae4454', '2019-02-27 10:03:17', '2019-02-27 10:03:17', null, '3', null);
INSERT INTO `c_authority` VALUES ('e1528e3014f111e7b61c507b9dae4454', '43', 'getSysLogsData', '查询系统日志列表', '1', '1', '/sysLogsController/getPageData.do', '0', '', null, 'ca94dc3414f111e7b61c507b9dae4454', '2017-03-30 10:37:56', '2017-03-30 10:37:56', null, '3', null);
INSERT INTO `c_authority` VALUES ('e167f1843bc711e9bc9a507b9dae4454', '787', 'contractorViewPleaReply', '查看反馈结果', '2', '2', null, '1', null, null, 'cdf0283f3bc711e9bc9a507b9dae4454', '2019-03-01 10:14:38', '2019-03-01 10:14:38', null, '3', null);
INSERT INTO `c_authority` VALUES ('e2c5cc7441dd489fb0985e6e9e30a98e', '149', 'systemMonitior', '系统监控', '16', '0', '/druid/index.html', '0', '', null, '3b5ea9dcb11d11e68bc4507b9dae4454', '2017-05-31 18:16:37', '2017-05-31 18:16:37', null, '3', null);
INSERT INTO `c_authority` VALUES ('e3d81f31b12111e68bc4507b9dae4454', '17', 'skipAddUser', '跳转添加用户', '2', '2', '/userController/skipAddUser.do', '1', '', null, 'ad2f2ee6b12011e68bc4507b9dae4454', '2016-11-23 10:09:40', '2019-02-20 11:35:05', null, '3', null);
INSERT INTO `c_authority` VALUES ('e96c38e772d44961824127217989cee9', '150', 'monitiorInfo', '监控信息', '1', '1', '/druid/**', '0', '', null, 'e2c5cc7441dd489fb0985e6e9e30a98e', '2017-05-31 18:18:18', '2017-05-31 18:18:18', null, '3', null);
INSERT INTO `c_authority` VALUES ('e9be1f7416e511e7aff900163e06a512', '46', 'editAuth', '修改权限', '5', '2', '/authController/editAuth.do', '1', '', null, 'dd77e2b2b11e11e68bc4507b9dae4454', '2017-04-01 22:17:19', '2017-04-01 22:17:19', null, '3', null);
INSERT INTO `c_authority` VALUES ('f13196e53c9e11e9b5be507b9dae4454', '801', 'adminViewEvaluateRecord', '查看履约评价', '5', '2', null, '1', null, null, 'f5820c1c34e511e9a040507b9dae4454', '2019-03-02 11:54:07', '2019-03-02 11:54:07', null, '3', null);
INSERT INTO `c_authority` VALUES ('f34538adb14311e68bc4507b9dae4454', '24', 'dictManage', '数字字典管理', '7', '0', '/dictController/viewPage.do', '1', '/view/2019/03-20/bd1b718d-c5de-480b-8c24-1ad5ba56b69c.png', null, '3b5ea9dcb11d11e68bc4507b9dae4454', '2016-11-23 14:13:29', '2017-05-31 09:38:23', null, '3', null);
INSERT INTO `c_authority` VALUES ('f5820c1c34e511e9a040507b9dae4454', '677', 'adminUnitProjectInfoManage', '项目信息管理', '1', '0', '/projectInfoController/viewPageAdminUnit.do', '1', '/view/2019/03-20/d80951f9-e89e-43df-b4f6-5c735afdde11.png', '/view/2019/03-20/aae1d7ff-e28a-4898-8546-149306a7d4b2.png', null, '2019-02-20 16:03:07', '2019-02-20 16:03:07', null, '1', null);
INSERT INTO `c_authority` VALUES ('f5840f3a34e511e9a040507b9dae4454', '678', 'importProjectInfo', '导入项目信息', '1', '2', '/projectInfoController/skipImportProjectInfo.do', '1', null, null, 'f5820c1c34e511e9a040507b9dae4454', '2019-02-20 16:03:07', '2019-02-20 16:03:07', null, '3', null);
INSERT INTO `c_authority` VALUES ('f58df60234e511e9a040507b9dae4454', '683', 'queryPageProjectInfo', '分页查询项目信息', '2', '1', '/projectInfoController/getPageData.do', '1', null, null, 'f5820c1c34e511e9a040507b9dae4454', '2019-02-20 16:03:07', '2019-02-20 16:03:07', null, '3', null);
INSERT INTO `c_authority` VALUES ('f7936d0bea2d4228b21d6c4bb13e429a', '301', 'sysWhiteDomainManage', '访问白名单管理', '17', '1', '/sysWhiteDomainController/viewPage.do', '1', '', null, '3b5ea9dcb11d11e68bc4507b9dae4454', '2017-12-19 15:24:33', '2017-12-19 15:24:33', null, '3', null);
INSERT INTO `c_authority` VALUES ('f98cc659b11e11e68bc4507b9dae4454', '3', 'getAuthList', '查询权限列表', '1', '1', '/authController/getPageData.do', '0', '', null, 'dd77e2b2b11e11e68bc4507b9dae4454', '2016-11-23 09:48:48', '2019-02-20 11:34:40', null, '3', null);
INSERT INTO `c_authority` VALUES ('fbd5792538a811e9ac97507b9dae4454', '756', 'setEvaluator', '设置评价人员', '7', '2', null, '1', null, null, '9f43d7ae34f511e9a040507b9dae4454', '2019-02-25 10:56:36', '2019-02-25 10:56:36', null, '3', null);
INSERT INTO `c_authority` VALUES ('FD1EB0BA0AB749C2AA400D225BF1C908', '41', 'delLoginLog', '删除登录日志', '2', '2', '/loginLogController/delLoginLog.do', '1', '', null, '94CEF3D7561F45E4A38E7C5E86A9DF52', '2016-08-31 11:31:01', '2019-02-20 11:35:36', null, '3', null);
INSERT INTO `c_authority` VALUES ('FF8D15F2F35340EABA64439982E033C6', '38', 'addZonePath', '添加文件路径', '3', '2', '/zonePathController/addZonePath.do', '1', '', null, '144B2E062AFE407B80FFE11494353EA2', '2016-09-01 14:28:16', '2019-02-20 11:35:39', null, '3', null);

-- ----------------------------
-- Table structure for c_authority_role
-- ----------------------------
DROP TABLE IF EXISTS `c_authority_role`;
CREATE TABLE `c_authority_role` (
  `role_id` varchar(32) NOT NULL,
  `auth_id` varchar(32) NOT NULL,
  PRIMARY KEY (`auth_id`,`role_id`) USING BTREE,
  KEY `FK_i7kop6y8ut3p0cs08l1f7m0dg` (`auth_id`) USING BTREE,
  KEY `FK_5kj1hdc1bi0or8skfwh2fvvci` (`role_id`) USING BTREE,
  CONSTRAINT `c_authority_role_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `c_role` (`id`),
  CONSTRAINT `c_authority_role_ibfk_2` FOREIGN KEY (`auth_id`) REFERENCES `c_authority` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of c_authority_role
-- ----------------------------
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '075cef3db14411e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '0ab359cfb4b611e7b9d4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '0ab359cfb4b611e7b9d4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '0ab359cfb4b611e7b9d4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '0bd88ede3c9f11e9b5be507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '0bd88ede3c9f11e9b5be507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '0be7056d34f511e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '0be7056d34f511e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '0be7056d34f511e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '0be7056d34f511e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '0f95872fb4af11e7b9d4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '0f95872fb4af11e7b9d4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '0f95872fb4af11e7b9d4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '144B2E062AFE407B80FFE11494353EA2');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '1a4a46493bd711e9bc9a507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '1f97c4a2b14411e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '20db6022b12311e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '20db6022b12311e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '20db6022b12311e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('a4cbabe8364011e985e9507b9d9e8623', '20db6022b12311e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '20db6022b12311e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '2998e8d03bfe11e9bc9a507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '308df89a3a3a11e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '308df89a3a3a11e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '308df89a3a3a11e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '308df89a3a3a11e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '326efc643bfe11e9bc9a507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '32ca861bb12011e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '33C22D17058648ADA85169ACC6D0FE82');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '3680f6afb12411e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '3680f6afb12411e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '3680f6afb12411e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('a4cbabe8364011e985e9507b9d9e8623', '3680f6afb12411e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '3680f6afb12411e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '368d7eaab4af11e7b9d4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '368d7eaab4af11e7b9d4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '368d7eaab4af11e7b9d4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '3875e4feb14411e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '3b5ea9dcb11d11e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '3b5ea9dcb11d11e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '3b5ea9dcb11d11e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('a4cbabe8364011e985e9507b9d9e8623', '3b5ea9dcb11d11e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '3b5ea9dcb11d11e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '474011dfb12211e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '474011dfb12211e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '474011dfb12211e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('a4cbabe8364011e985e9507b9d9e8623', '474011dfb12211e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '474011dfb12211e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '47a04aaf3bd611e9bc9a507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '4ad0e0dcb11f11e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '4e4e636a3a3a11e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '4e4e636a3a3a11e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '4e4e636a3a3a11e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '4e4e636a3a3a11e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '5093869c3bd711e9bc9a507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '523b0a82b12011e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '55bc7521b14411e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '56d9467ab11f11e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('a4cbabe8364011e985e9507b9d9e8623', '5de7d86a3bc311e9bc9a507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '61ac9dceb12011e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '627ad9f9b14411e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '69a17420b12311e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '69a17420b12311e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '69a17420b12311e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('a4cbabe8364011e985e9507b9d9e8623', '69a17420b12311e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '69a17420b12311e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '6a8efaf8b11f11e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '704da868b14411e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '73A67F3C1367404ABBB67D0E111A7366');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '73a6fe8b3a7711e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '73a6fe8b3a7711e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '73a9659e3a7711e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '73a9659e3a7711e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '73ab984e3a7711e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '73ab984e3a7711e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '73ad903e3a7711e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '73ad903e3a7711e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '73af43ed3a7711e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '73af43ed3a7711e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '73b0d7e43a7711e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '73b0d7e43a7711e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '73b2bf1e3a7711e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '73b2bf1e3a7711e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '74faf7e3b12011e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '77f188fab11f11e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '7cab575235c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '7cab575235c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '7cab575235c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '7cab575235c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '7cad4bc635c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '7caf2f1035c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '7caf2f1035c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '7caf2f1035c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '7cbf196335c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '7cc7a03535c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '7cc9ee3335c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '7ccc387035c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '7dd83b223e4f11e98e3c507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '7ec94aaf3bd511e9bc9a507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '816ed601b4ae11e7b9d4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '816ed601b4ae11e7b9d4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '816ed601b4ae11e7b9d4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '83e2cf3934e811e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '83e2cf3934e811e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '83e2cf3934e811e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '83e2cf3934e811e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '83e596e734e811e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '83e596e734e811e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '83e596e734e811e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '83e596e734e811e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '83e87a0634e811e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '83e87a0634e811e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '83e87a0634e811e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '83e87a0634e811e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '83eb1c4b34e811e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '83eb1c4b34e811e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '83eb1c4b34e811e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '83eb1c4b34e811e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '83ed417d34e811e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '83ed417d34e811e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '83ed417d34e811e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '83ed417d34e811e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '83ef2a6c34e811e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '83ef2a6c34e811e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '83ef2a6c34e811e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '83ef2a6c34e811e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '83f1b8c834e811e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '83f1b8c834e811e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '83f1b8c834e811e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '83f1b8c834e811e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '846821e83bf511e9bc9a507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '86C6BA4D08DF4086ABD89CD7C86C5DD6');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '8a2ced2db12011e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '8a44316035c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '8a44316035c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '8a44316035c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('a4cbabe8364011e985e9507b9d9e8623', '8a44316035c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '8a44316035c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '8a463e3435c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '8a463e3435c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '8a463e3435c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('a4cbabe8364011e985e9507b9d9e8623', '8a463e3435c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '8a463e3435c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '8a47ec1235c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '8a47ec1235c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '8a47ec1235c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('a4cbabe8364011e985e9507b9d9e8623', '8a47ec1235c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '8a47ec1235c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '8a49eff235c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '8a49eff235c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '8a49eff235c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('a4cbabe8364011e985e9507b9d9e8623', '8a49eff235c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '8a49eff235c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '8a4be82935c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '8a4be82935c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '8a4be82935c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('a4cbabe8364011e985e9507b9d9e8623', '8a4be82935c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '8a4be82935c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '8a4dea8e35c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '8a4dea8e35c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '8a4dea8e35c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('a4cbabe8364011e985e9507b9d9e8623', '8a4dea8e35c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '8a4dea8e35c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '8a4fc07235c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '8a4fc07235c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '8a4fc07235c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('a4cbabe8364011e985e9507b9d9e8623', '8a4fc07235c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '8a4fc07235c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '8cb05ff14ae911e98db3507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '8cb3c42d4ae911e98db3507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '8cb5d1524ae911e98db3507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '8cb7b8ab4ae911e98db3507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '8cb9736c4ae911e98db3507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '8cbb663a4ae911e98db3507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '8cbd72e74ae911e98db3507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '94CEF3D7561F45E4A38E7C5E86A9DF52');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '94CEF3D7561F45E4A38E7C5E86A9DF52');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '955154513c0511e9bc9a507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '968624d034ea11e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '968624d034ea11e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '968904f034ea11e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '968904f034ea11e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '968bc3e934ea11e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '968bc3e934ea11e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '968e4a2c34ea11e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '968e4a2c34ea11e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '9691485234ea11e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '9691485234ea11e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '9693a43b34ea11e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '9693a43b34ea11e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '969692d034ea11e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '969692d034ea11e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '96f55f60b12011e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '988eb94135c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '989069fc35c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '9891ccde35c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '9893504235c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '98951aef35c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '9896ecfc35c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '9898590935c511e9bb48507b9d9e8623');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '98e5806f3a8311e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '98e5806f3a8311e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('a4cbabe8364011e985e9507b9d9e8623', '996c35593bd011e9bc9a507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '9ac43a33b4bb11e7b9d4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '9ac43a33b4bb11e7b9d4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '9ac43a33b4bb11e7b9d4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '9ef5855e3c0511e9bc9a507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '9f43d7ae34f511e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '9f43d7ae34f511e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '9f465b6d34f511e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '9f465b6d34f511e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '9f484e8734f511e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '9f484e8734f511e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '9f484e8734f511e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '9f4a365734f511e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '9f4a365734f511e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '9f4bf20634f511e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '9f4bf20634f511e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '9f4e2e5a34f511e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '9f4e2e5a34f511e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '9f5053f834f511e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '9f5053f834f511e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'a27f75b4b12011e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'A485D461507C4C20846944B9EC66D507');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'a5cb92bd3bd911e9bc9a507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', 'a5cb92bd3bd911e9bc9a507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', 'a5cb92bd3bd911e9bc9a507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'a5ef800734ea11e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', 'a5ef800734ea11e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'a5f2075934ea11e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', 'a5f2075934ea11e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'a5f492e734ea11e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', 'a5f492e734ea11e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'a5f72b4334ea11e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', 'a5f72b4334ea11e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'a5f9cc1334ea11e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', 'a5f9cc1334ea11e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'a5fc134834ea11e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', 'a5fc134834ea11e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'a5fe63e634ea11e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', 'a5fe63e634ea11e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'ad2f2ee6b12011e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', 'ad2f2ee6b12011e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', 'ad2f2ee6b12011e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('a4cbabe8364011e985e9507b9d9e8623', 'ad2f2ee6b12011e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', 'ad2f2ee6b12011e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'b5b408c9b12311e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', 'b5b408c9b12311e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', 'b5b408c9b12311e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('a4cbabe8364011e985e9507b9d9e8623', 'b5b408c9b12311e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', 'b5b408c9b12311e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', 'b751e35b3bf311e9bc9a507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'be14dac2399e11e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', 'be14dac2399e11e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', 'be14dac2399e11e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', 'be14dac2399e11e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'BE67B42B4F4C42258431DF0FCCB8BF1B');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', 'BE67B42B4F4C42258431DF0FCCB8BF1B');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'bffac23361084663bf470d2442e6861d');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', 'bffac23361084663bf470d2442e6861d');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', 'bffac23361084663bf470d2442e6861d');
INSERT INTO `c_authority_role` VALUES ('a4cbabe8364011e985e9507b9d9e8623', 'bffac23361084663bf470d2442e6861d');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', 'bffac23361084663bf470d2442e6861d');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'c2d8d93cb4ab11e7b9d4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', 'c2d8d93cb4ab11e7b9d4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', 'c2d8d93cb4ab11e7b9d4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'c39858afb12311e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', 'c39858afb12311e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', 'c39858afb12311e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('a4cbabe8364011e985e9507b9d9e8623', 'c39858afb12311e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', 'c39858afb12311e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'c9bd3c4eb12111e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', 'c9bd3c4eb12111e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', 'c9bd3c4eb12111e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('a4cbabe8364011e985e9507b9d9e8623', 'c9bd3c4eb12111e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', 'c9bd3c4eb12111e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('a4cbabe8364011e985e9507b9d9e8623', 'cdf0283f3bc711e9bc9a507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'd471f8273a8511e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', 'd471f8273a8511e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', 'd471f8273a8511e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('a4cbabe8364011e985e9507b9d9e8623', 'd471f8273a8511e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', 'd471f8273a8511e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'D610CAB377F2475886011AED0BC04306');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'D7A6DB3FD72C4F97A00DAC91E32541A5');
INSERT INTO `c_authority_role` VALUES ('a4cbabe8364011e985e9507b9d9e8623', 'd92d154a3bc711e9bc9a507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'dcd0861ab4ae11e7b9d4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', 'dcd0861ab4ae11e7b9d4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', 'dcd0861ab4ae11e7b9d4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'dd77e2b2b11e11e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'df69093afd3d467ab9f651bbd5a676be');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', 'df69093afd3d467ab9f651bbd5a676be');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', 'df69093afd3d467ab9f651bbd5a676be');
INSERT INTO `c_authority_role` VALUES ('a4cbabe8364011e985e9507b9d9e8623', 'df69093afd3d467ab9f651bbd5a676be');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', 'df69093afd3d467ab9f651bbd5a676be');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'e007c1f23a3311e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', 'e007c1f23a3311e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', 'e007c1f23a3311e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', 'e007c1f23a3311e98d57507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('a4cbabe8364011e985e9507b9d9e8623', 'e167f1843bc711e9bc9a507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'e3d81f31b12111e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', 'e3d81f31b12111e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', 'e3d81f31b12111e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('a4cbabe8364011e985e9507b9d9e8623', 'e3d81f31b12111e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', 'e3d81f31b12111e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'e9be1f7416e511e7aff900163e06a512');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'f13196e53c9e11e9b5be507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', 'f13196e53c9e11e9b5be507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'f34538adb14311e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'f5820c1c34e511e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', 'f5820c1c34e511e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'f5840f3a34e511e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', 'f5840f3a34e511e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'f58df60234e511e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', 'f58df60234e511e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', 'f58df60234e511e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('bccdd20634e311e9a040507b9dae4454', 'f58df60234e511e9a040507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'f98cc659b11e11e68bc4507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'fbd5792538a811e9ac97507b9dae4454');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'FD1EB0BA0AB749C2AA400D225BF1C908');
INSERT INTO `c_authority_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', 'FD1EB0BA0AB749C2AA400D225BF1C908');
INSERT INTO `c_authority_role` VALUES ('14065dccb12011e68bc4507b9dae4454', 'FF8D15F2F35340EABA64439982E033C6');

-- ----------------------------
-- Table structure for c_basedict
-- ----------------------------
DROP TABLE IF EXISTS `c_basedict`;
CREATE TABLE `c_basedict` (
  `id` varchar(32) NOT NULL,
  `sort` bigint(20) NOT NULL AUTO_INCREMENT,
  `dict_item` varchar(255) NOT NULL,
  `dict_type` varchar(255) NOT NULL,
  `dict_value` varchar(255) NOT NULL,
  `dict_flag` int(11) NOT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dict_sort_key` (`sort`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_basedict
-- ----------------------------
INSERT INTO `c_basedict` VALUES ('031f6099079711e6aa01507b9dae4454', '2', '正常', 'auth_flag', '0', '1', null, '2016-03-29 12:09:53');
INSERT INTO `c_basedict` VALUES ('031f6102079711e6aa01507b9dae4454', '3', '控制', 'auth_flag', '1', '1', null, '2016-02-29 15:09:19');
INSERT INTO `c_basedict` VALUES ('031f6186079711e6aa01507b9dae4454', '4', '菜单', 'auth_type', '0', '1', null, '2016-02-29 15:10:01');
INSERT INTO `c_basedict` VALUES ('031f6220079711e6aa01507b9dae4454', '5', '访问', 'auth_type', '1', '1', null, '2016-02-29 15:10:16');
INSERT INTO `c_basedict` VALUES ('031f62ba079711e6aa01507b9dae4454', '8', '按钮', 'auth_type', '2', '1', null, '2016-03-03 11:58:39');
INSERT INTO `c_basedict` VALUES ('12cd43d6c1cb11e6b57b507b9dae4454', '67', '后端', 'role_type', '0', '1', null, '2016-12-14 15:01:03');
INSERT INTO `c_basedict` VALUES ('179f18d2c1cb11e6b57b507b9dae4454', '68', '前端', 'role_type', '1', '1', null, '2016-12-14 15:01:11');
INSERT INTO `c_basedict` VALUES ('3ebed677931c49098d5a3365443897c0', '11', '[更多]中的菜单', 'auth_position', '2', '1', '2018-10-30 10:21:54', '2018-10-30 10:21:54');
INSERT INTO `c_basedict` VALUES ('4302744934f211e9a040507b9dae4454', '206', '代建单位', 'unit_type', 'agent', '1', '2019-02-20 17:31:11', '2019-02-20 17:31:11');
INSERT INTO `c_basedict` VALUES ('88d9385834f211e9a040507b9dae4454', '207', '承包商', 'unit_type', 'contractor', '1', '2019-02-20 17:33:08', '2019-02-20 17:33:08');
INSERT INTO `c_basedict` VALUES ('a14e885627454741ae6e1b04441f1230', '203', '新窗口打开', 'auth_open_way', '2', '1', '2017-09-27 17:31:33', '2017-09-27 17:31:33');
INSERT INTO `c_basedict` VALUES ('b742ea8af244498faeb9dcc5717da934', '201', '本地打开', 'auth_open_way', '0', '1', '2017-09-27 17:31:07', '2017-09-27 17:31:07');
INSERT INTO `c_basedict` VALUES ('CA1ABCED526C47A7827DBA07D22DE9D2', '43', '临时文件', 'file_type', 'tempFile', '1', null, '2016-09-27 17:13:54');
INSERT INTO `c_basedict` VALUES ('d4638dbad3194a25b8a7db2a2fc6865a', '10', '首页顶端菜单', 'auth_position', '1', '1', '2018-10-30 10:19:04', '2018-10-30 10:19:04');
INSERT INTO `c_basedict` VALUES ('e1a5e2539b0041b58f33c8e72231f13e', '12', '非首页菜单', 'auth_position', '3', '1', '2018-10-30 10:22:19', '2018-10-30 10:22:19');
INSERT INTO `c_basedict` VALUES ('edf94d4134f111e9a040507b9dae4454', '204', '管理单位', 'unit_type', 'manage', '1', '2019-02-20 17:28:49', '2019-02-20 17:28:49');
INSERT INTO `c_basedict` VALUES ('ef1535664aea11e98db3507b9dae4454', '208', '一级菜单图标', 'icon_type', '1', '1', '2019-03-20 16:33:48', '2019-03-20 16:33:48');
INSERT INTO `c_basedict` VALUES ('F21CB370ADF0487B9E7ECB62697DCAEE', '52', '普通文件', 'file_type', 'commomFile', '1', null, '2016-09-01 14:12:54');
INSERT INTO `c_basedict` VALUES ('f6757b6634f111e9a040507b9dae4454', '205', '建设单位', 'unit_type', 'build', '1', '2019-02-20 17:29:03', '2019-02-20 17:29:03');
INSERT INTO `c_basedict` VALUES ('f8a142484aea11e98db3507b9dae4454', '209', '二级菜单图标', 'icon_type', '2', '1', '2019-03-20 16:34:04', '2019-03-20 16:34:04');
INSERT INTO `c_basedict` VALUES ('fa35a21903144529a7f5f701c3f9b48e', '202', '父窗口打开', 'auth_open_way', '1', '1', '2017-09-27 17:31:16', '2017-09-27 17:31:16');
INSERT INTO `c_basedict` VALUES ('fdec64c44aea11e98db3507b9dae4454', '210', '导航栏图标', 'icon_type', '3', '1', '2019-03-20 16:34:13', '2019-03-20 16:34:13');

-- ----------------------------
-- Table structure for c_department
-- ----------------------------
DROP TABLE IF EXISTS `c_department`;
CREATE TABLE `c_department` (
  `id` varchar(32) NOT NULL,
  `sort` bigint(20) NOT NULL AUTO_INCREMENT,
  `depart_no` varchar(50) DEFAULT NULL COMMENT '部门编号',
  `depart_name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `note` varchar(255) DEFAULT NULL COMMENT '备注',
  `level` int(11) DEFAULT NULL COMMENT '等级',
  `status` smallint(6) DEFAULT NULL COMMENT '状态',
  `flag` smallint(6) DEFAULT NULL COMMENT '标志',
  `unit_id` varchar(32) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_department_sort` (`sort`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_department
-- ----------------------------

-- ----------------------------
-- Table structure for c_icon_config
-- ----------------------------
DROP TABLE IF EXISTS `c_icon_config`;
CREATE TABLE `c_icon_config` (
  `id` varchar(32) NOT NULL,
  `base_file_id` bigint(20) NOT NULL,
  `icon_type` smallint(2) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_view_path` varchar(255) DEFAULT NULL,
  `create_by` varchar(50) DEFAULT NULL,
  `update_by` varchar(50) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_icon_config
-- ----------------------------
INSERT INTO `c_icon_config` VALUES ('2b94a9834af311e98db3507b9dae4454', '24', '2', '登录日志管理.png', '/view/2019/03-20/54d9fd6b-f292-4dab-a03c-7a65143c0505.png', '管理员', null, '2019-03-20 17:32:45', '2019-03-20 17:32:45');
INSERT INTO `c_icon_config` VALUES ('2b94cf304af311e98db3507b9dae4454', '26', '2', '部门管理.png', '/view/2019/03-20/9f543d2b-37a1-4cba-b0b1-69fedfc58b6f.png', '管理员', null, '2019-03-20 17:32:45', '2019-03-20 17:32:45');
INSERT INTO `c_icon_config` VALUES ('2b94f3b24af311e98db3507b9dae4454', '25', '2', '单位管理.png', '/view/2019/03-20/6bbf8fd0-f32f-4b5c-b571-018469e83b0e.png', '管理员', null, '2019-03-20 17:32:45', '2019-03-20 17:32:45');
INSERT INTO `c_icon_config` VALUES ('2b9d46604af311e98db3507b9dae4454', '27', '2', '工程类型管理.png', '/view/2019/03-20/c83bd6af-303a-4dcd-8b53-9fe9a0e35a94.png', '管理员', null, '2019-03-20 17:32:45', '2019-03-20 17:32:45');
INSERT INTO `c_icon_config` VALUES ('2b9ffccc4af311e98db3507b9dae4454', '28', '2', '角色管理.png', '/view/2019/03-20/f2352225-aa28-4b47-86d2-6faf7bf2859a.png', '管理员', null, '2019-03-20 17:32:46', '2019-03-20 17:32:46');
INSERT INTO `c_icon_config` VALUES ('2ba3663b4af311e98db3507b9dae4454', '29', '2', '权限管理.png', '/view/2019/03-20/5d7abbf1-5386-42a0-8766-74ba32396b8e.png', '管理员', null, '2019-03-20 17:32:46', '2019-03-20 17:32:46');
INSERT INTO `c_icon_config` VALUES ('2ba6b1e34af311e98db3507b9dae4454', '30', '2', '审核流程自定义.png', '/view/2019/03-20/529c2cac-1ae9-423b-b755-4e8084d880fe.png', '管理员', null, '2019-03-20 17:32:46', '2019-03-20 17:32:46');
INSERT INTO `c_icon_config` VALUES ('2ba95e9c4af311e98db3507b9dae4454', '31', '2', '数字字典管理.png', '/view/2019/03-20/bd1b718d-c5de-480b-8c24-1ad5ba56b69c.png', '管理员', null, '2019-03-20 17:32:46', '2019-03-20 17:32:46');
INSERT INTO `c_icon_config` VALUES ('2bac014d4af311e98db3507b9dae4454', '32', '2', '文件路径管理.png', '/view/2019/03-20/0fad4315-a0ae-46e5-8c63-f44e1c551126.png', '管理员', null, '2019-03-20 17:32:46', '2019-03-20 17:32:46');
INSERT INTO `c_icon_config` VALUES ('2bae83034af311e98db3507b9dae4454', '33', '2', '用户管理.png', '/view/2019/03-20/8c8d2534-e2d1-46f7-a053-00732df1d780.png', '管理员', null, '2019-03-20 17:32:46', '2019-03-20 17:32:46');
INSERT INTO `c_icon_config` VALUES ('82b2dd0a4af311e98db3507b9dae4454', '34', '3', '管理单位评价审核.png', '/view/2019/03-20/723e32d4-d1cc-4d97-8702-d5d1c3837e8d.png', '管理员', null, '2019-03-20 17:35:12', '2019-03-20 17:35:12');
INSERT INTO `c_icon_config` VALUES ('82b7680b4af311e98db3507b9dae4454', '35', '3', '评分标准.png', '/view/2019/03-20/9381ee7c-28c3-46eb-a8b9-f05ad410e831.png', '管理员', null, '2019-03-20 17:35:12', '2019-03-20 17:35:12');
INSERT INTO `c_icon_config` VALUES ('82b861544af311e98db3507b9dae4454', '36', '3', '评分统计.png', '/view/2019/03-20/819693bd-87f2-4295-9911-5f6caa97da43.png', '管理员', null, '2019-03-20 17:35:12', '2019-03-20 17:35:12');
INSERT INTO `c_icon_config` VALUES ('82bd88114af311e98db3507b9dae4454', '37', '3', '评价审核.png', '/view/2019/03-20/3221cd95-883f-4ff0-aed2-e79483782bef.png', '管理员', null, '2019-03-20 17:35:12', '2019-03-20 17:35:12');
INSERT INTO `c_icon_config` VALUES ('82c02d2f4af311e98db3507b9dae4454', '38', '3', '系统管理.png', '/view/2019/03-20/f7c8ea87-f526-4735-a63c-ee17107bd00e.png', '管理员', null, '2019-03-20 17:35:12', '2019-03-20 17:35:12');
INSERT INTO `c_icon_config` VALUES ('82c154604af311e98db3507b9dae4454', '39', '3', '项目信息管理.png', '/view/2019/03-20/aae1d7ff-e28a-4898-8546-149306a7d4b2.png', '管理员', null, '2019-03-20 17:35:12', '2019-03-20 17:35:12');
INSERT INTO `c_icon_config` VALUES ('92ce81754b8711e98db3507b9dae4454', '40', '2', '图标管理.png', '/view/2019/03-21/0e181813-5773-4943-810c-c5b3d8769246.png', '管理员', null, '2019-03-21 11:15:02', '2019-03-21 11:15:02');
INSERT INTO `c_icon_config` VALUES ('bba81b444c6e11e98db3507b9dae4454', '41', '2', '时钟.png', '/view/2019/03-22/b5595bc9-2020-4298-af19-2097378dca1a.png', '管理员', null, '2019-03-22 14:49:40', '2019-03-22 14:49:40');
INSERT INTO `c_icon_config` VALUES ('ccd0b7954af011e98db3507b9dae4454', '19', '1', '评分标准.png', '/view/2019/03-20/265ac085-a93f-4b64-bd50-b38d04af514b.png', '管理员', null, '2019-03-20 17:15:47', '2019-03-20 17:15:47');
INSERT INTO `c_icon_config` VALUES ('ccd0b79b4af011e98db3507b9dae4454', '18', '1', '管理单位评价审核.png', '/view/2019/03-20/adf9760e-e18f-423f-b6c7-2de96e0ace72.png', '管理员', null, '2019-03-20 17:15:47', '2019-03-20 17:15:47');
INSERT INTO `c_icon_config` VALUES ('ccd0da824af011e98db3507b9dae4454', '17', '1', '评分统计.png', '/view/2019/03-20/c37d3d3d-b49f-4be2-ae78-a92a4cf5feae.png', '管理员', null, '2019-03-20 17:15:47', '2019-03-20 17:15:47');
INSERT INTO `c_icon_config` VALUES ('ccdb61214af011e98db3507b9dae4454', '20', '1', '评价审核.png', '/view/2019/03-20/0ed1cc92-3016-4377-99f6-9591e14bd357.png', '管理员', null, '2019-03-20 17:15:47', '2019-03-20 17:15:47');
INSERT INTO `c_icon_config` VALUES ('ccdcb2854af011e98db3507b9dae4454', '21', '1', '首页.png', '/view/2019/03-20/fc74ed28-e425-4f69-9517-e6d9c3246e74.png', '管理员', null, '2019-03-20 17:15:48', '2019-03-20 17:15:48');
INSERT INTO `c_icon_config` VALUES ('ccde74414af011e98db3507b9dae4454', '22', '1', '系统管理.png', '/view/2019/03-20/9e0ccce8-e77d-4fb2-99ea-b04262eafd51.png', '管理员', null, '2019-03-20 17:15:48', '2019-03-20 17:15:48');
INSERT INTO `c_icon_config` VALUES ('cce4ae684af011e98db3507b9dae4454', '23', '1', '项目信息管理.png', '/view/2019/03-20/d80951f9-e89e-43df-b4f6-5c735afdde11.png', '管理员', null, '2019-03-20 17:15:48', '2019-03-20 17:15:48');

-- ----------------------------
-- Table structure for c_login_log
-- ----------------------------
DROP TABLE IF EXISTS `c_login_log`;
CREATE TABLE `c_login_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(32) DEFAULT NULL,
  `user_name` varchar(50) NOT NULL,
  `login_ip` bigint(20) NOT NULL,
  `log_details` varchar(255) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3527 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_login_log
-- ----------------------------
INSERT INTO `c_login_log` VALUES ('2506', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-20 16:06:21', '2019-02-20 16:06:21');
INSERT INTO `c_login_log` VALUES ('2507', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-20 16:06:59', '2019-02-20 16:06:59');
INSERT INTO `c_login_log` VALUES ('2508', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-20 16:08:35', '2019-02-20 16:08:35');
INSERT INTO `c_login_log` VALUES ('2509', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-20 16:09:44', '2019-02-20 16:09:44');
INSERT INTO `c_login_log` VALUES ('2510', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-20 16:13:59', '2019-02-20 16:13:59');
INSERT INTO `c_login_log` VALUES ('2511', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-20 16:22:32', '2019-02-20 16:22:32');
INSERT INTO `c_login_log` VALUES ('2512', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-20 16:23:42', '2019-02-20 16:23:42');
INSERT INTO `c_login_log` VALUES ('2513', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-20 16:34:42', '2019-02-20 16:34:42');
INSERT INTO `c_login_log` VALUES ('2514', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-20 16:38:15', '2019-02-20 16:38:15');
INSERT INTO `c_login_log` VALUES ('2515', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-20 16:38:48', '2019-02-20 16:38:48');
INSERT INTO `c_login_log` VALUES ('2516', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-20 16:39:22', '2019-02-20 16:39:22');
INSERT INTO `c_login_log` VALUES ('2517', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-20 16:57:04', '2019-02-20 16:57:04');
INSERT INTO `c_login_log` VALUES ('2518', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-20 17:01:05', '2019-02-20 17:01:05');
INSERT INTO `c_login_log` VALUES ('2519', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-20 17:04:10', '2019-02-20 17:04:10');
INSERT INTO `c_login_log` VALUES ('2520', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-20 17:21:33', '2019-02-20 17:21:33');
INSERT INTO `c_login_log` VALUES ('2521', null, 'admin', '3232235575', '用户成功登录系统', '2019-02-20 17:22:54', '2019-02-20 17:22:54');
INSERT INTO `c_login_log` VALUES ('2522', null, 'admin', '3232235559', '用户成功登录系统', '2019-02-20 17:29:07', '2019-02-20 17:29:07');
INSERT INTO `c_login_log` VALUES ('2523', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-20 17:32:00', '2019-02-20 17:32:00');
INSERT INTO `c_login_log` VALUES ('2524', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-20 17:38:27', '2019-02-20 17:38:27');
INSERT INTO `c_login_log` VALUES ('2525', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-20 17:39:07', '2019-02-20 17:39:07');
INSERT INTO `c_login_log` VALUES ('2526', null, 'admin', '3232235575', '用户成功登录系统(By remember me)', '2019-02-20 17:42:26', '2019-02-20 17:42:26');
INSERT INTO `c_login_log` VALUES ('2527', null, 'admin', '3232235575', '用户成功登录系统', '2019-02-20 17:52:40', '2019-02-20 17:52:40');
INSERT INTO `c_login_log` VALUES ('2528', null, 'admin', '3232235575', '用户成功登录系统', '2019-02-20 17:56:25', '2019-02-20 17:56:25');
INSERT INTO `c_login_log` VALUES ('2529', null, 'admin', '3232235575', '用户成功登录系统', '2019-02-20 17:57:44', '2019-02-20 17:57:44');
INSERT INTO `c_login_log` VALUES ('2530', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-20 18:04:53', '2019-02-20 18:04:53');
INSERT INTO `c_login_log` VALUES ('2531', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-20 18:21:07', '2019-02-20 18:21:07');
INSERT INTO `c_login_log` VALUES ('2532', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-20 18:42:44', '2019-02-20 18:42:44');
INSERT INTO `c_login_log` VALUES ('2533', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-20 18:47:58', '2019-02-20 18:47:58');
INSERT INTO `c_login_log` VALUES ('2534', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-20 18:59:12', '2019-02-20 18:59:12');
INSERT INTO `c_login_log` VALUES ('2535', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-20 19:00:54', '2019-02-20 19:00:54');
INSERT INTO `c_login_log` VALUES ('2536', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-20 19:01:35', '2019-02-20 19:01:35');
INSERT INTO `c_login_log` VALUES ('2537', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-20 19:04:32', '2019-02-20 19:04:32');
INSERT INTO `c_login_log` VALUES ('2538', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-20 19:23:38', '2019-02-20 19:23:38');
INSERT INTO `c_login_log` VALUES ('2539', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-20 19:54:18', '2019-02-20 19:54:18');
INSERT INTO `c_login_log` VALUES ('2540', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-20 19:57:42', '2019-02-20 19:57:42');
INSERT INTO `c_login_log` VALUES ('2541', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-20 19:59:26', '2019-02-20 19:59:26');
INSERT INTO `c_login_log` VALUES ('2542', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-20 20:00:38', '2019-02-20 20:00:38');
INSERT INTO `c_login_log` VALUES ('2543', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-20 20:08:08', '2019-02-20 20:08:08');
INSERT INTO `c_login_log` VALUES ('2544', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-20 20:14:46', '2019-02-20 20:14:46');
INSERT INTO `c_login_log` VALUES ('2545', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-20 20:24:44', '2019-02-20 20:24:44');
INSERT INTO `c_login_log` VALUES ('2546', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-20 20:32:55', '2019-02-20 20:32:55');
INSERT INTO `c_login_log` VALUES ('2547', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-20 20:35:10', '2019-02-20 20:35:10');
INSERT INTO `c_login_log` VALUES ('2548', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-21 08:42:35', '2019-02-21 08:42:35');
INSERT INTO `c_login_log` VALUES ('2549', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-21 08:47:26', '2019-02-21 08:47:26');
INSERT INTO `c_login_log` VALUES ('2550', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-21 08:53:16', '2019-02-21 08:53:16');
INSERT INTO `c_login_log` VALUES ('2551', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-21 08:59:35', '2019-02-21 08:59:35');
INSERT INTO `c_login_log` VALUES ('2552', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-21 09:22:49', '2019-02-21 09:22:49');
INSERT INTO `c_login_log` VALUES ('2553', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-21 09:23:34', '2019-02-21 09:23:34');
INSERT INTO `c_login_log` VALUES ('2554', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-21 09:31:29', '2019-02-21 09:31:29');
INSERT INTO `c_login_log` VALUES ('2555', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-21 09:35:14', '2019-02-21 09:35:14');
INSERT INTO `c_login_log` VALUES ('2556', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-21 09:41:39', '2019-02-21 09:41:39');
INSERT INTO `c_login_log` VALUES ('2557', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-21 09:45:08', '2019-02-21 09:45:08');
INSERT INTO `c_login_log` VALUES ('2558', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-21 09:49:07', '2019-02-21 09:49:07');
INSERT INTO `c_login_log` VALUES ('2559', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-21 11:20:51', '2019-02-21 11:20:51');
INSERT INTO `c_login_log` VALUES ('2560', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-21 11:31:21', '2019-02-21 11:31:21');
INSERT INTO `c_login_log` VALUES ('2561', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-21 11:53:27', '2019-02-21 11:53:27');
INSERT INTO `c_login_log` VALUES ('2562', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-22 10:14:38', '2019-02-22 10:14:38');
INSERT INTO `c_login_log` VALUES ('2563', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-22 10:15:06', '2019-02-22 10:15:06');
INSERT INTO `c_login_log` VALUES ('2564', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-22 10:16:08', '2019-02-22 10:16:08');
INSERT INTO `c_login_log` VALUES ('2565', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-22 10:36:41', '2019-02-22 10:36:41');
INSERT INTO `c_login_log` VALUES ('2566', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-22 10:41:43', '2019-02-22 10:41:43');
INSERT INTO `c_login_log` VALUES ('2567', null, 'admin', '3232235598', '用户成功登录系统', '2019-02-22 10:56:27', '2019-02-22 10:56:27');
INSERT INTO `c_login_log` VALUES ('2568', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-22 11:02:05', '2019-02-22 11:02:05');
INSERT INTO `c_login_log` VALUES ('2569', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-22 12:02:28', '2019-02-22 12:02:28');
INSERT INTO `c_login_log` VALUES ('2570', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-22 12:22:49', '2019-02-22 12:22:49');
INSERT INTO `c_login_log` VALUES ('2571', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-22 14:18:27', '2019-02-22 14:18:27');
INSERT INTO `c_login_log` VALUES ('2572', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-22 14:28:15', '2019-02-22 14:28:15');
INSERT INTO `c_login_log` VALUES ('2573', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-22 14:30:16', '2019-02-22 14:30:16');
INSERT INTO `c_login_log` VALUES ('2574', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-22 17:08:39', '2019-02-22 17:08:39');
INSERT INTO `c_login_log` VALUES ('2575', null, 'admin', '0', '用户成功登录系统(By remember me)', '2019-02-25 08:42:42', '2019-02-25 08:42:42');
INSERT INTO `c_login_log` VALUES ('2576', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-25 08:57:11', '2019-02-25 08:57:11');
INSERT INTO `c_login_log` VALUES ('2577', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-25 09:01:17', '2019-02-25 09:01:17');
INSERT INTO `c_login_log` VALUES ('2578', null, 'admin', '0', '用户成功登录系统(By remember me)', '2019-02-25 09:09:38', '2019-02-25 09:09:38');
INSERT INTO `c_login_log` VALUES ('2579', null, 'admin', '0', '用户成功登录系统', '2019-02-25 09:11:02', '2019-02-25 09:11:02');
INSERT INTO `c_login_log` VALUES ('2580', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-25 09:13:51', '2019-02-25 09:13:51');
INSERT INTO `c_login_log` VALUES ('2581', null, 'admin', '0', '用户成功登录系统', '2019-02-25 09:18:52', '2019-02-25 09:18:52');
INSERT INTO `c_login_log` VALUES ('2582', null, 'admin', '0', '用户成功登录系统(By remember me)', '2019-02-25 09:27:06', '2019-02-25 09:27:06');
INSERT INTO `c_login_log` VALUES ('2583', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-25 09:43:40', '2019-02-25 09:43:40');
INSERT INTO `c_login_log` VALUES ('2584', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-25 10:01:35', '2019-02-25 10:01:35');
INSERT INTO `c_login_log` VALUES ('2585', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-25 10:16:18', '2019-02-25 10:16:18');
INSERT INTO `c_login_log` VALUES ('2586', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-25 10:20:05', '2019-02-25 10:20:05');
INSERT INTO `c_login_log` VALUES ('2587', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-25 10:26:07', '2019-02-25 10:26:07');
INSERT INTO `c_login_log` VALUES ('2588', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-25 11:01:54', '2019-02-25 11:01:54');
INSERT INTO `c_login_log` VALUES ('2589', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-25 12:10:27', '2019-02-25 12:10:27');
INSERT INTO `c_login_log` VALUES ('2590', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-25 12:14:32', '2019-02-25 12:14:32');
INSERT INTO `c_login_log` VALUES ('2591', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-25 14:19:36', '2019-02-25 14:19:36');
INSERT INTO `c_login_log` VALUES ('2592', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-25 14:19:36', '2019-02-25 14:19:36');
INSERT INTO `c_login_log` VALUES ('2593', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-25 14:21:18', '2019-02-25 14:21:18');
INSERT INTO `c_login_log` VALUES ('2594', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-25 14:21:18', '2019-02-25 14:21:18');
INSERT INTO `c_login_log` VALUES ('2595', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-25 14:23:32', '2019-02-25 14:23:32');
INSERT INTO `c_login_log` VALUES ('2596', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-25 14:36:13', '2019-02-25 14:36:13');
INSERT INTO `c_login_log` VALUES ('2597', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-25 14:44:36', '2019-02-25 14:44:36');
INSERT INTO `c_login_log` VALUES ('2598', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-25 15:05:27', '2019-02-25 15:05:27');
INSERT INTO `c_login_log` VALUES ('2599', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-25 15:18:06', '2019-02-25 15:18:06');
INSERT INTO `c_login_log` VALUES ('2600', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-25 15:29:41', '2019-02-25 15:29:41');
INSERT INTO `c_login_log` VALUES ('2601', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-25 15:33:44', '2019-02-25 15:33:44');
INSERT INTO `c_login_log` VALUES ('2602', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-25 15:52:15', '2019-02-25 15:52:15');
INSERT INTO `c_login_log` VALUES ('2603', null, 'admin', '0', '用户成功登录系统(By remember me)', '2019-02-25 16:13:39', '2019-02-25 16:13:39');
INSERT INTO `c_login_log` VALUES ('2604', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-25 16:40:01', '2019-02-25 16:40:01');
INSERT INTO `c_login_log` VALUES ('2605', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-25 17:03:09', '2019-02-25 17:03:09');
INSERT INTO `c_login_log` VALUES ('2606', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-25 17:55:28', '2019-02-25 17:55:28');
INSERT INTO `c_login_log` VALUES ('2607', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-26 09:22:55', '2019-02-26 09:22:55');
INSERT INTO `c_login_log` VALUES ('2608', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-26 09:27:34', '2019-02-26 09:27:34');
INSERT INTO `c_login_log` VALUES ('2609', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-26 11:01:40', '2019-02-26 11:01:40');
INSERT INTO `c_login_log` VALUES ('2610', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-26 11:14:28', '2019-02-26 11:14:28');
INSERT INTO `c_login_log` VALUES ('2611', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-26 12:07:12', '2019-02-26 12:07:12');
INSERT INTO `c_login_log` VALUES ('2612', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-26 14:10:07', '2019-02-26 14:10:07');
INSERT INTO `c_login_log` VALUES ('2613', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-26 14:12:28', '2019-02-26 14:12:28');
INSERT INTO `c_login_log` VALUES ('2614', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-26 14:17:11', '2019-02-26 14:17:11');
INSERT INTO `c_login_log` VALUES ('2615', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-26 14:21:31', '2019-02-26 14:21:31');
INSERT INTO `c_login_log` VALUES ('2616', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-26 14:29:15', '2019-02-26 14:29:15');
INSERT INTO `c_login_log` VALUES ('2617', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-26 14:39:43', '2019-02-26 14:39:43');
INSERT INTO `c_login_log` VALUES ('2618', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-26 14:41:15', '2019-02-26 14:41:15');
INSERT INTO `c_login_log` VALUES ('2619', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-26 14:40:41', '2019-02-26 14:40:41');
INSERT INTO `c_login_log` VALUES ('2620', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-26 15:46:16', '2019-02-26 15:46:16');
INSERT INTO `c_login_log` VALUES ('2621', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-26 16:08:05', '2019-02-26 16:08:05');
INSERT INTO `c_login_log` VALUES ('2622', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-26 16:19:32', '2019-02-26 16:19:32');
INSERT INTO `c_login_log` VALUES ('2623', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-26 16:35:33', '2019-02-26 16:35:33');
INSERT INTO `c_login_log` VALUES ('2624', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-26 16:43:38', '2019-02-26 16:43:38');
INSERT INTO `c_login_log` VALUES ('2625', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-26 16:44:05', '2019-02-26 16:44:05');
INSERT INTO `c_login_log` VALUES ('2626', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-26 16:44:14', '2019-02-26 16:44:14');
INSERT INTO `c_login_log` VALUES ('2627', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-26 16:46:58', '2019-02-26 16:46:58');
INSERT INTO `c_login_log` VALUES ('2628', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-26 17:06:37', '2019-02-26 17:06:37');
INSERT INTO `c_login_log` VALUES ('2629', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-26 17:59:21', '2019-02-26 17:59:21');
INSERT INTO `c_login_log` VALUES ('2630', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-26 17:58:43', '2019-02-26 17:58:43');
INSERT INTO `c_login_log` VALUES ('2631', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-26 18:07:18', '2019-02-26 18:07:18');
INSERT INTO `c_login_log` VALUES ('2632', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-26 18:19:11', '2019-02-26 18:19:11');
INSERT INTO `c_login_log` VALUES ('2633', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-26 18:24:29', '2019-02-26 18:24:29');
INSERT INTO `c_login_log` VALUES ('2634', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-26 19:10:53', '2019-02-26 19:10:53');
INSERT INTO `c_login_log` VALUES ('2635', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-26 19:31:21', '2019-02-26 19:31:21');
INSERT INTO `c_login_log` VALUES ('2636', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-26 19:56:15', '2019-02-26 19:56:15');
INSERT INTO `c_login_log` VALUES ('2637', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-26 20:08:50', '2019-02-26 20:08:50');
INSERT INTO `c_login_log` VALUES ('2638', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-26 20:28:07', '2019-02-26 20:28:07');
INSERT INTO `c_login_log` VALUES ('2639', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-26 20:35:47', '2019-02-26 20:35:47');
INSERT INTO `c_login_log` VALUES ('2640', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-26 20:40:54', '2019-02-26 20:40:54');
INSERT INTO `c_login_log` VALUES ('2641', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 08:40:34', '2019-02-27 08:40:34');
INSERT INTO `c_login_log` VALUES ('2642', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 08:42:47', '2019-02-27 08:42:47');
INSERT INTO `c_login_log` VALUES ('2643', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 08:52:40', '2019-02-27 08:52:40');
INSERT INTO `c_login_log` VALUES ('2644', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 09:05:41', '2019-02-27 09:05:41');
INSERT INTO `c_login_log` VALUES ('2645', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 09:09:44', '2019-02-27 09:09:44');
INSERT INTO `c_login_log` VALUES ('2646', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 09:11:46', '2019-02-27 09:11:46');
INSERT INTO `c_login_log` VALUES ('2647', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 09:14:12', '2019-02-27 09:14:12');
INSERT INTO `c_login_log` VALUES ('2648', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 09:13:39', '2019-02-27 09:13:39');
INSERT INTO `c_login_log` VALUES ('2649', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 09:24:50', '2019-02-27 09:24:50');
INSERT INTO `c_login_log` VALUES ('2650', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 09:26:21', '2019-02-27 09:26:21');
INSERT INTO `c_login_log` VALUES ('2651', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 09:27:39', '2019-02-27 09:27:39');
INSERT INTO `c_login_log` VALUES ('2652', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 09:38:08', '2019-02-27 09:38:08');
INSERT INTO `c_login_log` VALUES ('2653', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 09:57:00', '2019-02-27 09:57:00');
INSERT INTO `c_login_log` VALUES ('2654', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 10:03:45', '2019-02-27 10:03:45');
INSERT INTO `c_login_log` VALUES ('2655', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 10:10:28', '2019-02-27 10:10:28');
INSERT INTO `c_login_log` VALUES ('2656', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 10:49:51', '2019-02-27 10:49:51');
INSERT INTO `c_login_log` VALUES ('2657', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 10:49:17', '2019-02-27 10:49:17');
INSERT INTO `c_login_log` VALUES ('2658', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 10:59:03', '2019-02-27 10:59:03');
INSERT INTO `c_login_log` VALUES ('2659', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 11:05:28', '2019-02-27 11:05:28');
INSERT INTO `c_login_log` VALUES ('2660', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 11:16:17', '2019-02-27 11:16:17');
INSERT INTO `c_login_log` VALUES ('2661', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 11:17:08', '2019-02-27 11:17:08');
INSERT INTO `c_login_log` VALUES ('2662', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 11:17:50', '2019-02-27 11:17:50');
INSERT INTO `c_login_log` VALUES ('2663', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 11:19:57', '2019-02-27 11:19:57');
INSERT INTO `c_login_log` VALUES ('2664', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 11:20:50', '2019-02-27 11:20:50');
INSERT INTO `c_login_log` VALUES ('2665', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 11:23:03', '2019-02-27 11:23:03');
INSERT INTO `c_login_log` VALUES ('2666', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 11:24:30', '2019-02-27 11:24:30');
INSERT INTO `c_login_log` VALUES ('2667', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 11:23:48', '2019-02-27 11:23:48');
INSERT INTO `c_login_log` VALUES ('2668', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 11:25:26', '2019-02-27 11:25:26');
INSERT INTO `c_login_log` VALUES ('2669', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 11:25:55', '2019-02-27 11:25:55');
INSERT INTO `c_login_log` VALUES ('2670', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 11:26:40', '2019-02-27 11:26:40');
INSERT INTO `c_login_log` VALUES ('2671', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 11:29:59', '2019-02-27 11:29:59');
INSERT INTO `c_login_log` VALUES ('2672', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 11:42:53', '2019-02-27 11:42:53');
INSERT INTO `c_login_log` VALUES ('2673', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 11:59:59', '2019-02-27 11:59:59');
INSERT INTO `c_login_log` VALUES ('2674', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 12:14:34', '2019-02-27 12:14:34');
INSERT INTO `c_login_log` VALUES ('2675', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 14:11:05', '2019-02-27 14:11:05');
INSERT INTO `c_login_log` VALUES ('2676', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 14:14:53', '2019-02-27 14:14:53');
INSERT INTO `c_login_log` VALUES ('2677', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 14:16:10', '2019-02-27 14:16:10');
INSERT INTO `c_login_log` VALUES ('2678', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 14:30:16', '2019-02-27 14:30:16');
INSERT INTO `c_login_log` VALUES ('2679', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 14:36:40', '2019-02-27 14:36:40');
INSERT INTO `c_login_log` VALUES ('2680', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 14:51:59', '2019-02-27 14:51:59');
INSERT INTO `c_login_log` VALUES ('2681', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 15:17:35', '2019-02-27 15:17:35');
INSERT INTO `c_login_log` VALUES ('2682', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 15:18:29', '2019-02-27 15:18:29');
INSERT INTO `c_login_log` VALUES ('2683', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 15:23:27', '2019-02-27 15:23:27');
INSERT INTO `c_login_log` VALUES ('2684', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 15:38:13', '2019-02-27 15:38:13');
INSERT INTO `c_login_log` VALUES ('2685', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 15:41:07', '2019-02-27 15:41:07');
INSERT INTO `c_login_log` VALUES ('2686', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 15:44:41', '2019-02-27 15:44:41');
INSERT INTO `c_login_log` VALUES ('2687', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 15:49:39', '2019-02-27 15:49:39');
INSERT INTO `c_login_log` VALUES ('2688', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 15:51:19', '2019-02-27 15:51:19');
INSERT INTO `c_login_log` VALUES ('2689', null, 'zj2', '2130706433', '用户成功登录系统', '2019-02-27 15:51:51', '2019-02-27 15:51:51');
INSERT INTO `c_login_log` VALUES ('2690', null, 'zj2', '2130706433', '用户成功登录系统', '2019-02-27 15:52:27', '2019-02-27 15:52:27');
INSERT INTO `c_login_log` VALUES ('2691', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 16:15:55', '2019-02-27 16:15:55');
INSERT INTO `c_login_log` VALUES ('2692', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 16:47:13', '2019-02-27 16:47:13');
INSERT INTO `c_login_log` VALUES ('2693', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 16:49:34', '2019-02-27 16:49:34');
INSERT INTO `c_login_log` VALUES ('2694', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 17:04:59', '2019-02-27 17:04:59');
INSERT INTO `c_login_log` VALUES ('2695', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 17:16:02', '2019-02-27 17:16:02');
INSERT INTO `c_login_log` VALUES ('2696', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 17:35:44', '2019-02-27 17:35:44');
INSERT INTO `c_login_log` VALUES ('2697', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 17:40:02', '2019-02-27 17:40:02');
INSERT INTO `c_login_log` VALUES ('2698', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 18:06:11', '2019-02-27 18:06:11');
INSERT INTO `c_login_log` VALUES ('2699', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 18:07:39', '2019-02-27 18:07:39');
INSERT INTO `c_login_log` VALUES ('2700', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 18:08:14', '2019-02-27 18:08:14');
INSERT INTO `c_login_log` VALUES ('2701', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 18:12:18', '2019-02-27 18:12:18');
INSERT INTO `c_login_log` VALUES ('2702', null, 'zj2', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 18:39:09', '2019-02-27 18:39:09');
INSERT INTO `c_login_log` VALUES ('2703', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 18:57:59', '2019-02-27 18:57:59');
INSERT INTO `c_login_log` VALUES ('2704', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 19:04:57', '2019-02-27 19:04:57');
INSERT INTO `c_login_log` VALUES ('2705', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 19:13:28', '2019-02-27 19:13:28');
INSERT INTO `c_login_log` VALUES ('2706', null, 'zj2', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 19:14:34', '2019-02-27 19:14:34');
INSERT INTO `c_login_log` VALUES ('2707', null, 'zj2', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 19:23:04', '2019-02-27 19:23:04');
INSERT INTO `c_login_log` VALUES ('2708', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 19:25:46', '2019-02-27 19:25:46');
INSERT INTO `c_login_log` VALUES ('2709', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 19:29:08', '2019-02-27 19:29:08');
INSERT INTO `c_login_log` VALUES ('2710', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 19:29:08', '2019-02-27 19:29:08');
INSERT INTO `c_login_log` VALUES ('2711', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 19:30:39', '2019-02-27 19:30:39');
INSERT INTO `c_login_log` VALUES ('2712', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 19:44:31', '2019-02-27 19:44:31');
INSERT INTO `c_login_log` VALUES ('2713', null, 'zj2', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 19:47:45', '2019-02-27 19:47:45');
INSERT INTO `c_login_log` VALUES ('2714', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 19:48:13', '2019-02-27 19:48:13');
INSERT INTO `c_login_log` VALUES ('2715', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 19:50:19', '2019-02-27 19:50:19');
INSERT INTO `c_login_log` VALUES ('2716', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 19:59:27', '2019-02-27 19:59:27');
INSERT INTO `c_login_log` VALUES ('2717', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 20:04:07', '2019-02-27 20:04:07');
INSERT INTO `c_login_log` VALUES ('2718', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-27 20:07:01', '2019-02-27 20:07:01');
INSERT INTO `c_login_log` VALUES ('2719', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 20:30:41', '2019-02-27 20:30:41');
INSERT INTO `c_login_log` VALUES ('2720', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 20:37:07', '2019-02-27 20:37:07');
INSERT INTO `c_login_log` VALUES ('2721', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 20:38:11', '2019-02-27 20:38:11');
INSERT INTO `c_login_log` VALUES ('2722', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-27 20:39:57', '2019-02-27 20:39:57');
INSERT INTO `c_login_log` VALUES ('2723', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-28 08:45:36', '2019-02-28 08:45:36');
INSERT INTO `c_login_log` VALUES ('2724', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-28 08:53:55', '2019-02-28 08:53:55');
INSERT INTO `c_login_log` VALUES ('2725', null, 'admin', '3232235549', '用户成功登录系统', '2019-02-28 09:16:43', '2019-02-28 09:16:43');
INSERT INTO `c_login_log` VALUES ('2726', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-28 10:11:50', '2019-02-28 10:11:50');
INSERT INTO `c_login_log` VALUES ('2727', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-28 10:12:50', '2019-02-28 10:12:50');
INSERT INTO `c_login_log` VALUES ('2728', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-28 10:19:15', '2019-02-28 10:19:15');
INSERT INTO `c_login_log` VALUES ('2729', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-28 10:22:59', '2019-02-28 10:22:59');
INSERT INTO `c_login_log` VALUES ('2730', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-28 14:13:56', '2019-02-28 14:13:56');
INSERT INTO `c_login_log` VALUES ('2731', null, 'admin', '3232235549', '用户成功登录系统(By remember me)', '2019-02-28 14:22:16', '2019-02-28 14:22:16');
INSERT INTO `c_login_log` VALUES ('2732', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-28 14:34:12', '2019-02-28 14:34:12');
INSERT INTO `c_login_log` VALUES ('2733', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-28 14:38:23', '2019-02-28 14:38:23');
INSERT INTO `c_login_log` VALUES ('2734', null, 'admin', '3232235549', '用户成功登录系统(By remember me)', '2019-02-28 14:51:24', '2019-02-28 14:51:24');
INSERT INTO `c_login_log` VALUES ('2735', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-28 14:53:45', '2019-02-28 14:53:45');
INSERT INTO `c_login_log` VALUES ('2736', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-28 14:54:06', '2019-02-28 14:54:06');
INSERT INTO `c_login_log` VALUES ('2737', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-28 14:58:19', '2019-02-28 14:58:19');
INSERT INTO `c_login_log` VALUES ('2738', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-28 14:59:02', '2019-02-28 14:59:02');
INSERT INTO `c_login_log` VALUES ('2739', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-28 15:01:30', '2019-02-28 15:01:30');
INSERT INTO `c_login_log` VALUES ('2740', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-28 15:02:55', '2019-02-28 15:02:55');
INSERT INTO `c_login_log` VALUES ('2741', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-28 15:05:55', '2019-02-28 15:05:55');
INSERT INTO `c_login_log` VALUES ('2742', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-28 15:27:37', '2019-02-28 15:27:37');
INSERT INTO `c_login_log` VALUES ('2743', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-28 15:32:34', '2019-02-28 15:32:34');
INSERT INTO `c_login_log` VALUES ('2744', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-28 15:37:31', '2019-02-28 15:37:31');
INSERT INTO `c_login_log` VALUES ('2745', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-28 15:38:42', '2019-02-28 15:38:42');
INSERT INTO `c_login_log` VALUES ('2746', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-28 15:39:17', '2019-02-28 15:39:17');
INSERT INTO `c_login_log` VALUES ('2747', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-28 15:54:53', '2019-02-28 15:54:53');
INSERT INTO `c_login_log` VALUES ('2748', null, 'admin', '3232235549', '用户成功登录系统(By remember me)', '2019-02-28 16:04:36', '2019-02-28 16:04:36');
INSERT INTO `c_login_log` VALUES ('2749', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-28 16:26:56', '2019-02-28 16:26:56');
INSERT INTO `c_login_log` VALUES ('2750', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-28 16:41:16', '2019-02-28 16:41:16');
INSERT INTO `c_login_log` VALUES ('2751', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-28 17:03:38', '2019-02-28 17:03:38');
INSERT INTO `c_login_log` VALUES ('2752', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-28 17:22:45', '2019-02-28 17:22:45');
INSERT INTO `c_login_log` VALUES ('2753', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-28 17:23:21', '2019-02-28 17:23:21');
INSERT INTO `c_login_log` VALUES ('2754', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-28 17:23:59', '2019-02-28 17:23:59');
INSERT INTO `c_login_log` VALUES ('2755', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-28 17:25:36', '2019-02-28 17:25:36');
INSERT INTO `c_login_log` VALUES ('2756', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-28 17:32:39', '2019-02-28 17:32:39');
INSERT INTO `c_login_log` VALUES ('2757', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-28 17:52:21', '2019-02-28 17:52:21');
INSERT INTO `c_login_log` VALUES ('2758', null, 'admin', '0', '用户成功登录系统', '2019-02-28 17:54:00', '2019-02-28 17:54:00');
INSERT INTO `c_login_log` VALUES ('2759', null, 'admin', '3232235549', '用户成功登录系统(By remember me)', '2019-02-28 17:55:12', '2019-02-28 17:55:12');
INSERT INTO `c_login_log` VALUES ('2760', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-28 18:06:21', '2019-02-28 18:06:21');
INSERT INTO `c_login_log` VALUES ('2761', null, 'admin', '0', '用户成功登录系统(By remember me)', '2019-02-28 19:08:21', '2019-02-28 19:08:21');
INSERT INTO `c_login_log` VALUES ('2762', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-28 19:10:26', '2019-02-28 19:10:26');
INSERT INTO `c_login_log` VALUES ('2763', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-28 19:12:58', '2019-02-28 19:12:58');
INSERT INTO `c_login_log` VALUES ('2764', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-28 19:19:17', '2019-02-28 19:19:17');
INSERT INTO `c_login_log` VALUES ('2765', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-28 19:27:23', '2019-02-28 19:27:23');
INSERT INTO `c_login_log` VALUES ('2766', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-28 19:33:56', '2019-02-28 19:33:56');
INSERT INTO `c_login_log` VALUES ('2767', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-02-28 20:15:59', '2019-02-28 20:15:59');
INSERT INTO `c_login_log` VALUES ('2768', null, 'admin', '2130706433', '用户成功登录系统', '2019-02-28 20:16:37', '2019-02-28 20:16:37');
INSERT INTO `c_login_log` VALUES ('2769', null, 'admin', '0', '用户成功登录系统(By remember me)', '2019-02-28 20:36:25', '2019-02-28 20:36:25');
INSERT INTO `c_login_log` VALUES ('2770', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-01 08:37:31', '2019-03-01 08:37:31');
INSERT INTO `c_login_log` VALUES ('2771', null, 'admin', '0', '用户成功登录系统', '2019-03-01 08:46:01', '2019-03-01 08:46:01');
INSERT INTO `c_login_log` VALUES ('2772', null, 'admin', '0', '用户成功登录系统', '2019-03-01 08:48:11', '2019-03-01 08:48:11');
INSERT INTO `c_login_log` VALUES ('2773', null, 'admin', '0', '用户成功登录系统(By remember me)', '2019-03-01 08:57:04', '2019-03-01 08:57:04');
INSERT INTO `c_login_log` VALUES ('2774', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-01 08:57:28', '2019-03-01 08:57:28');
INSERT INTO `c_login_log` VALUES ('2775', null, 'admin', '0', '用户成功登录系统', '2019-03-01 09:04:45', '2019-03-01 09:04:45');
INSERT INTO `c_login_log` VALUES ('2776', null, 'zj1', '0', '用户成功登录系统', '2019-03-01 09:05:42', '2019-03-01 09:05:42');
INSERT INTO `c_login_log` VALUES ('2777', null, 'admin', '0', '用户成功登录系统', '2019-03-01 09:05:54', '2019-03-01 09:05:54');
INSERT INTO `c_login_log` VALUES ('2778', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-01 09:07:14', '2019-03-01 09:07:14');
INSERT INTO `c_login_log` VALUES ('2779', null, 'zj1', '0', '用户成功登录系统', '2019-03-01 09:09:25', '2019-03-01 09:09:25');
INSERT INTO `c_login_log` VALUES ('2780', null, 'zj1', '2130706433', '用户成功登录系统', '2019-03-01 09:33:15', '2019-03-01 09:33:15');
INSERT INTO `c_login_log` VALUES ('2781', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-01 09:34:17', '2019-03-01 09:34:17');
INSERT INTO `c_login_log` VALUES ('2782', null, 'zj1', '2130706433', '用户成功登录系统(By remember me)', '2019-03-01 09:43:05', '2019-03-01 09:43:05');
INSERT INTO `c_login_log` VALUES ('2783', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-01 09:43:36', '2019-03-01 09:43:36');
INSERT INTO `c_login_log` VALUES ('2784', null, 'sgAdmin', '2130706433', '用户成功登录系统', '2019-03-01 09:53:47', '2019-03-01 09:53:47');
INSERT INTO `c_login_log` VALUES ('2785', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-01 09:56:41', '2019-03-01 09:56:41');
INSERT INTO `c_login_log` VALUES ('2786', null, 'sgAdmin', '2130706433', '用户成功登录系统', '2019-03-01 10:15:13', '2019-03-01 10:15:13');
INSERT INTO `c_login_log` VALUES ('2787', null, 'sgAdmin', '2130706433', '用户成功登录系统', '2019-03-01 10:44:23', '2019-03-01 10:44:23');
INSERT INTO `c_login_log` VALUES ('2788', null, 'sgAdmin', '2130706433', '用户成功登录系统', '2019-03-01 11:14:11', '2019-03-01 11:14:11');
INSERT INTO `c_login_log` VALUES ('2789', null, 'sgAdmin', '2130706433', '用户成功登录系统', '2019-03-01 11:15:46', '2019-03-01 11:15:46');
INSERT INTO `c_login_log` VALUES ('2790', null, 'sgAdmin', '2130706433', '用户成功登录系统', '2019-03-01 11:17:27', '2019-03-01 11:17:27');
INSERT INTO `c_login_log` VALUES ('2791', null, 'sgAdmin', '2130706433', '用户成功登录系统', '2019-03-01 11:19:47', '2019-03-01 11:19:47');
INSERT INTO `c_login_log` VALUES ('2792', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-01 11:32:55', '2019-03-01 11:32:55');
INSERT INTO `c_login_log` VALUES ('2793', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-01 11:32:55', '2019-03-01 11:32:55');
INSERT INTO `c_login_log` VALUES ('2794', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-01 11:32:55', '2019-03-01 11:32:55');
INSERT INTO `c_login_log` VALUES ('2795', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-01 11:32:56', '2019-03-01 11:32:56');
INSERT INTO `c_login_log` VALUES ('2796', null, 'sgAdmin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-01 11:56:13', '2019-03-01 11:56:13');
INSERT INTO `c_login_log` VALUES ('2797', null, 'sgAdmin', '2130706433', '用户成功登录系统', '2019-03-01 11:57:05', '2019-03-01 11:57:05');
INSERT INTO `c_login_log` VALUES ('2798', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-01 12:07:24', '2019-03-01 12:07:24');
INSERT INTO `c_login_log` VALUES ('2799', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-01 12:22:21', '2019-03-01 12:22:21');
INSERT INTO `c_login_log` VALUES ('2800', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-01 12:22:59', '2019-03-01 12:22:59');
INSERT INTO `c_login_log` VALUES ('2801', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-01 12:23:31', '2019-03-01 12:23:31');
INSERT INTO `c_login_log` VALUES ('2802', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-01 12:27:15', '2019-03-01 12:27:15');
INSERT INTO `c_login_log` VALUES ('2803', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-01 12:30:22', '2019-03-01 12:30:22');
INSERT INTO `c_login_log` VALUES ('2804', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-01 14:08:34', '2019-03-01 14:08:34');
INSERT INTO `c_login_log` VALUES ('2805', null, 'sgAdmin', '2130706433', '用户成功登录系统', '2019-03-01 14:32:41', '2019-03-01 14:32:41');
INSERT INTO `c_login_log` VALUES ('2806', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-01 14:32:47', '2019-03-01 14:32:47');
INSERT INTO `c_login_log` VALUES ('2807', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-01 14:44:34', '2019-03-01 14:44:34');
INSERT INTO `c_login_log` VALUES ('2808', null, 'zj1', '2130706433', '用户成功登录系统', '2019-03-01 14:50:38', '2019-03-01 14:50:38');
INSERT INTO `c_login_log` VALUES ('2809', null, 'djadmin', '2130706433', '用户成功登录系统', '2019-03-01 14:52:09', '2019-03-01 14:52:09');
INSERT INTO `c_login_log` VALUES ('2810', null, 'zj1', '2130706433', '用户成功登录系统(By remember me)', '2019-03-01 14:54:01', '2019-03-01 14:54:01');
INSERT INTO `c_login_log` VALUES ('2811', null, 'djadmin', '2130706433', '用户成功登录系统', '2019-03-01 14:53:57', '2019-03-01 14:53:57');
INSERT INTO `c_login_log` VALUES ('2812', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-01 14:54:57', '2019-03-01 14:54:57');
INSERT INTO `c_login_log` VALUES ('2813', null, 'djadmin', '2130706433', '用户成功登录系统', '2019-03-01 14:56:55', '2019-03-01 14:56:55');
INSERT INTO `c_login_log` VALUES ('2814', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-01 15:20:29', '2019-03-01 15:20:29');
INSERT INTO `c_login_log` VALUES ('2815', null, 'djadmin', '2130706433', '用户成功登录系统', '2019-03-01 15:24:01', '2019-03-01 15:24:01');
INSERT INTO `c_login_log` VALUES ('2816', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-01 15:29:22', '2019-03-01 15:29:22');
INSERT INTO `c_login_log` VALUES ('2817', null, 'zj1', '2130706433', '用户成功登录系统(By remember me)', '2019-03-01 15:31:24', '2019-03-01 15:31:24');
INSERT INTO `c_login_log` VALUES ('2818', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-01 15:33:10', '2019-03-01 15:33:10');
INSERT INTO `c_login_log` VALUES ('2819', null, 'ftAdmin', '2130706433', '用户成功登录系统', '2019-03-01 15:33:45', '2019-03-01 15:33:45');
INSERT INTO `c_login_log` VALUES ('2820', null, 'zj1', '2130706433', '用户成功登录系统(By remember me)', '2019-03-01 15:34:00', '2019-03-01 15:34:00');
INSERT INTO `c_login_log` VALUES ('2821', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-01 15:34:09', '2019-03-01 15:34:09');
INSERT INTO `c_login_log` VALUES ('2822', null, 'wwbt', '2130706433', '用户成功登录系统', '2019-03-01 15:36:57', '2019-03-01 15:36:57');
INSERT INTO `c_login_log` VALUES ('2823', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-01 15:37:11', '2019-03-01 15:37:11');
INSERT INTO `c_login_log` VALUES ('2824', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-01 15:37:53', '2019-03-01 15:37:53');
INSERT INTO `c_login_log` VALUES ('2825', null, 'wwbt', '2130706433', '用户成功登录系统', '2019-03-01 15:38:04', '2019-03-01 15:38:04');
INSERT INTO `c_login_log` VALUES ('2826', null, 'zj1', '2130706433', '用户成功登录系统(By remember me)', '2019-03-01 15:38:22', '2019-03-01 15:38:22');
INSERT INTO `c_login_log` VALUES ('2827', null, 'wwbt', '2130706433', '用户成功登录系统(By remember me)', '2019-03-01 15:41:21', '2019-03-01 15:41:21');
INSERT INTO `c_login_log` VALUES ('2828', null, 'zj1', '2130706433', '用户成功登录系统(By remember me)', '2019-03-01 15:41:30', '2019-03-01 15:41:30');
INSERT INTO `c_login_log` VALUES ('2829', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-01 15:43:19', '2019-03-01 15:43:19');
INSERT INTO `c_login_log` VALUES ('2830', null, 'wwbt', '2130706433', '用户成功登录系统', '2019-03-01 15:49:48', '2019-03-01 15:49:48');
INSERT INTO `c_login_log` VALUES ('2831', null, 'wwbt', '2130706433', '用户成功登录系统(By remember me)', '2019-03-01 15:55:10', '2019-03-01 15:55:10');
INSERT INTO `c_login_log` VALUES ('2832', null, 'wwbt', '2130706433', '用户成功登录系统', '2019-03-01 15:58:07', '2019-03-01 15:58:07');
INSERT INTO `c_login_log` VALUES ('2833', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-01 15:58:34', '2019-03-01 15:58:34');
INSERT INTO `c_login_log` VALUES ('2834', null, 'djadmin', '2130706433', '用户成功登录系统', '2019-03-01 16:03:42', '2019-03-01 16:03:42');
INSERT INTO `c_login_log` VALUES ('2835', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-01 16:08:08', '2019-03-01 16:08:08');
INSERT INTO `c_login_log` VALUES ('2836', null, 'wwbt', '2130706433', '用户成功登录系统', '2019-03-01 16:09:13', '2019-03-01 16:09:13');
INSERT INTO `c_login_log` VALUES ('2837', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-01 16:12:52', '2019-03-01 16:12:52');
INSERT INTO `c_login_log` VALUES ('2838', null, 'wwbt', '2130706433', '用户成功登录系统', '2019-03-01 16:16:25', '2019-03-01 16:16:25');
INSERT INTO `c_login_log` VALUES ('2839', null, 'wwbt', '2130706433', '用户成功登录系统', '2019-03-01 16:17:01', '2019-03-01 16:17:01');
INSERT INTO `c_login_log` VALUES ('2840', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-01 16:17:28', '2019-03-01 16:17:28');
INSERT INTO `c_login_log` VALUES ('2841', null, 'wwbt', '2130706433', '用户成功登录系统', '2019-03-01 16:18:59', '2019-03-01 16:18:59');
INSERT INTO `c_login_log` VALUES ('2842', null, 'djadmin', '2130706433', '用户成功登录系统', '2019-03-01 16:18:35', '2019-03-01 16:18:35');
INSERT INTO `c_login_log` VALUES ('2843', null, 'wwbt', '2130706433', '用户成功登录系统(By remember me)', '2019-03-01 16:19:51', '2019-03-01 16:19:51');
INSERT INTO `c_login_log` VALUES ('2844', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-01 16:20:34', '2019-03-01 16:20:34');
INSERT INTO `c_login_log` VALUES ('2845', null, 'djadmin', '2130706433', '用户成功登录系统', '2019-03-01 16:21:04', '2019-03-01 16:21:04');
INSERT INTO `c_login_log` VALUES ('2846', null, 'djadmin', '2130706433', '用户成功登录系统', '2019-03-01 16:31:56', '2019-03-01 16:31:56');
INSERT INTO `c_login_log` VALUES ('2847', null, 'djadmin', '2130706433', '用户成功登录系统', '2019-03-01 16:43:49', '2019-03-01 16:43:49');
INSERT INTO `c_login_log` VALUES ('2848', null, 'djadmin', '2130706433', '用户成功登录系统', '2019-03-01 16:49:21', '2019-03-01 16:49:21');
INSERT INTO `c_login_log` VALUES ('2849', null, 'djadmin', '2130706433', '用户成功登录系统', '2019-03-01 16:51:27', '2019-03-01 16:51:27');
INSERT INTO `c_login_log` VALUES ('2850', null, 'zj1', '2130706433', '用户成功登录系统', '2019-03-01 16:59:58', '2019-03-01 16:59:58');
INSERT INTO `c_login_log` VALUES ('2851', null, 'sgAdmin', '2130706433', '用户成功登录系统', '2019-03-01 17:03:32', '2019-03-01 17:03:32');
INSERT INTO `c_login_log` VALUES ('2852', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-01 17:04:59', '2019-03-01 17:04:59');
INSERT INTO `c_login_log` VALUES ('2853', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-01 17:06:10', '2019-03-01 17:06:10');
INSERT INTO `c_login_log` VALUES ('2854', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-01 17:20:19', '2019-03-01 17:20:19');
INSERT INTO `c_login_log` VALUES ('2855', null, 'zj1', '2130706433', '用户成功登录系统', '2019-03-01 17:20:53', '2019-03-01 17:20:53');
INSERT INTO `c_login_log` VALUES ('2856', null, 'zj1', '2130706433', '用户成功登录系统', '2019-03-01 17:23:00', '2019-03-01 17:23:00');
INSERT INTO `c_login_log` VALUES ('2857', null, 'jsadmin', '2130706433', '用户成功登录系统', '2019-03-01 17:24:15', '2019-03-01 17:24:15');
INSERT INTO `c_login_log` VALUES ('2858', null, 'jsadmin', '2130706433', '用户成功登录系统', '2019-03-01 17:29:00', '2019-03-01 17:29:00');
INSERT INTO `c_login_log` VALUES ('2859', null, 'jsadmin', '2130706433', '用户成功登录系统', '2019-03-01 17:34:32', '2019-03-01 17:34:32');
INSERT INTO `c_login_log` VALUES ('2860', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-01 17:37:21', '2019-03-01 17:37:21');
INSERT INTO `c_login_log` VALUES ('2861', null, 'jsadmin', '2130706433', '用户成功登录系统', '2019-03-01 17:37:05', '2019-03-01 17:37:05');
INSERT INTO `c_login_log` VALUES ('2862', null, 'djadmin', '2130706433', '用户成功登录系统', '2019-03-01 17:38:17', '2019-03-01 17:38:17');
INSERT INTO `c_login_log` VALUES ('2863', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-01 17:50:23', '2019-03-01 17:50:23');
INSERT INTO `c_login_log` VALUES ('2864', null, 'jsadmin', '2130706433', '用户成功登录系统', '2019-03-01 17:54:11', '2019-03-01 17:54:11');
INSERT INTO `c_login_log` VALUES ('2865', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-01 18:01:13', '2019-03-01 18:01:13');
INSERT INTO `c_login_log` VALUES ('2866', null, 'test1', '2130706433', '用户成功登录系统', '2019-03-01 18:07:59', '2019-03-01 18:07:59');
INSERT INTO `c_login_log` VALUES ('2867', null, 'admin', '0', '用户成功登录系统', '2019-03-02 09:01:58', '2019-03-02 09:01:58');
INSERT INTO `c_login_log` VALUES ('2868', null, 'zbAdmin', '0', '用户成功登录系统', '2019-03-02 09:03:44', '2019-03-02 09:03:44');
INSERT INTO `c_login_log` VALUES ('2869', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-02 09:06:29', '2019-03-02 09:06:29');
INSERT INTO `c_login_log` VALUES ('2870', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-02 09:11:48', '2019-03-02 09:11:48');
INSERT INTO `c_login_log` VALUES ('2871', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-02 09:31:01', '2019-03-02 09:31:01');
INSERT INTO `c_login_log` VALUES ('2872', null, 'test1', '2130706433', '用户成功登录系统', '2019-03-02 09:31:31', '2019-03-02 09:31:31');
INSERT INTO `c_login_log` VALUES ('2873', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-02 09:38:37', '2019-03-02 09:38:37');
INSERT INTO `c_login_log` VALUES ('2874', null, 'test1', '2130706433', '用户成功登录系统', '2019-03-02 09:41:36', '2019-03-02 09:41:36');
INSERT INTO `c_login_log` VALUES ('2875', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-02 09:44:11', '2019-03-02 09:44:11');
INSERT INTO `c_login_log` VALUES ('2876', null, 'test1', '2130706433', '用户成功登录系统', '2019-03-02 09:46:57', '2019-03-02 09:46:57');
INSERT INTO `c_login_log` VALUES ('2877', null, 'zj1', '2130706433', '用户成功登录系统', '2019-03-02 10:35:32', '2019-03-02 10:35:32');
INSERT INTO `c_login_log` VALUES ('2878', null, 'zj1', '2130706433', '用户成功登录系统(By remember me)', '2019-03-02 10:42:30', '2019-03-02 10:42:30');
INSERT INTO `c_login_log` VALUES ('2879', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-02 10:45:10', '2019-03-02 10:45:10');
INSERT INTO `c_login_log` VALUES ('2880', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-02 10:52:06', '2019-03-02 10:52:06');
INSERT INTO `c_login_log` VALUES ('2881', null, 'test1', '2130706433', '用户成功登录系统', '2019-03-02 10:52:16', '2019-03-02 10:52:16');
INSERT INTO `c_login_log` VALUES ('2882', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-02 11:02:50', '2019-03-02 11:02:50');
INSERT INTO `c_login_log` VALUES ('2883', null, 'test1', '2130706433', '用户成功登录系统(By remember me)', '2019-03-02 11:08:31', '2019-03-02 11:08:31');
INSERT INTO `c_login_log` VALUES ('2884', null, 'zj1', '2130706433', '用户成功登录系统(By remember me)', '2019-03-02 11:08:28', '2019-03-02 11:08:28');
INSERT INTO `c_login_log` VALUES ('2885', null, 'jsadmin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-02 11:08:52', '2019-03-02 11:08:52');
INSERT INTO `c_login_log` VALUES ('2886', null, 'jsadmin', '2130706433', '用户成功登录系统', '2019-03-02 11:14:32', '2019-03-02 11:14:32');
INSERT INTO `c_login_log` VALUES ('2887', null, 'zj1', '2130706433', '用户成功登录系统(By remember me)', '2019-03-02 11:20:25', '2019-03-02 11:20:25');
INSERT INTO `c_login_log` VALUES ('2888', null, 'sgAdmin', '2130706433', '用户成功登录系统', '2019-03-02 11:29:50', '2019-03-02 11:29:50');
INSERT INTO `c_login_log` VALUES ('2889', null, 'ftAdmin', '2130706433', '用户成功登录系统', '2019-03-02 11:42:08', '2019-03-02 11:42:08');
INSERT INTO `c_login_log` VALUES ('2890', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-02 11:42:46', '2019-03-02 11:42:46');
INSERT INTO `c_login_log` VALUES ('2891', null, 'ftAdmin', '2130706433', '用户成功登录系统', '2019-03-02 11:55:42', '2019-03-02 11:55:42');
INSERT INTO `c_login_log` VALUES ('2892', null, 'test1', '2130706433', '用户成功登录系统(By remember me)', '2019-03-02 12:04:05', '2019-03-02 12:04:05');
INSERT INTO `c_login_log` VALUES ('2893', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-02 12:04:19', '2019-03-02 12:04:19');
INSERT INTO `c_login_log` VALUES ('2894', null, 'zj1', '2130706433', '用户成功登录系统(By remember me)', '2019-03-02 12:08:23', '2019-03-02 12:08:23');
INSERT INTO `c_login_log` VALUES ('2895', null, 'ftAdmin', '2130706433', '用户成功登录系统', '2019-03-02 12:09:58', '2019-03-02 12:09:58');
INSERT INTO `c_login_log` VALUES ('2896', null, 'ftAdmin', '2130706433', '用户成功登录系统', '2019-03-02 12:14:24', '2019-03-02 12:14:24');
INSERT INTO `c_login_log` VALUES ('2897', null, 'zj1', '2130706433', '用户成功登录系统(By remember me)', '2019-03-02 12:20:36', '2019-03-02 12:20:36');
INSERT INTO `c_login_log` VALUES ('2898', null, 'ftAdmin', '2130706433', '用户成功登录系统', '2019-03-02 12:21:07', '2019-03-02 12:21:07');
INSERT INTO `c_login_log` VALUES ('2899', null, 'ftAdmin', '2130706433', '用户成功登录系统', '2019-03-02 12:24:04', '2019-03-02 12:24:04');
INSERT INTO `c_login_log` VALUES ('2900', null, 'jsadmin', '2130706433', '用户成功登录系统', '2019-03-02 12:31:07', '2019-03-02 12:31:07');
INSERT INTO `c_login_log` VALUES ('2901', null, 'zj1', '2130706433', '用户成功登录系统', '2019-03-02 12:32:09', '2019-03-02 12:32:09');
INSERT INTO `c_login_log` VALUES ('2902', null, 'zj2', '2130706433', '用户成功登录系统', '2019-03-02 12:36:14', '2019-03-02 12:36:14');
INSERT INTO `c_login_log` VALUES ('2903', null, 'djadmin', '2130706433', '用户成功登录系统', '2019-03-02 12:35:55', '2019-03-02 12:35:55');
INSERT INTO `c_login_log` VALUES ('2904', null, 'zj2', '2130706433', '用户成功登录系统', '2019-03-02 12:36:58', '2019-03-02 12:36:58');
INSERT INTO `c_login_log` VALUES ('2905', null, 'zj1', '2130706433', '用户成功登录系统', '2019-03-02 12:37:34', '2019-03-02 12:37:34');
INSERT INTO `c_login_log` VALUES ('2906', null, 'zj2', '2130706433', '用户成功登录系统', '2019-03-02 12:38:21', '2019-03-02 12:38:21');
INSERT INTO `c_login_log` VALUES ('2907', null, 'djadmin', '2130706433', '用户成功登录系统', '2019-03-02 12:42:32', '2019-03-02 12:42:32');
INSERT INTO `c_login_log` VALUES ('2908', null, 'zj2', '2130706433', '用户成功登录系统(By remember me)', '2019-03-02 14:19:27', '2019-03-02 14:19:27');
INSERT INTO `c_login_log` VALUES ('2909', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-02 14:20:26', '2019-03-02 14:20:26');
INSERT INTO `c_login_log` VALUES ('2910', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-02 14:28:50', '2019-03-02 14:28:50');
INSERT INTO `c_login_log` VALUES ('2911', null, 'ftAdmin', '2130706433', '用户成功登录系统', '2019-03-02 14:30:50', '2019-03-02 14:30:50');
INSERT INTO `c_login_log` VALUES ('2912', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-02 14:40:00', '2019-03-02 14:40:00');
INSERT INTO `c_login_log` VALUES ('2913', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-02 15:02:42', '2019-03-02 15:02:42');
INSERT INTO `c_login_log` VALUES ('2914', null, '13790434287', '2130706433', '用户成功登录系统', '2019-03-02 15:04:38', '2019-03-02 15:04:38');
INSERT INTO `c_login_log` VALUES ('2915', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-02 15:05:18', '2019-03-02 15:05:18');
INSERT INTO `c_login_log` VALUES ('2916', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-02 15:18:37', '2019-03-02 15:18:37');
INSERT INTO `c_login_log` VALUES ('2917', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-02 15:19:47', '2019-03-02 15:19:47');
INSERT INTO `c_login_log` VALUES ('2918', null, 'ftAdmin', '2130706433', '用户成功登录系统', '2019-03-02 15:20:20', '2019-03-02 15:20:20');
INSERT INTO `c_login_log` VALUES ('2919', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-02 15:21:07', '2019-03-02 15:21:07');
INSERT INTO `c_login_log` VALUES ('2920', null, 'ftAdmin', '2130706433', '用户成功登录系统', '2019-03-02 15:22:01', '2019-03-02 15:22:01');
INSERT INTO `c_login_log` VALUES ('2921', null, '13790434287', '2130706433', '用户成功登录系统', '2019-03-02 15:23:27', '2019-03-02 15:23:27');
INSERT INTO `c_login_log` VALUES ('2922', null, '15999865121', '2130706433', '用户成功登录系统', '2019-03-02 15:25:34', '2019-03-02 15:25:34');
INSERT INTO `c_login_log` VALUES ('2923', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-02 15:26:36', '2019-03-02 15:26:36');
INSERT INTO `c_login_log` VALUES ('2924', null, '13790434287', '2130706433', '用户成功登录系统', '2019-03-02 15:29:06', '2019-03-02 15:29:06');
INSERT INTO `c_login_log` VALUES ('2925', null, '15999865121', '2130706433', '用户成功登录系统', '2019-03-02 15:30:08', '2019-03-02 15:30:08');
INSERT INTO `c_login_log` VALUES ('2926', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-02 15:35:44', '2019-03-02 15:35:44');
INSERT INTO `c_login_log` VALUES ('2927', null, '15999865121', '2130706433', '用户成功登录系统', '2019-03-02 15:36:15', '2019-03-02 15:36:15');
INSERT INTO `c_login_log` VALUES ('2928', null, '13790434287', '2130706433', '用户成功登录系统', '2019-03-02 15:43:21', '2019-03-02 15:43:21');
INSERT INTO `c_login_log` VALUES ('2929', null, '15999865121', '2130706433', '用户成功登录系统(By remember me)', '2019-03-02 15:45:50', '2019-03-02 15:45:50');
INSERT INTO `c_login_log` VALUES ('2930', null, 'sgAdmin', '2130706433', '用户成功登录系统', '2019-03-02 16:00:21', '2019-03-02 16:00:21');
INSERT INTO `c_login_log` VALUES ('2931', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-02 16:00:30', '2019-03-02 16:00:30');
INSERT INTO `c_login_log` VALUES ('2932', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-02 16:02:10', '2019-03-02 16:02:10');
INSERT INTO `c_login_log` VALUES ('2933', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-02 16:09:07', '2019-03-02 16:09:07');
INSERT INTO `c_login_log` VALUES ('2934', null, '666666', '2130706433', '用户成功登录系统', '2019-03-02 16:09:46', '2019-03-02 16:09:46');
INSERT INTO `c_login_log` VALUES ('2935', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-02 16:10:23', '2019-03-02 16:10:23');
INSERT INTO `c_login_log` VALUES ('2936', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-02 16:14:15', '2019-03-02 16:14:15');
INSERT INTO `c_login_log` VALUES ('2937', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-02 16:16:55', '2019-03-02 16:16:55');
INSERT INTO `c_login_log` VALUES ('2938', null, '666666', '2130706433', '用户成功登录系统', '2019-03-02 16:17:55', '2019-03-02 16:17:55');
INSERT INTO `c_login_log` VALUES ('2939', null, '888888', '2130706433', '用户成功登录系统', '2019-03-02 16:18:07', '2019-03-02 16:18:07');
INSERT INTO `c_login_log` VALUES ('2940', null, 'sgAdmin', '2130706433', '用户成功登录系统', '2019-03-02 16:44:53', '2019-03-02 16:44:53');
INSERT INTO `c_login_log` VALUES ('2941', null, '888888', '2130706433', '用户成功登录系统', '2019-03-02 16:45:53', '2019-03-02 16:45:53');
INSERT INTO `c_login_log` VALUES ('2942', null, 'zbAdmin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-02 16:52:09', '2019-03-02 16:52:09');
INSERT INTO `c_login_log` VALUES ('2943', null, 'zjAdmin', '2130706433', '用户成功登录系统', '2019-03-02 16:56:09', '2019-03-02 16:56:09');
INSERT INTO `c_login_log` VALUES ('2944', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-02 16:56:26', '2019-03-02 16:56:26');
INSERT INTO `c_login_log` VALUES ('2945', null, 'ftAdmin', '2130706433', '用户成功登录系统', '2019-03-02 16:56:53', '2019-03-02 16:56:53');
INSERT INTO `c_login_log` VALUES ('2946', null, 'zbAdmin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-02 17:01:52', '2019-03-02 17:01:52');
INSERT INTO `c_login_log` VALUES ('2947', null, 'zbAdmin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-02 17:12:43', '2019-03-02 17:12:43');
INSERT INTO `c_login_log` VALUES ('2948', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 08:50:27', '2019-03-04 08:50:27');
INSERT INTO `c_login_log` VALUES ('2949', null, 'admin', '3232235580', '用户成功登录系统', '2019-03-04 08:58:08', '2019-03-04 08:58:08');
INSERT INTO `c_login_log` VALUES ('2950', null, 'zbAdmin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 08:59:29', '2019-03-04 08:59:29');
INSERT INTO `c_login_log` VALUES ('2951', null, 'admin', '3232235576', '用户成功登录系统', '2019-03-04 09:00:46', '2019-03-04 09:00:46');
INSERT INTO `c_login_log` VALUES ('2952', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 09:01:17', '2019-03-04 09:01:17');
INSERT INTO `c_login_log` VALUES ('2953', null, 'admin', '3232235580', '用户成功登录系统', '2019-03-04 09:51:42', '2019-03-04 09:51:42');
INSERT INTO `c_login_log` VALUES ('2954', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 09:53:08', '2019-03-04 09:53:08');
INSERT INTO `c_login_log` VALUES ('2955', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 09:56:24', '2019-03-04 09:56:24');
INSERT INTO `c_login_log` VALUES ('2956', null, 'djadmin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 09:57:57', '2019-03-04 09:57:57');
INSERT INTO `c_login_log` VALUES ('2957', null, 'jsadmin', '2130706433', '用户成功登录系统', '2019-03-04 10:07:33', '2019-03-04 10:07:33');
INSERT INTO `c_login_log` VALUES ('2958', null, 'ftAdmin', '2130706433', '用户成功登录系统', '2019-03-04 10:08:02', '2019-03-04 10:08:02');
INSERT INTO `c_login_log` VALUES ('2959', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 10:30:06', '2019-03-04 10:30:06');
INSERT INTO `c_login_log` VALUES ('2960', null, '666666', '2130706433', '用户成功登录系统', '2019-03-04 10:31:06', '2019-03-04 10:31:06');
INSERT INTO `c_login_log` VALUES ('2961', null, '888888', '2130706433', '用户成功登录系统', '2019-03-04 10:31:30', '2019-03-04 10:31:30');
INSERT INTO `c_login_log` VALUES ('2962', null, '888888', '2130706433', '用户成功登录系统', '2019-03-04 10:33:29', '2019-03-04 10:33:29');
INSERT INTO `c_login_log` VALUES ('2963', null, '666666', '2130706433', '用户成功登录系统', '2019-03-04 10:33:52', '2019-03-04 10:33:52');
INSERT INTO `c_login_log` VALUES ('2964', null, '888888', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 10:43:45', '2019-03-04 10:43:45');
INSERT INTO `c_login_log` VALUES ('2965', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 10:46:31', '2019-03-04 10:46:31');
INSERT INTO `c_login_log` VALUES ('2966', null, '666666', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 10:56:27', '2019-03-04 10:56:27');
INSERT INTO `c_login_log` VALUES ('2967', null, 'admin', '3232235576', '用户成功登录系统(By remember me)', '2019-03-04 11:05:53', '2019-03-04 11:05:53');
INSERT INTO `c_login_log` VALUES ('2968', null, '888888', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 11:09:23', '2019-03-04 11:09:23');
INSERT INTO `c_login_log` VALUES ('2969', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 11:59:49', '2019-03-04 11:59:49');
INSERT INTO `c_login_log` VALUES ('2970', null, '666666', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 12:00:29', '2019-03-04 12:00:29');
INSERT INTO `c_login_log` VALUES ('2971', null, '666666', '2130706433', '用户成功登录系统', '2019-03-04 12:01:54', '2019-03-04 12:01:54');
INSERT INTO `c_login_log` VALUES ('2972', null, '666666', '2130706433', '用户成功登录系统', '2019-03-04 12:02:34', '2019-03-04 12:02:34');
INSERT INTO `c_login_log` VALUES ('2973', null, '666666', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 12:03:42', '2019-03-04 12:03:42');
INSERT INTO `c_login_log` VALUES ('2974', null, '888888', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 12:06:16', '2019-03-04 12:06:16');
INSERT INTO `c_login_log` VALUES ('2975', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 12:11:16', '2019-03-04 12:11:16');
INSERT INTO `c_login_log` VALUES ('2976', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 12:11:36', '2019-03-04 12:11:36');
INSERT INTO `c_login_log` VALUES ('2977', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 12:22:15', '2019-03-04 12:22:15');
INSERT INTO `c_login_log` VALUES ('2978', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 12:32:44', '2019-03-04 12:32:44');
INSERT INTO `c_login_log` VALUES ('2979', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 14:06:54', '2019-03-04 14:06:54');
INSERT INTO `c_login_log` VALUES ('2980', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 14:11:37', '2019-03-04 14:11:37');
INSERT INTO `c_login_log` VALUES ('2981', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 14:12:29', '2019-03-04 14:12:29');
INSERT INTO `c_login_log` VALUES ('2982', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 14:13:03', '2019-03-04 14:13:03');
INSERT INTO `c_login_log` VALUES ('2983', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 14:18:56', '2019-03-04 14:18:56');
INSERT INTO `c_login_log` VALUES ('2984', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 14:19:08', '2019-03-04 14:19:08');
INSERT INTO `c_login_log` VALUES ('2985', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 14:21:29', '2019-03-04 14:21:29');
INSERT INTO `c_login_log` VALUES ('2986', null, '666666', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 14:21:45', '2019-03-04 14:21:45');
INSERT INTO `c_login_log` VALUES ('2987', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 14:22:33', '2019-03-04 14:22:33');
INSERT INTO `c_login_log` VALUES ('2988', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 14:28:53', '2019-03-04 14:28:53');
INSERT INTO `c_login_log` VALUES ('2989', null, '666666', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 14:30:03', '2019-03-04 14:30:03');
INSERT INTO `c_login_log` VALUES ('2990', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 14:42:23', '2019-03-04 14:42:23');
INSERT INTO `c_login_log` VALUES ('2991', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 14:44:02', '2019-03-04 14:44:02');
INSERT INTO `c_login_log` VALUES ('2992', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 14:44:16', '2019-03-04 14:44:16');
INSERT INTO `c_login_log` VALUES ('2993', null, 'sgAdmin', '2130706433', '用户成功登录系统', '2019-03-04 14:44:16', '2019-03-04 14:44:16');
INSERT INTO `c_login_log` VALUES ('2994', null, 'sgAdmin', '2130706433', '用户成功登录系统', '2019-03-04 14:45:58', '2019-03-04 14:45:58');
INSERT INTO `c_login_log` VALUES ('2995', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 14:50:40', '2019-03-04 14:50:40');
INSERT INTO `c_login_log` VALUES ('2996', null, 'sgAdmin', '2130706433', '用户成功登录系统', '2019-03-04 14:50:53', '2019-03-04 14:50:53');
INSERT INTO `c_login_log` VALUES ('2997', null, 'sgAdmin', '2130706433', '用户成功登录系统', '2019-03-04 14:52:28', '2019-03-04 14:52:28');
INSERT INTO `c_login_log` VALUES ('2998', null, 'sgAdmin', '2130706433', '用户成功登录系统', '2019-03-04 14:54:43', '2019-03-04 14:54:43');
INSERT INTO `c_login_log` VALUES ('2999', null, 'sgAdmin', '2130706433', '用户成功登录系统', '2019-03-04 14:55:52', '2019-03-04 14:55:52');
INSERT INTO `c_login_log` VALUES ('3000', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 14:57:28', '2019-03-04 14:57:28');
INSERT INTO `c_login_log` VALUES ('3001', null, 'jsadmin', '2130706433', '用户成功登录系统', '2019-03-04 14:59:50', '2019-03-04 14:59:50');
INSERT INTO `c_login_log` VALUES ('3002', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 15:01:26', '2019-03-04 15:01:26');
INSERT INTO `c_login_log` VALUES ('3003', null, '888888', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 15:03:01', '2019-03-04 15:03:01');
INSERT INTO `c_login_log` VALUES ('3004', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 15:05:42', '2019-03-04 15:05:42');
INSERT INTO `c_login_log` VALUES ('3005', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 15:08:20', '2019-03-04 15:08:20');
INSERT INTO `c_login_log` VALUES ('3006', null, '666666', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 15:10:30', '2019-03-04 15:10:30');
INSERT INTO `c_login_log` VALUES ('3007', null, '666666', '2130706433', '用户成功登录系统', '2019-03-04 15:10:51', '2019-03-04 15:10:51');
INSERT INTO `c_login_log` VALUES ('3008', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 15:17:28', '2019-03-04 15:17:28');
INSERT INTO `c_login_log` VALUES ('3009', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 15:28:21', '2019-03-04 15:28:21');
INSERT INTO `c_login_log` VALUES ('3010', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 15:33:56', '2019-03-04 15:33:56');
INSERT INTO `c_login_log` VALUES ('3011', null, 'ftAdmin', '2130706433', '用户成功登录系统', '2019-03-04 15:35:39', '2019-03-04 15:35:39');
INSERT INTO `c_login_log` VALUES ('3012', null, 'ftAdmin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 15:37:19', '2019-03-04 15:37:19');
INSERT INTO `c_login_log` VALUES ('3013', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 15:38:04', '2019-03-04 15:38:04');
INSERT INTO `c_login_log` VALUES ('3014', null, 'MB2C36243', '2130706433', '用户成功登录系统', '2019-03-04 15:47:26', '2019-03-04 15:47:26');
INSERT INTO `c_login_log` VALUES ('3015', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 15:52:43', '2019-03-04 15:52:43');
INSERT INTO `c_login_log` VALUES ('3016', null, 'MB2C36243', '2130706433', '用户成功登录系统', '2019-03-04 15:53:12', '2019-03-04 15:53:12');
INSERT INTO `c_login_log` VALUES ('3017', null, 'MB2C36243', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 16:00:26', '2019-03-04 16:00:26');
INSERT INTO `c_login_log` VALUES ('3018', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 16:00:46', '2019-03-04 16:00:46');
INSERT INTO `c_login_log` VALUES ('3019', null, 'MB2C36243', '2130706433', '用户成功登录系统', '2019-03-04 16:01:05', '2019-03-04 16:01:05');
INSERT INTO `c_login_log` VALUES ('3020', null, 'sgAdmin', '2130706433', '用户成功登录系统', '2019-03-04 16:03:31', '2019-03-04 16:03:31');
INSERT INTO `c_login_log` VALUES ('3021', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 16:04:05', '2019-03-04 16:04:05');
INSERT INTO `c_login_log` VALUES ('3022', null, 'MB2C36243', '2130706433', '用户成功登录系统', '2019-03-04 16:04:24', '2019-03-04 16:04:24');
INSERT INTO `c_login_log` VALUES ('3023', null, 'MB2C36243', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 16:05:41', '2019-03-04 16:05:41');
INSERT INTO `c_login_log` VALUES ('3024', null, 'MB2C36243', '2130706433', '用户成功登录系统', '2019-03-04 16:09:49', '2019-03-04 16:09:49');
INSERT INTO `c_login_log` VALUES ('3025', null, 'sgAdmin', '2130706433', '用户成功登录系统', '2019-03-04 16:10:08', '2019-03-04 16:10:08');
INSERT INTO `c_login_log` VALUES ('3026', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 16:11:46', '2019-03-04 16:11:46');
INSERT INTO `c_login_log` VALUES ('3027', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 16:12:35', '2019-03-04 16:12:35');
INSERT INTO `c_login_log` VALUES ('3028', null, 'wanve_agent', '2130706433', '用户成功登录系统', '2019-03-04 16:13:18', '2019-03-04 16:13:18');
INSERT INTO `c_login_log` VALUES ('3029', null, 'wanve_build', '2130706433', '用户成功登录系统', '2019-03-04 16:19:45', '2019-03-04 16:19:45');
INSERT INTO `c_login_log` VALUES ('3030', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 16:28:26', '2019-03-04 16:28:26');
INSERT INTO `c_login_log` VALUES ('3031', null, 'wanve_build', '2130706433', '用户成功登录系统', '2019-03-04 16:29:26', '2019-03-04 16:29:26');
INSERT INTO `c_login_log` VALUES ('3032', null, 'wanve_build', '2130706433', '用户成功登录系统', '2019-03-04 16:30:14', '2019-03-04 16:30:14');
INSERT INTO `c_login_log` VALUES ('3033', null, 'wanve_build', '2130706433', '用户成功登录系统', '2019-03-04 16:33:27', '2019-03-04 16:33:27');
INSERT INTO `c_login_log` VALUES ('3034', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 16:44:29', '2019-03-04 16:44:29');
INSERT INTO `c_login_log` VALUES ('3035', null, 'wanve_agent', '2130706433', '用户成功登录系统', '2019-03-04 16:44:51', '2019-03-04 16:44:51');
INSERT INTO `c_login_log` VALUES ('3036', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 16:58:39', '2019-03-04 16:58:39');
INSERT INTO `c_login_log` VALUES ('3037', null, 'wanve_agent', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 17:17:59', '2019-03-04 17:17:59');
INSERT INTO `c_login_log` VALUES ('3038', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 17:27:16', '2019-03-04 17:27:16');
INSERT INTO `c_login_log` VALUES ('3039', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 17:30:18', '2019-03-04 17:30:18');
INSERT INTO `c_login_log` VALUES ('3040', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 17:32:00', '2019-03-04 17:32:00');
INSERT INTO `c_login_log` VALUES ('3041', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 17:35:44', '2019-03-04 17:35:44');
INSERT INTO `c_login_log` VALUES ('3042', null, 'wanve_agent', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 17:39:54', '2019-03-04 17:39:54');
INSERT INTO `c_login_log` VALUES ('3043', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 17:45:07', '2019-03-04 17:45:07');
INSERT INTO `c_login_log` VALUES ('3044', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 17:47:10', '2019-03-04 17:47:10');
INSERT INTO `c_login_log` VALUES ('3045', null, 'wanve_build', '2130706433', '用户成功登录系统', '2019-03-04 17:47:51', '2019-03-04 17:47:51');
INSERT INTO `c_login_log` VALUES ('3046', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 17:50:04', '2019-03-04 17:50:04');
INSERT INTO `c_login_log` VALUES ('3047', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 17:50:25', '2019-03-04 17:50:25');
INSERT INTO `c_login_log` VALUES ('3048', null, 'wanve_build', '2130706433', '用户成功登录系统', '2019-03-04 17:50:49', '2019-03-04 17:50:49');
INSERT INTO `c_login_log` VALUES ('3049', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 18:00:34', '2019-03-04 18:00:34');
INSERT INTO `c_login_log` VALUES ('3050', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 18:01:58', '2019-03-04 18:01:58');
INSERT INTO `c_login_log` VALUES ('3051', null, 'csadmin', '2130706433', '用户成功登录系统', '2019-03-04 18:04:42', '2019-03-04 18:04:42');
INSERT INTO `c_login_log` VALUES ('3052', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 18:05:19', '2019-03-04 18:05:19');
INSERT INTO `c_login_log` VALUES ('3053', null, 'csadmin', '2130706433', '用户成功登录系统', '2019-03-04 18:05:47', '2019-03-04 18:05:47');
INSERT INTO `c_login_log` VALUES ('3054', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 18:06:05', '2019-03-04 18:06:05');
INSERT INTO `c_login_log` VALUES ('3055', null, 'csadmin', '2130706433', '用户成功登录系统', '2019-03-04 18:07:24', '2019-03-04 18:07:24');
INSERT INTO `c_login_log` VALUES ('3056', null, 'wanve_build', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 18:08:01', '2019-03-04 18:08:01');
INSERT INTO `c_login_log` VALUES ('3057', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 18:09:04', '2019-03-04 18:09:04');
INSERT INTO `c_login_log` VALUES ('3058', null, 'ftAdmin', '2130706433', '用户成功登录系统', '2019-03-04 18:09:19', '2019-03-04 18:09:19');
INSERT INTO `c_login_log` VALUES ('3059', null, 'wanve_build', '2130706433', '用户成功登录系统', '2019-03-04 18:10:27', '2019-03-04 18:10:27');
INSERT INTO `c_login_log` VALUES ('3060', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 18:12:15', '2019-03-04 18:12:15');
INSERT INTO `c_login_log` VALUES ('3061', null, 'wanve_build', '2130706433', '用户成功登录系统', '2019-03-04 18:14:12', '2019-03-04 18:14:12');
INSERT INTO `c_login_log` VALUES ('3062', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 18:46:52', '2019-03-04 18:46:52');
INSERT INTO `c_login_log` VALUES ('3063', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 18:49:17', '2019-03-04 18:49:17');
INSERT INTO `c_login_log` VALUES ('3064', null, '13790434287', '2130706433', '用户成功登录系统', '2019-03-04 18:49:45', '2019-03-04 18:49:45');
INSERT INTO `c_login_log` VALUES ('3065', null, 'wanve_agent', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 19:01:11', '2019-03-04 19:01:11');
INSERT INTO `c_login_log` VALUES ('3066', null, '15999865121', '2130706433', '用户成功登录系统', '2019-03-04 19:04:47', '2019-03-04 19:04:47');
INSERT INTO `c_login_log` VALUES ('3067', null, 'wanve_agent', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 19:06:06', '2019-03-04 19:06:06');
INSERT INTO `c_login_log` VALUES ('3068', null, '13790434287', '2130706433', '用户成功登录系统', '2019-03-04 19:07:26', '2019-03-04 19:07:26');
INSERT INTO `c_login_log` VALUES ('3069', null, 'wanve_build', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 19:10:35', '2019-03-04 19:10:35');
INSERT INTO `c_login_log` VALUES ('3070', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 19:15:10', '2019-03-04 19:15:10');
INSERT INTO `c_login_log` VALUES ('3071', null, 'nn', '2130706433', '用户成功登录系统', '2019-03-04 19:16:39', '2019-03-04 19:16:39');
INSERT INTO `c_login_log` VALUES ('3072', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 20:01:09', '2019-03-04 20:01:09');
INSERT INTO `c_login_log` VALUES ('3073', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 20:07:54', '2019-03-04 20:07:54');
INSERT INTO `c_login_log` VALUES ('3074', null, '455750692', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 20:17:40', '2019-03-04 20:17:40');
INSERT INTO `c_login_log` VALUES ('3075', null, '455750692', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 20:20:39', '2019-03-04 20:20:39');
INSERT INTO `c_login_log` VALUES ('3076', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 20:20:56', '2019-03-04 20:20:56');
INSERT INTO `c_login_log` VALUES ('3077', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 20:21:24', '2019-03-04 20:21:24');
INSERT INTO `c_login_log` VALUES ('3078', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 20:28:32', '2019-03-04 20:28:32');
INSERT INTO `c_login_log` VALUES ('3079', null, '755686282', '2130706433', '用户成功登录系统', '2019-03-04 20:30:45', '2019-03-04 20:30:45');
INSERT INTO `c_login_log` VALUES ('3080', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 20:31:28', '2019-03-04 20:31:28');
INSERT INTO `c_login_log` VALUES ('3081', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 20:32:53', '2019-03-04 20:32:53');
INSERT INTO `c_login_log` VALUES ('3082', null, '192362152', '2130706433', '用户成功登录系统', '2019-03-04 20:33:35', '2019-03-04 20:33:35');
INSERT INTO `c_login_log` VALUES ('3083', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 20:34:04', '2019-03-04 20:34:04');
INSERT INTO `c_login_log` VALUES ('3084', null, '171071866', '2130706433', '用户成功登录系统', '2019-03-04 20:34:24', '2019-03-04 20:34:24');
INSERT INTO `c_login_log` VALUES ('3085', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 20:34:50', '2019-03-04 20:34:50');
INSERT INTO `c_login_log` VALUES ('3086', null, '63370987X', '2130706433', '用户成功登录系统', '2019-03-04 20:37:14', '2019-03-04 20:37:14');
INSERT INTO `c_login_log` VALUES ('3087', null, '192362152', '2130706433', '用户成功登录系统', '2019-03-04 20:37:39', '2019-03-04 20:37:39');
INSERT INTO `c_login_log` VALUES ('3088', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 20:37:57', '2019-03-04 20:37:57');
INSERT INTO `c_login_log` VALUES ('3089', null, '695552708', '2130706433', '用户成功登录系统', '2019-03-04 20:39:15', '2019-03-04 20:39:15');
INSERT INTO `c_login_log` VALUES ('3090', null, '192360376', '2130706433', '用户成功登录系统', '2019-03-04 20:39:28', '2019-03-04 20:39:28');
INSERT INTO `c_login_log` VALUES ('3091', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 20:40:59', '2019-03-04 20:40:59');
INSERT INTO `c_login_log` VALUES ('3092', null, '788316245', '2130706433', '用户成功登录系统', '2019-03-04 20:42:41', '2019-03-04 20:42:41');
INSERT INTO `c_login_log` VALUES ('3093', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 20:44:31', '2019-03-04 20:44:31');
INSERT INTO `c_login_log` VALUES ('3094', null, '631722739', '2130706433', '用户成功登录系统', '2019-03-04 20:45:43', '2019-03-04 20:45:43');
INSERT INTO `c_login_log` VALUES ('3095', null, '754291430', '2130706433', '用户成功登录系统', '2019-03-04 20:45:59', '2019-03-04 20:45:59');
INSERT INTO `c_login_log` VALUES ('3096', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 20:46:31', '2019-03-04 20:46:31');
INSERT INTO `c_login_log` VALUES ('3097', null, '455750692', '2130706433', '用户成功登录系统', '2019-03-04 20:49:17', '2019-03-04 20:49:17');
INSERT INTO `c_login_log` VALUES ('3098', null, '715288028', '2130706433', '用户成功登录系统', '2019-03-04 20:50:08', '2019-03-04 20:50:08');
INSERT INTO `c_login_log` VALUES ('3099', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 20:51:48', '2019-03-04 20:51:48');
INSERT INTO `c_login_log` VALUES ('3100', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 20:52:08', '2019-03-04 20:52:08');
INSERT INTO `c_login_log` VALUES ('3101', null, 'ma5dmf762', '2130706433', '用户成功登录系统', '2019-03-04 20:54:50', '2019-03-04 20:54:50');
INSERT INTO `c_login_log` VALUES ('3102', null, '279334752', '2130706433', '用户成功登录系统', '2019-03-04 20:55:15', '2019-03-04 20:55:15');
INSERT INTO `c_login_log` VALUES ('3103', null, 'test1', '2130706433', '用户成功登录系统', '2019-03-04 20:55:57', '2019-03-04 20:55:57');
INSERT INTO `c_login_log` VALUES ('3104', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 20:56:36', '2019-03-04 20:56:36');
INSERT INTO `c_login_log` VALUES ('3105', null, '748870399', '2130706433', '用户成功登录系统', '2019-03-04 20:57:49', '2019-03-04 20:57:49');
INSERT INTO `c_login_log` VALUES ('3106', null, '192337969', '2130706433', '用户成功登录系统', '2019-03-04 20:58:11', '2019-03-04 20:58:11');
INSERT INTO `c_login_log` VALUES ('3107', null, '190336153', '2130706433', '用户成功登录系统', '2019-03-04 20:58:23', '2019-03-04 20:58:23');
INSERT INTO `c_login_log` VALUES ('3108', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 20:59:52', '2019-03-04 20:59:52');
INSERT INTO `c_login_log` VALUES ('3109', null, '92359279N', '2130706433', '用户成功登录系统', '2019-03-04 21:06:34', '2019-03-04 21:06:34');
INSERT INTO `c_login_log` VALUES ('3110', null, '91440300782771642N', '2130706433', '用户成功登录系统(By remember me)', '2019-03-04 21:06:43', '2019-03-04 21:06:43');
INSERT INTO `c_login_log` VALUES ('3111', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 21:07:19', '2019-03-04 21:07:19');
INSERT INTO `c_login_log` VALUES ('3112', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-04 21:07:44', '2019-03-04 21:07:44');
INSERT INTO `c_login_log` VALUES ('3113', null, '92359279N', '2130706433', '用户成功登录系统', '2019-03-04 21:07:59', '2019-03-04 21:07:59');
INSERT INTO `c_login_log` VALUES ('3114', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 21:08:19', '2019-03-04 21:08:19');
INSERT INTO `c_login_log` VALUES ('3115', null, '192260957', '2130706433', '用户成功登录系统', '2019-03-04 21:08:33', '2019-03-04 21:08:33');
INSERT INTO `c_login_log` VALUES ('3116', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-04 21:08:52', '2019-03-04 21:08:52');
INSERT INTO `c_login_log` VALUES ('3117', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-04 21:10:19', '2019-03-04 21:10:19');
INSERT INTO `c_login_log` VALUES ('3118', null, '92359279N', '2130706433', '用户成功登录系统', '2019-03-04 21:10:50', '2019-03-04 21:10:50');
INSERT INTO `c_login_log` VALUES ('3119', null, '192260957', '2130706433', '用户成功登录系统', '2019-03-04 21:11:01', '2019-03-04 21:11:01');
INSERT INTO `c_login_log` VALUES ('3120', null, 'test1', '2130706433', '用户成功登录系统(By remember me)', '2019-03-05 08:44:31', '2019-03-05 08:44:31');
INSERT INTO `c_login_log` VALUES ('3121', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-05 08:45:22', '2019-03-05 08:45:22');
INSERT INTO `c_login_log` VALUES ('3122', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-05 08:45:52', '2019-03-05 08:45:52');
INSERT INTO `c_login_log` VALUES ('3123', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-05 08:49:02', '2019-03-05 08:49:02');
INSERT INTO `c_login_log` VALUES ('3124', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-05 08:57:49', '2019-03-05 08:57:49');
INSERT INTO `c_login_log` VALUES ('3125', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-05 09:02:52', '2019-03-05 09:02:52');
INSERT INTO `c_login_log` VALUES ('3126', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-05 09:03:01', '2019-03-05 09:03:01');
INSERT INTO `c_login_log` VALUES ('3127', null, 'test1', '2130706433', '用户成功登录系统', '2019-03-05 09:08:43', '2019-03-05 09:08:43');
INSERT INTO `c_login_log` VALUES ('3128', null, '788316245', '2130706433', '用户成功登录系统', '2019-03-05 09:09:36', '2019-03-05 09:09:36');
INSERT INTO `c_login_log` VALUES ('3129', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-05 09:13:38', '2019-03-05 09:13:38');
INSERT INTO `c_login_log` VALUES ('3130', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-05 09:14:25', '2019-03-05 09:14:25');
INSERT INTO `c_login_log` VALUES ('3131', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-05 09:14:49', '2019-03-05 09:14:49');
INSERT INTO `c_login_log` VALUES ('3132', null, 'test6', '2130706433', '用户成功登录系统', '2019-03-05 09:15:11', '2019-03-05 09:15:11');
INSERT INTO `c_login_log` VALUES ('3133', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-05 09:17:58', '2019-03-05 09:17:58');
INSERT INTO `c_login_log` VALUES ('3134', null, 'ftAdmin', '2130706433', '用户成功登录系统', '2019-03-05 09:19:25', '2019-03-05 09:19:25');
INSERT INTO `c_login_log` VALUES ('3135', null, 'ftAdmin', '2130706433', '用户成功登录系统', '2019-03-05 09:22:10', '2019-03-05 09:22:10');
INSERT INTO `c_login_log` VALUES ('3136', null, 'ftAdmin', '2130706433', '用户成功登录系统', '2019-03-05 09:24:24', '2019-03-05 09:24:24');
INSERT INTO `c_login_log` VALUES ('3137', null, 'ftAdmin', '2130706433', '用户成功登录系统', '2019-03-05 09:29:03', '2019-03-05 09:29:03');
INSERT INTO `c_login_log` VALUES ('3138', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-05 09:32:27', '2019-03-05 09:32:27');
INSERT INTO `c_login_log` VALUES ('3139', null, 'ftAdmin', '2130706433', '用户成功登录系统', '2019-03-05 09:35:28', '2019-03-05 09:35:28');
INSERT INTO `c_login_log` VALUES ('3140', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-05 09:36:58', '2019-03-05 09:36:58');
INSERT INTO `c_login_log` VALUES ('3141', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-05 09:42:15', '2019-03-05 09:42:15');
INSERT INTO `c_login_log` VALUES ('3142', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-05 10:00:11', '2019-03-05 10:00:11');
INSERT INTO `c_login_log` VALUES ('3143', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-05 10:00:42', '2019-03-05 10:00:42');
INSERT INTO `c_login_log` VALUES ('3144', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-05 10:15:35', '2019-03-05 10:15:35');
INSERT INTO `c_login_log` VALUES ('3145', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-05 10:17:12', '2019-03-05 10:17:12');
INSERT INTO `c_login_log` VALUES ('3146', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-05 10:46:26', '2019-03-05 10:46:26');
INSERT INTO `c_login_log` VALUES ('3147', null, 'ftAdmin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-05 11:31:40', '2019-03-05 11:31:40');
INSERT INTO `c_login_log` VALUES ('3148', null, 'test6', '2130706433', '用户成功登录系统(By remember me)', '2019-03-05 11:38:54', '2019-03-05 11:38:54');
INSERT INTO `c_login_log` VALUES ('3149', null, '788316245', '2130706433', '用户成功登录系统(By remember me)', '2019-03-05 11:40:06', '2019-03-05 11:40:06');
INSERT INTO `c_login_log` VALUES ('3150', null, 'test6', '2130706433', '用户成功登录系统(By remember me)', '2019-03-05 11:46:14', '2019-03-05 11:46:14');
INSERT INTO `c_login_log` VALUES ('3151', null, 'test6', '2130706433', '用户成功登录系统(By remember me)', '2019-03-05 11:47:31', '2019-03-05 11:47:31');
INSERT INTO `c_login_log` VALUES ('3152', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-05 12:08:58', '2019-03-05 12:08:58');
INSERT INTO `c_login_log` VALUES ('3153', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-05 14:15:56', '2019-03-05 14:15:56');
INSERT INTO `c_login_log` VALUES ('3154', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-05 14:18:58', '2019-03-05 14:18:58');
INSERT INTO `c_login_log` VALUES ('3155', null, 'ftAdmin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-05 14:30:17', '2019-03-05 14:30:17');
INSERT INTO `c_login_log` VALUES ('3156', null, 'ftAdmin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-05 14:47:41', '2019-03-05 14:47:41');
INSERT INTO `c_login_log` VALUES ('3157', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-05 17:38:13', '2019-03-05 17:38:13');
INSERT INTO `c_login_log` VALUES ('3158', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-06 08:46:47', '2019-03-06 08:46:47');
INSERT INTO `c_login_log` VALUES ('3159', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-06 09:00:09', '2019-03-06 09:00:09');
INSERT INTO `c_login_log` VALUES ('3160', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-06 10:06:06', '2019-03-06 10:06:06');
INSERT INTO `c_login_log` VALUES ('3161', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-07 14:14:34', '2019-03-07 14:14:34');
INSERT INTO `c_login_log` VALUES ('3162', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-07 15:47:25', '2019-03-07 15:47:25');
INSERT INTO `c_login_log` VALUES ('3163', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-07 15:54:47', '2019-03-07 15:54:47');
INSERT INTO `c_login_log` VALUES ('3164', null, 'admin', '3232235538', '用户成功登录系统', '2019-03-07 17:39:56', '2019-03-07 17:39:56');
INSERT INTO `c_login_log` VALUES ('3165', null, 'admin', '3232235541', '用户成功登录系统', '2019-03-07 17:42:01', '2019-03-07 17:42:01');
INSERT INTO `c_login_log` VALUES ('3166', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-08 08:58:07', '2019-03-08 08:58:07');
INSERT INTO `c_login_log` VALUES ('3167', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-08 09:51:42', '2019-03-08 09:51:42');
INSERT INTO `c_login_log` VALUES ('3168', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-08 10:33:08', '2019-03-08 10:33:08');
INSERT INTO `c_login_log` VALUES ('3169', null, '788316245', '2130706433', '用户成功登录系统(By remember me)', '2019-03-08 11:31:13', '2019-03-08 11:31:13');
INSERT INTO `c_login_log` VALUES ('3170', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-08 12:00:01', '2019-03-08 12:00:01');
INSERT INTO `c_login_log` VALUES ('3171', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-08 12:06:56', '2019-03-08 12:06:56');
INSERT INTO `c_login_log` VALUES ('3172', null, 'admin', '3232235538', '用户成功登录系统', '2019-03-08 12:27:44', '2019-03-08 12:27:44');
INSERT INTO `c_login_log` VALUES ('3173', null, 'admin', '3232235541', '用户成功登录系统', '2019-03-08 12:27:46', '2019-03-08 12:27:46');
INSERT INTO `c_login_log` VALUES ('3174', null, 'admin', '3232235538', '用户成功登录系统(By remember me)', '2019-03-08 14:16:03', '2019-03-08 14:16:03');
INSERT INTO `c_login_log` VALUES ('3175', null, 'admin', '3232235541', '用户成功登录系统(By remember me)', '2019-03-08 14:16:19', '2019-03-08 14:16:19');
INSERT INTO `c_login_log` VALUES ('3176', null, '788316245', '2130706433', '用户成功登录系统(By remember me)', '2019-03-08 14:17:03', '2019-03-08 14:17:03');
INSERT INTO `c_login_log` VALUES ('3177', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-08 14:24:11', '2019-03-08 14:24:11');
INSERT INTO `c_login_log` VALUES ('3178', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-08 16:02:05', '2019-03-08 16:02:05');
INSERT INTO `c_login_log` VALUES ('3179', null, 'admin', '3232235541', '用户成功登录系统(By remember me)', '2019-03-08 16:26:14', '2019-03-08 16:26:14');
INSERT INTO `c_login_log` VALUES ('3180', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-08 17:19:57', '2019-03-08 17:19:57');
INSERT INTO `c_login_log` VALUES ('3181', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-11 08:41:15', '2019-03-11 08:41:15');
INSERT INTO `c_login_log` VALUES ('3182', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-11 08:54:37', '2019-03-11 08:54:37');
INSERT INTO `c_login_log` VALUES ('3183', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-11 09:24:58', '2019-03-11 09:24:58');
INSERT INTO `c_login_log` VALUES ('3184', null, 'ftAdmin', '2130706433', '用户成功登录系统', '2019-03-11 09:59:06', '2019-03-11 09:59:06');
INSERT INTO `c_login_log` VALUES ('3185', null, 'ftAdmin', '2130706433', '用户成功登录系统', '2019-03-11 09:59:45', '2019-03-11 09:59:45');
INSERT INTO `c_login_log` VALUES ('3186', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-11 10:00:42', '2019-03-11 10:00:42');
INSERT INTO `c_login_log` VALUES ('3187', null, 'ftAdmin', '2130706433', '用户成功登录系统', '2019-03-11 10:00:43', '2019-03-11 10:00:43');
INSERT INTO `c_login_log` VALUES ('3188', null, '788316245', '2130706433', '用户成功登录系统', '2019-03-11 10:02:21', '2019-03-11 10:02:21');
INSERT INTO `c_login_log` VALUES ('3189', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-11 10:03:17', '2019-03-11 10:03:17');
INSERT INTO `c_login_log` VALUES ('3190', null, '788316245', '2130706433', '用户成功登录系统(By remember me)', '2019-03-11 10:10:25', '2019-03-11 10:10:25');
INSERT INTO `c_login_log` VALUES ('3191', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-11 10:12:14', '2019-03-11 10:12:14');
INSERT INTO `c_login_log` VALUES ('3192', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-11 10:24:20', '2019-03-11 10:24:20');
INSERT INTO `c_login_log` VALUES ('3193', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-11 10:26:43', '2019-03-11 10:26:43');
INSERT INTO `c_login_log` VALUES ('3194', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-11 10:30:46', '2019-03-11 10:30:46');
INSERT INTO `c_login_log` VALUES ('3195', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-11 10:42:47', '2019-03-11 10:42:47');
INSERT INTO `c_login_log` VALUES ('3196', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-11 10:44:58', '2019-03-11 10:44:58');
INSERT INTO `c_login_log` VALUES ('3197', null, '342599199', '2130706433', '用户成功登录系统(By remember me)', '2019-03-11 10:52:31', '2019-03-11 10:52:31');
INSERT INTO `c_login_log` VALUES ('3198', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-11 10:52:41', '2019-03-11 10:52:41');
INSERT INTO `c_login_log` VALUES ('3199', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-11 10:53:18', '2019-03-11 10:53:18');
INSERT INTO `c_login_log` VALUES ('3200', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-11 11:03:34', '2019-03-11 11:03:34');
INSERT INTO `c_login_log` VALUES ('3201', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-11 11:36:17', '2019-03-11 11:36:17');
INSERT INTO `c_login_log` VALUES ('3202', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-11 11:57:25', '2019-03-11 11:57:25');
INSERT INTO `c_login_log` VALUES ('3203', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-11 12:06:22', '2019-03-11 12:06:22');
INSERT INTO `c_login_log` VALUES ('3204', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-11 12:07:34', '2019-03-11 12:07:34');
INSERT INTO `c_login_log` VALUES ('3205', null, '342599199', '2130706433', '用户成功登录系统(By remember me)', '2019-03-11 12:23:36', '2019-03-11 12:23:36');
INSERT INTO `c_login_log` VALUES ('3206', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-11 12:30:54', '2019-03-11 12:30:54');
INSERT INTO `c_login_log` VALUES ('3207', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-11 14:03:39', '2019-03-11 14:03:39');
INSERT INTO `c_login_log` VALUES ('3208', null, '342599199', '2130706433', '用户成功登录系统(By remember me)', '2019-03-11 14:26:11', '2019-03-11 14:26:11');
INSERT INTO `c_login_log` VALUES ('3209', null, '342599199', '2130706433', '用户成功登录系统(By remember me)', '2019-03-11 14:32:48', '2019-03-11 14:32:48');
INSERT INTO `c_login_log` VALUES ('3210', null, '631722739', '2130706433', '用户成功登录系统', '2019-03-11 14:35:04', '2019-03-11 14:35:04');
INSERT INTO `c_login_log` VALUES ('3211', null, '788316245', '2130706433', '用户成功登录系统', '2019-03-11 14:35:27', '2019-03-11 14:35:27');
INSERT INTO `c_login_log` VALUES ('3212', null, '788316245', '2130706433', '用户成功登录系统(By remember me)', '2019-03-11 15:19:28', '2019-03-11 15:19:28');
INSERT INTO `c_login_log` VALUES ('3213', null, '788316245', '2130706433', '用户成功登录系统(By remember me)', '2019-03-11 16:06:42', '2019-03-11 16:06:42');
INSERT INTO `c_login_log` VALUES ('3214', null, '788316245', '2130706433', '用户成功登录系统(By remember me)', '2019-03-11 16:08:09', '2019-03-11 16:08:09');
INSERT INTO `c_login_log` VALUES ('3215', null, '788316245', '2130706433', '用户成功登录系统(By remember me)', '2019-03-11 16:09:13', '2019-03-11 16:09:13');
INSERT INTO `c_login_log` VALUES ('3216', null, '007543243', '2130706433', '用户成功登录系统', '2019-03-11 16:09:32', '2019-03-11 16:09:32');
INSERT INTO `c_login_log` VALUES ('3217', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-11 16:09:51', '2019-03-11 16:09:51');
INSERT INTO `c_login_log` VALUES ('3218', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-11 16:23:13', '2019-03-11 16:23:13');
INSERT INTO `c_login_log` VALUES ('3219', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-11 16:38:32', '2019-03-11 16:38:32');
INSERT INTO `c_login_log` VALUES ('3220', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-11 16:52:46', '2019-03-11 16:52:46');
INSERT INTO `c_login_log` VALUES ('3221', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-11 16:59:01', '2019-03-11 16:59:01');
INSERT INTO `c_login_log` VALUES ('3222', null, '788316245', '2130706433', '用户成功登录系统', '2019-03-11 17:29:59', '2019-03-11 17:29:59');
INSERT INTO `c_login_log` VALUES ('3223', null, 'ftAdmin', '2130706433', '用户成功登录系统', '2019-03-11 17:30:16', '2019-03-11 17:30:16');
INSERT INTO `c_login_log` VALUES ('3224', null, '92359279N', '2130706433', '用户成功登录系统', '2019-03-11 17:30:43', '2019-03-11 17:30:43');
INSERT INTO `c_login_log` VALUES ('3225', null, '92359279N', '2130706433', '用户成功登录系统(By remember me)', '2019-03-11 17:53:41', '2019-03-11 17:53:41');
INSERT INTO `c_login_log` VALUES ('3226', null, '92359279N', '2130706433', '用户成功登录系统(By remember me)', '2019-03-11 17:56:06', '2019-03-11 17:56:06');
INSERT INTO `c_login_log` VALUES ('3227', null, '92359279N', '2130706433', '用户成功登录系统(By remember me)', '2019-03-11 18:14:05', '2019-03-11 18:14:05');
INSERT INTO `c_login_log` VALUES ('3228', null, '92359279N', '2130706433', '用户成功登录系统(By remember me)', '2019-03-11 18:21:15', '2019-03-11 18:21:15');
INSERT INTO `c_login_log` VALUES ('3229', null, '92359279N', '2130706433', '用户成功登录系统(By remember me)', '2019-03-11 18:26:55', '2019-03-11 18:26:55');
INSERT INTO `c_login_log` VALUES ('3230', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-12 10:26:23', '2019-03-12 10:26:23');
INSERT INTO `c_login_log` VALUES ('3231', null, 'test1', '2130706433', '用户成功登录系统', '2019-03-12 11:32:34', '2019-03-12 11:32:34');
INSERT INTO `c_login_log` VALUES ('3232', null, '788316245', '2130706433', '用户成功登录系统', '2019-03-12 11:58:38', '2019-03-12 11:58:38');
INSERT INTO `c_login_log` VALUES ('3233', null, '788316245', '2130706433', '用户成功登录系统(By remember me)', '2019-03-12 14:24:48', '2019-03-12 14:24:48');
INSERT INTO `c_login_log` VALUES ('3234', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-12 15:22:24', '2019-03-12 15:22:24');
INSERT INTO `c_login_log` VALUES ('3235', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-12 15:23:40', '2019-03-12 15:23:40');
INSERT INTO `c_login_log` VALUES ('3236', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-12 15:39:08', '2019-03-12 15:39:08');
INSERT INTO `c_login_log` VALUES ('3237', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-12 15:39:10', '2019-03-12 15:39:10');
INSERT INTO `c_login_log` VALUES ('3238', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-12 15:40:06', '2019-03-12 15:40:06');
INSERT INTO `c_login_log` VALUES ('3239', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-12 16:04:57', '2019-03-12 16:04:57');
INSERT INTO `c_login_log` VALUES ('3240', null, '342599199', '2130706433', '用户成功登录系统(By remember me)', '2019-03-12 16:33:06', '2019-03-12 16:33:06');
INSERT INTO `c_login_log` VALUES ('3241', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-12 16:53:34', '2019-03-12 16:53:34');
INSERT INTO `c_login_log` VALUES ('3242', null, '788316245', '2130706433', '用户成功登录系统', '2019-03-13 08:46:15', '2019-03-13 08:46:15');
INSERT INTO `c_login_log` VALUES ('3243', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-13 08:58:10', '2019-03-13 08:58:10');
INSERT INTO `c_login_log` VALUES ('3244', null, 'test1', '2130706433', '用户成功登录系统', '2019-03-13 09:01:46', '2019-03-13 09:01:46');
INSERT INTO `c_login_log` VALUES ('3245', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-13 09:02:12', '2019-03-13 09:02:12');
INSERT INTO `c_login_log` VALUES ('3246', null, '788316245', '2130706433', '用户成功登录系统', '2019-03-13 09:04:53', '2019-03-13 09:04:53');
INSERT INTO `c_login_log` VALUES ('3247', null, '631722739', '2130706433', '用户成功登录系统', '2019-03-13 09:05:56', '2019-03-13 09:05:56');
INSERT INTO `c_login_log` VALUES ('3248', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-13 09:06:09', '2019-03-13 09:06:09');
INSERT INTO `c_login_log` VALUES ('3249', null, 'test1', '2130706433', '用户成功登录系统', '2019-03-13 09:07:48', '2019-03-13 09:07:48');
INSERT INTO `c_login_log` VALUES ('3250', null, 'ftAdmin', '2130706433', '用户成功登录系统', '2019-03-13 09:21:04', '2019-03-13 09:21:04');
INSERT INTO `c_login_log` VALUES ('3251', null, '788316245', '2130706433', '用户成功登录系统(By remember me)', '2019-03-13 09:21:22', '2019-03-13 09:21:22');
INSERT INTO `c_login_log` VALUES ('3252', null, 'test1', '2130706433', '用户成功登录系统', '2019-03-13 09:22:20', '2019-03-13 09:22:20');
INSERT INTO `c_login_log` VALUES ('3253', null, '788316245', '2130706433', '用户成功登录系统', '2019-03-13 09:22:58', '2019-03-13 09:22:58');
INSERT INTO `c_login_log` VALUES ('3254', null, 'test1', '2130706433', '用户成功登录系统', '2019-03-13 09:47:11', '2019-03-13 09:47:11');
INSERT INTO `c_login_log` VALUES ('3255', null, '788316245', '2130706433', '用户成功登录系统', '2019-03-13 09:48:34', '2019-03-13 09:48:34');
INSERT INTO `c_login_log` VALUES ('3256', null, '788316245', '2130706433', '用户成功登录系统', '2019-03-13 09:50:34', '2019-03-13 09:50:34');
INSERT INTO `c_login_log` VALUES ('3257', null, '788316245', '2130706433', '用户成功登录系统(By remember me)', '2019-03-13 09:50:46', '2019-03-13 09:50:46');
INSERT INTO `c_login_log` VALUES ('3258', null, '92359279N', '2130706433', '用户成功登录系统', '2019-03-13 09:53:29', '2019-03-13 09:53:29');
INSERT INTO `c_login_log` VALUES ('3259', null, '631722739', '2130706433', '用户成功登录系统', '2019-03-13 09:55:02', '2019-03-13 09:55:02');
INSERT INTO `c_login_log` VALUES ('3260', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-13 10:06:37', '2019-03-13 10:06:37');
INSERT INTO `c_login_log` VALUES ('3261', null, 'ftAdmin', '2130706433', '用户成功登录系统', '2019-03-13 10:08:54', '2019-03-13 10:08:54');
INSERT INTO `c_login_log` VALUES ('3262', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-13 10:56:33', '2019-03-13 10:56:33');
INSERT INTO `c_login_log` VALUES ('3263', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-13 12:08:27', '2019-03-13 12:08:27');
INSERT INTO `c_login_log` VALUES ('3264', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-13 12:29:01', '2019-03-13 12:29:01');
INSERT INTO `c_login_log` VALUES ('3265', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-13 14:26:13', '2019-03-13 14:26:13');
INSERT INTO `c_login_log` VALUES ('3266', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-13 14:44:30', '2019-03-13 14:44:30');
INSERT INTO `c_login_log` VALUES ('3267', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-13 14:44:31', '2019-03-13 14:44:31');
INSERT INTO `c_login_log` VALUES ('3268', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-13 15:32:06', '2019-03-13 15:32:06');
INSERT INTO `c_login_log` VALUES ('3269', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-13 15:37:06', '2019-03-13 15:37:06');
INSERT INTO `c_login_log` VALUES ('3270', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-13 15:42:26', '2019-03-13 15:42:26');
INSERT INTO `c_login_log` VALUES ('3271', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-13 15:43:22', '2019-03-13 15:43:22');
INSERT INTO `c_login_log` VALUES ('3272', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-13 15:43:37', '2019-03-13 15:43:37');
INSERT INTO `c_login_log` VALUES ('3273', null, '788316245', '2130706433', '用户成功登录系统(By remember me)', '2019-03-13 15:53:43', '2019-03-13 15:53:43');
INSERT INTO `c_login_log` VALUES ('3274', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-13 15:53:55', '2019-03-13 15:53:55');
INSERT INTO `c_login_log` VALUES ('3275', null, '788316245', '2130706433', '用户成功登录系统', '2019-03-13 15:55:29', '2019-03-13 15:55:29');
INSERT INTO `c_login_log` VALUES ('3276', null, '91440300782771642N', '2130706433', '用户成功登录系统(By remember me)', '2019-03-13 15:55:50', '2019-03-13 15:55:50');
INSERT INTO `c_login_log` VALUES ('3277', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-13 15:55:56', '2019-03-13 15:55:56');
INSERT INTO `c_login_log` VALUES ('3278', null, 'test1', '2130706433', '用户成功登录系统', '2019-03-13 16:06:24', '2019-03-13 16:06:24');
INSERT INTO `c_login_log` VALUES ('3279', null, 'ftAdmin', '2130706433', '用户成功登录系统', '2019-03-13 16:12:50', '2019-03-13 16:12:50');
INSERT INTO `c_login_log` VALUES ('3280', null, '788316245', '2130706433', '用户成功登录系统(By remember me)', '2019-03-13 16:28:45', '2019-03-13 16:28:45');
INSERT INTO `c_login_log` VALUES ('3281', null, 'test1', '2130706433', '用户成功登录系统', '2019-03-13 16:34:28', '2019-03-13 16:34:28');
INSERT INTO `c_login_log` VALUES ('3282', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-13 16:57:26', '2019-03-13 16:57:26');
INSERT INTO `c_login_log` VALUES ('3283', null, '788316245', '2130706433', '用户成功登录系统', '2019-03-13 16:57:43', '2019-03-13 16:57:43');
INSERT INTO `c_login_log` VALUES ('3284', null, '788316245', '2130706433', '用户成功登录系统(By remember me)', '2019-03-13 17:29:28', '2019-03-13 17:29:28');
INSERT INTO `c_login_log` VALUES ('3285', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-13 17:34:06', '2019-03-13 17:34:06');
INSERT INTO `c_login_log` VALUES ('3286', null, '788316245', '2130706433', '用户成功登录系统', '2019-03-13 17:35:10', '2019-03-13 17:35:10');
INSERT INTO `c_login_log` VALUES ('3287', null, '342599199', '2130706433', '用户成功登录系统(By remember me)', '2019-03-13 17:38:45', '2019-03-13 17:38:45');
INSERT INTO `c_login_log` VALUES ('3288', null, '92359279N', '2130706433', '用户成功登录系统', '2019-03-13 17:45:00', '2019-03-13 17:45:00');
INSERT INTO `c_login_log` VALUES ('3289', null, '788316245', '2130706433', '用户成功登录系统(By remember me)', '2019-03-13 17:45:44', '2019-03-13 17:45:44');
INSERT INTO `c_login_log` VALUES ('3290', null, '788316245', '2130706433', '用户成功登录系统', '2019-03-13 17:46:36', '2019-03-13 17:46:36');
INSERT INTO `c_login_log` VALUES ('3291', null, '631722739', '2130706433', '用户成功登录系统', '2019-03-13 17:50:34', '2019-03-13 17:50:34');
INSERT INTO `c_login_log` VALUES ('3292', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-14 08:47:13', '2019-03-14 08:47:13');
INSERT INTO `c_login_log` VALUES ('3293', null, '788316245', '2130706433', '用户成功登录系统', '2019-03-14 08:47:45', '2019-03-14 08:47:45');
INSERT INTO `c_login_log` VALUES ('3294', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-14 08:50:06', '2019-03-14 08:50:06');
INSERT INTO `c_login_log` VALUES ('3295', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-14 08:52:59', '2019-03-14 08:52:59');
INSERT INTO `c_login_log` VALUES ('3296', null, 'test1', '2130706433', '用户成功登录系统', '2019-03-14 08:59:00', '2019-03-14 08:59:00');
INSERT INTO `c_login_log` VALUES ('3297', null, '788316245', '2130706433', '用户成功登录系统(By remember me)', '2019-03-14 09:11:54', '2019-03-14 09:11:54');
INSERT INTO `c_login_log` VALUES ('3298', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-14 09:12:13', '2019-03-14 09:12:13');
INSERT INTO `c_login_log` VALUES ('3299', null, '788316245', '2130706433', '用户成功登录系统', '2019-03-14 09:12:52', '2019-03-14 09:12:52');
INSERT INTO `c_login_log` VALUES ('3300', null, '788316245', '2130706433', '用户成功登录系统', '2019-03-14 09:12:57', '2019-03-14 09:12:57');
INSERT INTO `c_login_log` VALUES ('3301', null, '788316245', '2130706433', '用户成功登录系统(By remember me)', '2019-03-14 09:13:21', '2019-03-14 09:13:21');
INSERT INTO `c_login_log` VALUES ('3302', null, '788316245', '2130706433', '用户成功登录系统', '2019-03-14 09:18:32', '2019-03-14 09:18:32');
INSERT INTO `c_login_log` VALUES ('3303', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-14 09:20:41', '2019-03-14 09:20:41');
INSERT INTO `c_login_log` VALUES ('3304', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-14 09:36:12', '2019-03-14 09:36:12');
INSERT INTO `c_login_log` VALUES ('3305', null, '788316245', '2130706433', '用户成功登录系统', '2019-03-14 09:44:12', '2019-03-14 09:44:12');
INSERT INTO `c_login_log` VALUES ('3306', null, 'test1', '2130706433', '用户成功登录系统', '2019-03-14 09:49:40', '2019-03-14 09:49:40');
INSERT INTO `c_login_log` VALUES ('3307', null, '788316245', '2130706433', '用户成功登录系统(By remember me)', '2019-03-14 09:53:04', '2019-03-14 09:53:04');
INSERT INTO `c_login_log` VALUES ('3308', null, '755686282', '2130706433', '用户成功登录系统', '2019-03-14 09:53:31', '2019-03-14 09:53:31');
INSERT INTO `c_login_log` VALUES ('3309', null, '755686282', '2130706433', '用户成功登录系统', '2019-03-14 09:53:50', '2019-03-14 09:53:50');
INSERT INTO `c_login_log` VALUES ('3310', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-14 09:58:08', '2019-03-14 09:58:08');
INSERT INTO `c_login_log` VALUES ('3311', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-14 10:00:10', '2019-03-14 10:00:10');
INSERT INTO `c_login_log` VALUES ('3312', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-14 10:00:24', '2019-03-14 10:00:24');
INSERT INTO `c_login_log` VALUES ('3313', null, '455750692', '2130706433', '用户成功登录系统', '2019-03-14 10:01:03', '2019-03-14 10:01:03');
INSERT INTO `c_login_log` VALUES ('3314', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-14 10:01:51', '2019-03-14 10:01:51');
INSERT INTO `c_login_log` VALUES ('3315', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-14 10:02:15', '2019-03-14 10:02:15');
INSERT INTO `c_login_log` VALUES ('3316', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-14 10:03:20', '2019-03-14 10:03:20');
INSERT INTO `c_login_log` VALUES ('3317', null, '755686282', '2130706433', '用户成功登录系统', '2019-03-14 10:04:32', '2019-03-14 10:04:32');
INSERT INTO `c_login_log` VALUES ('3318', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-14 10:06:20', '2019-03-14 10:06:20');
INSERT INTO `c_login_log` VALUES ('3319', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-14 10:06:33', '2019-03-14 10:06:33');
INSERT INTO `c_login_log` VALUES ('3320', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-14 10:07:35', '2019-03-14 10:07:35');
INSERT INTO `c_login_log` VALUES ('3321', null, '92359279N', '2130706433', '用户成功登录系统', '2019-03-14 10:11:15', '2019-03-14 10:11:15');
INSERT INTO `c_login_log` VALUES ('3322', null, 'ftAdmin', '2130706433', '用户成功登录系统', '2019-03-14 10:14:28', '2019-03-14 10:14:28');
INSERT INTO `c_login_log` VALUES ('3323', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-14 10:23:15', '2019-03-14 10:23:15');
INSERT INTO `c_login_log` VALUES ('3324', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-14 10:43:33', '2019-03-14 10:43:33');
INSERT INTO `c_login_log` VALUES ('3325', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-14 10:53:22', '2019-03-14 10:53:22');
INSERT INTO `c_login_log` VALUES ('3326', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-14 11:13:55', '2019-03-14 11:13:55');
INSERT INTO `c_login_log` VALUES ('3327', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-14 11:21:08', '2019-03-14 11:21:08');
INSERT INTO `c_login_log` VALUES ('3328', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-14 11:45:29', '2019-03-14 11:45:29');
INSERT INTO `c_login_log` VALUES ('3329', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-14 11:50:36', '2019-03-14 11:50:36');
INSERT INTO `c_login_log` VALUES ('3330', null, '788316245', '2130706433', '用户成功登录系统', '2019-03-14 11:51:07', '2019-03-14 11:51:07');
INSERT INTO `c_login_log` VALUES ('3331', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-14 11:52:10', '2019-03-14 11:52:10');
INSERT INTO `c_login_log` VALUES ('3332', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-14 11:53:20', '2019-03-14 11:53:20');
INSERT INTO `c_login_log` VALUES ('3333', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-14 11:54:31', '2019-03-14 11:54:31');
INSERT INTO `c_login_log` VALUES ('3334', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-14 12:02:10', '2019-03-14 12:02:10');
INSERT INTO `c_login_log` VALUES ('3335', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-14 12:03:03', '2019-03-14 12:03:03');
INSERT INTO `c_login_log` VALUES ('3336', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-14 12:09:30', '2019-03-14 12:09:30');
INSERT INTO `c_login_log` VALUES ('3337', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-14 12:18:45', '2019-03-14 12:18:45');
INSERT INTO `c_login_log` VALUES ('3338', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-14 12:19:35', '2019-03-14 12:19:35');
INSERT INTO `c_login_log` VALUES ('3339', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-14 14:11:38', '2019-03-14 14:11:38');
INSERT INTO `c_login_log` VALUES ('3340', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-14 14:13:41', '2019-03-14 14:13:41');
INSERT INTO `c_login_log` VALUES ('3341', null, '342599199', '2130706433', '用户成功登录系统(By remember me)', '2019-03-14 14:22:30', '2019-03-14 14:22:30');
INSERT INTO `c_login_log` VALUES ('3342', null, '788316245', '2130706433', '用户成功登录系统', '2019-03-14 14:23:21', '2019-03-14 14:23:21');
INSERT INTO `c_login_log` VALUES ('3343', null, '755686282', '2130706433', '用户成功登录系统', '2019-03-14 14:24:10', '2019-03-14 14:24:10');
INSERT INTO `c_login_log` VALUES ('3344', null, '755686282', '2130706433', '用户成功登录系统', '2019-03-14 14:26:43', '2019-03-14 14:26:43');
INSERT INTO `c_login_log` VALUES ('3345', null, '755686282', '2130706433', '用户成功登录系统', '2019-03-14 14:29:05', '2019-03-14 14:29:05');
INSERT INTO `c_login_log` VALUES ('3346', null, 'test20190314', '2130706433', '用户成功登录系统', '2019-03-14 14:32:06', '2019-03-14 14:32:06');
INSERT INTO `c_login_log` VALUES ('3347', null, '748870399', '2130706433', '用户成功登录系统', '2019-03-14 14:36:14', '2019-03-14 14:36:14');
INSERT INTO `c_login_log` VALUES ('3348', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-14 14:36:39', '2019-03-14 14:36:39');
INSERT INTO `c_login_log` VALUES ('3349', null, '755686282', '2130706433', '用户成功登录系统', '2019-03-14 14:41:52', '2019-03-14 14:41:52');
INSERT INTO `c_login_log` VALUES ('3350', null, '755686282', '2130706433', '用户成功登录系统', '2019-03-14 14:43:54', '2019-03-14 14:43:54');
INSERT INTO `c_login_log` VALUES ('3351', null, '755686282', '2130706433', '用户成功登录系统', '2019-03-14 14:53:05', '2019-03-14 14:53:05');
INSERT INTO `c_login_log` VALUES ('3352', null, 'test2019', '2130706433', '用户成功登录系统', '2019-03-14 14:55:30', '2019-03-14 14:55:30');
INSERT INTO `c_login_log` VALUES ('3353', null, '755686282', '2130706433', '用户成功登录系统', '2019-03-14 15:00:57', '2019-03-14 15:00:57');
INSERT INTO `c_login_log` VALUES ('3354', null, 'test2019', '2130706433', '用户成功登录系统', '2019-03-14 15:03:18', '2019-03-14 15:03:18');
INSERT INTO `c_login_log` VALUES ('3355', null, '755686282', '2130706433', '用户成功登录系统', '2019-03-14 15:06:54', '2019-03-14 15:06:54');
INSERT INTO `c_login_log` VALUES ('3356', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-14 15:08:16', '2019-03-14 15:08:16');
INSERT INTO `c_login_log` VALUES ('3357', null, 'test2019', '2130706433', '用户成功登录系统', '2019-03-14 15:09:17', '2019-03-14 15:09:17');
INSERT INTO `c_login_log` VALUES ('3358', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-14 16:50:01', '2019-03-14 16:50:01');
INSERT INTO `c_login_log` VALUES ('3359', null, '788316245', '2130706433', '用户成功登录系统', '2019-03-14 17:31:31', '2019-03-14 17:31:31');
INSERT INTO `c_login_log` VALUES ('3360', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-14 17:34:22', '2019-03-14 17:34:22');
INSERT INTO `c_login_log` VALUES ('3361', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-14 17:58:07', '2019-03-14 17:58:07');
INSERT INTO `c_login_log` VALUES ('3362', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-14 18:01:41', '2019-03-14 18:01:41');
INSERT INTO `c_login_log` VALUES ('3363', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-14 18:08:26', '2019-03-14 18:08:26');
INSERT INTO `c_login_log` VALUES ('3364', null, '788316245', '2130706433', '用户成功登录系统', '2019-03-14 18:09:13', '2019-03-14 18:09:13');
INSERT INTO `c_login_log` VALUES ('3365', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-14 18:11:37', '2019-03-14 18:11:37');
INSERT INTO `c_login_log` VALUES ('3366', null, '788316245', '2130706433', '用户成功登录系统(By remember me)', '2019-03-14 18:14:18', '2019-03-14 18:14:18');
INSERT INTO `c_login_log` VALUES ('3367', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-14 18:15:26', '2019-03-14 18:15:26');
INSERT INTO `c_login_log` VALUES ('3368', null, '755686282', '2130706433', '用户成功登录系统', '2019-03-14 18:17:41', '2019-03-14 18:17:41');
INSERT INTO `c_login_log` VALUES ('3369', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-14 18:32:09', '2019-03-14 18:32:09');
INSERT INTO `c_login_log` VALUES ('3370', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-15 10:02:42', '2019-03-15 10:02:42');
INSERT INTO `c_login_log` VALUES ('3371', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-15 10:08:44', '2019-03-15 10:08:44');
INSERT INTO `c_login_log` VALUES ('3372', null, '631722739', '2130706433', '用户成功登录系统', '2019-03-15 10:13:14', '2019-03-15 10:13:14');
INSERT INTO `c_login_log` VALUES ('3373', null, '342599199', '2130706433', '用户成功登录系统', '2019-03-15 10:28:00', '2019-03-15 10:28:00');
INSERT INTO `c_login_log` VALUES ('3374', null, '192260957', '2130706433', '用户成功登录系统', '2019-03-15 10:29:28', '2019-03-15 10:29:28');
INSERT INTO `c_login_log` VALUES ('3375', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-15 10:31:47', '2019-03-15 10:31:47');
INSERT INTO `c_login_log` VALUES ('3376', null, '788316245', '2130706433', '用户成功登录系统', '2019-03-15 11:35:37', '2019-03-15 11:35:37');
INSERT INTO `c_login_log` VALUES ('3377', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-15 11:49:42', '2019-03-15 11:49:42');
INSERT INTO `c_login_log` VALUES ('3378', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-15 12:29:12', '2019-03-15 12:29:12');
INSERT INTO `c_login_log` VALUES ('3379', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-15 12:29:12', '2019-03-15 12:29:12');
INSERT INTO `c_login_log` VALUES ('3380', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-15 14:22:39', '2019-03-15 14:22:39');
INSERT INTO `c_login_log` VALUES ('3381', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-15 17:35:04', '2019-03-15 17:35:04');
INSERT INTO `c_login_log` VALUES ('3382', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-15 17:56:21', '2019-03-15 17:56:21');
INSERT INTO `c_login_log` VALUES ('3383', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-18 16:14:10', '2019-03-18 16:14:10');
INSERT INTO `c_login_log` VALUES ('3384', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-18 17:13:38', '2019-03-18 17:13:38');
INSERT INTO `c_login_log` VALUES ('3385', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-18 17:48:27', '2019-03-18 17:48:27');
INSERT INTO `c_login_log` VALUES ('3386', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-18 18:03:12', '2019-03-18 18:03:12');
INSERT INTO `c_login_log` VALUES ('3387', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-19 08:39:29', '2019-03-19 08:39:29');
INSERT INTO `c_login_log` VALUES ('3388', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-20 14:19:48', '2019-03-20 14:19:48');
INSERT INTO `c_login_log` VALUES ('3389', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-20 16:22:45', '2019-03-20 16:22:45');
INSERT INTO `c_login_log` VALUES ('3390', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-20 16:24:29', '2019-03-20 16:24:29');
INSERT INTO `c_login_log` VALUES ('3391', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-20 17:00:22', '2019-03-20 17:00:22');
INSERT INTO `c_login_log` VALUES ('3392', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-20 17:03:51', '2019-03-20 17:03:51');
INSERT INTO `c_login_log` VALUES ('3393', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-20 17:08:39', '2019-03-20 17:08:39');
INSERT INTO `c_login_log` VALUES ('3394', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-20 17:15:31', '2019-03-20 17:15:31');
INSERT INTO `c_login_log` VALUES ('3395', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-20 17:27:10', '2019-03-20 17:27:10');
INSERT INTO `c_login_log` VALUES ('3396', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-20 17:52:59', '2019-03-20 17:52:59');
INSERT INTO `c_login_log` VALUES ('3397', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-20 18:14:57', '2019-03-20 18:14:57');
INSERT INTO `c_login_log` VALUES ('3398', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-20 18:33:07', '2019-03-20 18:33:07');
INSERT INTO `c_login_log` VALUES ('3399', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-20 18:34:15', '2019-03-20 18:34:15');
INSERT INTO `c_login_log` VALUES ('3400', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-20 18:59:16', '2019-03-20 18:59:16');
INSERT INTO `c_login_log` VALUES ('3401', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-21 08:48:32', '2019-03-21 08:48:32');
INSERT INTO `c_login_log` VALUES ('3402', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-21 08:54:12', '2019-03-21 08:54:12');
INSERT INTO `c_login_log` VALUES ('3403', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-21 09:26:55', '2019-03-21 09:26:55');
INSERT INTO `c_login_log` VALUES ('3404', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-21 09:46:06', '2019-03-21 09:46:06');
INSERT INTO `c_login_log` VALUES ('3405', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-21 09:55:48', '2019-03-21 09:55:48');
INSERT INTO `c_login_log` VALUES ('3406', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-21 10:31:08', '2019-03-21 10:31:08');
INSERT INTO `c_login_log` VALUES ('3407', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-21 10:37:37', '2019-03-21 10:37:37');
INSERT INTO `c_login_log` VALUES ('3408', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-21 10:38:10', '2019-03-21 10:38:10');
INSERT INTO `c_login_log` VALUES ('3409', null, '788316245', '2130706433', '用户成功登录系统', '2019-03-21 10:38:27', '2019-03-21 10:38:27');
INSERT INTO `c_login_log` VALUES ('3410', null, '631722739', '2130706433', '用户成功登录系统', '2019-03-21 10:38:42', '2019-03-21 10:38:42');
INSERT INTO `c_login_log` VALUES ('3411', null, '92359279N', '2130706433', '用户成功登录系统', '2019-03-21 10:38:57', '2019-03-21 10:38:57');
INSERT INTO `c_login_log` VALUES ('3412', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-21 10:40:06', '2019-03-21 10:40:06');
INSERT INTO `c_login_log` VALUES ('3413', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-21 10:45:00', '2019-03-21 10:45:00');
INSERT INTO `c_login_log` VALUES ('3414', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-21 11:37:08', '2019-03-21 11:37:08');
INSERT INTO `c_login_log` VALUES ('3415', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-21 11:45:51', '2019-03-21 11:45:51');
INSERT INTO `c_login_log` VALUES ('3416', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-21 11:46:11', '2019-03-21 11:46:11');
INSERT INTO `c_login_log` VALUES ('3417', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-21 11:51:33', '2019-03-21 11:51:33');
INSERT INTO `c_login_log` VALUES ('3418', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-21 12:01:52', '2019-03-21 12:01:52');
INSERT INTO `c_login_log` VALUES ('3419', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-21 12:25:02', '2019-03-21 12:25:02');
INSERT INTO `c_login_log` VALUES ('3420', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-21 14:06:48', '2019-03-21 14:06:48');
INSERT INTO `c_login_log` VALUES ('3421', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-21 14:23:15', '2019-03-21 14:23:15');
INSERT INTO `c_login_log` VALUES ('3422', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-21 14:29:15', '2019-03-21 14:29:15');
INSERT INTO `c_login_log` VALUES ('3423', null, '788316245', '2130706433', '用户成功登录系统', '2019-03-21 15:01:30', '2019-03-21 15:01:30');
INSERT INTO `c_login_log` VALUES ('3424', null, 'admin', '2130706433', '用户成功登录系统', '2019-03-21 16:07:29', '2019-03-21 16:07:29');
INSERT INTO `c_login_log` VALUES ('3425', null, 'admin', '2130706433', '用户成功登录系统(By remember me)', '2019-03-21 16:54:04', '2019-03-21 16:54:04');
INSERT INTO `c_login_log` VALUES ('3426', null, 'admin', '0', '用户成功登录系统', '2019-04-01 09:18:25', '2019-04-01 09:18:25');
INSERT INTO `c_login_log` VALUES ('3427', null, 'admin', '0', '用户成功登录系统', '2019-04-01 09:18:51', '2019-04-01 09:18:51');
INSERT INTO `c_login_log` VALUES ('3428', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-02 01:45:03', '2019-04-02 01:45:03');
INSERT INTO `c_login_log` VALUES ('3429', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-02 01:47:01', '2019-04-02 01:47:01');
INSERT INTO `c_login_log` VALUES ('3430', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-02 02:18:24', '2019-04-02 02:18:24');
INSERT INTO `c_login_log` VALUES ('3431', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-02 02:32:08', '2019-04-02 02:32:08');
INSERT INTO `c_login_log` VALUES ('3432', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-02 02:38:20', '2019-04-02 02:38:20');
INSERT INTO `c_login_log` VALUES ('3433', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-02 03:02:55', '2019-04-02 03:02:55');
INSERT INTO `c_login_log` VALUES ('3434', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-02 03:21:02', '2019-04-02 03:21:02');
INSERT INTO `c_login_log` VALUES ('3435', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-02 03:22:19', '2019-04-02 03:22:19');
INSERT INTO `c_login_log` VALUES ('3436', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-02 03:40:59', '2019-04-02 03:40:59');
INSERT INTO `c_login_log` VALUES ('3437', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-02 04:27:13', '2019-04-02 04:27:13');
INSERT INTO `c_login_log` VALUES ('3438', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-02 04:32:43', '2019-04-02 04:32:43');
INSERT INTO `c_login_log` VALUES ('3439', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-02 06:18:16', '2019-04-02 06:18:16');
INSERT INTO `c_login_log` VALUES ('3440', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-02 06:40:01', '2019-04-02 06:40:01');
INSERT INTO `c_login_log` VALUES ('3441', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-02 07:02:05', '2019-04-02 07:02:05');
INSERT INTO `c_login_log` VALUES ('3442', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-02 07:15:17', '2019-04-02 07:15:17');
INSERT INTO `c_login_log` VALUES ('3443', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-02 07:20:22', '2019-04-02 07:20:22');
INSERT INTO `c_login_log` VALUES ('3444', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-04 01:49:17', '2019-04-04 01:49:17');
INSERT INTO `c_login_log` VALUES ('3445', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-04 02:24:10', '2019-04-04 02:24:10');
INSERT INTO `c_login_log` VALUES ('3446', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-04 02:28:30', '2019-04-04 02:28:30');
INSERT INTO `c_login_log` VALUES ('3447', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-04 02:31:37', '2019-04-04 02:31:37');
INSERT INTO `c_login_log` VALUES ('3448', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-04 02:34:59', '2019-04-04 02:34:59');
INSERT INTO `c_login_log` VALUES ('3449', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-04 02:40:09', '2019-04-04 02:40:09');
INSERT INTO `c_login_log` VALUES ('3450', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-04 02:41:57', '2019-04-04 02:41:57');
INSERT INTO `c_login_log` VALUES ('3451', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-04 03:16:01', '2019-04-04 03:16:01');
INSERT INTO `c_login_log` VALUES ('3452', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-04 03:27:40', '2019-04-04 03:27:40');
INSERT INTO `c_login_log` VALUES ('3453', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-04 03:51:36', '2019-04-04 03:51:36');
INSERT INTO `c_login_log` VALUES ('3454', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-04 03:53:27', '2019-04-04 03:53:27');
INSERT INTO `c_login_log` VALUES ('3455', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-04 06:29:46', '2019-04-04 06:29:46');
INSERT INTO `c_login_log` VALUES ('3456', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-04 06:55:52', '2019-04-04 06:55:52');
INSERT INTO `c_login_log` VALUES ('3457', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-04 06:56:16', '2019-04-04 06:56:16');
INSERT INTO `c_login_log` VALUES ('3458', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-04 06:58:40', '2019-04-04 06:58:40');
INSERT INTO `c_login_log` VALUES ('3459', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-04 07:21:32', '2019-04-04 07:21:32');
INSERT INTO `c_login_log` VALUES ('3460', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-08 00:56:30', '2019-04-08 00:56:30');
INSERT INTO `c_login_log` VALUES ('3461', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-08 01:28:01', '2019-04-08 01:28:01');
INSERT INTO `c_login_log` VALUES ('3462', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-08 01:28:49', '2019-04-08 01:28:49');
INSERT INTO `c_login_log` VALUES ('3463', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-08 01:31:03', '2019-04-08 01:31:03');
INSERT INTO `c_login_log` VALUES ('3464', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-08 08:39:38', '2019-04-08 08:39:38');
INSERT INTO `c_login_log` VALUES ('3465', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-08 08:42:27', '2019-04-08 08:42:27');
INSERT INTO `c_login_log` VALUES ('3466', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-08 09:10:58', '2019-04-08 09:10:58');
INSERT INTO `c_login_log` VALUES ('3467', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-08 09:15:19', '2019-04-08 09:15:19');
INSERT INTO `c_login_log` VALUES ('3468', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-08 09:40:23', '2019-04-08 09:40:23');
INSERT INTO `c_login_log` VALUES ('3469', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-08 09:45:11', '2019-04-08 09:45:11');
INSERT INTO `c_login_log` VALUES ('3470', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-08 09:45:24', '2019-04-08 09:45:24');
INSERT INTO `c_login_log` VALUES ('3471', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-09 00:45:33', '2019-04-09 00:45:33');
INSERT INTO `c_login_log` VALUES ('3472', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-09 02:52:06', '2019-04-09 02:52:06');
INSERT INTO `c_login_log` VALUES ('3473', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-09 02:54:11', '2019-04-09 02:54:11');
INSERT INTO `c_login_log` VALUES ('3474', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-09 02:54:49', '2019-04-09 02:54:49');
INSERT INTO `c_login_log` VALUES ('3475', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-09 03:00:40', '2019-04-09 03:00:40');
INSERT INTO `c_login_log` VALUES ('3476', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-09 03:06:32', '2019-04-09 03:06:32');
INSERT INTO `c_login_log` VALUES ('3477', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-09 03:24:13', '2019-04-09 03:24:13');
INSERT INTO `c_login_log` VALUES ('3478', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-09 03:26:00', '2019-04-09 03:26:00');
INSERT INTO `c_login_log` VALUES ('3479', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-09 03:55:54', '2019-04-09 03:55:54');
INSERT INTO `c_login_log` VALUES ('3480', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-09 07:00:37', '2019-04-09 07:00:37');
INSERT INTO `c_login_log` VALUES ('3481', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-09 07:05:30', '2019-04-09 07:05:30');
INSERT INTO `c_login_log` VALUES ('3482', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-09 07:16:32', '2019-04-09 07:16:32');
INSERT INTO `c_login_log` VALUES ('3483', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-09 07:40:30', '2019-04-09 07:40:30');
INSERT INTO `c_login_log` VALUES ('3484', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-09 07:46:29', '2019-04-09 07:46:29');
INSERT INTO `c_login_log` VALUES ('3485', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-09 07:58:24', '2019-04-09 07:58:24');
INSERT INTO `c_login_log` VALUES ('3486', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-09 08:00:13', '2019-04-09 08:00:13');
INSERT INTO `c_login_log` VALUES ('3487', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-09 08:01:26', '2019-04-09 08:01:26');
INSERT INTO `c_login_log` VALUES ('3488', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-09 08:04:21', '2019-04-09 08:04:21');
INSERT INTO `c_login_log` VALUES ('3489', null, 'admin', '0', '用户成功登录系统', '2019-04-10 06:55:51', '2019-04-10 06:55:51');
INSERT INTO `c_login_log` VALUES ('3490', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-10 08:14:04', '2019-04-10 08:14:04');
INSERT INTO `c_login_log` VALUES ('3491', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-10 08:35:02', '2019-04-10 08:35:02');
INSERT INTO `c_login_log` VALUES ('3492', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-10 08:41:54', '2019-04-10 08:41:54');
INSERT INTO `c_login_log` VALUES ('3493', null, 'admin', '0', '用户成功登录系统', '2019-04-10 09:07:29', '2019-04-10 09:07:29');
INSERT INTO `c_login_log` VALUES ('3494', null, 'admin', '0', '用户成功登录系统', '2019-04-10 09:24:14', '2019-04-10 09:24:14');
INSERT INTO `c_login_log` VALUES ('3495', null, 'admin', '0', '用户成功登录系统', '2019-04-10 09:27:22', '2019-04-10 09:27:22');
INSERT INTO `c_login_log` VALUES ('3496', null, 'admin', '0', '用户成功登录系统', '2019-04-12 06:12:42', '2019-04-12 06:12:42');
INSERT INTO `c_login_log` VALUES ('3497', null, 'admin', '0', '用户成功登录系统', '2019-04-12 08:15:42', '2019-04-12 08:15:42');
INSERT INTO `c_login_log` VALUES ('3498', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-23 01:23:49', '2019-04-23 01:23:49');
INSERT INTO `c_login_log` VALUES ('3499', null, 'admin', '0', '用户成功登录系统', '2019-04-23 01:27:50', '2019-04-23 01:27:50');
INSERT INTO `c_login_log` VALUES ('3500', null, 'admin', '0', '用户成功登录系统', '2019-04-23 01:35:40', '2019-04-23 01:35:40');
INSERT INTO `c_login_log` VALUES ('3501', null, 'admin', '0', '用户成功登录系统', '2019-04-23 01:42:41', '2019-04-23 01:42:41');
INSERT INTO `c_login_log` VALUES ('3502', null, 'admin', '0', '用户成功登录系统', '2019-04-23 02:45:03', '2019-04-23 02:45:03');
INSERT INTO `c_login_log` VALUES ('3503', null, 'admin', '0', '用户成功登录系统', '2019-04-23 02:58:20', '2019-04-23 02:58:20');
INSERT INTO `c_login_log` VALUES ('3504', null, 'admin', '0', '用户成功登录系统', '2019-04-23 02:59:16', '2019-04-23 02:59:16');
INSERT INTO `c_login_log` VALUES ('3505', null, 'admin', '0', '用户成功登录系统', '2019-04-23 03:00:13', '2019-04-23 03:00:13');
INSERT INTO `c_login_log` VALUES ('3506', null, 'admin', '0', '用户成功登录系统', '2019-04-23 03:50:19', '2019-04-23 03:50:19');
INSERT INTO `c_login_log` VALUES ('3507', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-25 01:30:09', '2019-04-25 01:30:09');
INSERT INTO `c_login_log` VALUES ('3508', null, 'admin', '0', '用户成功登录系统', '2019-04-25 06:41:05', '2019-04-25 06:41:05');
INSERT INTO `c_login_log` VALUES ('3509', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-25 09:24:46', '2019-04-25 09:24:46');
INSERT INTO `c_login_log` VALUES ('3510', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-26 07:53:07', '2019-04-26 07:53:07');
INSERT INTO `c_login_log` VALUES ('3511', null, 'admin', '0', '用户成功登录系统', '2019-04-28 06:19:31', '2019-04-28 06:19:31');
INSERT INTO `c_login_log` VALUES ('3512', null, 'admin', '0', '用户成功登录系统', '2019-04-28 06:25:43', '2019-04-28 06:25:43');
INSERT INTO `c_login_log` VALUES ('3513', null, 'admin', '0', '用户成功登录系统', '2019-04-28 06:26:47', '2019-04-28 06:26:47');
INSERT INTO `c_login_log` VALUES ('3514', null, 'admin', '0', '用户成功登录系统', '2019-04-28 06:39:08', '2019-04-28 06:39:08');
INSERT INTO `c_login_log` VALUES ('3515', null, 'admin', '0', '用户成功登录系统', '2019-04-28 08:07:32', '2019-04-28 08:07:32');
INSERT INTO `c_login_log` VALUES ('3516', null, 'admin', '0', '用户成功登录系统', '2019-04-28 08:24:49', '2019-04-28 08:24:49');
INSERT INTO `c_login_log` VALUES ('3517', null, 'zxh', '0', '用户成功登录系统', '2019-04-28 08:39:07', '2019-04-28 08:39:07');
INSERT INTO `c_login_log` VALUES ('3518', null, 'admin', '0', '用户成功登录系统', '2019-04-28 08:51:49', '2019-04-28 08:51:49');
INSERT INTO `c_login_log` VALUES ('3519', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-28 09:27:40', '2019-04-28 09:27:40');
INSERT INTO `c_login_log` VALUES ('3520', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-28 10:14:44', '2019-04-28 10:14:44');
INSERT INTO `c_login_log` VALUES ('3521', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-29 07:51:06', '2019-04-29 07:51:06');
INSERT INTO `c_login_log` VALUES ('3522', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-29 08:47:40', '2019-04-29 08:47:40');
INSERT INTO `c_login_log` VALUES ('3523', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-29 09:03:33', '2019-04-29 09:03:33');
INSERT INTO `c_login_log` VALUES ('3524', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-29 09:55:12', '2019-04-29 09:55:12');
INSERT INTO `c_login_log` VALUES ('3525', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-29 10:04:06', '2019-04-29 10:04:06');
INSERT INTO `c_login_log` VALUES ('3526', null, 'admin', '2130706433', '用户成功登录系统', '2019-04-30 01:46:26', '2019-04-30 01:46:26');

-- ----------------------------
-- Table structure for c_role
-- ----------------------------
DROP TABLE IF EXISTS `c_role`;
CREATE TABLE `c_role` (
  `id` varchar(32) NOT NULL,
  `sort` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_text` varchar(50) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `role_memo` varchar(255) DEFAULT NULL,
  `flag` smallint(6) DEFAULT NULL,
  `role_type` smallint(6) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_sort_key` (`sort`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_role
-- ----------------------------
INSERT INTO `c_role` VALUES ('14065dccb12011e68bc4507b9dae4454', '1', '管理员', 'ROLE_ADMIN', '系统管理员', '0', '0', '2017-03-30 10:39:34', '2019-03-21 11:01:21');
INSERT INTO `c_role` VALUES ('35a9a9bd3a2c11e98d57507b9dae4454', '5', '住建局', 'ROLE_HOUSING', null, '0', '0', '2019-02-27 09:07:48', '2019-03-21 14:52:19');
INSERT INTO `c_role` VALUES ('8c3183e3364011e985e9507b9d9e8623', '3', '代建单位', 'ROLE_AGENT_BUILD_UNIT', null, '0', '0', '2019-02-22 09:24:07', '2019-03-14 18:17:13');
INSERT INTO `c_role` VALUES ('a4cbabe8364011e985e9507b9d9e8623', '4', '承包商', 'ROLE_CONSTRACTOR', null, '0', '0', '2019-02-22 09:24:48', '2019-03-04 18:09:48');
INSERT INTO `c_role` VALUES ('bccdd20634e311e9a040507b9dae4454', '2', '建设单位', 'ROLE_BUILD_UNIT', null, '0', '0', '2019-02-20 15:47:13', '2019-03-14 18:16:53');

-- ----------------------------
-- Table structure for c_unit
-- ----------------------------
DROP TABLE IF EXISTS `c_unit`;
CREATE TABLE `c_unit` (
  `id` varchar(32) NOT NULL,
  `sort_no` int(11) DEFAULT NULL,
  `unit_name` varchar(100) DEFAULT NULL,
  `unit_type` varchar(10) DEFAULT NULL,
  `organization_code` varchar(100) DEFAULT NULL,
  `contractor_type_code` varchar(20) DEFAULT NULL,
  `link_man` varchar(50) DEFAULT NULL,
  `link_tel` varchar(50) DEFAULT NULL,
  `note` varchar(300) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `flag` smallint(6) DEFAULT NULL,
  `create_by` varchar(50) DEFAULT NULL,
  `update_by` varchar(50) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_unit
-- ----------------------------
INSERT INTO `c_unit` VALUES ('013200c93e6f11e9a891a0d3c10f2d5a', null, '招商证券股份有限公司', null, '192238549', null, '宫少林', '82943522', null, '1', '1', 'admin', null, '2019-03-04 19:16:51', '2019-03-04 19:16:51');
INSERT INTO `c_unit` VALUES ('0664d8c0363d11e985e9507b9d9e8623', '4', '监理单位', 'contractor', 'WWBT001', 'TYPE3', 'lzx', '13790434287', '~~~', '1', '1', 'admin', 'admin', '2019-02-22 08:58:54', '2019-03-02 16:02:43');
INSERT INTO `c_unit` VALUES ('19874c8e3e6e11e9a891a0d3c10f2d5a', null, '深圳市公安局福田分局', null, '007548538', null, '谢卓浩', '82918750', null, '1', '1', 'admin', null, '2019-03-04 19:10:22', '2019-03-04 19:10:22');
INSERT INTO `c_unit` VALUES ('1ba136c03e6e11e9a891a0d3c10f2d5a', null, '深圳市燃气集团股份有限公司', null, '192408392', null, '包德元', '83459792', null, '1', '1', 'admin', null, '2019-03-04 19:10:26', '2019-03-04 19:10:26');
INSERT INTO `c_unit` VALUES ('1c23df0e3e6e11e9a891a0d3c10f2d5a', null, '中国太平洋财产保险股份有限公司深圳分公司', null, '892225968', null, '徐景胜', '13480776986', null, '1', '1', 'admin', null, '2019-03-04 19:10:27', '2019-03-04 19:10:27');
INSERT INTO `c_unit` VALUES ('1c7c29be3e6e11e9a891a0d3c10f2d5a', null, '中建三局集团有限公司', null, '757013137', null, '陈华元', '82785663', null, '1', '1', 'admin', null, '2019-03-04 19:10:27', '2019-03-04 19:10:27');
INSERT INTO `c_unit` VALUES ('1cf8c7673e6e11e9a891a0d3c10f2d5a', null, '深圳市福田区环境保护和水务局', null, '007543040', null, '陈慧明', '83142561', null, '1', '1', 'admin', null, '2019-03-04 19:10:28', '2019-03-04 19:10:28');
INSERT INTO `c_unit` VALUES ('1d5630363e6e11e9a891a0d3c10f2d5a', null, '深圳市水务(集团)有限公司', null, '192175541', null, '于剑', '82137353', null, '1', '1', 'admin', null, '2019-03-04 19:10:29', '2019-03-04 19:10:29');
INSERT INTO `c_unit` VALUES ('1da7266a3e6e11e9a891a0d3c10f2d5a', null, '深圳市交通运输委员会福田交通运输局', null, 'mb2c36243', null, '郭士裕', '15013526576', null, '1', '1', 'admin', null, '2019-03-04 19:10:29', '2019-03-04 19:10:29');
INSERT INTO `c_unit` VALUES ('1dce32b3363d11e985e9507b9d9e8623', '5', '施工单位', 'contractor', 'WWBT002', 'SG', 'lzx', '13790434287', '~~~', '1', '1', 'admin', 'admin', '2019-02-22 08:59:33', '2019-03-02 16:02:52');
INSERT INTO `c_unit` VALUES ('1dfe6f6f3e6e11e9a891a0d3c10f2d5a', null, '深圳市深业鹏基城市更新有限公司', null, 'ma5ewj494', null, '马晓昇', '13600426174', null, '1', '1', 'admin', null, '2019-03-04 19:10:30', '2019-03-04 19:10:30');
INSERT INTO `c_unit` VALUES ('1e4b9ac03e6e11e9a891a0d3c10f2d5a', null, '深圳市天健(集团)股份有限公司', null, '192251874', null, '高振怀', '25559895', null, '1', '1', 'admin', null, '2019-03-04 19:10:30', '2019-03-04 19:10:30');
INSERT INTO `c_unit` VALUES ('1e9a9b733e6e11e9a891a0d3c10f2d5a', null, '中铁十七局集团有限公司', null, '110070843', null, '段东明', '0351-7257380', null, '1', '1', 'admin', null, '2019-03-04 19:10:31', '2019-03-04 19:10:31');
INSERT INTO `c_unit` VALUES ('209119703e6e11e9a891a0d3c10f2d5a', null, '深圳国际交流学院', null, '755686282', null, '李轶君', '13480886568', null, '1', '1', 'admin', null, '2019-03-04 19:10:34', '2019-03-04 19:10:34');
INSERT INTO `c_unit` VALUES ('2112d5003e6e11e9a891a0d3c10f2d5a', null, '中海监理有限公司', null, '192362152', null, '周宏建', '18620360185', null, '1', '1', 'admin', null, '2019-03-04 19:10:35', '2019-03-04 19:10:35');
INSERT INTO `c_unit` VALUES ('213298f93e6e11e9a891a0d3c10f2d5a', null, '中建二局第二建筑工程有限公司', null, '171071866', null, '曾训龙', '13713921610', null, '1', '1', 'admin', null, '2019-03-04 19:10:35', '2019-03-04 19:10:35');
INSERT INTO `c_unit` VALUES ('218c4e863e6e11e9a891a0d3c10f2d5a', null, '友和保险经纪有限公司', null, '76345000x', null, '关则钦', '13560722613', null, '1', '1', 'admin', null, '2019-03-04 19:10:36', '2019-03-04 19:10:36');
INSERT INTO `c_unit` VALUES ('21e372733e6e11e9a891a0d3c10f2d5a', null, '万科企业股份有限公司', null, '192181490', null, '周春蕾', '13434493501', null, '1', '1', 'admin', null, '2019-03-04 19:10:36', '2019-03-04 19:10:36');
INSERT INTO `c_unit` VALUES ('22d2dba03e6e11e9a891a0d3c10f2d5a', null, '深圳市福田区建筑工务局', null, '455750692', null, '陈叶军', '83871261', null, '1', '1', 'admin', null, '2019-03-04 19:10:38', '2019-03-04 19:10:38');
INSERT INTO `c_unit` VALUES ('23fe451e3e6e11e9a891a0d3c10f2d5a', null, '华润置地（深圳）有限公司', null, 'ma4l16jq9', null, '黄旭生', '13025454552', null, '1', '1', 'admin', null, '2019-03-04 19:10:40', '2019-03-04 19:10:40');
INSERT INTO `c_unit` VALUES ('24bd3b633e6e11e9a891a0d3c10f2d5a', null, '深圳市明正建筑工程有限公司', null, '692528104', null, '林达辉', '18127064661', null, '1', '1', 'admin', null, '2019-03-04 19:10:41', '2019-03-04 19:10:41');
INSERT INTO `c_unit` VALUES ('253c9bea3e6e11e9a891a0d3c10f2d5a', null, '内蒙古华讯工程咨询监理有限责任公司', null, '720149137', null, '王志伟', '13632653737', null, '1', '1', 'admin', null, '2019-03-04 19:10:42', '2019-03-04 19:10:42');
INSERT INTO `c_unit` VALUES ('279c76063e6e11e9a891a0d3c10f2d5a', null, '坐标文化产业园（深圳）有限公司', null, 'ma5dfc7p1', null, '林茏', '13902934782', null, '1', '1', 'admin', null, '2019-03-04 19:10:46', '2019-03-04 19:10:46');
INSERT INTO `c_unit` VALUES ('28207e553e6e11e9a891a0d3c10f2d5a', null, '深圳市甘泉建设监理有限公司', null, '279392514', null, '郑身周', '13823573881', null, '1', '1', 'admin', null, '2019-03-04 19:10:47', '2019-03-04 19:10:47');
INSERT INTO `c_unit` VALUES ('283295f83e6e11e9a891a0d3c10f2d5a', null, '深圳市建筑装饰(集团)有限公司', null, '192191525', null, '葛栋栋', '13923469488', null, '1', '1', 'admin', null, '2019-03-04 19:10:47', '2019-03-04 19:10:47');
INSERT INTO `c_unit` VALUES ('28d3a66d3e6e11e9a891a0d3c10f2d5a', null, '梅州市建筑工程有限公司', null, '196270351', null, '卢宜祥', '13823394269', null, '1', '1', 'admin', null, '2019-03-04 19:10:48', '2019-03-04 19:10:48');
INSERT INTO `c_unit` VALUES ('2906d5793e6e11e9a891a0d3c10f2d5a', null, '深圳市森投房地产开发有限公司', null, 'ma5dccpl7', null, '张飞', '13631537175', null, '1', '1', 'admin', null, '2019-03-04 19:10:48', '2019-03-04 19:10:48');
INSERT INTO `c_unit` VALUES ('2aa459653e6e11e9a891a0d3c10f2d5a', null, '深圳市建筑科学研究院股份有限公司', null, '665899831', null, '黄莹', '13410070789', null, '1', '1', 'admin', null, '2019-03-04 19:10:51', '2019-03-04 19:10:51');
INSERT INTO `c_unit` VALUES ('2b5e61f33e6e11e9a891a0d3c10f2d5a', null, '深圳市福田区住房和建设局', null, '007543278', null, '刘军', '82918333-2706', null, '1', '1', 'admin', null, '2019-03-04 19:10:52', '2019-03-04 19:10:52');
INSERT INTO `c_unit` VALUES ('2baee02b3e6e11e9a891a0d3c10f2d5a', null, '深圳市金海马世博国际家居城管理有限公司', null, '766379309', null, '曹清松', '18682361401', null, '1', '1', 'admin', null, '2019-03-04 19:10:53', '2019-03-04 19:10:53');
INSERT INTO `c_unit` VALUES ('2c25dc833e6e11e9a891a0d3c10f2d5a', null, '广东安业建设工程顾问有限公司', null, '281887241', null, '宋哲', '13560821855', null, '1', '1', 'admin', null, '2019-03-04 19:10:54', '2019-03-04 19:10:54');
INSERT INTO `c_unit` VALUES ('2c709c393e6e11e9a891a0d3c10f2d5a', null, '深圳市华辉装饰工程有限公司', null, '192184157', null, '邓永智', '13509677667', null, '1', '1', 'admin', null, '2019-03-04 19:10:54', '2019-03-04 19:10:54');
INSERT INTO `c_unit` VALUES ('2c910aab3e6e11e9a891a0d3c10f2d5a', null, '深圳市建筑设计研究总院有限公司', null, '192244260', null, '', '13642357064', null, '1', '1', 'admin', null, '2019-03-04 19:10:54', '2019-03-04 19:10:54');
INSERT INTO `c_unit` VALUES ('2df0408c3e6e11e9a891a0d3c10f2d5a', null, '深圳市物业发展（集团）股份有限公司', null, '192174135', null, '陈玉刚', '82211964', null, '1', '1', 'admin', null, '2019-03-04 19:10:57', '2019-03-04 19:10:57');
INSERT INTO `c_unit` VALUES ('2f393da43e6e11e9a891a0d3c10f2d5a', null, '深圳市福田区沙头街道办事处', null, '007548570', null, '胡敬东', '83301883', null, '1', '1', 'admin', null, '2019-03-04 19:10:59', '2019-03-04 19:10:59');
INSERT INTO `c_unit` VALUES ('2fec6d573e6e11e9a891a0d3c10f2d5a', null, '深圳市鹏城港水产批发市场有限公司', null, '192350768', null, '李岳应', '13421349121', null, '1', '1', 'admin', null, '2019-03-04 19:11:00', '2019-03-04 19:11:00');
INSERT INTO `c_unit` VALUES ('306f568a3e6e11e9a891a0d3c10f2d5a', null, '深圳市祺骏建设工程顾问有限公司', null, '797959533', null, '杨勤茂', '13728618212', null, '1', '1', 'admin', null, '2019-03-04 19:11:01', '2019-03-04 19:11:01');
INSERT INTO `c_unit` VALUES ('3084dcf73e6e11e9a891a0d3c10f2d5a', null, '中国南海工程有限公司', null, '192196473', null, '于学韬', '18922861188', null, '1', '1', 'admin', null, '2019-03-04 19:11:01', '2019-03-04 19:11:01');
INSERT INTO `c_unit` VALUES ('30cd475b3e6e11e9a891a0d3c10f2d5a', null, '深圳巴士集团股份有限公司', null, '19218056x', null, '李小卿', '13554809397', null, '1', '1', 'admin', null, '2019-03-04 19:11:01', '2019-03-04 19:11:01');
INSERT INTO `c_unit` VALUES ('312513653e6e11e9a891a0d3c10f2d5a', null, '深圳市万科发展有限公司', null, '192275227', null, '周彤', '22186064', null, '1', '1', 'admin', null, '2019-03-04 19:11:02', '2019-03-04 19:11:02');
INSERT INTO `c_unit` VALUES ('3174b0ce3e6e11e9a891a0d3c10f2d5a', null, '华润（深圳）有限公司', null, '100018574', null, '吴向东', '25856502', null, '1', '1', 'admin', null, '2019-03-04 19:11:03', '2019-03-04 19:11:03');
INSERT INTO `c_unit` VALUES ('31c87f083e6e11e9a891a0d3c10f2d5a', null, '深圳市皇庭房地产开发有限公司', null, '764989728', null, '郑康豪', '82706116', null, '1', '1', 'admin', null, '2019-03-04 19:11:03', '2019-03-04 19:11:03');
INSERT INTO `c_unit` VALUES ('324e36433e6e11e9a891a0d3c10f2d5a', null, '深圳市中行建设工程顾问有限公司', null, '192204621', null, '陈汉强', '13713924296', null, '1', '1', 'admin', null, '2019-03-04 19:11:04', '2019-03-04 19:11:04');
INSERT INTO `c_unit` VALUES ('325d3c213e6e11e9a891a0d3c10f2d5a', null, '中国建筑第二工程局有限公司', null, '100024296', null, '邱时秒', '13823309508', null, '1', '1', 'admin', null, '2019-03-04 19:11:04', '2019-03-04 19:11:04');
INSERT INTO `c_unit` VALUES ('32a1346f3e6e11e9a891a0d3c10f2d5a', null, '深圳市福田区城市管理局', null, '007543243', null, '綦文生', '83584043', null, '1', '1', 'admin', null, '2019-03-04 19:11:05', '2019-03-04 19:11:05');
INSERT INTO `c_unit` VALUES ('3335e41f3e6e11e9a891a0d3c10f2d5a', null, '国家开发银行深圳市分行', null, '892223241', null, '刘澎湃', '13923843140', null, '1', '1', 'admin', null, '2019-03-04 19:11:06', '2019-03-04 19:11:06');
INSERT INTO `c_unit` VALUES ('3383f41b3e6e11e9a891a0d3c10f2d5a', null, '中国建筑第四工程局有限公司', null, '214401707', null, '中国建筑第四工程局有限公司', '18620535125', null, '1', '1', 'admin', null, '2019-03-04 19:11:06', '2019-03-04 19:11:06');
INSERT INTO `c_unit` VALUES ('341929753e6e11e9a891a0d3c10f2d5a', null, '深圳市利源水务设计咨询有限公司', null, '192227495', null, '胡林慧', '15919886698', null, '1', '1', 'admin', null, '2019-03-04 19:11:07', '2019-03-04 19:11:07');
INSERT INTO `c_unit` VALUES ('34b0aa053e6e11e9a891a0d3c10f2d5a', null, '印力商用置业有限公司', null, '748870399', null, '李南峰', '25580574', null, '1', '1', 'admin', null, '2019-03-04 19:11:08', '2019-03-04 19:11:08');
INSERT INTO `c_unit` VALUES ('352b40203e6e11e9a891a0d3c10f2d5a', null, '深圳市嘉信装饰设计工程有限公司', null, '192317634', null, '王献', '13543333661', null, '1', '1', 'admin', null, '2019-03-04 19:11:09', '2019-03-04 19:11:09');
INSERT INTO `c_unit` VALUES ('354e08f03e6e11e9a891a0d3c10f2d5a', null, '广东工程建设监理有限公司', null, '190336153', null, '郭学荣', '13602889078', null, '1', '1', 'admin', null, '2019-03-04 19:11:09', '2019-03-04 19:11:09');
INSERT INTO `c_unit` VALUES ('3580cea63e6e11e9a891a0d3c10f2d5a', null, '深圳市福田区政府物业管理中心', null, 'g34788576', null, '张雅婷', '15818583861', null, '1', '1', 'admin', null, '2019-03-04 19:11:09', '2019-03-04 19:11:09');
INSERT INTO `c_unit` VALUES ('3697113e3e6e11e9a891a0d3c10f2d5a', null, '深圳市金地大百汇房地产开发有限公司', null, '788316245', null, '谢文云', '82039999', null, '1', '1', 'admin', null, '2019-03-04 19:11:11', '2019-03-04 19:11:11');
INSERT INTO `c_unit` VALUES ('3744540d3e6e11e9a891a0d3c10f2d5a', null, '上海明鹏建设集团有限公司', null, '631722739', null, '彭水清', '13590309742', null, '1', '1', 'admin', null, '2019-03-04 19:11:12', '2019-03-04 19:11:12');
INSERT INTO `c_unit` VALUES ('375c8b1a3e6e11e9a891a0d3c10f2d5a', null, '深圳市合创建设工程顾问有限公司', null, '754291430', null, '邵立华', '075583048876', null, '1', '1', 'admin', null, '2019-03-04 19:11:12', '2019-03-04 19:11:12');
INSERT INTO `c_unit` VALUES ('388c0bd33e6e11e9a891a0d3c10f2d5a', null, '深圳市福田福安有限公司', null, '082493485', null, '于淼', '13925260526', null, '1', '1', 'admin', null, '2019-03-04 19:11:14', '2019-03-04 19:11:14');
INSERT INTO `c_unit` VALUES ('39cf119e3e6e11e9a891a0d3c10f2d5a', null, '深圳市天珺房地产开发有限公司', null, '359381604', null, '黄晓华', '13713529155', null, '1', '1', 'admin', null, '2019-03-04 19:11:17', '2019-03-04 19:11:17');
INSERT INTO `c_unit` VALUES ('3a2035993e6e11e9a891a0d3c10f2d5a', null, '深业置地投资发展（深圳）有限公司', null, 'ma5drx064', null, '胡亚萌', '13537707157', null, '1', '1', 'admin', null, '2019-03-04 19:11:17', '2019-03-04 19:11:17');
INSERT INTO `c_unit` VALUES ('3ac7c0463e6e11e9a891a0d3c10f2d5a', null, '深圳市福田人才安居有限公司', null, 'ma5ec8g32', null, '熊钢泉', '13825275656', null, '1', '1', 'admin', null, '2019-03-04 19:11:18', '2019-03-04 19:11:18');
INSERT INTO `c_unit` VALUES ('3b1b0edd3e6e11e9a891a0d3c10f2d5a', null, '星河实业（深圳）有限公司', null, '708441151', null, '陈金鸿', '83568525', null, '1', '1', 'admin', null, '2019-03-04 19:11:19', '2019-03-04 19:11:19');
INSERT INTO `c_unit` VALUES ('3bb4719d3e6e11e9a891a0d3c10f2d5a', null, '深圳市海大装饰集团有限公司', null, '70848379X', null, '陈永荘', '18925252532', null, '1', '1', 'admin', null, '2019-03-04 19:11:20', '2019-03-04 19:11:20');
INSERT INTO `c_unit` VALUES ('3cd49c373e6e11e9a891a0d3c10f2d5a', null, '中冶华天南京工程技术有限公司', null, '790403460', null, '赵明广', '18801599189', null, '1', '1', 'admin', null, '2019-03-04 19:11:22', '2019-03-04 19:11:22');
INSERT INTO `c_unit` VALUES ('3d2ee83e3e6e11e9a891a0d3c10f2d5a', null, '深圳市福田区住房事务中心', null, 'mb2c46046', null, '李安中', '13632629300', null, '1', '1', 'admin', null, '2019-03-04 19:11:22', '2019-03-04 19:11:22');
INSERT INTO `c_unit` VALUES ('3d7ed7803e6e11e9a891a0d3c10f2d5a', null, '深圳安徽实业有限公司', null, '192211733', null, '林恢琦', '13530632525', null, '1', '1', 'admin', null, '2019-03-04 19:11:23', '2019-03-04 19:11:23');
INSERT INTO `c_unit` VALUES ('3f169c3d3e6e11e9a891a0d3c10f2d5a', null, '深圳市迪富酒店管理有限公司', null, '192185790', null, '王思思', '13823654425', null, '1', '1', 'admin', null, '2019-03-04 19:11:25', '2019-03-04 19:11:25');
INSERT INTO `c_unit` VALUES ('3fb11a463e6e11e9a891a0d3c10f2d5a', null, '深圳市赛格监理有限公司', null, '192326629', null, '李其龙', '15099905860', null, '1', '1', 'admin', null, '2019-03-04 19:11:26', '2019-03-04 19:11:26');
INSERT INTO `c_unit` VALUES ('3fc2b0d13e6e11e9a891a0d3c10f2d5a', null, '深圳市卓艺装饰设计工程有限公司', null, '192455703', null, '朱红梅', '13923067977', null, '1', '1', 'admin', null, '2019-03-04 19:11:27', '2019-03-04 19:11:27');
INSERT INTO `c_unit` VALUES ('404172ed3e6e11e9a891a0d3c10f2d5a', null, '万宇国际工程咨询(北京)有限公司', null, '102344648', null, '樊景平', '18910480136', null, '1', '1', 'admin', null, '2019-03-04 19:11:27', '2019-03-04 19:11:27');
INSERT INTO `c_unit` VALUES ('406bbfc23e6e11e9a891a0d3c10f2d5a', null, '深圳市建工建设工程有限公司', null, '770300026', null, '周光明', '18025577858', null, '1', '1', 'admin', null, '2019-03-04 19:11:28', '2019-03-04 19:11:28');
INSERT INTO `c_unit` VALUES ('4082a74d3e6e11e9a891a0d3c10f2d5a', null, '深圳市建控地盘监理有限公司', null, '192193037', null, '鲍昭强', '13902975906', null, '1', '1', 'admin', null, '2019-03-04 19:11:28', '2019-03-04 19:11:28');
INSERT INTO `c_unit` VALUES ('40a060463e6e11e9a891a0d3c10f2d5a', null, '深圳市上沙实业股份有限公司', null, '192360376', null, '黄新权', '83446322', null, '1', '1', 'admin', null, '2019-03-04 19:11:28', '2019-03-04 19:11:28');
INSERT INTO `c_unit` VALUES ('41a195043e6e11e9a891a0d3c10f2d5a', null, '深圳南海岸生态建设集团有限公司', null, '715288028', null, '朱德昌', '13510060236', null, '1', '1', 'admin', null, '2019-03-04 19:11:30', '2019-03-04 19:11:30');
INSERT INTO `c_unit` VALUES ('425de7363e6e11e9a891a0d3c10f2d5a', null, '国泰君安证券股份有限公司', null, '63159284x', null, '邱昊成', '13025454552', null, '1', '1', 'admin', null, '2019-03-04 19:11:31', '2019-03-04 19:11:31');
INSERT INTO `c_unit` VALUES ('431070f23e6e11e9a891a0d3c10f2d5a', null, '玉茗建设集团有限责任公司', null, '739199345', null, '丁有潢', '15976867311', null, '1', '1', 'admin', null, '2019-03-04 19:11:32', '2019-03-04 19:11:32');
INSERT INTO `c_unit` VALUES ('439f74923e6e11e9a891a0d3c10f2d5a', null, '深业中心发展（深圳）有限公司', null, '618844205', null, '张大伟', '18688932341', null, '1', '1', 'admin', null, '2019-03-04 19:11:33', '2019-03-04 19:11:33');
INSERT INTO `c_unit` VALUES ('443940be3e6e11e9a891a0d3c10f2d5a', null, '深圳市银珠塑料制品有限公司', null, '192211346', null, '饶江山', '82880116', null, '1', '1', 'admin', null, '2019-03-04 19:11:34', '2019-03-04 19:11:34');
INSERT INTO `c_unit` VALUES ('44b848723e6e11e9a891a0d3c10f2d5a', null, '深圳市深龙港建设监理有限公司', null, '279525364', null, '武国强', '13828776955', null, '1', '1', 'admin', null, '2019-03-04 19:11:35', '2019-03-04 19:11:35');
INSERT INTO `c_unit` VALUES ('44df7cb13e6e11e9a891a0d3c10f2d5a', null, '深圳市路桥建设集团有限公司', null, '192181570', null, '王杰', '13392196826', null, '1', '1', 'admin', null, '2019-03-04 19:11:35', '2019-03-04 19:11:35');
INSERT INTO `c_unit` VALUES ('45706fe13e6e11e9a891a0d3c10f2d5a', null, '深圳市鹏城建筑集团有限公司', null, '192173554', null, '肖丹丹', '15989015383', null, '1', '1', 'admin', null, '2019-03-04 19:11:36', '2019-03-04 19:11:36');
INSERT INTO `c_unit` VALUES ('4788bd553e6e11e9a891a0d3c10f2d5a', null, '深圳报业集团', null, '455754706', null, '陈寅', '83518532', null, '1', '1', 'admin', null, '2019-03-04 19:11:40', '2019-03-04 19:11:40');
INSERT INTO `c_unit` VALUES ('485919b03e6e11e9a891a0d3c10f2d5a', null, '深圳市高新投集团有限公司', null, '192301288', null, '陈虹', '0755-82091236', null, '1', '1', 'admin', null, '2019-03-04 19:11:41', '2019-03-04 19:11:41');
INSERT INTO `c_unit` VALUES ('48e139b43e6e11e9a891a0d3c10f2d5a', null, '深圳市邦迪工程顾问有限公司', null, '192244033', null, '张杰', '13672269258', null, '1', '1', 'admin', null, '2019-03-04 19:11:42', '2019-03-04 19:11:42');
INSERT INTO `c_unit` VALUES ('48f489273e6e11e9a891a0d3c10f2d5a', null, '深圳市中深装建设集团有限公司', null, '682036851', null, '李宏艳', '13316817582', null, '1', '1', 'admin', null, '2019-03-04 19:11:42', '2019-03-04 19:11:42');
INSERT INTO `c_unit` VALUES ('4978c8093e6e11e9a891a0d3c10f2d5a', null, '深圳市龙城建设监理有限公司', null, '279522497', null, '梁永富', '18816746598', null, '1', '1', 'admin', null, '2019-03-04 19:11:43', '2019-03-04 19:11:43');
INSERT INTO `c_unit` VALUES ('499513853e6e11e9a891a0d3c10f2d5a', null, '中国华西企业有限公司', null, '19219518X', null, '席宗君', '075583541859', null, '1', '1', 'admin', null, '2019-03-04 19:11:43', '2019-03-04 19:11:43');
INSERT INTO `c_unit` VALUES ('4a4acbb43e6e11e9a891a0d3c10f2d5a', null, '深圳市机场（集团）有限公司', null, '192171137', null, '夏庆明', '13902912485', null, '1', '1', 'admin', null, '2019-03-04 19:11:44', '2019-03-04 19:11:44');
INSERT INTO `c_unit` VALUES ('4b1605ed3e6e11e9a891a0d3c10f2d5a', null, '深圳市福田区科技创新局', null, '007542769', null, '王宇', '13590104702', null, '1', '1', 'admin', null, '2019-03-04 19:11:46', '2019-03-04 19:11:46');
INSERT INTO `c_unit` VALUES ('4bb475713e6e11e9a891a0d3c10f2d5a', null, '深圳市耀华实验学校', null, '763453358', null, '张琦', '13242011685', null, '1', '1', 'admin', null, '2019-03-04 19:11:47', '2019-03-04 19:11:47');
INSERT INTO `c_unit` VALUES ('4c3385a03e6e11e9a891a0d3c10f2d5a', null, '深圳市启光建设监理有限公司', null, '741239633', null, '孙昌忠', '15217760089', null, '1', '1', 'admin', null, '2019-03-04 19:11:47', '2019-03-04 19:11:47');
INSERT INTO `c_unit` VALUES ('4c5c934d3e6e11e9a891a0d3c10f2d5a', null, '深圳市建装业集团股份有限公司', null, '729875469', null, '黄瑶瑶', '13392435966', null, '1', '1', 'admin', null, '2019-03-04 19:11:48', '2019-03-04 19:11:48');
INSERT INTO `c_unit` VALUES ('4d3e18173e6e11e9a891a0d3c10f2d5a', null, '朗诗寓商业管理（深圳）有限公司园岭分公司', null, 'ma5f3h598', null, '张航', '13476119178', null, '1', '1', 'admin', null, '2019-03-04 19:11:49', '2019-03-04 19:11:49');
INSERT INTO `c_unit` VALUES ('4d90be033e6e11e9a891a0d3c10f2d5a', null, '深圳市亨吉利世界名表中有限公司振华路分公司', null, 'ma5f3tca3', null, '王剑', '13826566080', null, '1', '1', 'admin', null, '2019-03-04 19:11:50', '2019-03-04 19:11:50');
INSERT INTO `c_unit` VALUES ('4f7017753e6e11e9a891a0d3c10f2d5a', null, '深圳市零七物业管理有限公司', null, '732068246', null, '冷冬丽', '13923751114', null, '1', '1', 'admin', null, '2019-03-04 19:11:53', '2019-03-04 19:11:53');
INSERT INTO `c_unit` VALUES ('5001059f3e6e11e9a891a0d3c10f2d5a', null, '深圳市维业装饰集团股份有限公司', null, '192287527', null, '肖文滔', '13802567971', null, '1', '1', 'admin', null, '2019-03-04 19:11:54', '2019-03-04 19:11:54');
INSERT INTO `c_unit` VALUES ('50e0c56e3e6e11e9a891a0d3c10f2d5a', null, '深圳世轩实业有限公司', null, 'ma5edm9fx', null, '张武', '13927465517', null, '1', '1', 'admin', null, '2019-03-04 19:11:55', '2019-03-04 19:11:55');
INSERT INTO `c_unit` VALUES ('5188fbc43e6e11e9a891a0d3c10f2d5a', null, '深圳世虹实业有限公司', null, 'ma5ede8m9', null, '林辉', '13927465517', null, '1', '1', 'admin', null, '2019-03-04 19:11:56', '2019-03-04 19:11:56');
INSERT INTO `c_unit` VALUES ('520b518f3e6e11e9a891a0d3c10f2d5a', null, '深圳市艾文文化发展有限公司', null, '678556192', null, '林宏贤', '13725571235', null, '1', '1', 'admin', null, '2019-03-04 19:11:57', '2019-03-04 19:11:57');
INSERT INTO `c_unit` VALUES ('52a65bac3e6e11e9a891a0d3c10f2d5a', null, '深圳市鲲鹏股权投资管理有限公司', null, 'ma5dfmt63', null, '魏冬青', '13560781502', null, '1', '1', 'admin', null, '2019-03-04 19:11:58', '2019-03-04 19:11:58');
INSERT INTO `c_unit` VALUES ('532b55e33e6e11e9a891a0d3c10f2d5a', null, '深圳市雅钰投资发展有限公司', null, '335210990', null, '刘勇', '13244877861', null, '1', '1', 'admin', null, '2019-03-04 19:11:59', '2019-03-04 19:11:59');
INSERT INTO `c_unit` VALUES ('53b2d93d3e6e11e9a891a0d3c10f2d5a', null, '深圳市特发工程管理有限责任公司', null, '192260957', null, '阚立明', '13714597444', null, '1', '1', 'admin', null, '2019-03-04 19:12:00', '2019-03-04 19:12:00');
INSERT INTO `c_unit` VALUES ('53c3731a3e6e11e9a891a0d3c10f2d5a', null, '中铁建工集团有限公司', null, '710921189', null, '王海波', '13902916762', null, '1', '1', 'admin', null, '2019-03-04 19:12:00', '2019-03-04 19:12:00');
INSERT INTO `c_unit` VALUES ('543102543e6e11e9a891a0d3c10f2d5a', null, '腾邦物流集团股份有限公司', null, '752520578', null, '钟百胜', '13802234203', null, '1', '1', 'admin', null, '2019-03-04 19:12:01', '2019-03-04 19:12:01');
INSERT INTO `c_unit` VALUES ('54f1964d3e6e11e9a891a0d3c10f2d5a', null, '深圳市深业鹏基上林苑投资发展有限公司', null, 'ma5ewa0m0', null, '马晓昇', '13600426174', null, '1', '1', 'admin', null, '2019-03-04 19:12:02', '2019-03-04 19:12:02');
INSERT INTO `c_unit` VALUES ('55e76eb63e6e11e9a891a0d3c10f2d5a', null, '深圳市九州建设技术股份有限公司', null, '192360878', null, '张莉', '13760206851', null, '1', '1', 'admin', null, '2019-03-04 19:12:04', '2019-03-04 19:12:04');
INSERT INTO `c_unit` VALUES ('5607ad003e6e11e9a891a0d3c10f2d5a', null, '深圳市中装建设集团股份有限公司', null, '192266371', null, '祝艳会', '15815266964', null, '1', '1', 'admin', null, '2019-03-04 19:12:04', '2019-03-04 19:12:04');
INSERT INTO `c_unit` VALUES ('5b1d42ce3e6e11e9a891a0d3c10f2d5a', null, '深圳市保税区生活服务有限公司', null, '708434015', null, '崔明亮', '18127079213', null, '1', '1', 'admin', null, '2019-03-04 19:12:12', '2019-03-04 19:12:12');
INSERT INTO `c_unit` VALUES ('5c2e4d5e3e6e11e9a891a0d3c10f2d5a', null, '深圳华西建设工程管理有限公司', null, '192193061', null, '翟波', '18576652364', null, '1', '1', 'admin', null, '2019-03-04 19:12:14', '2019-03-04 19:12:14');
INSERT INTO `c_unit` VALUES ('5c40d51e3e6e11e9a891a0d3c10f2d5a', null, '深圳市龙坚建筑工程有限公司', null, '192388635', null, '马兴', '13802276020', null, '1', '1', 'admin', null, '2019-03-04 19:12:14', '2019-03-04 19:12:14');
INSERT INTO `c_unit` VALUES ('5c4fedbd3e6e11e9a891a0d3c10f2d5a', null, '深圳市美芝装饰设计工程股份有限公司', null, '192178451', null, '王晶', '13414453917', null, '1', '1', 'admin', null, '2019-03-04 19:12:14', '2019-03-04 19:12:14');
INSERT INTO `c_unit` VALUES ('5cd141a73e6e11e9a891a0d3c10f2d5a', null, '深圳市昊源建设监理有限公司', null, '708437750', null, '郑莲', '13642362506', null, '1', '1', 'admin', null, '2019-03-04 19:12:15', '2019-03-04 19:12:15');
INSERT INTO `c_unit` VALUES ('5d0de4b53e6e11e9a891a0d3c10f2d5a', null, '深圳三森装饰集团股份有限公司', null, '685383154', null, '王军涛', '18938907251', null, '1', '1', 'admin', null, '2019-03-04 19:12:16', '2019-03-04 19:12:16');
INSERT INTO `c_unit` VALUES ('628e9b7a3e6e11e9a891a0d3c10f2d5a', null, '深圳市京圳工程咨询有限公司', null, '192196991', null, '贺超', '18028785896', null, '1', '1', 'admin', null, '2019-03-04 19:12:25', '2019-03-04 19:12:25');
INSERT INTO `c_unit` VALUES ('655e66b23e6e11e9a891a0d3c10f2d5a', null, '深圳沃尔玛百货零售有限公司福田华强路惠选分店', null, 'ma5f1uay9', null, '倪玲', '13751033011', null, '1', '1', 'admin', null, '2019-03-04 19:12:30', '2019-03-04 19:12:30');
INSERT INTO `c_unit` VALUES ('65e39ab43e6e11e9a891a0d3c10f2d5a', null, '深圳市中弘策工程顾问有限公司', null, '774113455', null, '闫德成', '13670138590', null, '1', '1', 'admin', null, '2019-03-04 19:12:31', '2019-03-04 19:12:31');
INSERT INTO `c_unit` VALUES ('65f94ef53e6e11e9a891a0d3c10f2d5a', null, '深圳市华典装饰工程有限公司', null, '708418621', null, '周志坚', '15986671926', null, '1', '1', 'admin', null, '2019-03-04 19:12:31', '2019-03-04 19:12:31');
INSERT INTO `c_unit` VALUES ('661b8da53e6e11e9a891a0d3c10f2d5a', null, '深圳市福田区福保街道办事处', null, '691182850', null, '谢锦辉', '83830655', null, '1', '1', 'admin', null, '2019-03-04 19:12:31', '2019-03-04 19:12:31');
INSERT INTO `c_unit` VALUES ('67b8850e3e6e11e9a891a0d3c10f2d5a', null, '泛华建设集团有限公司', null, '722604658', null, '林小和', '13691981977', null, '1', '1', 'admin', null, '2019-03-04 19:12:34', '2019-03-04 19:12:34');
INSERT INTO `c_unit` VALUES ('67d01ac73e6e11e9a891a0d3c10f2d5a', null, '深圳市民宁投资发展有限公司', null, 'ma5d9k247', null, '江伟楠', '13631620850', null, '1', '1', 'admin', null, '2019-03-04 19:12:34', '2019-03-04 19:12:34');
INSERT INTO `c_unit` VALUES ('691d70063e6e11e9a891a0d3c10f2d5a', null, '深圳市燃气工程监理有限公司', null, '279399062', null, '刘盛敏', '075588660502', null, '1', '1', 'admin', null, '2019-03-04 19:12:36', '2019-03-04 19:12:36');
INSERT INTO `c_unit` VALUES ('694643373e6e11e9a891a0d3c10f2d5a', null, '广东三穗建筑工程有限公司', null, '194670474', null, '涂强强', '13490754427', null, '1', '1', 'admin', null, '2019-03-04 19:12:36', '2019-03-04 19:12:36');
INSERT INTO `c_unit` VALUES ('695924973e6e11e9a891a0d3c10f2d5a', null, '深圳市恒盈泰投资有限公司', null, '59071394x', null, '王珣', '13682585821', null, '1', '1', 'admin', null, '2019-03-04 19:12:36', '2019-03-04 19:12:36');
INSERT INTO `c_unit` VALUES ('69d93f763e6e11e9a891a0d3c10f2d5a', null, '广州市恒合工程监理有限公司', null, '633203465', null, '杨昱源', '18211227799', null, '1', '1', 'admin', null, '2019-03-04 19:12:37', '2019-03-04 19:12:37');
INSERT INTO `c_unit` VALUES ('69ed023f3e6e11e9a891a0d3c10f2d5a', null, '深圳市湛联基础建筑工程有限公司', null, '279394851', null, '唐卫军', '13715309144', null, '1', '1', 'admin', null, '2019-03-04 19:12:37', '2019-03-04 19:12:37');
INSERT INTO `c_unit` VALUES ('6a3b506e3e6e11e9a891a0d3c10f2d5a', null, '深圳市华阳国际工程设计股份有限公司', null, '192239795', null, '朱万成', '18665918518', null, '1', '1', 'admin', null, '2019-03-04 19:12:38', '2019-03-04 19:12:38');
INSERT INTO `c_unit` VALUES ('6adab5dd3e6e11e9a891a0d3c10f2d5a', null, '深圳市建安(集团)股份有限公司', null, '19219737X', null, '刘伟', '13828803690', null, '1', '1', 'admin', null, '2019-03-04 19:12:39', '2019-03-04 19:12:39');
INSERT INTO `c_unit` VALUES ('6aff59253e6e11e9a891a0d3c10f2d5a', null, '中国第四冶金建设有限责任公司', null, '160113100', null, '魏礼清', '13824354621', null, '1', '1', 'admin', null, '2019-03-04 19:12:39', '2019-03-04 19:12:39');
INSERT INTO `c_unit` VALUES ('6b99471b3e6e11e9a891a0d3c10f2d5a', null, '浙江万科随园嘉树老年公寓管理有限公司福田区分公司', null, 'ma5dmwr31', null, '徐疆南', '13381360517', null, '1', '1', 'admin', null, '2019-03-04 19:12:40', '2019-03-04 19:12:40');
INSERT INTO `c_unit` VALUES ('6bedbb3b3e6e11e9a891a0d3c10f2d5a', null, '深圳市沙咀实业股份有限公司', null, '192360392', null, '欧锐刚', '83802222', null, '1', '1', 'admin', null, '2019-03-04 19:12:41', '2019-03-04 19:12:41');
INSERT INTO `c_unit` VALUES ('6ccf17e13e6e11e9a891a0d3c10f2d5a', null, '深圳市诚宇建设有限公司', null, '279521144', null, '李鹏', '15999534938', null, '1', '1', 'admin', null, '2019-03-04 19:12:42', '2019-03-04 19:12:42');
INSERT INTO `c_unit` VALUES ('6ce985813e6e11e9a891a0d3c10f2d5a', null, '深圳市人才安居集团有限公司', null, 'ma5dflbqx', null, '万小宇', '18025378295', null, '1', '1', 'admin', null, '2019-03-04 19:12:42', '2019-03-04 19:12:42');
INSERT INTO `c_unit` VALUES ('6ddc4aee3e6e11e9a891a0d3c10f2d5a', null, '深圳市皇岗实业股份有限公司', null, '192178427', null, '庄顺福', '83828222', null, '1', '1', 'admin', null, '2019-03-04 19:12:44', '2019-03-04 19:12:44');
INSERT INTO `c_unit` VALUES ('6f1e4b083e6e11e9a891a0d3c10f2d5a', null, '深圳市奇信建设集团股份有限公司', null, '192337969', null, '叶家豪', '33389288', null, '1', '1', 'admin', null, '2019-03-04 19:12:46', '2019-03-04 19:12:46');
INSERT INTO `c_unit` VALUES ('6fa4bb073e6e11e9a891a0d3c10f2d5a', null, '永明项目管理有限公司', null, '737967961', null, '张世', '', null, '1', '1', 'admin', null, '2019-03-04 19:12:47', '2019-03-04 19:12:47');
INSERT INTO `c_unit` VALUES ('6ff3b0303e6e11e9a891a0d3c10f2d5a', null, '中国太平洋人寿保险股份有限公司深圳分公司', null, '736251689', null, '黄耀文', '13714688498', null, '1', '1', 'admin', null, '2019-03-04 19:12:47', '2019-03-04 19:12:47');
INSERT INTO `c_unit` VALUES ('7040b3b03e6e11e9a891a0d3c10f2d5a', null, '深圳市华超金都投资有限公司', null, '319313850', null, '顾楠楠', '13609618905', null, '1', '1', 'admin', null, '2019-03-04 19:12:48', '2019-03-04 19:12:48');
INSERT INTO `c_unit` VALUES ('70e9e5f23e6e11e9a891a0d3c10f2d5a', null, '深圳市招商工程项目管理有限公司', null, '192441395', null, '金凡宇', '13714335827', null, '1', '1', 'admin', null, '2019-03-04 19:12:49', '2019-03-04 19:12:49');
INSERT INTO `c_unit` VALUES ('710af0ae3e6e11e9a891a0d3c10f2d5a', null, '深圳市建筑工程股份有限公司', null, '19218873X', null, '黄治中', '13826536564', null, '1', '1', 'admin', null, '2019-03-04 19:12:49', '2019-03-04 19:12:49');
INSERT INTO `c_unit` VALUES ('711dd0fa3e6e11e9a891a0d3c10f2d5a', null, '深圳市彬绿园林有限公司', null, '734165680', null, '朱结玉', '13612861802', null, '1', '1', 'admin', null, '2019-03-04 19:12:49', '2019-03-04 19:12:49');
INSERT INTO `c_unit` VALUES ('71764c533e6e11e9a891a0d3c10f2d5a', null, '深圳市福田区福田街道办事处', null, '007542785', null, '刘柏廷', '83820524', null, '1', '1', 'admin', null, '2019-03-04 19:12:50', '2019-03-04 19:12:50');
INSERT INTO `c_unit` VALUES ('72853e513e6e11e9a891a0d3c10f2d5a', null, '中国一冶集团有限公司', null, '177727555', null, '张毅', '15817404606', null, '1', '1', 'admin', null, '2019-03-04 19:12:52', '2019-03-04 19:12:52');
INSERT INTO `c_unit` VALUES ('72951eea3e6e11e9a891a0d3c10f2d5a', null, '广东中恒泰建筑加固技术有限公司', null, '342599199', null, '龙宁宁', '13760257227', null, '1', '1', 'admin', null, '2019-03-04 19:12:52', '2019-03-04 19:12:52');
INSERT INTO `c_unit` VALUES ('72a686063e6e11e9a891a0d3c10f2d5a', null, '深圳是东关投资集团有限公司', null, '92359279N', null, '温坚生', '13510556996', null, '1', '1', 'admin', null, '2019-03-04 19:12:52', '2019-03-04 19:12:52');
INSERT INTO `c_unit` VALUES ('7503b18d3e6e11e9a891a0d3c10f2d5a', null, '深圳市深港建筑集团有限公司', null, '192188473', null, '陈强', '13809884408', null, '1', '1', 'admin', null, '2019-03-04 19:12:56', '2019-03-04 19:12:56');
INSERT INTO `c_unit` VALUES ('7513d2eb3e6e11e9a891a0d3c10f2d5a', null, '深圳证券通信有限公司', null, '192236666', null, '刘海波', '83183333-366', null, '1', '1', 'admin', null, '2019-03-04 19:12:56', '2019-03-04 19:12:56');
INSERT INTO `c_unit` VALUES ('77ab7ad43e6e11e9a891a0d3c10f2d5a', null, '深圳市基础工程有限公司', null, '192199279', null, '黄飞飞', '13828736888', null, '1', '1', 'admin', null, '2019-03-04 19:13:00', '2019-03-04 19:13:00');
INSERT INTO `c_unit` VALUES ('784407e13e6e11e9a891a0d3c10f2d5a', null, '深圳市中天元供应链管理有限公司', null, '279543829', null, '姚泓鑫', '13528411818', null, '1', '1', 'admin', null, '2019-03-04 19:13:01', '2019-03-04 19:13:01');
INSERT INTO `c_unit` VALUES ('78e37e773e6e11e9a891a0d3c10f2d5a', null, '广东华玺建筑设计有限公司', null, '456756316', null, '赵复忠', '13316809053', null, '1', '1', 'admin', null, '2019-03-04 19:13:02', '2019-03-04 19:13:02');
INSERT INTO `c_unit` VALUES ('78f8bf0f3e6e11e9a891a0d3c10f2d5a', null, '深圳市江佳鸿装饰工程集团有限公司', null, '715260594', null, '汤耀堂', '13802573613', null, '1', '1', 'admin', null, '2019-03-04 19:13:03', '2019-03-04 19:13:03');
INSERT INTO `c_unit` VALUES ('7950e9793e6e11e9a891a0d3c10f2d5a', null, '深圳市天地照明设计工程有限公司', null, '727142966', null, '严海燕', '13926562991', null, '1', '1', 'admin', null, '2019-03-04 19:13:03', '2019-03-04 19:13:03');
INSERT INTO `c_unit` VALUES ('79a9b0703e6e11e9a891a0d3c10f2d5a', null, '华强北街道办事处', null, '689401305', null, '赵明', '18923766747', null, '1', '1', 'admin', null, '2019-03-04 19:13:04', '2019-03-04 19:13:04');
INSERT INTO `c_unit` VALUES ('7a62bbd63e6e11e9a891a0d3c10f2d5a', null, '嘉里建设管理（上海）有限公司深圳分公司', null, '607355115', null, '罗江华', '13886166073', null, '1', '1', 'admin', null, '2019-03-04 19:13:05', '2019-03-04 19:13:05');
INSERT INTO `c_unit` VALUES ('7b8706ba3e6e11e9a891a0d3c10f2d5a', null, '深圳粤航装饰工程有限公司', null, '618811147', null, '柳明', '18676743569', null, '1', '1', 'admin', null, '2019-03-04 19:13:07', '2019-03-04 19:13:07');
INSERT INTO `c_unit` VALUES ('7ecbdc423e6e11e9a891a0d3c10f2d5a', null, '深圳长城开发科技股份有限公司', null, '618873567', null, '刘明颖', '13823126098', null, '1', '1', 'admin', null, '2019-03-04 19:13:12', '2019-03-04 19:13:12');
INSERT INTO `c_unit` VALUES ('7f8cf8733e6e11e9a891a0d3c10f2d5a', null, '深圳科宇工程顾问有限公司', null, '192349118', null, '耿天来', '13680720457', null, '1', '1', 'admin', null, '2019-03-04 19:13:14', '2019-03-04 19:13:14');
INSERT INTO `c_unit` VALUES ('7fe584af3e6e11e9a891a0d3c10f2d5a', null, '中国石化销售有限公司广东深圳石油分公司', null, '708596778', null, '丁建华', '83546855', null, '1', '1', 'admin', null, '2019-03-04 19:13:14', '2019-03-04 19:13:14');
INSERT INTO `c_unit` VALUES ('808cc1f03e6e11e9a891a0d3c10f2d5a', null, '中国人寿保险股份有限公司', null, '71092841x', null, '廖晓喻', '15692083336', null, '1', '1', 'admin', null, '2019-03-04 19:13:15', '2019-03-04 19:13:15');
INSERT INTO `c_unit` VALUES ('817433b63e6e11e9a891a0d3c10f2d5a', null, '深圳洲际建筑装饰集团有限公司', null, '192204170', null, '蔡鹤', '13798235933', null, '1', '1', 'admin', null, '2019-03-04 19:13:17', '2019-03-04 19:13:17');
INSERT INTO `c_unit` VALUES ('818ed19c3e6e11e9a891a0d3c10f2d5a', null, '深圳市海康实业有限公司', null, '192214600', null, '曹四平', '13342982039', null, '1', '1', 'admin', null, '2019-03-04 19:13:17', '2019-03-04 19:13:17');
INSERT INTO `c_unit` VALUES ('82347a5a3e6e11e9a891a0d3c10f2d5a', null, '深圳市华南装饰集团股份有限公司', null, '192244711', null, '周衍真', '18601922811', null, '1', '1', 'admin', null, '2019-03-04 19:13:18', '2019-03-04 19:13:18');
INSERT INTO `c_unit` VALUES ('829e988b3e6e11e9a891a0d3c10f2d5a', null, '深圳市赛格地产投资股份有限公司', null, '192176333', null, '张永飞', '15815554401', null, '1', '1', 'admin', null, '2019-03-04 19:13:19', '2019-03-04 19:13:19');
INSERT INTO `c_unit` VALUES ('838bbb693e6e11e9a891a0d3c10f2d5a', null, '深圳市粤华建筑工程有限公司', null, '72854633X', null, '刘鹏', '13417353010', null, '1', '1', 'admin', null, '2019-03-04 19:13:20', '2019-03-04 19:13:20');
INSERT INTO `c_unit` VALUES ('8533856a3e6e11e9a891a0d3c10f2d5a', null, '深圳市水务工程有限公司', null, '782788356', null, '刘波', '13501598173', null, '1', '1', 'admin', null, '2019-03-04 19:13:23', '2019-03-04 19:13:23');
INSERT INTO `c_unit` VALUES ('859ac75c3e6e11e9a891a0d3c10f2d5a', null, '深圳市深福保物业发展有限公司', null, '192352376', null, '林翠妙', '15915321304', null, '1', '1', 'admin', null, '2019-03-04 19:13:24', '2019-03-04 19:13:24');
INSERT INTO `c_unit` VALUES ('85eb040e3e6e11e9a891a0d3c10f2d5a', null, '深圳市龙康弘投资发展有限公司', null, '279307623', null, '黄康景', '23625186', null, '1', '1', 'admin', null, '2019-03-04 19:13:24', '2019-03-04 19:13:24');
INSERT INTO `c_unit` VALUES ('863b2b643e6e11e9a891a0d3c10f2d5a', null, '四川省清凤现代房地产开发有限责任公司', null, '720313873', null, '李鑫宸', '13714767311', null, '1', '1', 'admin', null, '2019-03-04 19:13:25', '2019-03-04 19:13:25');
INSERT INTO `c_unit` VALUES ('86b7a9683e6e11e9a891a0d3c10f2d5a', null, '成都明杰建筑工程监理有限公司', null, '743644851', null, '浦恒铭', '18628312719', null, '1', '1', 'admin', null, '2019-03-04 19:13:26', '2019-03-04 19:13:26');
INSERT INTO `c_unit` VALUES ('86f550c33e6e11e9a891a0d3c10f2d5a', null, '深圳市中装园林建设工程有限公司', null, '778785910', null, '戴庆祥', '13622470288', null, '1', '1', 'admin', null, '2019-03-04 19:13:26', '2019-03-04 19:13:26');
INSERT INTO `c_unit` VALUES ('870cffae3e6e11e9a891a0d3c10f2d5a', null, '深圳市中影大众影城有限公司', null, 'ma5eglnj5', null, '许瑜璇', '15811828151', null, '1', '1', 'admin', null, '2019-03-04 19:13:26', '2019-03-04 19:13:26');
INSERT INTO `c_unit` VALUES ('87ae57e33e6e11e9a891a0d3c10f2d5a', null, '深圳市安星装饰设计工程有限公司', null, '192326370', null, '戴德斌', '15813863815', null, '1', '1', 'admin', null, '2019-03-04 19:13:27', '2019-03-04 19:13:27');
INSERT INTO `c_unit` VALUES ('87d049173e6e11e9a891a0d3c10f2d5a', null, '深圳市福田福华建设开发有限公司', null, 'ma5epc8x9', null, '魏风光', '13717138006', null, '1', '1', 'admin', null, '2019-03-04 19:13:27', '2019-03-04 19:13:27');
INSERT INTO `c_unit` VALUES ('894f2f903e6e11e9a891a0d3c10f2d5a', null, '深圳市建艺国际工程顾问有限公司', null, '192376140', null, '王建生', '13590261539', null, '1', '1', 'admin', null, '2019-03-04 19:13:30', '2019-03-04 19:13:30');
INSERT INTO `c_unit` VALUES ('8997a1af3e6e11e9a891a0d3c10f2d5a', null, '深圳榕亨实业集团有限公司', null, '19233838X', null, '黄芳兰', '13728700770', null, '1', '1', 'admin', null, '2019-03-04 19:13:30', '2019-03-04 19:13:30');
INSERT INTO `c_unit` VALUES ('89f6b0483e6e11e9a891a0d3c10f2d5a', null, '深圳市友和招标有限公司', null, 'ma5ddrwt3', null, '吕洋', '18565640532', null, '1', '1', 'admin', null, '2019-03-04 19:13:31', '2019-03-04 19:13:31');
INSERT INTO `c_unit` VALUES ('8a68dd2a3e6e11e9a891a0d3c10f2d5a', null, '深圳广播电影电视集团', null, '455756074', null, '陈君聪', '88310086', null, '1', '1', 'admin', null, '2019-03-04 19:13:32', '2019-03-04 19:13:32');
INSERT INTO `c_unit` VALUES ('8ba113b83e6e11e9a891a0d3c10f2d5a', null, '中国人寿保险（海外）股份有限公司', null, '710935054', null, '柳楠楠', '13717106199', null, '1', '1', 'admin', null, '2019-03-04 19:13:34', '2019-03-04 19:13:34');
INSERT INTO `c_unit` VALUES ('8d1539263e6e11e9a891a0d3c10f2d5a', null, '深圳市耀凯房地产投资发展有限公司', null, '782771642', null, '任太飞', '13714954425', null, '1', '1', 'admin', null, '2019-03-04 19:13:36', '2019-03-04 19:13:36');
INSERT INTO `c_unit` VALUES ('8da268513e6e11e9a891a0d3c10f2d5a', null, '深业鹏基（集团）有限公司', null, '190338159', null, '徐汝心', '82263757', null, '1', '1', 'admin', null, '2019-03-04 19:13:37', '2019-03-04 19:13:37');
INSERT INTO `c_unit` VALUES ('8e7675cc3e6e11e9a891a0d3c10f2d5a', null, '深圳市市政工程总公司', null, '192190397', null, '辛杰', '83920355', null, '1', '1', 'admin', null, '2019-03-04 19:13:39', '2019-03-04 19:13:39');
INSERT INTO `c_unit` VALUES ('9041754b3e6e11e9a891a0d3c10f2d5a', null, '深圳市湛艺建设集团有限公司', null, '755684834', null, '何喜康', '82911636', null, '1', '1', 'admin', null, '2019-03-04 19:13:42', '2019-03-04 19:13:42');
INSERT INTO `c_unit` VALUES ('916bad5d3e6e11e9a891a0d3c10f2d5a', null, '深圳市建明达建设监理有限公司', null, '708415690', null, '钟元生', '13642747205', null, '1', '1', 'admin', null, '2019-03-04 19:13:44', '2019-03-04 19:13:44');
INSERT INTO `c_unit` VALUES ('9197110f3e6e11e9a891a0d3c10f2d5a', null, '深圳市苍龙实业发展有限公司', null, '192353299', null, '林怀聪', '18820298277', null, '1', '1', 'admin', null, '2019-03-04 19:13:44', '2019-03-04 19:13:44');
INSERT INTO `c_unit` VALUES ('93a3e7e93e6e11e9a891a0d3c10f2d5a', null, '华夏银行股份有限公司深圳分行', null, '892371340', null, '张润深', '13537605522', null, '1', '1', 'admin', null, '2019-03-04 19:13:47', '2019-03-04 19:13:47');
INSERT INTO `c_unit` VALUES ('9463f0ac3e6e11e9a891a0d3c10f2d5a', null, '深圳市福田区公共文化体育发展中心', null, '051546476', null, '简定雄', '82899601', null, '1', '1', 'admin', null, '2019-03-04 19:13:49', '2019-03-04 19:13:49');
INSERT INTO `c_unit` VALUES ('94e7c6fe3e6e11e9a891a0d3c10f2d5a', null, '深圳市佳安特建设监理有限公司', null, '455748576', null, '张俊', '13600153702', null, '1', '1', 'admin', null, '2019-03-04 19:13:49', '2019-03-04 19:13:49');
INSERT INTO `c_unit` VALUES ('950e20553e6e11e9a891a0d3c10f2d5a', null, '深圳市金鑫华建筑工程有限公司', null, '671888696', null, '莫菀', '13537560214', null, '1', '1', 'admin', null, '2019-03-04 19:13:50', '2019-03-04 19:13:50');
INSERT INTO `c_unit` VALUES ('951d58f03e6e11e9a891a0d3c10f2d5a', null, '北京大学深圳医院', null, '455755741', null, '蔡志明', '83923333-6626', null, '1', '1', 'admin', null, '2019-03-04 19:13:50', '2019-03-04 19:13:50');
INSERT INTO `c_unit` VALUES ('96a4eca33e6e11e9a891a0d3c10f2d5a', null, '西部证券股份有限公司', null, '719782242', null, '胡泊', '18666206586', null, '1', '1', 'admin', null, '2019-03-04 19:13:52', '2019-03-04 19:13:52');
INSERT INTO `c_unit` VALUES ('972013bb3e6e11e9a891a0d3c10f2d5a', null, '宁波雅戈尔服饰有限公司深圳营销分公司', null, '695581066', null, '魏永斌', '15168118580', null, '1', '1', 'admin', null, '2019-03-04 19:13:53', '2019-03-04 19:13:53');
INSERT INTO `c_unit` VALUES ('97a225f53e6e11e9a891a0d3c10f2d5a', null, '深圳市保利达建设工程有限公司', null, '555418929', null, '周晓娟', '13602636311', null, '1', '1', 'admin', null, '2019-03-04 19:13:54', '2019-03-04 19:13:54');
INSERT INTO `c_unit` VALUES ('995fb81c3e6e11e9a891a0d3c10f2d5a', null, '深圳国际仲裁院（深圳仲裁委员会）', null, '455763151', null, '', '', null, '1', '1', 'admin', null, '2019-03-04 19:13:57', '2019-03-04 19:13:57');
INSERT INTO `c_unit` VALUES ('9a1ba00e3e6e11e9a891a0d3c10f2d5a', null, '中建三局第一建设工程有限责任公司', null, '748315774', null, '常帅军', '15827347497', null, '1', '1', 'admin', null, '2019-03-04 19:13:58', '2019-03-04 19:13:58');
INSERT INTO `c_unit` VALUES ('9a2f3b033e6e11e9a891a0d3c10f2d5a', null, '深圳市农科房地产开发有限公司', null, '192377565', null, '王宝峰', '22663900', null, '1', '1', 'admin', null, '2019-03-04 19:13:58', '2019-03-04 19:13:58');
INSERT INTO `c_unit` VALUES ('9a7e8dd83e6e11e9a891a0d3c10f2d5a', null, '悉地国际设计顾问（深圳）有限公司', null, '192275585', null, '杨燕', '13538116571', null, '1', '1', 'admin', null, '2019-03-04 19:13:59', '2019-03-04 19:13:59');
INSERT INTO `c_unit` VALUES ('9be555803e6e11e9a891a0d3c10f2d5a', null, '深圳市集贸市场有限公司', null, '708449591', null, '马丽', '13410756624', null, '1', '1', 'admin', null, '2019-03-04 19:14:01', '2019-03-04 19:14:01');
INSERT INTO `c_unit` VALUES ('9f3776093e6e11e9a891a0d3c10f2d5a', null, '深圳市公安局', null, '007542689', null, '刘庆生', '84465090', null, '1', '1', 'admin', null, '2019-03-04 19:14:07', '2019-03-04 19:14:07');
INSERT INTO `c_unit` VALUES ('a043957b3e6e11e9a891a0d3c10f2d5a', null, '广东省建筑设计研究院', null, '455857633', null, '张雪亭', '13510130114', null, '1', '1', 'admin', null, '2019-03-04 19:14:08', '2019-03-04 19:14:08');
INSERT INTO `c_unit` VALUES ('a0a870843e6e11e9a891a0d3c10f2d5a', null, '深业集团有限公司', null, '279351173', null, '梁中悦', '15318672397', null, '1', '1', 'admin', null, '2019-03-04 19:14:09', '2019-03-04 19:14:09');
INSERT INTO `c_unit` VALUES ('a10a4a493e6e11e9a891a0d3c10f2d5a', null, '深圳市福田区第二人民医院', null, '455744313', null, '谢力伟', '13902433244', null, '1', '1', 'admin', null, '2019-03-04 19:14:10', '2019-03-04 19:14:10');
INSERT INTO `c_unit` VALUES ('a16b8c393e6e11e9a891a0d3c10f2d5a', null, '深圳市城市规划设计研究院有限公司', null, '670012414', null, '深圳市城市规划设计研究院有限公司', '13823797196', null, '1', '1', 'admin', null, '2019-03-04 19:14:10', '2019-03-04 19:14:10');
INSERT INTO `c_unit` VALUES ('a1fc375c3e6e11e9a891a0d3c10f2d5a', null, '深圳市东昶实业有限公司', null, '067985254', null, '祝玉凤', '13715358326', null, '1', '1', 'admin', null, '2019-03-04 19:14:11', '2019-03-04 19:14:11');
INSERT INTO `c_unit` VALUES ('a29952633e6e11e9a891a0d3c10f2d5a', null, '深圳三图建设工程有限公司', null, '715231355', null, '吴涛', '13622355780', null, '1', '1', 'admin', null, '2019-03-04 19:14:12', '2019-03-04 19:14:12');
INSERT INTO `c_unit` VALUES ('a2b5c43d3e6e11e9a891a0d3c10f2d5a', null, '深圳市中医院', null, '455755530', null, '李顺民', '88359666', null, '1', '1', 'admin', null, '2019-03-04 19:14:13', '2019-03-04 19:14:13');
INSERT INTO `c_unit` VALUES ('a306ef4b3e6e11e9a891a0d3c10f2d5a', null, '深圳城家公寓酒店管理有限公司', null, 'ma5dt9a20', null, '何先英', '13699897760', null, '1', '1', 'admin', null, '2019-03-04 19:14:13', '2019-03-04 19:14:13');
INSERT INTO `c_unit` VALUES ('a4df8a553e6e11e9a891a0d3c10f2d5a', null, '深圳市金砖产业投资运营有限公司', null, 'ma5emcnn6', null, '孙昭明', '13827480033', null, '1', '1', 'admin', null, '2019-03-04 19:14:16', '2019-03-04 19:14:16');
INSERT INTO `c_unit` VALUES ('a5afe4443e6e11e9a891a0d3c10f2d5a', null, '上海华城工程建设管理有限公司', null, '630616491', null, '李工', '13425120027', null, '1', '1', 'admin', null, '2019-03-04 19:14:18', '2019-03-04 19:14:18');
INSERT INTO `c_unit` VALUES ('a67b16953e6e11e9a891a0d3c10f2d5a', null, '深圳市万科物业服务有限公司缇香名苑物业服务中心', null, 'ma5eu4my1', null, '赵小铭', '13538207982', null, '1', '1', 'admin', null, '2019-03-04 19:14:19', '2019-03-04 19:14:19');
INSERT INTO `c_unit` VALUES ('a706f0e93e6e11e9a891a0d3c10f2d5a', null, '中国电建集团华东勘测设计研究院有限公司', null, '142920718', null, '汪红波', '13867197000', null, '1', '1', 'admin', null, '2019-03-04 19:14:20', '2019-03-04 19:14:20');
INSERT INTO `c_unit` VALUES ('a89d193e3e6e11e9a891a0d3c10f2d5a', null, '深圳市天健地产集团有限公司', null, '19219788x', null, '陈龙', '13590457509', null, '1', '1', 'admin', null, '2019-03-04 19:14:22', '2019-03-04 19:14:22');
INSERT INTO `c_unit` VALUES ('a9e9fc2b3e6e11e9a891a0d3c10f2d5a', null, '深圳市小元里商业管理有限公司', null, 'ma5dmf762', null, '滕雪峰', '13714096117', null, '1', '1', 'admin', null, '2019-03-04 19:14:25', '2019-03-04 19:14:25');
INSERT INTO `c_unit` VALUES ('aa6c379e3e6e11e9a891a0d3c10f2d5a', null, '深圳市右品装饰工程有限公司', null, '279334752', null, '陈玉川', '13924639309', null, '1', '1', 'admin', null, '2019-03-04 19:14:26', '2019-03-04 19:14:26');
INSERT INTO `c_unit` VALUES ('aa832f5c3e6e11e9a891a0d3c10f2d5a', null, '深圳市爱因斯坦产业园管理有限公司', null, 'ma5dcbnp4', null, '陈巧宣', '13542851072', null, '1', '1', 'admin', null, '2019-03-04 19:14:26', '2019-03-04 19:14:26');
INSERT INTO `c_unit` VALUES ('ab013ebe3e6e11e9a891a0d3c10f2d5a', null, '深圳市施友建设监理有限公司', null, '192346363', null, '孟庆标', '13554853779', null, '1', '1', 'admin', null, '2019-03-04 19:14:27', '2019-03-04 19:14:27');
INSERT INTO `c_unit` VALUES ('ab168d1d3e6e11e9a891a0d3c10f2d5a', null, '深圳市泽海建筑工程有限公司', null, 'MA5DK12N0', null, '欧阳冬定', '13802244218', null, '1', '1', 'admin', null, '2019-03-04 19:14:27', '2019-03-04 19:14:27');
INSERT INTO `c_unit` VALUES ('ab26eba23e6e11e9a891a0d3c10f2d5a', null, '共享科技（深圳）有限公司', null, 'ma5dhgyhx', null, '王立文', '13662240851', null, '1', '1', 'admin', null, '2019-03-04 19:14:27', '2019-03-04 19:14:27');
INSERT INTO `c_unit` VALUES ('ad0815c33e6e11e9a891a0d3c10f2d5a', null, '深圳市福中达投资控股有限公司', null, '708479301', null, '吴振舟', '83108743', null, '1', '1', 'admin', null, '2019-03-04 19:14:30', '2019-03-04 19:14:30');
INSERT INTO `c_unit` VALUES ('ad67dc693e6e11e9a891a0d3c10f2d5a', null, '深圳市禧月湾母婴健康管理有限公司', null, '91440300MA5EDL55X5', null, '谢泽涵', '13510931288', null, '1', '1', 'admin', null, '2019-03-04 19:14:31', '2019-03-04 19:14:31');
INSERT INTO `c_unit` VALUES ('adb7fc573e6e11e9a891a0d3c10f2d5a', null, '深圳市尚客优实业有限公司', null, 'ma5eutug3', null, '张艳军', '18679859270', null, '1', '1', 'admin', null, '2019-03-04 19:14:31', '2019-03-04 19:14:31');
INSERT INTO `c_unit` VALUES ('ae135b203e6e11e9a891a0d3c10f2d5a', null, '深圳航空有限责任公司', null, '192211290', null, '蔡剑江', '61889999', null, '1', '1', 'admin', null, '2019-03-04 19:14:32', '2019-03-04 19:14:32');
INSERT INTO `c_unit` VALUES ('b1e612da3e6e11e9a891a0d3c10f2d5a', null, '上海建工集团股份有限公司', null, '631189305', null, '郑建深', '15915891017', null, '1', '1', 'admin', null, '2019-03-04 19:14:38', '2019-03-04 19:14:38');
INSERT INTO `c_unit` VALUES ('b27fa91e3e6e11e9a891a0d3c10f2d5a', null, '深圳市汇海置业有限公司', null, '695552708', null, '吴楚升', '15889703628', null, '1', '1', 'admin', null, '2019-03-04 19:14:39', '2019-03-04 19:14:39');
INSERT INTO `c_unit` VALUES ('b324f7813e6e11e9a891a0d3c10f2d5a', null, '中建二局第三建筑工程有限公司', null, '63370987X', null, '熊孟阳', '13687320390', null, '1', '1', 'admin', null, '2019-03-04 19:14:40', '2019-03-04 19:14:40');
INSERT INTO `c_unit` VALUES ('b341488b3e6e11e9a891a0d3c10f2d5a', null, '中铁十四局集团有限公司', null, '163055989', null, '王德宾', '18826069799', null, '1', '1', 'admin', null, '2019-03-04 19:14:40', '2019-03-04 19:14:40');
INSERT INTO `c_unit` VALUES ('b3a0d80a3e6e11e9a891a0d3c10f2d5a', null, '深圳市新美装饰设计工程有限公司', null, '775585577', null, '冯梦琪', '15118813371', null, '1', '1', 'admin', null, '2019-03-04 19:14:41', '2019-03-04 19:14:41');
INSERT INTO `c_unit` VALUES ('b6b819973e6e11e9a891a0d3c10f2d5a', null, '深圳市大笨象科技有限公司', null, 'ma5ex0pg9', null, '陈欣欣', '13428724558', null, '1', '1', 'admin', null, '2019-03-04 19:14:46', '2019-03-04 19:14:46');
INSERT INTO `c_unit` VALUES ('c99384f8495f11e98db3507b9dae4454', null, '深圳市城市交通规划设计研究中心有限公司', null, '671877217', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:21', '2019-03-18 17:25:21');
INSERT INTO `c_unit` VALUES ('c9a643d5495f11e98db3507b9dae4454', null, '深圳市勘察研究院有限公司', null, '192181044', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:21', '2019-03-18 17:25:21');
INSERT INTO `c_unit` VALUES ('c9b05741495f11e98db3507b9dae4454', null, '深圳市栋森工程项目管理有限公司', null, '727141656', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:21', '2019-03-18 17:25:21');
INSERT INTO `c_unit` VALUES ('c9b87cf9495f11e98db3507b9dae4454', null, '深圳市勘察测绘院有限公司', null, '192200874', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:21', '2019-03-18 17:25:21');
INSERT INTO `c_unit` VALUES ('c9c4c229495f11e98db3507b9dae4454', null, '深圳市丰浩达工程项目管理有限公司', null, '715237538', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:21', '2019-03-18 17:25:21');
INSERT INTO `c_unit` VALUES ('c9d20842495f11e98db3507b9dae4454', null, '北京市市政工程设计研究总院有限公司', null, '892197717', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:21', '2019-03-18 17:25:21');
INSERT INTO `c_unit` VALUES ('c9e19274495f11e98db3507b9dae4454', null, '深圳市粤通建设工程有限公司', null, '192233932', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:21', '2019-03-18 17:25:21');
INSERT INTO `c_unit` VALUES ('c9eb6196495f11e98db3507b9dae4454', null, '深圳市建设(集团)有限公司', null, '757627403', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:21', '2019-03-18 17:25:21');
INSERT INTO `c_unit` VALUES ('c9fad8c7495f11e98db3507b9dae4454', null, '深圳市千百辉照明工程有限公司', null, '279543423', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:21', '2019-03-18 17:25:21');
INSERT INTO `c_unit` VALUES ('ca04b650495f11e98db3507b9dae4454', null, '深圳市夺天工环境建设有限公司', null, '729888972', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:21', '2019-03-18 17:25:21');
INSERT INTO `c_unit` VALUES ('ca0e4fc9495f11e98db3507b9dae4454', null, '深圳市致道景观设计有限公司', null, '758618904', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:22', '2019-03-18 17:25:22');
INSERT INTO `c_unit` VALUES ('ca20d331495f11e98db3507b9dae4454', null, '深圳市层层高建设工程有限公司', null, '192478841', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:22', '2019-03-18 17:25:22');
INSERT INTO `c_unit` VALUES ('ca2dc6ca495f11e98db3507b9dae4454', null, '深圳市国艺园林建设有限公司', null, '71525395x', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:22', '2019-03-18 17:25:22');
INSERT INTO `c_unit` VALUES ('ca35fb63495f11e98db3507b9dae4454', null, '深圳市鲁班建设监理有限公司', null, '19223197X', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:22', '2019-03-18 17:25:22');
INSERT INTO `c_unit` VALUES ('ca42993b495f11e98db3507b9dae4454', null, '深圳文科园林股份有限公司', null, '279296247', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:22', '2019-03-18 17:25:22');
INSERT INTO `c_unit` VALUES ('ca54b49e495f11e98db3507b9dae4454', null, '深圳市永丰生态环境有限公司', null, '736291357', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:22', '2019-03-18 17:25:22');
INSERT INTO `c_unit` VALUES ('ca6223aa495f11e98db3507b9dae4454', null, '广州市园林建筑工程公司', null, '070388592', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:22', '2019-03-18 17:25:22');
INSERT INTO `c_unit` VALUES ('ca703eec495f11e98db3507b9dae4454', null, '佛山市粤山园林绿化有限公司', null, '755696843', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:22', '2019-03-18 17:25:22');
INSERT INTO `c_unit` VALUES ('ca7f7014495f11e98db3507b9dae4454', null, '深圳市振强建设工程管理有限公司', null, '774107215', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:22', '2019-03-18 17:25:22');
INSERT INTO `c_unit` VALUES ('ca871c62495f11e98db3507b9dae4454', null, '深圳市交运工程集团有限公司', null, '19220498x', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:22', '2019-03-18 17:25:22');
INSERT INTO `c_unit` VALUES ('ca912e59495f11e98db3507b9dae4454', null, '深圳市建衡达工程造价咨询有限公司', null, '715233799', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:22', '2019-03-18 17:25:22');
INSERT INTO `c_unit` VALUES ('ca9c2196495f11e98db3507b9dae4454', null, '深圳市广汇源环境水务有限公司', null, '192248376', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:22', '2019-03-18 17:25:22');
INSERT INTO `c_unit` VALUES ('caa45168495f11e98db3507b9dae4454', null, '深圳市深水工程造价咨询有限公司', null, '74886823X', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:23', '2019-03-18 17:25:23');
INSERT INTO `c_unit` VALUES ('cab14998495f11e98db3507b9dae4454', null, '深圳市华伦投资咨询有限公司', null, '192214571', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:23', '2019-03-18 17:25:23');
INSERT INTO `c_unit` VALUES ('cab919f3495f11e98db3507b9dae4454', null, '重庆市渝万建设集团有限公司', null, '685362927', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:23', '2019-03-18 17:25:23');
INSERT INTO `c_unit` VALUES ('caccf68f495f11e98db3507b9dae4454', null, '深圳市建星项目管理顾问有限公司', null, '279543773', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:23', '2019-03-18 17:25:23');
INSERT INTO `c_unit` VALUES ('cadaa0f5495f11e98db3507b9dae4454', null, '深圳市福田区教育局', null, '007542603', null, '', '', null, '1', '1', 'admin', null, '2019-03-18 17:25:23', '2019-03-18 17:25:23');
INSERT INTO `c_unit` VALUES ('caddddb3495f11e98db3507b9dae4454', null, '建设综合勘察研究设计院有限公司', null, '78924006X', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:23', '2019-03-18 17:25:23');
INSERT INTO `c_unit` VALUES ('cae5b495495f11e98db3507b9dae4454', null, '深圳市全至工程咨询有限公司', null, '192317650', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:23', '2019-03-18 17:25:23');
INSERT INTO `c_unit` VALUES ('caedf647495f11e98db3507b9dae4454', null, '江苏江都建设集团有限公司', null, '311755929', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:23', '2019-03-18 17:25:23');
INSERT INTO `c_unit` VALUES ('caff04b8495f11e98db3507b9dae4454', null, '中国建筑第八工程局有限公司', null, '661002038', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:23', '2019-03-18 17:25:23');
INSERT INTO `c_unit` VALUES ('cb0e6de2495f11e98db3507b9dae4454', null, '中国十九冶集团有限公司深圳分公司', null, '668505586', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:23', '2019-03-18 17:25:23');
INSERT INTO `c_unit` VALUES ('cb164c2b495f11e98db3507b9dae4454', null, '中国建筑一局（集团）有限公司', null, '708582376', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:23', '2019-03-18 17:25:23');
INSERT INTO `c_unit` VALUES ('cb250f28495f11e98db3507b9dae4454', null, '广东省工程勘察院', null, '080117793', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:23', '2019-03-18 17:25:23');
INSERT INTO `c_unit` VALUES ('cb31a242495f11e98db3507b9dae4454', null, '深圳市超卓工程有限公司', null, '279521830', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:23', '2019-03-18 17:25:23');
INSERT INTO `c_unit` VALUES ('cb510f06495f11e98db3507b9dae4454', null, '中建三局第一建设工程有限责任公司深圳分公司', null, '708556426', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:24', '2019-03-18 17:25:24');
INSERT INTO `c_unit` VALUES ('cb676428495f11e98db3507b9dae4454', null, '深圳市华鹏工程建设有限公司', null, '770305564', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:24', '2019-03-18 17:25:24');
INSERT INTO `c_unit` VALUES ('cb6f10d2495f11e98db3507b9dae4454', null, '中机十院国际工程有限公司', null, '892210133', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:24', '2019-03-18 17:25:24');
INSERT INTO `c_unit` VALUES ('cb789dd5495f11e98db3507b9dae4454', null, '深圳鲲鹏工程顾问有限公司', null, '618874375', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:24', '2019-03-18 17:25:24');
INSERT INTO `c_unit` VALUES ('cb828cf3495f11e98db3507b9dae4454', null, '深圳市茂宏达电力设备有限公司', null, '682013203', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:24', '2019-03-18 17:25:24');
INSERT INTO `c_unit` VALUES ('cb8bf6a1495f11e98db3507b9dae4454', null, '深圳市源鸿达建筑工程有限公司', null, '689421007', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:24', '2019-03-18 17:25:24');
INSERT INTO `c_unit` VALUES ('cb95799b495f11e98db3507b9dae4454', null, '广州帝森康体设备有限公司', null, '743582590', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:24', '2019-03-18 17:25:24');
INSERT INTO `c_unit` VALUES ('cb9d21d9495f11e98db3507b9dae4454', null, '广东粤明动力有限公司', null, '708447633', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:24', '2019-03-18 17:25:24');
INSERT INTO `c_unit` VALUES ('cba95a0f495f11e98db3507b9dae4454', null, '创始点咨询（深圳）有限公司', null, '664159524', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:24', '2019-03-18 17:25:24');
INSERT INTO `c_unit` VALUES ('cbc062a1495f11e98db3507b9dae4454', null, '深圳市东大国际工程设计有限公司', null, '783900637', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:24', '2019-03-18 17:25:24');
INSERT INTO `c_unit` VALUES ('cbce34f7495f11e98db3507b9dae4454', null, '泛华建设集团有限公司深圳建设分公司', null, '670016087', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:24', '2019-03-18 17:25:24');
INSERT INTO `c_unit` VALUES ('cbd62d83495f11e98db3507b9dae4454', null, '深圳市海德伦工程咨询有限公司', null, '71526806X', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:25', '2019-03-18 17:25:25');
INSERT INTO `c_unit` VALUES ('cbe31dfb495f11e98db3507b9dae4454', null, '中国建筑技术集团有限公司', null, '89226852X', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:25', '2019-03-18 17:25:25');
INSERT INTO `c_unit` VALUES ('cbf005be495f11e98db3507b9dae4454', null, '深圳市建鑫泰工程造价咨询有限公司', null, '715274144', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:25', '2019-03-18 17:25:25');
INSERT INTO `c_unit` VALUES ('cbf83084495f11e98db3507b9dae4454', null, '深圳市昌信工程管理顾问有限公司', null, '763476453', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:25', '2019-03-18 17:25:25');
INSERT INTO `c_unit` VALUES ('cc1444fc495f11e98db3507b9dae4454', null, '深圳市水务规划设计院有限公司', null, 'MCK992468', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:25', '2019-03-18 17:25:25');
INSERT INTO `c_unit` VALUES ('cc2b46a4495f11e98db3507b9dae4454', null, '深圳市中联建工程项目管理有限公司', null, '79049661X', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:25', '2019-03-18 17:25:25');
INSERT INTO `c_unit` VALUES ('cc323f71495f11e98db3507b9dae4454', null, '深圳市和域城建筑设计有限公司', null, '770343448', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:25', '2019-03-18 17:25:25');
INSERT INTO `c_unit` VALUES ('cc49a2f8495f11e98db3507b9dae4454', null, '广东华联建设投资管理股份有限公司', null, '727874382', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:25', '2019-03-18 17:25:25');
INSERT INTO `c_unit` VALUES ('cc51f3a7495f11e98db3507b9dae4454', null, '中国水利水电第八工程局有限公司', null, '667087861', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:25', '2019-03-18 17:25:25');
INSERT INTO `c_unit` VALUES ('cc68f814495f11e98db3507b9dae4454', null, '深圳市广汇源水利建筑工程有限公司', null, '192195219', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:26', '2019-03-18 17:25:26');
INSERT INTO `c_unit` VALUES ('cc8929e1495f11e98db3507b9dae4454', null, '深圳华仑诚工程管理有限公司', null, '777192566', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:26', '2019-03-18 17:25:26');
INSERT INTO `c_unit` VALUES ('ccc24ec4495f11e98db3507b9dae4454', null, '广东明煌电力工程有限公司', null, '66850871X', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:26', '2019-03-18 17:25:26');
INSERT INTO `c_unit` VALUES ('ccfaeef6495f11e98db3507b9dae4454', null, '深圳市航建工程造价咨询有限公司', null, '192307807', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:26', '2019-03-18 17:25:26');
INSERT INTO `c_unit` VALUES ('cd02c13b495f11e98db3507b9dae4454', null, '深圳高速工程顾问有限公司', null, '741243026', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:27', '2019-03-18 17:25:27');
INSERT INTO `c_unit` VALUES ('cd0b62f2495f11e98db3507b9dae4454', null, '深圳市福田区文化体育局', null, '593014589', null, '', '', null, '1', '1', 'admin', null, '2019-03-18 17:25:27', '2019-03-18 17:25:27');
INSERT INTO `c_unit` VALUES ('cd13805c495f11e98db3507b9dae4454', null, '深圳市美术装饰工程有限公司', null, '192173116', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:27', '2019-03-18 17:25:27');
INSERT INTO `c_unit` VALUES ('cd1af5d3495f11e98db3507b9dae4454', null, '深圳市金世纪工程实业有限公司', null, '192285847', null, '', '', null, '1', '1', 'admin', null, '2019-03-18 17:25:27', '2019-03-18 17:25:27');
INSERT INTO `c_unit` VALUES ('cd23634f495f11e98db3507b9dae4454', null, '中国十九冶集团有限公司', null, '204350723', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:27', '2019-03-18 17:25:27');
INSERT INTO `c_unit` VALUES ('cd57b9ff495f11e98db3507b9dae4454', null, '深圳市竣迪建设监理有限公司', null, '727141760', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:27', '2019-03-18 17:25:27');
INSERT INTO `c_unit` VALUES ('cd606782495f11e98db3507b9dae4454', null, '深圳市都市建筑设计有限公司', null, '192360843', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:27', '2019-03-18 17:25:27');
INSERT INTO `c_unit` VALUES ('cd9b0851495f11e98db3507b9dae4454', null, '深圳市鸿业工程项目管理有限公司', null, '618815885', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:28', '2019-03-18 17:25:28');
INSERT INTO `c_unit` VALUES ('cdb11b6b495f11e98db3507b9dae4454', null, '深圳市霍克建设监理有限公司', null, '192249336', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:28', '2019-03-18 17:25:28');
INSERT INTO `c_unit` VALUES ('cdc411d2495f11e98db3507b9dae4454', null, '深圳市联合创艺建筑设计有限公司', null, '279318648', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:28', '2019-03-18 17:25:28');
INSERT INTO `c_unit` VALUES ('cdcbce66495f11e98db3507b9dae4454', null, '深圳市龙佳建工程项目管理有限公司', null, '746609197', null, null, null, null, '1', '1', 'admin', null, '2019-03-18 17:25:28', '2019-03-18 17:25:28');
INSERT INTO `c_unit` VALUES ('d1c74fec363b11e985e9507b9d9e8623', '1', '福田区住建局', 'manage', null, null, 'lzx', '13790434287', '~~~', '1', '1', 'admin', null, '2019-02-22 08:50:16', '2019-02-22 08:50:16');
INSERT INTO `c_unit` VALUES ('eb3d30ad3e6e11e9a891a0d3c10f2d5a', null, '深圳供电局有限公司', null, '589179428', null, '林火华', '88938827', null, '1', '1', 'admin', null, '2019-03-04 19:16:14', '2019-03-04 19:16:14');
INSERT INTO `c_unit` VALUES ('f5984fa93e6e11e9a891a0d3c10f2d5a', null, '深圳市房屋租赁运营管理有限公司', null, 'ma5eqd989', null, '尚文军', '15889676453', null, '1', '1', 'admin', null, '2019-03-04 19:16:32', '2019-03-04 19:16:32');
INSERT INTO `c_unit` VALUES ('f9fb02da3e6e11e9a891a0d3c10f2d5a', null, '景茗苑小区B栋1单元全体业主', null, '无', null, '曾春容', '13691772830', null, '1', '1', 'admin', null, '2019-03-04 19:16:39', '2019-03-04 19:16:39');
INSERT INTO `c_unit` VALUES ('ff1282693e6e11e9a891a0d3c10f2d5a', null, '深圳市耀凯房地产投资发展有限公司', null, '91440300782771642N', null, '无', '无', null, '1', '1', 'admin', null, '2019-03-04 19:16:48', '2019-03-04 19:16:48');

-- ----------------------------
-- Table structure for c_user
-- ----------------------------
DROP TABLE IF EXISTS `c_user`;
CREATE TABLE `c_user` (
  `id` varchar(32) NOT NULL,
  `sort` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `chinese_name` varchar(50) DEFAULT NULL,
  `pass_word` varchar(500) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `office_tel` varchar(20) DEFAULT NULL,
  `link_address` varchar(200) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `unit_id` varchar(32) DEFAULT NULL,
  `depart_id` varchar(32) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `credentials_non_expired` tinyint(1) NOT NULL,
  `account_non_locked` tinyint(1) NOT NULL,
  `account_non_expired` tinyint(1) NOT NULL,
  `user_type` smallint(6) DEFAULT NULL,
  `wx_code` varchar(50) DEFAULT NULL COMMENT '微信企业账号',
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_sort` (`sort`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1061 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_user
-- ----------------------------
INSERT INTO `c_user` VALUES ('013e6d843e6f11e9a891a0d3c10f2d5a', '709', '192238549', '宫少林', '03b07aeb338690665345b58c6119d2a279c2be047ef8c966aad9668d04b1341d', null, '192238549', null, null, null, '013200c93e6f11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:16:51', '2019-03-04 19:16:51');
INSERT INTO `c_user` VALUES ('19a2e9bd3e6e11e9a891a0d3c10f2d5a', '484', '007548538', '谢卓浩', 'e86d7962107a42054754d2ebdbb837999a63681c4e72cbc2e535e146870dce82', null, '007548538', null, null, null, '19874c8e3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:23', '2019-03-04 19:10:23');
INSERT INTO `c_user` VALUES ('1bbf91503e6e11e9a891a0d3c10f2d5a', '485', '192408392', '包德元', '349207601b5d18914cc224c932fbc39e871e199df41bb3f7d86f73a6e7afec31', null, '192408392', null, null, null, '1ba136c03e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:26', '2019-03-04 19:10:26');
INSERT INTO `c_user` VALUES ('1c2d2ecf3e6e11e9a891a0d3c10f2d5a', '486', '892225968', '徐景胜', '0abc2aba84dfc1c571e95405890dc8a20b8e1ea5468b354cbe3ab06147be8ef4', null, '892225968', null, null, null, '1c23df0e3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:27', '2019-03-04 19:10:27');
INSERT INTO `c_user` VALUES ('1c9c61833e6e11e9a891a0d3c10f2d5a', '487', '757013137', '陈华元', '5eb224400b1dc1033816cac5058f76690656c86741daf755392f74c6049164b2', null, '757013137', null, null, null, '1c7c29be3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:28', '2019-03-04 19:10:28');
INSERT INTO `c_user` VALUES ('1d0270fb3e6e11e9a891a0d3c10f2d5a', '488', '007543040', '陈慧明', 'ed28becaf9381dae180ac237ebf338f3481de9a911750f03bf694058c359c799', null, '007543040', null, null, null, '1cf8c7673e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:28', '2019-03-04 19:10:28');
INSERT INTO `c_user` VALUES ('1d6091843e6e11e9a891a0d3c10f2d5a', '489', '192175541', '于剑', 'c032315aeea483db53daa55aaff7d70cde4bdd2c9d7247dec054aa8f5abc6fd8', null, '192175541', null, null, null, '1d5630363e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:29', '2019-03-04 19:10:29');
INSERT INTO `c_user` VALUES ('1db7e4e93e6e11e9a891a0d3c10f2d5a', '490', 'mb2c36243', '郭士裕', '2308a9addb4ab2ac9a201a1915e0eb74559ff868cd18cc1306b809053eb79889', null, 'mb2c36243', null, null, null, '1da7266a3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:29', '2019-03-04 19:10:29');
INSERT INTO `c_user` VALUES ('1e08d4a63e6e11e9a891a0d3c10f2d5a', '491', 'ma5ewj494', '马晓昇', '10de42c04a6b084789d5faebfcd7927a2272ea513c68d1bd39b1b4ce460fb771', null, 'ma5ewj494', null, null, null, '1dfe6f6f3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:30', '2019-03-04 19:10:30');
INSERT INTO `c_user` VALUES ('1e5606f13e6e11e9a891a0d3c10f2d5a', '492', '192251874', '高振怀', 'a3e1335b70cae9e87e8bb7d1f704623c475e0d6cb3389b91a939b0660de3a195', null, '192251874', null, null, null, '1e4b9ac03e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:30', '2019-03-04 19:10:30');
INSERT INTO `c_user` VALUES ('1ea3fb093e6e11e9a891a0d3c10f2d5a', '493', '110070843', '段东明', '14a8d9fb464a694dd006dbe0b99710432e47c68ca9fab0ce5a3b322445ed2f6f', null, '110070843', null, null, null, '1e9a9b733e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:31', '2019-03-04 19:10:31');
INSERT INTO `c_user` VALUES ('20990e793e6e11e9a891a0d3c10f2d5a', '494', '755686282', '李轶君', '839cdc01910d6fc759a282907fe9b0b3a723ed3d9f02d3b4cbf8594abb9bfb3e', null, '755686282', null, null, null, '209119703e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:34', '2019-03-04 19:10:34');
INSERT INTO `c_user` VALUES ('20ee845d3e7411e9b648507b9d9e8623', '712', 'test3', null, '85502d8e948247527d0e103b56b5f02c18bbf488b83c589fafaca559cc74e641', null, '13790439999', null, null, null, '8d1539263e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:53:28', '2019-03-04 19:53:28');
INSERT INTO `c_user` VALUES ('2113bc4e3e6e11e9a891a0d3c10f2d5a', '495', '192362152', '周宏建', 'e4de8092856742d0641f935fb610765969c26ad25d072f0e7a5af282c57ddd5d', null, '192362152', null, null, null, '2112d5003e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:35', '2019-03-04 19:10:35');
INSERT INTO `c_user` VALUES ('2134d5863e6e11e9a891a0d3c10f2d5a', '496', '171071866', '曾训龙', 'f34f79609403b22498893704df69f85b2a13f866956e359b9807295ed9ed582a', null, '171071866', null, null, null, '213298f93e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:35', '2019-03-04 19:10:35');
INSERT INTO `c_user` VALUES ('2199df713e6e11e9a891a0d3c10f2d5a', '497', '76345000x', '关则钦', '09a424311344868e934dee562e41d4b19b0b7bf5a6817363350c2725d67186a7', null, '76345000x', null, null, null, '218c4e863e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:36', '2019-03-04 19:10:36');
INSERT INTO `c_user` VALUES ('21eb52f93e6e11e9a891a0d3c10f2d5a', '498', '192181490', '周春蕾', '358bc5cc5563b2b1dfe6e833d832cc4d461c4431e274108040a283e9dae34487', null, '192181490', null, null, null, '21e372733e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:37', '2019-03-04 19:10:37');
INSERT INTO `c_user` VALUES ('22fc279e3e6e11e9a891a0d3c10f2d5a', '499', '455750692', '陈叶军', '59d0e8c3812cd90864000f35f9009da2dfc09592f925e25580ab994e955593a4', null, '455750692', null, null, null, '22d2dba03e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:38', '2019-03-04 19:10:38');
INSERT INTO `c_user` VALUES ('241113a13e6e11e9a891a0d3c10f2d5a', '500', 'ma4l16jq9', '黄旭生', '449863a1dd7197b3ccb5400f61dab38b52ad3c50c3c8fdc60cd4f02aecde570c', null, 'ma4l16jq9', null, null, null, '23fe451e3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:40', '2019-03-04 19:10:40');
INSERT INTO `c_user` VALUES ('24c5544d3e6e11e9a891a0d3c10f2d5a', '501', '692528104', '林达辉', '82d12076ed42c311b9d0bccfb84c78a347e0c45004526deb62ff70b8b173baea', null, '692528104', null, null, null, '24bd3b633e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:41', '2019-03-04 19:10:41');
INSERT INTO `c_user` VALUES ('253eab003e6e11e9a891a0d3c10f2d5a', '502', '720149137', '王志伟', '3a44c634ed4a61da9d702fc62ae2313413d49c471c4ae9da0d41af3eaa472d8f', null, '720149137', null, null, null, '253c9bea3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:42', '2019-03-04 19:10:42');
INSERT INTO `c_user` VALUES ('27a5a2583e6e11e9a891a0d3c10f2d5a', '503', 'ma5dfc7p1', '林茏', '0bfe7b6313d45a1ce53000e7a0a828f1fd152ca0a13815e33cbc2d6250406b8b', null, 'ma5dfc7p1', null, null, null, '279c76063e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:46', '2019-03-04 19:10:46');
INSERT INTO `c_user` VALUES ('2823b0833e6e11e9a891a0d3c10f2d5a', '504', '279392514', '郑身周', '962a7a4669d8c9db858ce8314046a3d9c4e1b577f4c0fc0d330b33afb7bb6425', null, '279392514', null, null, null, '28207e553e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:47', '2019-03-04 19:10:47');
INSERT INTO `c_user` VALUES ('28335b8d3e6e11e9a891a0d3c10f2d5a', '505', '192191525', '葛栋栋', '8c825241175eca0f6a0143047ef5b5a325a4f8e9dc1bea4815db298982cb7ec5', null, '192191525', null, null, null, '283295f83e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:47', '2019-03-04 19:10:47');
INSERT INTO `c_user` VALUES ('28d488023e6e11e9a891a0d3c10f2d5a', '506', '196270351', '卢宜祥', 'c1fe765d50b64586aace6f2f004fa1e5168117186f0978a4cccd0a0f4687914c', null, '196270351', null, null, null, '28d3a66d3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:48', '2019-03-04 19:10:48');
INSERT INTO `c_user` VALUES ('29141d563e6e11e9a891a0d3c10f2d5a', '507', 'ma5dccpl7', '张飞', 'a253081810dae05942dbd463845ff348e0bf947a993a136db464eaefc111fcbf', null, 'ma5dccpl7', null, null, null, '2906d5793e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:49', '2019-03-04 19:10:49');
INSERT INTO `c_user` VALUES ('2ac5387e3e6e11e9a891a0d3c10f2d5a', '508', '665899831', '黄莹', '87879863ce2c61460ad28d6100f8da32213e799178791bf7c1e41dd46c59e20a', null, '665899831', null, null, null, '2aa459653e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:51', '2019-03-04 19:10:51');
INSERT INTO `c_user` VALUES ('2b66d9573e6e11e9a891a0d3c10f2d5a', '509', '007543278', '刘军', '95edb425428313d271b179d070f89ef1fd4809a51cdf96a9df1a82fc685a00f8', null, '007543278', null, null, null, '2b5e61f33e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:52', '2019-03-04 19:10:52');
INSERT INTO `c_user` VALUES ('2bb7dcc83e6e11e9a891a0d3c10f2d5a', '510', '766379309', '曹清松', '16698b3b9cd5aef81d7c30f8ed285f317d82d0d6debd40e3ff777d8d0ccc91cd', null, '766379309', null, null, null, '2baee02b3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:53', '2019-03-04 19:10:53');
INSERT INTO `c_user` VALUES ('2c2cd14e3e6e11e9a891a0d3c10f2d5a', '511', '281887241', '宋哲', 'f1ad450ebceffb326367af21279a10ab9889b9a3dc2910665c5903850cd7928a', null, '281887241', null, null, null, '2c25dc833e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:54', '2019-03-04 19:10:54');
INSERT INTO `c_user` VALUES ('2c7152cc3e6e11e9a891a0d3c10f2d5a', '512', '192184157', '邓永智', '8f3048d18945f71950a5ce88a012cb15a82016a18d8863fa57a921c8260041c1', null, '192184157', null, null, null, '2c709c393e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:54', '2019-03-04 19:10:54');
INSERT INTO `c_user` VALUES ('2c9d75dc3e6e11e9a891a0d3c10f2d5a', '513', '192244260', '', '54b743d9af70f7d0b904092df02a822e91c22ad16ea43a1283efe43f7ce60f2f', null, '192244260', null, null, null, '2c910aab3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:54', '2019-03-04 19:10:54');
INSERT INTO `c_user` VALUES ('2d517c703e7411e9b648507b9d9e8623', '713', 'test4', null, 'b00ef839598b2030c0fa36dcd94ecddd6c5b58c21117c1992e2024c011e86d5a', null, '13790433133', null, null, null, '8d1539263e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:53:49', '2019-03-04 19:53:49');
INSERT INTO `c_user` VALUES ('2df95e103e6e11e9a891a0d3c10f2d5a', '514', '192174135', '陈玉刚', '33c4df95f54ad5a842080f651d5e60f00d99ee64a64b242c495af73c8f05a243', null, '192174135', null, null, null, '2df0408c3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:57', '2019-03-04 19:10:57');
INSERT INTO `c_user` VALUES ('2ec93671363f11e985e9507b9d9e8623', '2', 'ftAdmin', '福田区住建局管理员', '4b67376e3c830733bc46ba721d2e8c073f2055b6e58eb1bc20eb6d652c9185e9', null, '13790434287', null, null, null, 'd1c74fec363b11e985e9507b9d9e8623', null, '1', '1', '1', '1', null, null, '2019-02-22 09:14:21', '2019-02-22 09:14:21');
INSERT INTO `c_user` VALUES ('2f4810a83e6e11e9a891a0d3c10f2d5a', '515', '007548570', '胡敬东', 'c806e67a71d9dea99577ff683ced1723bff08e11e72b92bd3fb272ffac3620fc', null, '007548570', null, null, null, '2f393da43e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:10:59', '2019-03-04 19:10:59');
INSERT INTO `c_user` VALUES ('2ff7a54a3e6e11e9a891a0d3c10f2d5a', '516', '192350768', '李岳应', '45cd3f51a5116a0f020e034cb610f5c51ffec75e6167243961ca2da7ff2bf8f0', null, '192350768', null, null, null, '2fec6d573e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:00', '2019-03-04 19:11:00');
INSERT INTO `c_user` VALUES ('30757fe63e6e11e9a891a0d3c10f2d5a', '517', '797959533', '杨勤茂', '2acdd8978fb98def5e9a8444c15175a5398cfaebc6aeed4ce361c977e7746184', null, '797959533', null, null, null, '306f568a3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:01', '2019-03-04 19:11:01');
INSERT INTO `c_user` VALUES ('3085a86f3e6e11e9a891a0d3c10f2d5a', '518', '192196473', '于学韬', '85258958720a7adac3058aefced20beb3b3d3f073fcd76004110d38b576e264d', null, '192196473', null, null, null, '3084dcf73e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:01', '2019-03-04 19:11:01');
INSERT INTO `c_user` VALUES ('30d9f6b03e6e11e9a891a0d3c10f2d5a', '519', '19218056x', '李小卿', '43225515ff1ce764d556a66cb58c9c8f53cc8b33edd3cac8211da05e78db65ce', null, '19218056x', null, null, null, '30cd475b3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:02', '2019-03-04 19:11:02');
INSERT INTO `c_user` VALUES ('312bc3083e6e11e9a891a0d3c10f2d5a', '520', '192275227', '周彤', '201da914bbf4c2b6eb4436d75e9f81bae0525af888a32b64d974a04601049fd2', null, '192275227', null, null, null, '312513653e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:02', '2019-03-04 19:11:02');
INSERT INTO `c_user` VALUES ('317b83c63e6e11e9a891a0d3c10f2d5a', '521', '100018574', '吴向东', '9bdbeec070b540d6b56c4a9edf728ecdc2b6260e87624340e47b6c6ba0461196', null, '100018574', null, null, null, '3174b0ce3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:03', '2019-03-04 19:11:03');
INSERT INTO `c_user` VALUES ('31d8f7323e6e11e9a891a0d3c10f2d5a', '522', '764989728', '郑康豪', '8c9a3b69cf0cdded66ac981ace79103be9b7541f70ea80bd54799c72d0b069fa', null, '764989728', null, null, null, '31c87f083e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:03', '2019-03-04 19:11:03');
INSERT INTO `c_user` VALUES ('324ee6623e6e11e9a891a0d3c10f2d5a', '523', '192204621', '陈汉强', '9e30f4960f803e6e4be92f61d44c03a094047f9bd1ba81aa9853783f1c75f82e', null, '192204621', null, null, null, '324e36433e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:04', '2019-03-04 19:11:04');
INSERT INTO `c_user` VALUES ('32605b743e6e11e9a891a0d3c10f2d5a', '524', '100024296', '邱时秒', '12b7ac8eb061b6614b98db3e43635ccb893e62f9f62d376e7f1bd3c1f480ad2a', null, '100024296', null, null, null, '325d3c213e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:04', '2019-03-04 19:11:04');
INSERT INTO `c_user` VALUES ('32ae71863e6e11e9a891a0d3c10f2d5a', '525', '007543243', '綦文生', '97de195c267a0fb3ec4711d1e6d2900f58e859ccbb50ca871ba17566807b4965', null, '007543243', null, null, null, '32a1346f3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:05', '2019-03-04 19:11:05');
INSERT INTO `c_user` VALUES ('3341f08d3e6e11e9a891a0d3c10f2d5a', '526', '892223241', '刘澎湃', 'dcbaf30b66301ba492b1c7818d9fd0bba5d21bcaab7f4ad43ab646860afd58e0', null, '892223241', null, null, null, '3335e41f3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:06', '2019-03-04 19:11:06');
INSERT INTO `c_user` VALUES ('338ce6223e6e11e9a891a0d3c10f2d5a', '527', '214401707', '中国建筑第四工程局有限公司', '5b176ec12e31278a910d1ac9db4d85ec5aebea679946fc7a249b62961fdc5a5e', null, '214401707', null, null, null, '3383f41b3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:06', '2019-03-04 19:11:06');
INSERT INTO `c_user` VALUES ('341f2e903e6e11e9a891a0d3c10f2d5a', '528', '192227495', '胡林慧', 'd2e6a8ccd4d757ef3151c82b5bf9c331833466cc19b6512eedc6a3920b167fc1', null, '192227495', null, null, null, '341929753e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:07', '2019-03-04 19:11:07');
INSERT INTO `c_user` VALUES ('34b67f283e6e11e9a891a0d3c10f2d5a', '529', '748870399', '李南峰', '1eb0dd6407441a34032eed9299f3b435490cbed13b6401dcbb22b84c208786f4', null, '748870399', null, null, null, '34b0aa053e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:08', '2019-03-04 19:11:08');
INSERT INTO `c_user` VALUES ('352cb0643e6e11e9a891a0d3c10f2d5a', '530', '192317634', '王献', 'a599b3ca6d47114d59662014275c4536f77d3709760a490515c5ad9b9e0c16ad', null, '192317634', null, null, null, '352b40203e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:09', '2019-03-04 19:11:09');
INSERT INTO `c_user` VALUES ('354edd043e6e11e9a891a0d3c10f2d5a', '531', '190336153', '郭学荣', 'f594a44a316e1f5d62df279dcf65b2bf00365a9e6c622450d27c36fd8c999bf4', null, '190336153', null, null, null, '354e08f03e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:09', '2019-03-04 19:11:09');
INSERT INTO `c_user` VALUES ('35981c2c3e6e11e9a891a0d3c10f2d5a', '532', 'g34788576', '张雅婷', '1575d80947d6dafd979380e2fe0bed433ad851a4b7bb373e4fae5b4b9028487b', null, 'g34788576', null, null, null, '3580cea63e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:10', '2019-03-04 19:11:10');
INSERT INTO `c_user` VALUES ('36a10e593e6e11e9a891a0d3c10f2d5a', '533', '788316245', '谢文云', '78b964aae8a81dee7c9ede3c8d9384214f056074b99a31c39885248c4ca63f3e', null, '788316245', null, null, null, '3697113e3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:11', '2019-03-04 19:11:11');
INSERT INTO `c_user` VALUES ('3746d8273e6e11e9a891a0d3c10f2d5a', '534', '631722739', '彭水清', '4a7010c9e530591b571f6fa002dcfb542837a148a60683ef0573c93ee48db412', null, '631722739', null, null, null, '3744540d3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:12', '2019-03-04 19:11:12');
INSERT INTO `c_user` VALUES ('375d53873e6e11e9a891a0d3c10f2d5a', '535', '754291430', '邵立华', '91765d8082a17714eb95dfa4727e172e8fd7866a38aeb8fbad519f33fc4f67a3', null, '754291430', null, null, null, '375c8b1a3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:12', '2019-03-04 19:11:12');
INSERT INTO `c_user` VALUES ('38a453233e6e11e9a891a0d3c10f2d5a', '536', '082493485', '于淼', '7a37279ddd17e933bfd51f3d3cfd3cddb1e25c859250aeb8e46eb92113268133', null, '082493485', null, null, null, '388c0bd33e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:15', '2019-03-04 19:11:15');
INSERT INTO `c_user` VALUES ('39d5558d3e6e11e9a891a0d3c10f2d5a', '537', '359381604', '黄晓华', '9c8698802c464cdd8c53b646e6576b747abf5be9e48d40cb303f0ec4dc61aebd', null, '359381604', null, null, null, '39cf119e3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:17', '2019-03-04 19:11:17');
INSERT INTO `c_user` VALUES ('3a29b1093e6e11e9a891a0d3c10f2d5a', '538', 'ma5drx064', '胡亚萌', '64f3325aa4343caef94cb9cf8f00b2197061fb749c5787754db0fbf5d1f3f356', null, 'ma5drx064', null, null, null, '3a2035993e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:17', '2019-03-04 19:11:17');
INSERT INTO `c_user` VALUES ('3ad2f5e53e6e11e9a891a0d3c10f2d5a', '539', 'ma5ec8g32', '熊钢泉', 'df9d28365048e3ba2fa429dc1e755bfefb05674b326bf0d16f0a582fd8eea5a8', null, 'ma5ec8g32', null, null, null, '3ac7c0463e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:18', '2019-03-04 19:11:18');
INSERT INTO `c_user` VALUES ('3b214de33e6e11e9a891a0d3c10f2d5a', '540', '708441151', '陈金鸿', '278bbaad9db7de789c8393cbf779cdf8dbbc19380b3d22b7903be284fdb38666', null, '708441151', null, null, null, '3b1b0edd3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:19', '2019-03-04 19:11:19');
INSERT INTO `c_user` VALUES ('3bbb4a983e6e11e9a891a0d3c10f2d5a', '541', '70848379X', '陈永荘', '389898476b0ed7341d7778161a8f040feb9b0d3e2b665df7598e390d063d37a7', null, '70848379X', null, null, null, '3bb4719d3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:20', '2019-03-04 19:11:20');
INSERT INTO `c_user` VALUES ('3ce608903e6e11e9a891a0d3c10f2d5a', '542', '790403460', '赵明广', 'f165677c829aff2a5dc2ca76c478b0c9b89a00e20711b066303508e554738993', null, '790403460', null, null, null, '3cd49c373e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:22', '2019-03-04 19:11:22');
INSERT INTO `c_user` VALUES ('3d8a88063e6e11e9a891a0d3c10f2d5a', '544', '192211733', '林恢琦', '5408eded99ec072bc37c2e8d8390c5336140c7a9bf56b4f8745fccead23b3a3b', null, '192211733', null, null, null, '3d7ed7803e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:23', '2019-03-04 19:11:23');
INSERT INTO `c_user` VALUES ('3f292eba3e6e11e9a891a0d3c10f2d5a', '545', '192185790', '王思思', '52afc471aca9d0ac125503201ed72ff20194d9dd51ed1706164ac2a41846b502', null, '192185790', null, null, null, '3f169c3d3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:26', '2019-03-04 19:11:26');
INSERT INTO `c_user` VALUES ('3fb1e2a33e6e11e9a891a0d3c10f2d5a', '546', '192326629', '李其龙', '5566db532d81951b62e7f59c745096418a14cc97eadb41329afcc70a2398c351', null, '192326629', null, null, null, '3fb11a463e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:26', '2019-03-04 19:11:26');
INSERT INTO `c_user` VALUES ('3fc3ead33e6e11e9a891a0d3c10f2d5a', '547', '192455703', '朱红梅', '09204402e61bddf6902b3dd1c4c9f4e545e939b744c4ba9b6c2574f9e624f40e', null, '192455703', null, null, null, '3fc2b0d13e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:27', '2019-03-04 19:11:27');
INSERT INTO `c_user` VALUES ('404224663e6e11e9a891a0d3c10f2d5a', '548', '102344648', '樊景平', '4b41e98ed61fe2a72af3d3b9e7b45f51e03a6424d7bfcfee120bc5ea2332c251', null, '102344648', null, null, null, '404172ed3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:27', '2019-03-04 19:11:27');
INSERT INTO `c_user` VALUES ('406eed403e6e11e9a891a0d3c10f2d5a', '549', '770300026', '周光明', 'b78bf382ab21adeed4f958fbf07484bd4e95dc514a4dcc8c12847d759a667243', null, '770300026', null, null, null, '406bbfc23e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:28', '2019-03-04 19:11:28');
INSERT INTO `c_user` VALUES ('4083605e3e6e11e9a891a0d3c10f2d5a', '550', '192193037', '鲍昭强', '3e894b2573db1c316c9dd358ada02d639fdcceb37405af4948cef445949957d2', null, '192193037', null, null, null, '4082a74d3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:28', '2019-03-04 19:11:28');
INSERT INTO `c_user` VALUES ('40bead413e6e11e9a891a0d3c10f2d5a', '551', '192360376', '黄新权', '900d9d90f1b6476f24f3f556e06a7333e5ae2b9ac2e6d3718eca0e5df81fbb8d', null, '192360376', null, null, null, '40a060463e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:28', '2019-03-04 19:11:28');
INSERT INTO `c_user` VALUES ('41a23eec3e6e11e9a891a0d3c10f2d5a', '552', '715288028', '朱德昌', 'eddc4748a224b44bbfa4de852ca645af1ec0217e05daeac8cfc8ad4a8f20c106', null, '715288028', null, null, null, '41a195043e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:30', '2019-03-04 19:11:30');
INSERT INTO `c_user` VALUES ('427a0e9b3e6e11e9a891a0d3c10f2d5a', '553', '63159284x', '邱昊成', '85507205317c1d7b85efe70b859c6ab414d9edda3b18f604dabbe905f6aa94ef', null, '63159284x', null, null, null, '425de7363e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:31', '2019-03-04 19:11:31');
INSERT INTO `c_user` VALUES ('4317216d3e6e11e9a891a0d3c10f2d5a', '554', '739199345', '丁有潢', 'e426f8ede19854a802ac694054cf31bd86c8920b2934d54e8f96bf50424ef694', null, '739199345', null, null, null, '431070f23e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:32', '2019-03-04 19:11:32');
INSERT INTO `c_user` VALUES ('43b3f4643e6e11e9a891a0d3c10f2d5a', '555', '618844205', '张大伟', '5101a4faa102490ad7383e5f9ee0e29e5e3e92ed6eb889ebd04d7c9e0b88bca2', null, '618844205', null, null, null, '439f74923e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:33', '2019-03-04 19:11:33');
INSERT INTO `c_user` VALUES ('4445662d3e6e11e9a891a0d3c10f2d5a', '556', '192211346', '饶江山', 'cccd10ca0c5a2130994fbb3d7095003f6e4d705eefab4a00e091874db3741137', null, '192211346', null, null, null, '443940be3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:34', '2019-03-04 19:11:34');
INSERT INTO `c_user` VALUES ('44b8f1363e6e11e9a891a0d3c10f2d5a', '557', '279525364', '武国强', '31b9b9462733ab49091db125e40d26578c291385db739bb26d95193f1f3a7468', null, '279525364', null, null, null, '44b848723e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:35', '2019-03-04 19:11:35');
INSERT INTO `c_user` VALUES ('44f99e2b3e6e11e9a891a0d3c10f2d5a', '558', '192181570', '王杰', '662087f3bdec324e7cf01e1d78141b89be76fe95be2d5ef8ef44ea8cd010135d', null, '192181570', null, null, null, '44df7cb13e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:35', '2019-03-04 19:11:35');
INSERT INTO `c_user` VALUES ('457bbd373e6e11e9a891a0d3c10f2d5a', '559', '192173554', '肖丹丹', '26e100bb6ec01b2dcb634ca98570c6371dd57f7289cdcae6e9ddfc9b7e33b067', null, '192173554', null, null, null, '45706fe13e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:36', '2019-03-04 19:11:36');
INSERT INTO `c_user` VALUES ('477199c2697e11e9a8466c4b904ca00a', '1060', 'zxh', '翟晓航', '{5cKqO3url0/txSF/kH1NRcAJ7q/M8H8GHsap3iqkHxI=}a093fa1cd018df5acc082ecb9f668a75e60da64cd319109a546b11b41bec23dd', '807126439@qq.com', '15217126379', '22312302', null, '111', '013200c93e6f11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-04-28 06:24:27', '2019-04-28 06:24:27');
INSERT INTO `c_user` VALUES ('47bdcf613e6e11e9a891a0d3c10f2d5a', '560', '455754706', '陈寅', '3cbf9b78dbb5e7679c2f642c75ab7360b972f27159da471ef265a7beb359cf28', null, '455754706', null, null, null, '4788bd553e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:40', '2019-03-04 19:11:40');
INSERT INTO `c_user` VALUES ('4864768c3e6e11e9a891a0d3c10f2d5a', '561', '192301288', '陈虹', 'd8f16c4f9542d2c54a21c952eb6e7bfff8a2f6ac671568c3e9e475a61f684750', null, '192301288', null, null, null, '485919b03e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:41', '2019-03-04 19:11:41');
INSERT INTO `c_user` VALUES ('48e1f4c93e6e11e9a891a0d3c10f2d5a', '562', '192244033', '张杰', '5ff0dcc65a780bcb8ec81854ac1fd534bcff68dfcab51b7b544b9641c3b51968', null, '192244033', null, null, null, '48e139b43e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:42', '2019-03-04 19:11:42');
INSERT INTO `c_user` VALUES ('48f90cfa3e6e11e9a891a0d3c10f2d5a', '563', '682036851', '李宏艳', '1bedd956076b987b825c99205a15b83938c4f78ff0c9921f34c08e62fc4e816b', null, '682036851', null, null, null, '48f489273e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:42', '2019-03-04 19:11:42');
INSERT INTO `c_user` VALUES ('497e67593e6e11e9a891a0d3c10f2d5a', '564', '279522497', '梁永富', 'c12d8884e52bbf1c869c53579a9ae2517b3b5214322bef528c971458f6f1ed7c', null, '279522497', null, null, null, '4978c8093e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:43', '2019-03-04 19:11:43');
INSERT INTO `c_user` VALUES ('4995e6553e6e11e9a891a0d3c10f2d5a', '565', '19219518X', '席宗君', '79d8ad94b1ffe00d4e270fe213a126e84ae8656dea64738f75bd1104e5bb60c1', null, '19219518X', null, null, null, '499513853e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:43', '2019-03-04 19:11:43');
INSERT INTO `c_user` VALUES ('4a5301cf3e6e11e9a891a0d3c10f2d5a', '566', '192171137', '夏庆明', 'ca136bc0f0d1fe738a46e9e351b812d4bb03586c9d7fbdc9a4260b9ecb895a73', null, '192171137', null, null, null, '4a4acbb43e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:44', '2019-03-04 19:11:44');
INSERT INTO `c_user` VALUES ('4b2d0c203e6e11e9a891a0d3c10f2d5a', '567', '007542769', '王宇', '02bc01c9f257e2f2974ba5c617f4cddf20a8ae46716a143f9fa0f331944278c9', null, '007542769', null, null, null, '4b1605ed3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:46', '2019-03-04 19:11:46');
INSERT INTO `c_user` VALUES ('4bbc231e3e6e11e9a891a0d3c10f2d5a', '568', '763453358', '张琦', '33b86eb8c5389acf96aa16747a991bb0bfa0445f94a18b3ab2619bdc0e530237', null, '763453358', null, null, null, '4bb475713e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:47', '2019-03-04 19:11:47');
INSERT INTO `c_user` VALUES ('4c342ed23e6e11e9a891a0d3c10f2d5a', '569', '741239633', '孙昌忠', '255558d784e7fb73984f7dcc7143117d529f50f9a9640f1958b7c03dd1dd76bd', null, '741239633', null, null, null, '4c3385a03e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:47', '2019-03-04 19:11:47');
INSERT INTO `c_user` VALUES ('4c5f92943e6e11e9a891a0d3c10f2d5a', '570', '729875469', '黄瑶瑶', 'd1caf6c67a33fe8477b04d9d0e826779b2b43ed1687b64bb8d91625ec49c4ec3', null, '729875469', null, null, null, '4c5c934d3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:48', '2019-03-04 19:11:48');
INSERT INTO `c_user` VALUES ('4d49a65f3e6e11e9a891a0d3c10f2d5a', '571', 'ma5f3h598', '张航', 'a9d4df1012e346fb64476d6b37f0ea084ffea2084c418b52743e95159a15c476', null, 'ma5f3h598', null, null, null, '4d3e18173e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:49', '2019-03-04 19:11:49');
INSERT INTO `c_user` VALUES ('4d97426e3e6e11e9a891a0d3c10f2d5a', '572', 'ma5f3tca3', '王剑', '821d5c9771c3feced9d9341992aebd5c4d2ce23cf2b4bd10281f3f133c42f1d3', null, 'ma5f3tca3', null, null, null, '4d90be033e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:50', '2019-03-04 19:11:50');
INSERT INTO `c_user` VALUES ('4f77e0553e6e11e9a891a0d3c10f2d5a', '573', '732068246', '冷冬丽', '07011e9ce0e02d3b3c568ff0cc115182ac95edb9854a70972784a6e5be841b66', null, '732068246', null, null, null, '4f7017753e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:53', '2019-03-04 19:11:53');
INSERT INTO `c_user` VALUES ('5006a1943e6e11e9a891a0d3c10f2d5a', '574', '192287527', '肖文滔', 'b955db3cb9312199f601d4198d97218d4cc1222c56b9d90125380214ff61daff', null, '192287527', null, null, null, '5001059f3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:54', '2019-03-04 19:11:54');
INSERT INTO `c_user` VALUES ('511122ba3e6e11e9a891a0d3c10f2d5a', '575', 'ma5edm9fx', '张武', '478e06da7b206813851db52d7274c6270359f546406122dd309f6d7c6249540d', null, 'ma5edm9fx', null, null, null, '50e0c56e3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:56', '2019-03-04 19:11:56');
INSERT INTO `c_user` VALUES ('51bf682e3e6e11e9a891a0d3c10f2d5a', '576', 'ma5ede8m9', '林辉', '47428fb7fd5ae31d65bfc9acc60abb0a579cf78798d0bc9dc9b4751422d283f4', null, 'ma5ede8m9', null, null, null, '5188fbc43e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:57', '2019-03-04 19:11:57');
INSERT INTO `c_user` VALUES ('5216a1003e6e11e9a891a0d3c10f2d5a', '577', '678556192', '林宏贤', '27bd4c2ee13925ddd2dad80e9fdc649fbcf7c0114162f4e8e6457dae9f662e55', null, '678556192', null, null, null, '520b518f3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:57', '2019-03-04 19:11:57');
INSERT INTO `c_user` VALUES ('52acde793e6e11e9a891a0d3c10f2d5a', '578', 'ma5dfmt63', '魏冬青', '830433acbd96ff3b0fd46c6771fe941fd6179be38efbbbf95c24d34bf4688443', null, 'ma5dfmt63', null, null, null, '52a65bac3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:58', '2019-03-04 19:11:58');
INSERT INTO `c_user` VALUES ('533909d23e6e11e9a891a0d3c10f2d5a', '579', '335210990', '刘勇', 'f8a0b04d0ed5ec3e7d993a6c85108e05fa6bd8ad64d8a487fcb6e9e5392dfe84', null, '335210990', null, null, null, '532b55e33e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:11:59', '2019-03-04 19:11:59');
INSERT INTO `c_user` VALUES ('53b5672f3e6e11e9a891a0d3c10f2d5a', '580', '192260957', '阚立明', 'a018bd973341ea640e58d510fc38cfb0d680891637646433a02bc959bae40225', null, '192260957', null, null, null, '53b2d93d3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:00', '2019-03-04 19:12:00');
INSERT INTO `c_user` VALUES ('53c766f43e6e11e9a891a0d3c10f2d5a', '581', '710921189', '王海波', 'd4777a243e7396f34f5a0a62bbfb01a88e5272685986b24ac798e8e9166b6a31', null, '710921189', null, null, null, '53c3731a3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:00', '2019-03-04 19:12:00');
INSERT INTO `c_user` VALUES ('544938263e6e11e9a891a0d3c10f2d5a', '582', '752520578', '钟百胜', 'd2c9d90b5e7b5af239e58c278b40d7c2d961c611a6d694b67991bbea803bb44e', null, '752520578', null, null, null, '543102543e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:01', '2019-03-04 19:12:01');
INSERT INTO `c_user` VALUES ('54f86cdb3e6e11e9a891a0d3c10f2d5a', '583', 'ma5ewa0m0', '马晓昇', 'a125360765b7c65e4f5b3ed45419ad1d384c94ad86598523ac2ddb37904ed2c6', null, 'ma5ewa0m0', null, null, null, '54f1964d3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:02', '2019-03-04 19:12:02');
INSERT INTO `c_user` VALUES ('55e816d43e6e11e9a891a0d3c10f2d5a', '584', '192360878', '张莉', '75bff76df2037d8298cdbf8f2f65c1ed81d816b4d4037c26bcec64324aea8eac', null, '192360878', null, null, null, '55e76eb63e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:04', '2019-03-04 19:12:04');
INSERT INTO `c_user` VALUES ('560860673e6e11e9a891a0d3c10f2d5a', '585', '192266371', '祝艳会', '380295de113c7b242ad4ef38e090b012b226a05f3d2338d6eeef9eb4db5aad12', null, '192266371', null, null, null, '5607ad003e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:04', '2019-03-04 19:12:04');
INSERT INTO `c_user` VALUES ('5b2673b93e6e11e9a891a0d3c10f2d5a', '586', '708434015', '崔明亮', '0e0882c5d931be681a21d5694d6aa354bda7ea8d6380721ce736990312e68709', null, '708434015', null, null, null, '5b1d42ce3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:13', '2019-03-04 19:12:13');
INSERT INTO `c_user` VALUES ('5c2f01023e6e11e9a891a0d3c10f2d5a', '587', '192193061', '翟波', '202c1c3e94bebac898b12dd9a2c891aa34a4d92533566cb18f144fb63dcbb50e', null, '192193061', null, null, null, '5c2e4d5e3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:14', '2019-03-04 19:12:14');
INSERT INTO `c_user` VALUES ('5c4192f23e6e11e9a891a0d3c10f2d5a', '588', '192388635', '马兴', '35c5fef9c42eefbe136db72fde7d61b5b1ba26c63c4c1c75fc377444e36ae372', null, '192388635', null, null, null, '5c40d51e3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:14', '2019-03-04 19:12:14');
INSERT INTO `c_user` VALUES ('5c57d9733e6e11e9a891a0d3c10f2d5a', '589', '192178451', '王晶', '7b3b716c8935c036bcf318c77dbac81d2b77ef525f06225f3880b8037295f115', null, '192178451', null, null, null, '5c4fedbd3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:15', '2019-03-04 19:12:15');
INSERT INTO `c_user` VALUES ('5cd3c8a23e6e11e9a891a0d3c10f2d5a', '590', '708437750', '郑莲', 'd7819a658a42d002ba7e74a608b1c9b121d3f66f2c5aa676c9ecb9112038fe89', null, '708437750', null, null, null, '5cd141a73e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:15', '2019-03-04 19:12:15');
INSERT INTO `c_user` VALUES ('5d0f9c393e6e11e9a891a0d3c10f2d5a', '591', '685383154', '王军涛', '7f17b37719d2acaa0c10ff653dfc0f7124bdcfc828317cc54f33b102ae5e9607', null, '685383154', null, null, null, '5d0de4b53e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:16', '2019-03-04 19:12:16');
INSERT INTO `c_user` VALUES ('62949c553e6e11e9a891a0d3c10f2d5a', '592', '192196991', '贺超', '440e39075acad56b8e6bbb8e3b82e106a630372faa46a5d5375df2e9655f348e', null, '192196991', null, null, null, '628e9b7a3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:25', '2019-03-04 19:12:25');
INSERT INTO `c_user` VALUES ('65670d6b3e6e11e9a891a0d3c10f2d5a', '593', 'ma5f1uay9', '倪玲', 'abb09ca97c7d4773f1a071530d986ff9360134af8050a1108d2032b6730d5362', null, 'ma5f1uay9', null, null, null, '655e66b23e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:30', '2019-03-04 19:12:30');
INSERT INTO `c_user` VALUES ('65e4483b3e6e11e9a891a0d3c10f2d5a', '594', '774113455', '闫德成', 'aa6def7d0cab6c2653d3519bda5a0ef36076dcec3f79840a9f20a0b9fa37fb12', null, '774113455', null, null, null, '65e39ab43e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:31', '2019-03-04 19:12:31');
INSERT INTO `c_user` VALUES ('65fa1a0a3e6e11e9a891a0d3c10f2d5a', '595', '708418621', '周志坚', 'c541e5ec6ae7eca7fe8310f87f129ce96dc61b62e0aa34ceeb44e86d93f423f3', null, '708418621', null, null, null, '65f94ef53e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:31', '2019-03-04 19:12:31');
INSERT INTO `c_user` VALUES ('6623017d3e6e11e9a891a0d3c10f2d5a', '596', '691182850', '谢锦辉', 'b61e3399f96ddea1301b1b047194d8ff1e711fd49056fc43d74f279351669c6d', null, '691182850', null, null, null, '661b8da53e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:31', '2019-03-04 19:12:31');
INSERT INTO `c_user` VALUES ('67b964583e6e11e9a891a0d3c10f2d5a', '597', '722604658', '林小和', '5774e7e84fb8a19a875c107cc207b30c82b5fdada4ac4271fa8f1597d1507680', null, '722604658', null, null, null, '67b8850e3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:34', '2019-03-04 19:12:34');
INSERT INTO `c_user` VALUES ('67d6d3703e6e11e9a891a0d3c10f2d5a', '598', 'ma5d9k247', '江伟楠', '7b7be2b6489d7b125b9270bb6e8199887c210b7d0572be07531a4ea085a3ef40', null, 'ma5d9k247', null, null, null, '67d01ac73e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:34', '2019-03-04 19:12:34');
INSERT INTO `c_user` VALUES ('691e2c953e6e11e9a891a0d3c10f2d5a', '599', '279399062', '刘盛敏', '3c2733784dfa7cee6646bd3c399e8fae497c9a6b041bad2e69ac81fafe99f93e', null, '279399062', null, null, null, '691d70063e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:36', '2019-03-04 19:12:36');
INSERT INTO `c_user` VALUES ('69476d193e6e11e9a891a0d3c10f2d5a', '600', '194670474', '涂强强', '70a8fedc25a65c8af17c8c3e0d8f6bd83522cc00d604057ddcb9458539823b96', null, '194670474', null, null, null, '694643373e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:36', '2019-03-04 19:12:36');
INSERT INTO `c_user` VALUES ('6964d7113e6e11e9a891a0d3c10f2d5a', '601', '59071394x', '王珣', '303569774160aeebeeb43aa3e9867132263d9d58fbe278163f1f5eb66a6930f6', null, '59071394x', null, null, null, '695924973e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:36', '2019-03-04 19:12:36');
INSERT INTO `c_user` VALUES ('69d9ee683e6e11e9a891a0d3c10f2d5a', '602', '633203465', '杨昱源', '87cf2c2a938ad58f16cd1b14bcfdd788f20b79878c5a05b8ab87173054fbff4f', null, '633203465', null, null, null, '69d93f763e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:37', '2019-03-04 19:12:37');
INSERT INTO `c_user` VALUES ('69edc1b73e6e11e9a891a0d3c10f2d5a', '603', '279394851', '唐卫军', 'dcf3ebd4dec0a275a9e78058c8f1dbc52a447a1db03f7217ec59a4acb72e8710', null, '279394851', null, null, null, '69ed023f3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:37', '2019-03-04 19:12:37');
INSERT INTO `c_user` VALUES ('6a45ecf13e6e11e9a891a0d3c10f2d5a', '604', '192239795', '朱万成', '45ad2f76322bc89be18bf4830658a44d0ef3f0471316c5a24463c13fd4a0aabe', null, '192239795', null, null, null, '6a3b506e3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:38', '2019-03-04 19:12:38');
INSERT INTO `c_user` VALUES ('6adb7d503e6e11e9a891a0d3c10f2d5a', '605', '19219737X', '刘伟', '27f5cd654d261bc5b9a29a606809b72fd45ccd7cd6e2a021827854a1b9a5160e', null, '19219737X', null, null, null, '6adab5dd3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:39', '2019-03-04 19:12:39');
INSERT INTO `c_user` VALUES ('6b0042183e6e11e9a891a0d3c10f2d5a', '606', '160113100', '魏礼清', '6bc161e1c8290656b548284c78dca3bda1529501266818ce1ad7d8cf2f08fd91', null, '160113100', null, null, null, '6aff59253e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:39', '2019-03-04 19:12:39');
INSERT INTO `c_user` VALUES ('6ba3c4963e6e11e9a891a0d3c10f2d5a', '607', 'ma5dmwr31', '徐疆南', '85b707b49c781cd6b32a7e54847230b80f2a9ec691d17a36dd14cf2bdac1e3ba', null, 'ma5dmwr31', null, null, null, '6b99471b3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:40', '2019-03-04 19:12:40');
INSERT INTO `c_user` VALUES ('6bf52e263e6e11e9a891a0d3c10f2d5a', '608', '192360392', '欧锐刚', '08b9be23a127dfd24c3c98d2350be2a1eb8c52e9ab625a0fd7d1ebbd9d18fc57', null, '192360392', null, null, null, '6bedbb3b3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:41', '2019-03-04 19:12:41');
INSERT INTO `c_user` VALUES ('6cd368533e6e11e9a891a0d3c10f2d5a', '609', '279521144', '李鹏', '363973aeda6c926e8328dad086849e53c13b9dd38f0604d3764655072e3801e5', null, '279521144', null, null, null, '6ccf17e13e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:42', '2019-03-04 19:12:42');
INSERT INTO `c_user` VALUES ('6cffff203e6e11e9a891a0d3c10f2d5a', '610', 'ma5dflbqx', '万小宇', '7c4311fc5b05ab02aada0302709e6d281ed1f418a854119d323bf7c50e008c1c', null, 'ma5dflbqx', null, null, null, '6ce985813e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:42', '2019-03-04 19:12:42');
INSERT INTO `c_user` VALUES ('6e1ef9f43e6e11e9a891a0d3c10f2d5a', '611', '192178427', '庄顺福', '4ab24082c0fc7f75d64c1676044589b1c0e19188719cad9c9abfcc86de18ea70', null, '192178427', null, null, null, '6ddc4aee3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:44', '2019-03-04 19:12:44');
INSERT INTO `c_user` VALUES ('6f2c00be3e6e11e9a891a0d3c10f2d5a', '612', '192337969', '叶家豪', '60db9571caeb951793dd1297bb49f0e1b88eaf1fe9a3dadc2377e5f57e78f8b8', null, '192337969', null, null, null, '6f1e4b083e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:46', '2019-03-04 19:12:46');
INSERT INTO `c_user` VALUES ('6fa56a9f3e6e11e9a891a0d3c10f2d5a', '613', '737967961', '张世', 'd7429d37f9848d8051b2494644a06701ce9151c6cc77aec6e717a2076b6da522', null, '737967961', null, null, null, '6fa4bb073e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:47', '2019-03-04 19:12:47');
INSERT INTO `c_user` VALUES ('6ffd9cc73e6e11e9a891a0d3c10f2d5a', '614', '736251689', '黄耀文', 'a53e7ec5739d2e94a4d2d642df195d3ba30b8e45c3746b6c7258be9351ef96b3', null, '736251689', null, null, null, '6ff3b0303e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:47', '2019-03-04 19:12:47');
INSERT INTO `c_user` VALUES ('704daa383e6e11e9a891a0d3c10f2d5a', '615', '319313850', '顾楠楠', '3f4a26dba9efadb48a907188d78d0eeaf5c3fa4d6631978f6c0e6bda60b6380f', null, '319313850', null, null, null, '7040b3b03e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:48', '2019-03-04 19:12:48');
INSERT INTO `c_user` VALUES ('70ee3aa73e6e11e9a891a0d3c10f2d5a', '616', '192441395', '金凡宇', 'b2fcdf2623937685e888fb2ac42ab5f5814e71eb3778f70b14e540ab59c059a6', null, '192441395', null, null, null, '70e9e5f23e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:49', '2019-03-04 19:12:49');
INSERT INTO `c_user` VALUES ('710ea46c3e6e11e9a891a0d3c10f2d5a', '617', '19218873X', '黄治中', '600b7c65625034b54a87b1dd18457878af6f53ef6dc1f6179add9a7b72835aaa', null, '19218873X', null, null, null, '710af0ae3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:49', '2019-03-04 19:12:49');
INSERT INTO `c_user` VALUES ('712b53253e6e11e9a891a0d3c10f2d5a', '618', '734165680', '朱结玉', 'f06b6fb872f7d8805378a7349e3f4d095719bb7f2ed9d0192947cd998d12f3f5', null, '734165680', null, null, null, '711dd0fa3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:49', '2019-03-04 19:12:49');
INSERT INTO `c_user` VALUES ('717eab583e6e11e9a891a0d3c10f2d5a', '619', '007542785', '刘柏廷', '13496029c36885606ce83eec91d8218633bbbd635b6d0db437100156f78cea8b', null, '007542785', null, null, null, '71764c533e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:50', '2019-03-04 19:12:50');
INSERT INTO `c_user` VALUES ('728675be3e6e11e9a891a0d3c10f2d5a', '620', '177727555', '张毅', '4b86ea8cfd7a3d0b73feb748af266db9524153bb889ba7785a48a28a9c9a5fd2', null, '177727555', null, null, null, '72853e513e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:52', '2019-03-04 19:12:52');
INSERT INTO `c_user` VALUES ('729e93863e6e11e9a891a0d3c10f2d5a', '621', '342599199', '龙宁宁', 'b470c134b143450f5891bbe4a20cfbe3cb799b43ea74ec095a172df78e3e8c8c', null, '342599199', null, null, null, '72951eea3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:52', '2019-03-04 19:12:52');
INSERT INTO `c_user` VALUES ('72b5ac673e6e11e9a891a0d3c10f2d5a', '622', '92359279N', '温坚生', '291378ca3f19d0a9d8034fa2a41caa47eac584c16a3e6bcb17f7de399bafabe9', null, '92359279N', null, null, null, '72a686063e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:52', '2019-03-04 19:12:52');
INSERT INTO `c_user` VALUES ('750467763e6e11e9a891a0d3c10f2d5a', '623', '192188473', '陈强', 'c03338bdfb23a4b0a877abfcd9440adb4e838049da72f9da4969180dfe3e420d', null, '192188473', null, null, null, '7503b18d3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:56', '2019-03-04 19:12:56');
INSERT INTO `c_user` VALUES ('751c7fa43e6e11e9a891a0d3c10f2d5a', '624', '192236666', '刘海波', '5f8d8be7abae98fbd20607bb5464d14a9d822b48bdd79249000770951ab72862', null, '192236666', null, null, null, '7513d2eb3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:12:56', '2019-03-04 19:12:56');
INSERT INTO `c_user` VALUES ('77d5e7fe3e6e11e9a891a0d3c10f2d5a', '625', '192199279', '黄飞飞', '2e0d35b470a14e7adaf5b6175073660456211c12ca292a2c2c31cfab7cc8ed35', null, '192199279', null, null, null, '77ab7ad43e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:01', '2019-03-04 19:13:01');
INSERT INTO `c_user` VALUES ('786b0c853e6e11e9a891a0d3c10f2d5a', '626', '279543829', '姚泓鑫', 'da79a0a89053f3a7a6d66b5b24bd9f06c7ac321ac63062301fab882f3866808b', null, '279543829', null, null, null, '784407e13e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:02', '2019-03-04 19:13:02');
INSERT INTO `c_user` VALUES ('78e633003e6e11e9a891a0d3c10f2d5a', '627', '456756316', '赵复忠', '76370f46aacda6bb886194a969bf48d7900a1580a406fcf55944ab4de26881ea', null, '456756316', null, null, null, '78e37e773e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:02', '2019-03-04 19:13:02');
INSERT INTO `c_user` VALUES ('78fb69df3e6e11e9a891a0d3c10f2d5a', '628', '715260594', '汤耀堂', '59bfb2deac07103fb5488d0af9b2c86348ab9541895ab0f0c51b36ea3155e059', null, '715260594', null, null, null, '78f8bf0f3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:03', '2019-03-04 19:13:03');
INSERT INTO `c_user` VALUES ('795bdb973e6e11e9a891a0d3c10f2d5a', '629', '727142966', '严海燕', '848f481bf3b9d2552d97119c6020ba58364caf05712cf74c75deebd1f1801ac7', null, '727142966', null, null, null, '7950e9793e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:03', '2019-03-04 19:13:03');
INSERT INTO `c_user` VALUES ('79caf4743e6e11e9a891a0d3c10f2d5a', '630', '689401305', '赵明', 'd6fb3068f63c91ff56ec7c6f78646134bea2ad258573f89c5a9b56e9df46dd84', null, '689401305', null, null, null, '79a9b0703e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:04', '2019-03-04 19:13:04');
INSERT INTO `c_user` VALUES ('7a6cb6053e6e11e9a891a0d3c10f2d5a', '631', '607355115', '罗江华', 'cd75beab4fb360641ac9b1fefb680f859b8298377345cd0265d6a5898a8f43c8', null, '607355115', null, null, null, '7a62bbd63e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:05', '2019-03-04 19:13:05');
INSERT INTO `c_user` VALUES ('7b8bc51f3e6e11e9a891a0d3c10f2d5a', '632', '618811147', '柳明', '5137f317d5b3b5334ae50fe76d049e4a9306b1b2c17c3e903c8fb1d5de4cc3f7', null, '618811147', null, null, null, '7b8706ba3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:07', '2019-03-04 19:13:07');
INSERT INTO `c_user` VALUES ('7f0919ac3e6e11e9a891a0d3c10f2d5a', '633', '618873567', '刘明颖', 'f08dabd45ef4c433010249b7c8395ba85f7fd8a41fdb0488667f46aa4db1ffcb', null, '618873567', null, null, null, '7ecbdc423e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:13', '2019-03-04 19:13:13');
INSERT INTO `c_user` VALUES ('7f94b7903e6e11e9a891a0d3c10f2d5a', '634', '192349118', '耿天来', 'edf65b6863cc0484d30fb0e39da61b60860b120dc0e1833a2f74e0a3511b302f', null, '192349118', null, null, null, '7f8cf8733e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:14', '2019-03-04 19:13:14');
INSERT INTO `c_user` VALUES ('7ff4b0163e6e11e9a891a0d3c10f2d5a', '635', '708596778', '丁建华', '986e1347ec09c734536ed98f938011326d7a39d6104048763ec5460645ad385c', null, '708596778', null, null, null, '7fe584af3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:14', '2019-03-04 19:13:14');
INSERT INTO `c_user` VALUES ('80af6a503e6e11e9a891a0d3c10f2d5a', '636', '71092841x', '廖晓喻', 'f70bbca3ef7adc0c538dc8e65c50727916665e803ac51dbc6fe669befe0c3c9f', null, '71092841x', null, null, null, '808cc1f03e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:16', '2019-03-04 19:13:16');
INSERT INTO `c_user` VALUES ('817a79803e6e11e9a891a0d3c10f2d5a', '637', '192204170', '蔡鹤', '617fa3f688fc9126181d48f7fcf6f13d02bb57afba19ad00486f999584ca3d47', null, '192204170', null, null, null, '817433b63e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:17', '2019-03-04 19:13:17');
INSERT INTO `c_user` VALUES ('819e60c23e6e11e9a891a0d3c10f2d5a', '638', '192214600', '曹四平', '69162b51c1e12a8c684579579f0e567faa03b49ea3e97067ae17eeafdc990247', null, '192214600', null, null, null, '818ed19c3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:17', '2019-03-04 19:13:17');
INSERT INTO `c_user` VALUES ('823b87133e6e11e9a891a0d3c10f2d5a', '639', '192244711', '周衍真', '9c84ea3dafa3b302d983f69aafbb088ae11837dc75a68447f4a29a47d609f0d9', null, '192244711', null, null, null, '82347a5a3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:18', '2019-03-04 19:13:18');
INSERT INTO `c_user` VALUES ('82a955be3e6e11e9a891a0d3c10f2d5a', '640', '192176333', '张永飞', 'd091761f803a071574818c9529f5d5e15962447384885ba4c0c1ff9712bbcb71', null, '192176333', null, null, null, '829e988b3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:19', '2019-03-04 19:13:19');
INSERT INTO `c_user` VALUES ('838ee8e73e6e11e9a891a0d3c10f2d5a', '641', '72854633X', '刘鹏', '035cb3d04af2a356f98754aa222a65041ff5cda39926198a8c2cb528099fcf40', null, '72854633X', null, null, null, '838bbb693e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:20', '2019-03-04 19:13:20');
INSERT INTO `c_user` VALUES ('85357fbe3e6e11e9a891a0d3c10f2d5a', '642', '782788356', '刘波', '9a624e3dc98b3bd7be08b74e73ad594e34915838aacee85053684eba53abd103', null, '782788356', null, null, null, '8533856a3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:23', '2019-03-04 19:13:23');
INSERT INTO `c_user` VALUES ('85a33c723e6e11e9a891a0d3c10f2d5a', '643', '192352376', '林翠妙', 'd2ab1829f22845cbc9010529d6790bd99a89e9dc6838b3b504649e32ff4240ab', null, '192352376', null, null, null, '859ac75c3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:24', '2019-03-04 19:13:24');
INSERT INTO `c_user` VALUES ('85f4915f3e6e11e9a891a0d3c10f2d5a', '644', '279307623', '黄康景', '0c7acdf91e28c119f6837ff72abb4837277ad12af3e5e13f353d80e4c22a29b3', null, '279307623', null, null, null, '85eb040e3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:24', '2019-03-04 19:13:24');
INSERT INTO `c_user` VALUES ('864229b23e6e11e9a891a0d3c10f2d5a', '645', '720313873', '李鑫宸', '144de7d6df14c1e812112801f2cf808d3ffb28d3354cf0125bf23a596b833fc2', null, '720313873', null, null, null, '863b2b643e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:25', '2019-03-04 19:13:25');
INSERT INTO `c_user` VALUES ('86b9794a3e6e11e9a891a0d3c10f2d5a', '646', '743644851', '浦恒铭', '9d1c4c516d64d3af6a89648b775c864a9b7b688014bb3482bf1bc84027bbc80e', null, '743644851', null, null, null, '86b7a9683e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:26', '2019-03-04 19:13:26');
INSERT INTO `c_user` VALUES ('86f75a293e6e11e9a891a0d3c10f2d5a', '647', '778785910', '戴庆祥', '59132f2628a0c2a3b377cf5a6243eaaa0a1e41007b71f541992da2dbd2c4e315', null, '778785910', null, null, null, '86f550c33e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:26', '2019-03-04 19:13:26');
INSERT INTO `c_user` VALUES ('871cd00a3e6e11e9a891a0d3c10f2d5a', '648', 'ma5eglnj5', '许瑜璇', 'fa0da2fcc1a8c68ee42948989da6d8cf57da5bfd802774deb30e8381186398da', null, 'ma5eglnj5', null, null, null, '870cffae3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:26', '2019-03-04 19:13:26');
INSERT INTO `c_user` VALUES ('87af89ad3e6e11e9a891a0d3c10f2d5a', '649', '192326370', '戴德斌', '20f3c8efc582efcae8b0db6b4002198b333197a64b91634b0403c9eaa1030fbe', null, '192326370', null, null, null, '87ae57e33e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:27', '2019-03-04 19:13:27');
INSERT INTO `c_user` VALUES ('87dc3b3f3e6e11e9a891a0d3c10f2d5a', '650', 'ma5epc8x9', '魏风光', '0976107aa24f842302a02b336f8acd420b410869f8bc2c4fe6a5d9c4aaec516f', null, 'ma5epc8x9', null, null, null, '87d049173e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:28', '2019-03-04 19:13:28');
INSERT INTO `c_user` VALUES ('894fe2ae3e6e11e9a891a0d3c10f2d5a', '651', '192376140', '王建生', '4b241056a85c9d9a3e00a81dbaae152a93b862fddd42326e24651592b76fa28d', null, '192376140', null, null, null, '894f2f903e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:30', '2019-03-04 19:13:30');
INSERT INTO `c_user` VALUES ('8998e0633e6e11e9a891a0d3c10f2d5a', '652', '19233838X', '黄芳兰', 'f5488bf1d2be5410d5e8cb0dc698c28bb973f1f55afbd83ed88e160c6b1c9a34', null, '19233838X', null, null, null, '8997a1af3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:30', '2019-03-04 19:13:30');
INSERT INTO `c_user` VALUES ('8a19daea3e6e11e9a891a0d3c10f2d5a', '653', 'ma5ddrwt3', '吕洋', '517850bc65b537c4ff2746b7eb232fee5ba90299e75e2cc87e9e5d80864910b6', null, 'ma5ddrwt3', null, null, null, '89f6b0483e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:31', '2019-03-04 19:13:31');
INSERT INTO `c_user` VALUES ('8a86a12c3e6e11e9a891a0d3c10f2d5a', '654', '455756074', '陈君聪', 'a491e0510aad2185a74dce11bdbeb6a5e15f6ffb157e8dead86d66a5f7989365', null, '455756074', null, null, null, '8a68dd2a3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:32', '2019-03-04 19:13:32');
INSERT INTO `c_user` VALUES ('8bae8c2e3e6e11e9a891a0d3c10f2d5a', '655', '710935054', '柳楠楠', '08f0809f5d39e3972a323e6560e8a071d91c5b34ae39c40f344289ca1af2b333', null, '710935054', null, null, null, '8ba113b83e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:34', '2019-03-04 19:13:34');
INSERT INTO `c_user` VALUES ('8d204f5c3e6e11e9a891a0d3c10f2d5a', '656', '782771642', '任太飞', '817c875efd5a6737460510fd02aee6737b01f71d476cc81407a0027486700d4f', null, '13790431236', null, null, null, '8d1539263e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:36', '2019-03-04 19:13:36');
INSERT INTO `c_user` VALUES ('8db662663e6e11e9a891a0d3c10f2d5a', '657', '190338159', '徐汝心', '6c24cc2cb4466c5e26a05b0b65e637861420c410f0dca7dd04efa9097d088530', null, '190338159', null, null, null, '8da268513e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:37', '2019-03-04 19:13:37');
INSERT INTO `c_user` VALUES ('8e95c8543e6e11e9a891a0d3c10f2d5a', '658', '192190397', '辛杰', 'aefd59b48620bcac182244f48ee1984708e3969075d78c6ed20040beb7e9776f', null, '192190397', null, null, null, '8e7675cc3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:39', '2019-03-04 19:13:39');
INSERT INTO `c_user` VALUES ('90c6d68e3e6e11e9a891a0d3c10f2d5a', '659', '755684834', '何喜康', '044da0b7526b5bdde6a63d8667780f994cb03bd1ac7752c1557509fbd9dccc98', null, '755684834', null, null, null, '9041754b3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:43', '2019-03-04 19:13:43');
INSERT INTO `c_user` VALUES ('916c606d3e6e11e9a891a0d3c10f2d5a', '660', '708415690', '钟元生', '91c4068ab8f482ac08f5e1d243e7df125b69c312e9d99337890c77568984048f', null, '708415690', null, null, null, '916bad5d3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:44', '2019-03-04 19:13:44');
INSERT INTO `c_user` VALUES ('919d76a83e6e11e9a891a0d3c10f2d5a', '661', '192353299', '林怀聪', '452c6468a122cb2f8a736a84c02e21c8fda6f9bc82e9a7fc40596df968bbf959', null, '192353299', null, null, null, '9197110f3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:44', '2019-03-04 19:13:44');
INSERT INTO `c_user` VALUES ('93c2ff653e6e11e9a891a0d3c10f2d5a', '662', '892371340', '张润深', 'c96d904e7e4063968cbd702da687839dbd8b546b652369b0efe3121829c279ec', null, '892371340', null, null, null, '93a3e7e93e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:48', '2019-03-04 19:13:48');
INSERT INTO `c_user` VALUES ('94680fd53e6e11e9a891a0d3c10f2d5a', '663', '051546476', '简定雄', 'ef5a6cf8eb9e851e256fe9592ab4e904b2d93289a6173781e15cb571ea80464f', null, '051546476', null, null, null, '9463f0ac3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:49', '2019-03-04 19:13:49');
INSERT INTO `c_user` VALUES ('94e86dee3e6e11e9a891a0d3c10f2d5a', '664', '455748576', '张俊', 'acf4f25db9f1bde413d5b74a140c068a3033a799b031a53e9a37a8f59e32cf42', null, '455748576', null, null, null, '94e7c6fe3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:49', '2019-03-04 19:13:49');
INSERT INTO `c_user` VALUES ('950ed9733e6e11e9a891a0d3c10f2d5a', '665', '671888696', '莫菀', '93acfef561e1209efaf1e187156e87b229d46eaa5e1abdc4129b8da53f7e9469', null, '671888696', null, null, null, '950e20553e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:50', '2019-03-04 19:13:50');
INSERT INTO `c_user` VALUES ('952c8fa43e6e11e9a891a0d3c10f2d5a', '666', '455755741', '蔡志明', 'e534892613e66c78a2993601f64d0eb35f51348a02c5cc70ff7d30f46773da66', null, '455755741', null, null, null, '951d58f03e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:50', '2019-03-04 19:13:50');
INSERT INTO `c_user` VALUES ('96ad89363e6e11e9a891a0d3c10f2d5a', '667', '719782242', '胡泊', 'ba343758dfa41cda1f46f274a369b51d3ff991d5bb9a997ba88e9225780bacba', null, '719782242', null, null, null, '96a4eca33e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:52', '2019-03-04 19:13:52');
INSERT INTO `c_user` VALUES ('972df8b53e6e11e9a891a0d3c10f2d5a', '668', '695581066', '魏永斌', 'ea66620ece66f2bb5ee8aca647fdbb7aeb01241048e21110887c977ab573f75a', null, '695581066', null, null, null, '972013bb3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:53', '2019-03-04 19:13:53');
INSERT INTO `c_user` VALUES ('97a2d6f23e6e11e9a891a0d3c10f2d5a', '669', '555418929', '周晓娟', '8e94de4f92b554f8962daba53277abd5b3f1de7005e202b016c66082539c8626', null, '555418929', null, null, null, '97a225f53e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:54', '2019-03-04 19:13:54');
INSERT INTO `c_user` VALUES ('99682b843e6e11e9a891a0d3c10f2d5a', '670', '455763151', '', 'edb8987055ef62912321a0d1cd563dcc23a58dbdc54a0954099586efeff33b97', null, '455763151', null, null, null, '995fb81c3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:57', '2019-03-04 19:13:57');
INSERT INTO `c_user` VALUES ('9a1c6a993e6e11e9a891a0d3c10f2d5a', '671', '748315774', '常帅军', '1ed261bc539a4f9dce94ea50f5edc9d620c138cfaf0d7c4a4e21434adcaef869', null, '748315774', null, null, null, '9a1ba00e3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:58', '2019-03-04 19:13:58');
INSERT INTO `c_user` VALUES ('9a38a8343e6e11e9a891a0d3c10f2d5a', '672', '192377565', '王宝峰', '8f57c410b67d5c230ff75728c838e4ff9c528226590a7c8cf2f668dd769f0b8d', null, '192377565', null, null, null, '9a2f3b033e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:58', '2019-03-04 19:13:58');
INSERT INTO `c_user` VALUES ('9a95202c3e6e11e9a891a0d3c10f2d5a', '673', '192275585', '杨燕', 'a5e8bdcd4778348fb608c8319d401286e74821a7a91fc4ed824666c697676954', null, '192275585', null, null, null, '9a7e8dd83e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:13:59', '2019-03-04 19:13:59');
INSERT INTO `c_user` VALUES ('9bf2edce3e6e11e9a891a0d3c10f2d5a', '674', '708449591', '马丽', 'f7f0e9e55f052d53a606f472829e2b482318f630cde6df2aab2011f78400d4ed', null, '708449591', null, null, null, '9be555803e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:01', '2019-03-04 19:14:01');
INSERT INTO `c_user` VALUES ('9f4266b43e6e11e9a891a0d3c10f2d5a', '675', '007542689', '刘庆生', 'e6d92d5a531e677736fdcc497637af6d32bfbb6e4bd6b3008a7135f49824923c', null, '007542689', null, null, null, '9f3776093e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:07', '2019-03-04 19:14:07');
INSERT INTO `c_user` VALUES ('a0505e9f3e6e11e9a891a0d3c10f2d5a', '676', '455857633', '张雪亭', 'f57025341deab0286314f29e71b8e558031b2b57bbff2f73822cf6bfb191bd07', null, '455857633', null, null, null, 'a043957b3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:09', '2019-03-04 19:14:09');
INSERT INTO `c_user` VALUES ('a0beb4f13e6e11e9a891a0d3c10f2d5a', '677', '279351173', '梁中悦', '2423374338aa306aa8ea39e7603c14291cc9c91018efb8ed23d48d86d567d16f', null, '279351173', null, null, null, 'a0a870843e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:09', '2019-03-04 19:14:09');
INSERT INTO `c_user` VALUES ('a11215133e6e11e9a891a0d3c10f2d5a', '678', '455744313', '谢力伟', 'f60724d24ba4a4e62508f8b9434b2a7f7f802c41e1d5f88667e117385281a4a8', null, '455744313', null, null, null, 'a10a4a493e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:10', '2019-03-04 19:14:10');
INSERT INTO `c_user` VALUES ('a17278e93e6e11e9a891a0d3c10f2d5a', '679', '670012414', '深圳市城市规划设计研究院有限公司', '30b8f97ffe5dfe402a3723f807473d0dad7d2ef6b026e197ed710dbc18e7fdc4', null, '670012414', null, null, null, 'a16b8c393e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:10', '2019-03-04 19:14:10');
INSERT INTO `c_user` VALUES ('a2265b733e6e11e9a891a0d3c10f2d5a', '680', '067985254', '祝玉凤', '5d04685f63082688477f57814cabae1f9d796f283a2b150f739a1b9d7091f8b1', null, '067985254', null, null, null, 'a1fc375c3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:12', '2019-03-04 19:14:12');
INSERT INTO `c_user` VALUES ('a29bf00f3e6e11e9a891a0d3c10f2d5a', '681', '715231355', '吴涛', '4275a4bc51265eb1bef6d15ec39ef7be3e3209d57e8cd5fb1c576c0a9e60b8ea', null, '715231355', null, null, null, 'a29952633e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:12', '2019-03-04 19:14:12');
INSERT INTO `c_user` VALUES ('a2bee6c63e6e11e9a891a0d3c10f2d5a', '682', '455755530', '李顺民', 'fa552d540521bb1f70d6ebe5e5599f162894cf5854e4a925b7d18cb703092435', null, '455755530', null, null, null, 'a2b5c43d3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:13', '2019-03-04 19:14:13');
INSERT INTO `c_user` VALUES ('a311658f3e6e11e9a891a0d3c10f2d5a', '683', 'ma5dt9a20', '何先英', 'faf2104a3fdf2f6b03f4dd72615c5779d6cede908d054971b1422554d54978e5', null, 'ma5dt9a20', null, null, null, 'a306ef4b3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:13', '2019-03-04 19:14:13');
INSERT INTO `c_user` VALUES ('a4e941643e6e11e9a891a0d3c10f2d5a', '684', 'ma5emcnn6', '孙昭明', '98e150b3a14199674ae4eee76abc8a5888cfad6aa4aef82957c711bdc66e2bf4', null, 'ma5emcnn6', null, null, null, 'a4df8a553e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:16', '2019-03-04 19:14:16');
INSERT INTO `c_user` VALUES ('a5b673523e6e11e9a891a0d3c10f2d5a', '685', '630616491', '李工', 'd732a49b153ab9ce0d754d5acef3351c79f82d3ad90599072f8280bca9abffc8', null, '630616491', null, null, null, 'a5afe4443e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:18', '2019-03-04 19:14:18');
INSERT INTO `c_user` VALUES ('a68352973e6e11e9a891a0d3c10f2d5a', '686', 'ma5eu4my1', '赵小铭', '3c833ee8a4c62a475fb2943cc84715fb18b292b39b76a9bd71e570b37074b2c8', null, 'ma5eu4my1', null, null, null, 'a67b16953e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:19', '2019-03-04 19:14:19');
INSERT INTO `c_user` VALUES ('a70d500b3e6e11e9a891a0d3c10f2d5a', '687', '142920718', '汪红波', '47e6582ee84427ccb0810cde10ed303e43f3cb95ee13dede6e6d5f95b72f8e59', null, '142920718', null, null, null, 'a706f0e93e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:20', '2019-03-04 19:14:20');
INSERT INTO `c_user` VALUES ('a8a8949f3e6e11e9a891a0d3c10f2d5a', '688', '19219788x', '陈龙', '405770b16627ea687365dafc1b6a2022af441989e50a74dafe14cdf2539c294b', null, '19219788x', null, null, null, 'a89d193e3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:23', '2019-03-04 19:14:23');
INSERT INTO `c_user` VALUES ('a9f12a823e6e11e9a891a0d3c10f2d5a', '689', 'ma5dmf762', '滕雪峰', 'a9f3436d5cbc23532f24c6fada9af51267b8dec4ea9b69cfaeb2f42e0348d65e', null, 'ma5dmf762', null, null, null, 'a9e9fc2b3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:25', '2019-03-04 19:14:25');
INSERT INTO `c_user` VALUES ('aa6cdcd33e6e11e9a891a0d3c10f2d5a', '690', '279334752', '陈玉川', 'd4167da44164dd30721145152b93b0d4191382d0b4b41a92194502091bf860f3', null, '279334752', null, null, null, 'aa6c379e3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:26', '2019-03-04 19:14:26');
INSERT INTO `c_user` VALUES ('aa8974b93e6e11e9a891a0d3c10f2d5a', '691', 'ma5dcbnp4', '陈巧宣', '82c4e891f9c0685865aed481f99b8a816f47d202df3f1490238c30cd711d5d53', null, 'ma5dcbnp4', null, null, null, 'aa832f5c3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:26', '2019-03-04 19:14:26');
INSERT INTO `c_user` VALUES ('ab022d443e6e11e9a891a0d3c10f2d5a', '692', '192346363', '孟庆标', 'a9a1464717eaf920f1f4d6a63414ddb86eb3458ec5ef9cdc1155761b0e2c7af0', null, '192346363', null, null, null, 'ab013ebe3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:27', '2019-03-04 19:14:27');
INSERT INTO `c_user` VALUES ('ab17375c3e6e11e9a891a0d3c10f2d5a', '693', 'MA5DK12N0', '欧阳冬定', 'c1ae8d4e2249cc49550e461f974c7a264ee5284df3ba15eddac6dc4afbd2d3dd', null, 'MA5DK12N0', null, null, null, 'ab168d1d3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:27', '2019-03-04 19:14:27');
INSERT INTO `c_user` VALUES ('ab32d5dc3e6e11e9a891a0d3c10f2d5a', '694', 'ma5dhgyhx', '王立文', '1e09652dac1b401393c075bf9e12ad1f30e419b6acfce4a1ff0c93f7c95655c6', null, 'ma5dhgyhx', null, null, null, 'ab26eba23e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:27', '2019-03-04 19:14:27');
INSERT INTO `c_user` VALUES ('ad16ab8a3e6e11e9a891a0d3c10f2d5a', '695', '708479301', '吴振舟', '18b91c8aa0c93bff4d2bf165a526a2e58d3f6c11833d98c29e5b28d3345021b9', null, '708479301', null, null, null, 'ad0815c33e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:30', '2019-03-04 19:14:30');
INSERT INTO `c_user` VALUES ('ad6d8a2e3e6e11e9a891a0d3c10f2d5a', '696', '91440300MA5EDL55X5', '谢泽涵', '728cd7c3f7f7cd094836016b22cbb9f056cda13b5ef66d66e284f7b10310b921', null, '91440300MA5EDL55X5', null, null, null, 'ad67dc693e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:31', '2019-03-04 19:14:31');
INSERT INTO `c_user` VALUES ('adca71893e6e11e9a891a0d3c10f2d5a', '697', 'ma5eutug3', '张艳军', '37c3849fe38d466b2bcd01e1f57232b60f579cbdedb99a363d748e26ee8e72f9', null, 'ma5eutug3', null, null, null, 'adb7fc573e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:31', '2019-03-04 19:14:31');
INSERT INTO `c_user` VALUES ('ae1a37913e6e11e9a891a0d3c10f2d5a', '698', '192211290', '蔡剑江', '1fd0e34780116d86822c4299ed7b1d61cafcdee01b16aaf98eb4355dd910f9d9', null, '192211290', null, null, null, 'ae135b203e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:32', '2019-03-04 19:14:32');
INSERT INTO `c_user` VALUES ('b1eed49c3e6e11e9a891a0d3c10f2d5a', '699', '631189305', '郑建深', 'f5ff15d08fe23e17583380f7c98007782f0a9133522b95e43fe8b570cf391509', null, '631189305', null, null, null, 'b1e612da3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:38', '2019-03-04 19:14:38');
INSERT INTO `c_user` VALUES ('b2a05a403e6e11e9a891a0d3c10f2d5a', '700', '695552708', '吴楚升', 'b0c2e0abae1a4a94fc2cba55a42feaf3026f9612caf60c49e0fba25b54375c4e', null, '695552708', null, null, null, 'b27fa91e3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:39', '2019-03-04 19:14:39');
INSERT INTO `c_user` VALUES ('b32596fd3e6e11e9a891a0d3c10f2d5a', '701', '63370987X', '熊孟阳', '4ba030c7875ab143abf03211bb047a6604d95e59a71e328cdef71596e1d37c79', null, '63370987X', null, null, null, 'b324f7813e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:40', '2019-03-04 19:14:40');
INSERT INTO `c_user` VALUES ('b34c59983e6e11e9a891a0d3c10f2d5a', '702', '163055989', '王德宾', 'a500c0ead99f865d5f29cc88b091a297651c9c4a817fd8ccfa114650a2de97d6', null, '163055989', null, null, null, 'b341488b3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:40', '2019-03-04 19:14:40');
INSERT INTO `c_user` VALUES ('b3a727e73e6e11e9a891a0d3c10f2d5a', '703', '775585577', '冯梦琪', '7fccb18c103f54795e8d5c111c5d7adaef60031ff408957daf78e5b6825d23f1', null, '775585577', null, null, null, 'b3a0d80a3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:41', '2019-03-04 19:14:41');
INSERT INTO `c_user` VALUES ('b6c4833a3e6e11e9a891a0d3c10f2d5a', '704', 'ma5ex0pg9', '陈欣欣', 'f9073a688d46979556761209b595c38b4ed40be8b1b1ca851a1ea831ed6cf951', null, 'ma5ex0pg9', null, null, null, 'b6b819973e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:14:46', '2019-03-04 19:14:46');
INSERT INTO `c_user` VALUES ('c457f23b364011e985e9507b9d9e8623', '5', 'jlAdmin', '万维监理管理员', 'bd09cc4bdf9fc6dfb6066160d9e0fc1e145b29c426ece235284e7ff5bd93a0a2', null, '13790433333', null, null, null, '0664d8c0363d11e985e9507b9d9e8623', null, '1', '1', '1', '1', null, null, '2019-02-22 09:25:41', '2019-02-22 09:25:41');
INSERT INTO `c_user` VALUES ('c9958f49495f11e98db3507b9dae4454', '990', '671877217', '', '04a3a767621a4c08ffe8f58eec93d8aa2cf10577ccb28d2e6b4cca7ff6c2e085', null, null, null, null, null, 'c99384f8495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:21', '2019-03-18 17:25:21');
INSERT INTO `c_user` VALUES ('c9a7b8bf495f11e98db3507b9dae4454', '991', '192181044', '', '312c1d977cccae693c7d417e682f9205a5c761aac8549c44f348e7932bc149e2', null, null, null, null, null, 'c9a643d5495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:21', '2019-03-18 17:25:21');
INSERT INTO `c_user` VALUES ('c9b1cac2495f11e98db3507b9dae4454', '992', '727141656', '', '6d9ce3b2fff3a3661089bf2503987915135c52c0163d925b268bcbde61878444', null, null, null, null, null, 'c9b05741495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:21', '2019-03-18 17:25:21');
INSERT INTO `c_user` VALUES ('c9b9f786495f11e98db3507b9dae4454', '993', '192200874', '', 'dabe38d3a34e47e2a1ca07d72d1f6d36cd98dee67fab5dfa805ee86275ff8f65', null, null, null, null, null, 'c9b87cf9495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:21', '2019-03-18 17:25:21');
INSERT INTO `c_user` VALUES ('c9c6487b495f11e98db3507b9dae4454', '994', '715237538', '', 'f35fb0b8089aa911dcbe64fed57c9a380d86a3354664a9bcb9e8a2cfb2faeac1', null, null, null, null, null, 'c9c4c229495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:21', '2019-03-18 17:25:21');
INSERT INTO `c_user` VALUES ('c9d3613b495f11e98db3507b9dae4454', '995', '892197717', '', '6f92b43c223fad78fa8d17a2e142bb45cfa3f030d418a5349b5f96bb72efc200', null, null, null, null, null, 'c9d20842495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:21', '2019-03-18 17:25:21');
INSERT INTO `c_user` VALUES ('c9e3080c495f11e98db3507b9dae4454', '996', '192233932', '', 'e68afb2b5aa207405e6939d82ea07f8cdfed974480468673e3636f47a5956776', null, null, null, null, null, 'c9e19274495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:21', '2019-03-18 17:25:21');
INSERT INTO `c_user` VALUES ('c9ecd00a495f11e98db3507b9dae4454', '997', '757627403', '', 'd1dff51877c2df3b677644bca080f1ea856db0ca630603f889022ebd549ae17c', null, null, null, null, null, 'c9eb6196495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:21', '2019-03-18 17:25:21');
INSERT INTO `c_user` VALUES ('c9fc4141495f11e98db3507b9dae4454', '998', '279543423', '', '1a01bad53b1262a496af3f8979b827b4358cfe9c9a28a5b564de47bda439314d', null, null, null, null, null, 'c9fad8c7495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:21', '2019-03-18 17:25:21');
INSERT INTO `c_user` VALUES ('ca06a711495f11e98db3507b9dae4454', '999', '729888972', '', 'dc849884566848d8cf09ff4e259287a6025429de645e486f6d4bf3f3b97662c6', null, null, null, null, null, 'ca04b650495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:22', '2019-03-18 17:25:22');
INSERT INTO `c_user` VALUES ('ca0fc526495f11e98db3507b9dae4454', '1000', '758618904', '', 'c8b3acce88410c3d38d9aa67cea479be89c9cdd1c0c967f2357b24f08a31115c', null, null, null, null, null, 'ca0e4fc9495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:22', '2019-03-18 17:25:22');
INSERT INTO `c_user` VALUES ('ca225118495f11e98db3507b9dae4454', '1001', '192478841', '', '6cc755ea5cf009d54851fb15c5efa1413e288da3bda9f32c1a5b1f155dedd464', null, null, null, null, null, 'ca20d331495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:22', '2019-03-18 17:25:22');
INSERT INTO `c_user` VALUES ('ca2f47c4495f11e98db3507b9dae4454', '1002', '71525395x', '', '9938a34f6c2b0756520269280a4c92dd6d8e3744ede5f2ec8fd852d9ac194956', null, null, null, null, null, 'ca2dc6ca495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:22', '2019-03-18 17:25:22');
INSERT INTO `c_user` VALUES ('ca377400495f11e98db3507b9dae4454', '1003', '19223197X', '', '33163263845c3a4536b5af0f89cc034c4fe14c19adec837f2ef953ae5e44e05a', null, null, null, null, null, 'ca35fb63495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:22', '2019-03-18 17:25:22');
INSERT INTO `c_user` VALUES ('ca43bf66495f11e98db3507b9dae4454', '1004', '279296247', '', 'e28ea79d7627b02c7a4944cb399f48b6b93b3983484aa195a2306793e9838e41', null, null, null, null, null, 'ca42993b495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:22', '2019-03-18 17:25:22');
INSERT INTO `c_user` VALUES ('ca5622c8495f11e98db3507b9dae4454', '1005', '736291357', '', 'e641467bffa176b8c93bc737f4bd4b496bba70e8f225a06be6afab9a4f02712a', null, null, null, null, null, 'ca54b49e495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:22', '2019-03-18 17:25:22');
INSERT INTO `c_user` VALUES ('ca6399ac495f11e98db3507b9dae4454', '1006', '070388592', '', '512eb9e7b1f78d37b580ad6bc81c90707fdc066e43921198a8ddf24f0133df33', null, null, null, null, null, 'ca6223aa495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:22', '2019-03-18 17:25:22');
INSERT INTO `c_user` VALUES ('ca71ae53495f11e98db3507b9dae4454', '1007', '755696843', '', 'd6a5aa4f7a784e11fd1fdcd70070e7d605081a813f17b2d986ece31ae169a08f', null, null, null, null, null, 'ca703eec495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:22', '2019-03-18 17:25:22');
INSERT INTO `c_user` VALUES ('ca80e16e495f11e98db3507b9dae4454', '1008', '774107215', '', 'fad019992a9bfbdcddbd883c6eb19a4496fc5cdb105e7b04ee1af4d7d48c70d0', null, null, null, null, null, 'ca7f7014495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:22', '2019-03-18 17:25:22');
INSERT INTO `c_user` VALUES ('ca889060495f11e98db3507b9dae4454', '1009', '19220498x', '', '64c2f31937ae0ae9a185b772e19e7bd94a3cfa6b8047b4d17c82ad5c89a4dc2e', null, null, null, null, null, 'ca871c62495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:22', '2019-03-18 17:25:22');
INSERT INTO `c_user` VALUES ('ca9360e1495f11e98db3507b9dae4454', '1010', '715233799', '', '8a2187bfdff8a447b63fb23528051c28ec831da9c48db9526340b9ceca9129ea', null, null, null, null, null, 'ca912e59495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:22', '2019-03-18 17:25:22');
INSERT INTO `c_user` VALUES ('ca9dd73b495f11e98db3507b9dae4454', '1011', '192248376', '', '79e84134ab465d9729df197ea43bcf82f86e489e149a1388817573dcd4ff70e5', null, null, null, null, null, 'ca9c2196495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:22', '2019-03-18 17:25:22');
INSERT INTO `c_user` VALUES ('caa5c5b9495f11e98db3507b9dae4454', '1012', '74886823X', '', '7ae9c5171ffbc20bb4f22ab244469c1a91c9085a393d28499c2e263be686c366', null, null, null, null, null, 'caa45168495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:23', '2019-03-18 17:25:23');
INSERT INTO `c_user` VALUES ('cab2afe6495f11e98db3507b9dae4454', '1013', '192214571', '', '2fe0161d4e9e6d92776a4224785aebc6ed3f37ad485e64c239bcf8e794b55deb', null, null, null, null, null, 'cab14998495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:23', '2019-03-18 17:25:23');
INSERT INTO `c_user` VALUES ('caba88a1495f11e98db3507b9dae4454', '1014', '685362927', '', 'b93b36ddfd9f41ee2bf238a51147cecd71d5c911d8b56430201ef2ed33f22573', null, null, null, null, null, 'cab919f3495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:23', '2019-03-18 17:25:23');
INSERT INTO `c_user` VALUES ('cace55cd495f11e98db3507b9dae4454', '1015', '279543773', '', 'ea73bbe9dc689dc16b558a0434d0a55078e24abd2914541603fdda8e0c4db530', null, null, null, null, null, 'caccf68f495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:23', '2019-03-18 17:25:23');
INSERT INTO `c_user` VALUES ('cadc115d495f11e98db3507b9dae4454', '1016', '007542603', '', '60d11c7fd6264ae59febfdc0e63181387adccc0bed42b41dfb46d79682fbe316', null, null, null, null, null, 'cadaa0f5495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:23', '2019-03-18 17:25:23');
INSERT INTO `c_user` VALUES ('cadf31cc495f11e98db3507b9dae4454', '1017', '78924006X', '', '58d609db2481e5853b25a6c2d11384c78fa2d84b685332408227e463dcc54224', null, null, null, null, null, 'caddddb3495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:23', '2019-03-18 17:25:23');
INSERT INTO `c_user` VALUES ('cae73f53495f11e98db3507b9dae4454', '1018', '192317650', '', '9074563bc2e26fcf6cbb5a05149651b135e92b03ad36bfe0dbc7d335e070fdda', null, null, null, null, null, 'cae5b495495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:23', '2019-03-18 17:25:23');
INSERT INTO `c_user` VALUES ('caef60f2495f11e98db3507b9dae4454', '1019', '311755929', '', '70cfe989607faf7daf0aca9586db6c74e8e778031a20e15adc0fa9c46f7e1e13', null, null, null, null, null, 'caedf647495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:23', '2019-03-18 17:25:23');
INSERT INTO `c_user` VALUES ('cb00ada8495f11e98db3507b9dae4454', '1020', '661002038', '', 'c04d35db198dc79c5d7941a5d8480a98d696beb6b762f324a01539f181b211a9', null, null, null, null, null, 'caff04b8495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:23', '2019-03-18 17:25:23');
INSERT INTO `c_user` VALUES ('cb0fedef495f11e98db3507b9dae4454', '1021', '668505586', '', '6c1dc972b687055c988e0c473972186dc92851b51a68308ebe21908891b73175', null, null, null, null, null, 'cb0e6de2495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:23', '2019-03-18 17:25:23');
INSERT INTO `c_user` VALUES ('cb17b3f7495f11e98db3507b9dae4454', '1022', '708582376', '', '7e094b071b5c5411c8bba4fdb110b534514e87d04c457935d64b04c13e5d7b42', null, null, null, null, null, 'cb164c2b495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:23', '2019-03-18 17:25:23');
INSERT INTO `c_user` VALUES ('cb2668ef495f11e98db3507b9dae4454', '1023', '080117793', '', 'd147de63ea765107a6001a7d0d4f71323ff9731d114f696df7838a6a5b6a3132', null, null, null, null, null, 'cb250f28495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:23', '2019-03-18 17:25:23');
INSERT INTO `c_user` VALUES ('cb333554495f11e98db3507b9dae4454', '1024', '279521830', '', 'db8e0c0d06882f496957fcb99f3bd55f50d0889257a060cb11f37ccf9c67a4da', null, null, null, null, null, 'cb31a242495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:23', '2019-03-18 17:25:23');
INSERT INTO `c_user` VALUES ('cb527425495f11e98db3507b9dae4454', '1025', '708556426', '', 'e074140bce8bb751d1e26fb94884c72a917c9ad6f2c89d5ce06b9aa4d58d0f6e', null, null, null, null, null, 'cb510f06495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:24', '2019-03-18 17:25:24');
INSERT INTO `c_user` VALUES ('cb68dded495f11e98db3507b9dae4454', '1026', '770305564', '', '85ea93e8c45cacaad236f6d12724417aa77c11fdc98f2c50e9872cde2a602f46', null, null, null, null, null, 'cb676428495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:24', '2019-03-18 17:25:24');
INSERT INTO `c_user` VALUES ('cb7086c5495f11e98db3507b9dae4454', '1027', '892210133', '', '8d1f00750fef2c4d24db82bdf4354f7d7d20f081865b2b22fb8bb58e98dc939c', null, null, null, null, null, 'cb6f10d2495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:24', '2019-03-18 17:25:24');
INSERT INTO `c_user` VALUES ('cb7a0535495f11e98db3507b9dae4454', '1028', '618874375', '', '0bb8d70e66b42fee43a27e9e89698ff277fbafb152b124209f87c1710e41171d', null, null, null, null, null, 'cb789dd5495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:24', '2019-03-18 17:25:24');
INSERT INTO `c_user` VALUES ('cb83fb40495f11e98db3507b9dae4454', '1029', '682013203', '', 'e0697c59e51f8c87174a3ac6a3ed0d0b156a9712a73f82bce564733857c2a17a', null, null, null, null, null, 'cb828cf3495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:24', '2019-03-18 17:25:24');
INSERT INTO `c_user` VALUES ('cb8dcc4d495f11e98db3507b9dae4454', '1030', '689421007', '', '95a7933ef63c89b6307e197ff637f17aa41b02efad6d174dbcff185bd4b39b0e', null, null, null, null, null, 'cb8bf6a1495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:24', '2019-03-18 17:25:24');
INSERT INTO `c_user` VALUES ('cb96fa79495f11e98db3507b9dae4454', '1031', '743582590', '', '0456561241094f566f09fe853e1981dcdf3945da4172afe88d3cfb6513bc23cd', null, null, null, null, null, 'cb95799b495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:24', '2019-03-18 17:25:24');
INSERT INTO `c_user` VALUES ('cb9ea4b2495f11e98db3507b9dae4454', '1032', '708447633', '', 'e67b74f8315f058cb223ff92237e96c59493dd5b6aab316112fc4c8f4d02a559', null, null, null, null, null, 'cb9d21d9495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:24', '2019-03-18 17:25:24');
INSERT INTO `c_user` VALUES ('cbaac5d5495f11e98db3507b9dae4454', '1033', '664159524', '', 'a40823fdb79ba886c01a607f98941e0f05d1a23602fb3601baa5cbfda8ddf112', null, null, null, null, null, 'cba95a0f495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:24', '2019-03-18 17:25:24');
INSERT INTO `c_user` VALUES ('cbc1fdc4495f11e98db3507b9dae4454', '1034', '783900637', '', 'e9b0614804383f131bd7c809d48aadefa2de3ea2576df2ee2dc9791bdecce4e7', null, null, null, null, null, 'cbc062a1495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:24', '2019-03-18 17:25:24');
INSERT INTO `c_user` VALUES ('cbcfbad4495f11e98db3507b9dae4454', '1035', '670016087', '', '1fe224b567a8f71359190fac53510e14ac547647b9d75c3e6791d60ca3291cc1', null, null, null, null, null, 'cbce34f7495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:25', '2019-03-18 17:25:25');
INSERT INTO `c_user` VALUES ('cbd7a0d0495f11e98db3507b9dae4454', '1036', '71526806X', '', '43daa7a34f87fcc164b23d3a1bf6190cf4acc334671a8d3c1cdc764a0d89b2d3', null, null, null, null, null, 'cbd62d83495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:25', '2019-03-18 17:25:25');
INSERT INTO `c_user` VALUES ('cbe486c5495f11e98db3507b9dae4454', '1037', '89226852X', '', '6cdb65a6aeefda92734677db2972b45c4ed0a24439d8c213612896def9fc9d9b', null, null, null, null, null, 'cbe31dfb495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:25', '2019-03-18 17:25:25');
INSERT INTO `c_user` VALUES ('cbf178f1495f11e98db3507b9dae4454', '1038', '715274144', '', 'd73a880a22c98102222d1d45ce410d736f48f78c593fbc1357df3bff7f64dbff', null, null, null, null, null, 'cbf005be495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:25', '2019-03-18 17:25:25');
INSERT INTO `c_user` VALUES ('cbf99171495f11e98db3507b9dae4454', '1039', '763476453', '', 'c6a642b9db495fdd3175d9b575cee05534eae58c581e8d0f01960b55b0fdc617', null, null, null, null, null, 'cbf83084495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:25', '2019-03-18 17:25:25');
INSERT INTO `c_user` VALUES ('cc15adeb495f11e98db3507b9dae4454', '1040', 'MCK992468', '', '6fd21a60ae9fb5a280d452fe4305c1ade6c93f8d76ed97d5042b99e7e7d7fed8', null, null, null, null, null, 'cc1444fc495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:25', '2019-03-18 17:25:25');
INSERT INTO `c_user` VALUES ('cc2cad22495f11e98db3507b9dae4454', '1041', '79049661X', '', 'd5822daeacbe80213aca14199c10b9789c0fef7a633cbca95ceaf2faba702014', null, null, null, null, null, 'cc2b46a4495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:25', '2019-03-18 17:25:25');
INSERT INTO `c_user` VALUES ('cc336895495f11e98db3507b9dae4454', '1042', '770343448', '', '0d3426fdb66b5caa0eed52dac224d96c534bf3679a72097f3f4f4880ffbc37a8', null, null, null, null, null, 'cc323f71495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:25', '2019-03-18 17:25:25');
INSERT INTO `c_user` VALUES ('cc4b0c7d495f11e98db3507b9dae4454', '1043', '727874382', '', '0b8f2bb33b1be8e6ead27d0e9106b0f2f487dff252798321a659bcc936dcce1e', null, null, null, null, null, 'cc49a2f8495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:25', '2019-03-18 17:25:25');
INSERT INTO `c_user` VALUES ('cc536d56495f11e98db3507b9dae4454', '1044', '667087861', '', '619acd24e8a8a83a86be9a6bae1beb8728ef803b86c0f07a5346043a530e298d', null, null, null, null, null, 'cc51f3a7495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:25', '2019-03-18 17:25:25');
INSERT INTO `c_user` VALUES ('cc6a3818495f11e98db3507b9dae4454', '1045', '192195219', '', 'd762677e06f8fc9fee6d8c5ac4a48f205f4741767de20769976b0bb462d9b376', null, null, null, null, null, 'cc68f814495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:26', '2019-03-18 17:25:26');
INSERT INTO `c_user` VALUES ('cc8a93b9495f11e98db3507b9dae4454', '1046', '777192566', '', '9b3c101b772fe1e8c6bcd25519e9ab58f4323eaaf1e949e9418c48d2baba1f5b', null, null, null, null, null, 'cc8929e1495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:26', '2019-03-18 17:25:26');
INSERT INTO `c_user` VALUES ('ccc3d083495f11e98db3507b9dae4454', '1047', '66850871X', '', '92c55bd2c3a90f5fcb9a4564e2518107a9970046dbf9ce68f21c372583f058c6', null, null, null, null, null, 'ccc24ec4495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:26', '2019-03-18 17:25:26');
INSERT INTO `c_user` VALUES ('ccfc5da1495f11e98db3507b9dae4454', '1048', '192307807', '', 'e62a4cdb1dea39f17d58b14bf96ce9aff12a5c88206b1de475c772c95ce7aca5', null, null, null, null, null, 'ccfaeef6495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:26', '2019-03-18 17:25:26');
INSERT INTO `c_user` VALUES ('cd041713495f11e98db3507b9dae4454', '1049', '741243026', '', '2a9ab2017a8d4b6109cdf7e5d8a48fdf58af1b5638fb19a02ac49e850370032d', null, null, null, null, null, 'cd02c13b495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:27', '2019-03-18 17:25:27');
INSERT INTO `c_user` VALUES ('cd0ccc17495f11e98db3507b9dae4454', '1050', '593014589', '', 'ded2f7387855e9235c6e92d68241526c108a381fa8693ae9ae3ed1a331b7b853', null, null, null, null, null, 'cd0b62f2495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:27', '2019-03-18 17:25:27');
INSERT INTO `c_user` VALUES ('cd14ed44495f11e98db3507b9dae4454', '1051', '192173116', '', '19541f4ccdd62e6e5154a2973f91e06d0080eb1bb2f8c0b9274c196b9db96182', null, null, null, null, null, 'cd13805c495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:27', '2019-03-18 17:25:27');
INSERT INTO `c_user` VALUES ('cd1c5939495f11e98db3507b9dae4454', '1052', '192285847', '', 'cb66ecf57a511d910e88d71d9dc73d356efeb6135f4d18aa48abda5f196940f9', null, null, null, null, null, 'cd1af5d3495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:27', '2019-03-18 17:25:27');
INSERT INTO `c_user` VALUES ('cd24d7b1495f11e98db3507b9dae4454', '1053', '204350723', '', '537b5b0535916b16d4e83030b31858661e865e6ba64023d169785d898571dc45', null, null, null, null, null, 'cd23634f495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:27', '2019-03-18 17:25:27');
INSERT INTO `c_user` VALUES ('cd4c4d423e7511e9b648507b9d9e8623', '714', 'test6', null, '503cfb518f3d7802c6ff27aaee58e0c0fdcd2db04afd8545881831c2ffc58d5c', null, '13790438521', null, null, null, 'ff1282693e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 20:05:27', '2019-03-04 20:05:27');
INSERT INTO `c_user` VALUES ('cd598058495f11e98db3507b9dae4454', '1054', '727141760', '', '5b260507595bcd22bd34e2a0d5a078e40fd2e3d3401708e3a17b19e8e8b6bd1c', null, null, null, null, null, 'cd57b9ff495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:27', '2019-03-18 17:25:27');
INSERT INTO `c_user` VALUES ('cd61dd2e495f11e98db3507b9dae4454', '1055', '192360843', '', '318d9d23387198b72f5f46c4869df3e1cd180247082ef8159a1b07f0197020c6', null, null, null, null, null, 'cd606782495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:27', '2019-03-18 17:25:27');
INSERT INTO `c_user` VALUES ('cd9c7623495f11e98db3507b9dae4454', '1056', '618815885', '', 'bbe002c4863f8eb39e0718b588f62da25a7a838d8f398603a5f6ca3498318cc5', null, null, null, null, null, 'cd9b0851495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:28', '2019-03-18 17:25:28');
INSERT INTO `c_user` VALUES ('cdb2838f495f11e98db3507b9dae4454', '1057', '192249336', '', '59765f276d003266312411106485706476fd277d1a217ff837443384f0c98e19', null, null, null, null, null, 'cdb11b6b495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:28', '2019-03-18 17:25:28');
INSERT INTO `c_user` VALUES ('cdc574a9495f11e98db3507b9dae4454', '1058', '279318648', '', 'ea85fbf55c1e97066898b8622b0c386ecc89db98294a54b4b64bd1073dac5f16', null, null, null, null, null, 'cdc411d2495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:28', '2019-03-18 17:25:28');
INSERT INTO `c_user` VALUES ('cdcd3ccc495f11e98db3507b9dae4454', '1059', '746609197', '', 'd94eea8eef66b320398af1dff9a52879ce6b05a3a322e72eed3c586e1bc88e6a', null, null, null, null, null, 'cdcbce66495f11e98db3507b9dae4454', null, '1', '1', '1', '1', null, null, '2019-03-18 17:25:28', '2019-03-18 17:25:28');
INSERT INTO `c_user` VALUES ('e0d09cec3e7011e9b648507b9d9e8623', '710', 'test1', null, '958f3b92a2efc8d9394ea2796e564c8a4700d0b20847b52f5f885b5ce5371966', null, '13790435555', null, null, null, '3697113e3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:30:12', '2019-03-04 19:30:12');
INSERT INTO `c_user` VALUES ('e20afce4b12511e68bc4507b9dae4454', '1', 'admin', '管理员', 'e269dd948b0383da52f91c934d718d37e49b32e5c6aeb17968c66d91b3d4e497', 'hello@qq.com', '18012345678', '832', '', '~~', '913e42e03cc311e9b5be507b9dae4454', null, '1', '1', '1', '1', '0', null, '2017-10-24 16:43:38', '2019-02-26 14:22:21');
INSERT INTO `c_user` VALUES ('e9e3ce563e7011e9b648507b9d9e8623', '711', 'test2', null, '50499cf4cf858b2be47567fa8c7f5be28b266ec3db943e93d7859f356b3349d4', null, '13790434288', null, null, null, '3697113e3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:30:27', '2019-03-04 19:30:27');
INSERT INTO `c_user` VALUES ('eb4a27df3e6e11e9a891a0d3c10f2d5a', '705', '589179428', '林火华', '01a2960ce359c5369d5563144209a0282a5d89d6eda66ad3f3a563b3c35febc2', null, '589179428', null, null, null, 'eb3d30ad3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:16:14', '2019-03-04 19:16:14');
INSERT INTO `c_user` VALUES ('f5a056d53e6e11e9a891a0d3c10f2d5a', '706', 'ma5eqd989', '尚文军', '412c3941da1571e2091ee62f95dfc217acd316b4d14c9f89ff3ba0bc8a83938c', null, 'ma5eqd989', null, null, null, 'f5984fa93e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:16:32', '2019-03-04 19:16:32');
INSERT INTO `c_user` VALUES ('fa04158e3e6e11e9a891a0d3c10f2d5a', '707', '无', '曾春容', 'f98939dad133adbf0b86f6fbaddd1579de8e7346f32bf97240adccdea9b6e708', null, '无', null, null, null, 'f9fb02da3e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:16:39', '2019-03-04 19:16:39');
INSERT INTO `c_user` VALUES ('ff1c7f2a3e6e11e9a891a0d3c10f2d5a', '708', '91440300782771642N', '无', 'e7dc488aae74875204148ee3628f7437e87813a08a11b1476b08bc923aa2e417', null, '91440300782771642N', null, null, null, 'ff1282693e6e11e9a891a0d3c10f2d5a', null, '1', '1', '1', '1', null, null, '2019-03-04 19:16:48', '2019-03-04 19:16:48');

-- ----------------------------
-- Table structure for c_user_role
-- ----------------------------
DROP TABLE IF EXISTS `c_user_role`;
CREATE TABLE `c_user_role` (
  `user_id` varchar(32) NOT NULL,
  `role_id` varchar(32) NOT NULL,
  PRIMARY KEY (`role_id`,`user_id`),
  KEY `FK_ryx81a2lxs8gia9b88uqx16y6` (`role_id`) USING BTREE,
  KEY `FK_pnmkqxfhkfoup945qhjst4k4r` (`user_id`) USING BTREE,
  CONSTRAINT `c_user_role_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `c_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `c_user_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `c_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_user_role
-- ----------------------------
INSERT INTO `c_user_role` VALUES ('477199c2697e11e9a8466c4b904ca00a', '14065dccb12011e68bc4507b9dae4454');
INSERT INTO `c_user_role` VALUES ('e20afce4b12511e68bc4507b9dae4454', '14065dccb12011e68bc4507b9dae4454');
INSERT INTO `c_user_role` VALUES ('2ec93671363f11e985e9507b9d9e8623', '35a9a9bd3a2c11e98d57507b9dae4454');
INSERT INTO `c_user_role` VALUES ('72b5ac673e6e11e9a891a0d3c10f2d5a', '8c3183e3364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('8d204f5c3e6e11e9a891a0d3c10f2d5a', '8c3183e3364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('a70d500b3e6e11e9a891a0d3c10f2d5a', '8c3183e3364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cd4c4d423e7511e9b648507b9d9e8623', '8c3183e3364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('ff1c7f2a3e6e11e9a891a0d3c10f2d5a', '8c3183e3364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('2113bc4e3e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('2134d5863e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('253eab003e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('2823b0833e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('28335b8d3e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('28d488023e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('2c2cd14e3e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('2c7152cc3e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('30757fe63e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('3085a86f3e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('324ee6623e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('32605b743e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('352cb0643e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('354edd043e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('3746d8273e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('375d53873e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('3bbb4a983e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('3fb1e2a33e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('3fc3ead33e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('404224663e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('406eed403e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('4083605e3e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('41a23eec3e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('44b8f1363e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('48e1f4c93e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('48f90cfa3e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('497e67593e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('4995e6553e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('4c342ed23e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('4c5f92943e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('5006a1943e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('53b5672f3e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('53c766f43e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('55e816d43e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('560860673e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('5c2f01023e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('5c4192f23e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('5cd3c8a23e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('5d0f9c393e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('65e4483b3e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('65fa1a0a3e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('67b964583e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('691e2c953e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('69476d193e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('69d9ee683e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('69edc1b73e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('6adb7d503e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('6b0042183e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('6cd368533e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('6fa56a9f3e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('70ee3aa73e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('710ea46c3e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('728675be3e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('750467763e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('77d5e7fe3e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('78e633003e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('78fb69df3e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('7b8bc51f3e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('7f94b7903e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('817a79803e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('823b87133e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('838ee8e73e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('85357fbe3e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('86b9794a3e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('86f75a293e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('87af89ad3e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('894fe2ae3e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('8998e0633e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('916c606d3e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('94e86dee3e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('950ed9733e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('97a2d6f23e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('9a1c6a993e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('a29bf00f3e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('aa6cdcd33e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('ab022d443e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('ab17375c3e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('b32596fd3e6e11e9a891a0d3c10f2d5a', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('c457f23b364011e985e9507b9d9e8623', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('c9958f49495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('c9a7b8bf495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('c9b1cac2495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('c9b9f786495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('c9c6487b495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('c9d3613b495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('c9e3080c495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('c9ecd00a495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('c9fc4141495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('ca06a711495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('ca0fc526495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('ca225118495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('ca2f47c4495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('ca377400495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('ca43bf66495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('ca5622c8495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('ca6399ac495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('ca71ae53495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('ca80e16e495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('ca889060495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('ca9360e1495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('ca9dd73b495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('caa5c5b9495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cab2afe6495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('caba88a1495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cace55cd495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cadf31cc495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cae73f53495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('caef60f2495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cb00ada8495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cb0fedef495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cb17b3f7495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cb2668ef495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cb333554495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cb527425495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cb68dded495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cb7086c5495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cb7a0535495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cb83fb40495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cb8dcc4d495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cb96fa79495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cb9ea4b2495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cbaac5d5495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cbc1fdc4495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cbcfbad4495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cbd7a0d0495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cbe486c5495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cbf178f1495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cbf99171495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cc15adeb495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cc2cad22495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cc336895495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cc4b0c7d495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cc536d56495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cc6a3818495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cc8a93b9495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('ccc3d083495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('ccfc5da1495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cd041713495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cd14ed44495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cd24d7b1495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cd598058495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cd61dd2e495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cd9c7623495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cdb2838f495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cdc574a9495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('cdcd3ccc495f11e98db3507b9dae4454', 'a4cbabe8364011e985e9507b9d9e8623');
INSERT INTO `c_user_role` VALUES ('013e6d843e6f11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('19a2e9bd3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('1bbf91503e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('1c2d2ecf3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('1c9c61833e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('1d0270fb3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('1d6091843e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('1db7e4e93e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('1e08d4a63e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('1e5606f13e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('1ea3fb093e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('20990e793e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('20ee845d3e7411e9b648507b9d9e8623', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('2199df713e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('21eb52f93e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('22fc279e3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('241113a13e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('24c5544d3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('27a5a2583e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('29141d563e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('2ac5387e3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('2b66d9573e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('2bb7dcc83e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('2c9d75dc3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('2d517c703e7411e9b648507b9d9e8623', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('2df95e103e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('2f4810a83e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('2ff7a54a3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('30d9f6b03e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('312bc3083e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('317b83c63e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('31d8f7323e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('32ae71863e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('3341f08d3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('338ce6223e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('341f2e903e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('34b67f283e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('35981c2c3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('36a10e593e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('38a453233e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('39d5558d3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('3a29b1093e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('3ad2f5e53e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('3b214de33e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('3ce608903e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('3d8a88063e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('3f292eba3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('40bead413e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('427a0e9b3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('4317216d3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('43b3f4643e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('4445662d3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('44f99e2b3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('457bbd373e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('477199c2697e11e9a8466c4b904ca00a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('47bdcf613e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('4864768c3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('4a5301cf3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('4b2d0c203e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('4bbc231e3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('4d49a65f3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('4d97426e3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('4f77e0553e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('511122ba3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('51bf682e3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('5216a1003e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('52acde793e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('533909d23e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('544938263e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('54f86cdb3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('5b2673b93e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('5c57d9733e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('62949c553e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('65670d6b3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('6623017d3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('67d6d3703e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('6964d7113e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('6a45ecf13e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('6ba3c4963e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('6bf52e263e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('6cffff203e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('6e1ef9f43e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('6f2c00be3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('6ffd9cc73e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('704daa383e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('712b53253e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('717eab583e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('729e93863e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('751c7fa43e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('786b0c853e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('795bdb973e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('79caf4743e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('7a6cb6053e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('7f0919ac3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('7ff4b0163e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('80af6a503e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('819e60c23e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('82a955be3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('85a33c723e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('85f4915f3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('864229b23e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('871cd00a3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('87dc3b3f3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('8a19daea3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('8a86a12c3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('8bae8c2e3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('8d204f5c3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('8db662663e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('8e95c8543e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('90c6d68e3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('919d76a83e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('93c2ff653e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('94680fd53e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('952c8fa43e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('96ad89363e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('972df8b53e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('99682b843e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('9a38a8343e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('9a95202c3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('9bf2edce3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('9f4266b43e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('a0505e9f3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('a0beb4f13e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('a11215133e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('a17278e93e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('a2265b733e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('a2bee6c63e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('a311658f3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('a4e941643e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('a5b673523e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('a68352973e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('a8a8949f3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('a9f12a823e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('aa8974b93e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('ab32d5dc3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('ad16ab8a3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('ad6d8a2e3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('adca71893e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('ae1a37913e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('b1eed49c3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('b2a05a403e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('b34c59983e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('b3a727e73e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('b6c4833a3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('cadc115d495f11e98db3507b9dae4454', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('cd0ccc17495f11e98db3507b9dae4454', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('cd1c5939495f11e98db3507b9dae4454', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('e0d09cec3e7011e9b648507b9d9e8623', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('e9e3ce563e7011e9b648507b9d9e8623', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('eb4a27df3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('f5a056d53e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');
INSERT INTO `c_user_role` VALUES ('fa04158e3e6e11e9a891a0d3c10f2d5a', 'bccdd20634e311e9a040507b9dae4454');

-- ----------------------------
-- Table structure for fundation_record
-- ----------------------------
DROP TABLE IF EXISTS `fundation_record`;
CREATE TABLE `fundation_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `net_value` float DEFAULT NULL,
  `accumulated_net` float DEFAULT NULL,
  `growth_rate` float DEFAULT NULL,
  `buy_status` tinyint(4) DEFAULT NULL,
  `sell_status` tinyint(4) DEFAULT NULL,
  `distribution` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fundation_record
-- ----------------------------

-- ----------------------------
-- Table structure for m_base_file
-- ----------------------------
DROP TABLE IF EXISTS `m_base_file`;
CREATE TABLE `m_base_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) NOT NULL,
  `pattern` varchar(255) NOT NULL,
  `big_pattern` varchar(255) DEFAULT NULL,
  `content_type` varchar(100) DEFAULT NULL,
  `create_by` varchar(50) DEFAULT NULL,
  `file_kind` smallint(6) NOT NULL,
  `file_size` varchar(30) DEFAULT NULL,
  `file_type` varchar(10) NOT NULL,
  `length` bigint(20) NOT NULL,
  `md5_code` varchar(32) DEFAULT NULL,
  `real_name` varchar(80) DEFAULT NULL,
  `save_path` varchar(255) NOT NULL,
  `transfer_path` varchar(255) DEFAULT NULL,
  `zone_path_id` bigint(20) NOT NULL,
  `turn_status` smallint(6) DEFAULT NULL,
  `main_id` bigint(20) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_base_file
-- ----------------------------
INSERT INTO `m_base_file` VALUES ('17', '评分统计.png', '2019/03-20/c37d3d3d-b49f-4be2-ae78-a92a4cf5feae.png', '2019/03-20/c37d3d3d-b49f-4be2-ae78-a92a4cf5feae.png', 'image/png', 'admin', '1', '38.83KB', 'png', '39765', '40D7FCCCDF0CDE74274200DCA9909671', 'c50c7fb00ec64efa80aececb0fa9e107.png', '2019\\03-20\\c50c7fb00ec64efa80aececb0fa9e107.png', null, '1', '2', null, '1', '2019-03-20 17:15:47', '2019-03-20 17:15:47');
INSERT INTO `m_base_file` VALUES ('18', '管理单位评价审核.png', '2019/03-20/adf9760e-e18f-423f-b6c7-2de96e0ace72.png', '2019/03-20/adf9760e-e18f-423f-b6c7-2de96e0ace72.png', 'image/png', 'admin', '1', '39.21KB', 'png', '40155', '8A21252259442F50D5B85DE76C4D7F55', 'ee65a3500749415db7960ae505c20acb.png', '2019\\03-20\\ee65a3500749415db7960ae505c20acb.png', null, '1', '2', null, '1', '2019-03-20 17:15:47', '2019-03-20 17:15:47');
INSERT INTO `m_base_file` VALUES ('19', '评分标准.png', '2019/03-20/265ac085-a93f-4b64-bd50-b38d04af514b.png', '2019/03-20/265ac085-a93f-4b64-bd50-b38d04af514b.png', 'image/png', 'admin', '1', '39.26KB', 'png', '40201', 'A3809BEFD26FB5845251042E9B4CAB8A', '32d9d70c0ef6479ca1e5372862ef7e45.png', '2019\\03-20\\32d9d70c0ef6479ca1e5372862ef7e45.png', null, '1', '2', null, '1', '2019-03-20 17:15:47', '2019-03-20 17:15:47');
INSERT INTO `m_base_file` VALUES ('20', '评价审核.png', '2019/03-20/0ed1cc92-3016-4377-99f6-9591e14bd357.png', '2019/03-20/0ed1cc92-3016-4377-99f6-9591e14bd357.png', 'image/png', 'admin', '1', '39.16KB', 'png', '40103', '62B047FBE638DA71207A1610FA71522D', 'c25b2aca06b54745a91c53d8b6b6fdf9.png', '2019\\03-20\\c25b2aca06b54745a91c53d8b6b6fdf9.png', null, '1', '2', null, '1', '2019-03-20 17:15:47', '2019-03-20 17:15:47');
INSERT INTO `m_base_file` VALUES ('21', '首页.png', '2019/03-20/fc74ed28-e425-4f69-9517-e6d9c3246e74.png', '2019/03-20/fc74ed28-e425-4f69-9517-e6d9c3246e74.png', 'image/png', 'admin', '1', '39.07KB', 'png', '40004', '2C4C05AC4FAC94CDC9F11A2ADFC7B1B4', '4932eab593d24d70b28467d96ccee909.png', '2019\\03-20\\4932eab593d24d70b28467d96ccee909.png', null, '1', '2', null, '1', '2019-03-20 17:15:47', '2019-03-20 17:15:47');
INSERT INTO `m_base_file` VALUES ('22', '系统管理.png', '2019/03-20/9e0ccce8-e77d-4fb2-99ea-b04262eafd51.png', '2019/03-20/9e0ccce8-e77d-4fb2-99ea-b04262eafd51.png', 'image/png', 'admin', '1', '39.23KB', 'png', '40176', '2E92A9866805F1DF34A92763ABAB097F', 'f4dd85d6078348db9b27fa1ebd6541e8.png', '2019\\03-20\\f4dd85d6078348db9b27fa1ebd6541e8.png', null, '1', '2', null, '1', '2019-03-20 17:15:48', '2019-03-20 17:15:48');
INSERT INTO `m_base_file` VALUES ('23', '项目信息管理.png', '2019/03-20/d80951f9-e89e-43df-b4f6-5c735afdde11.png', '2019/03-20/d80951f9-e89e-43df-b4f6-5c735afdde11.png', 'image/png', 'admin', '1', '38.96KB', 'png', '39899', '838D521A7EA544BF4A401A5906DC8A14', 'c3ed851cf54048599ad6fd104103ac53.png', '2019\\03-20\\c3ed851cf54048599ad6fd104103ac53.png', null, '1', '2', null, '1', '2019-03-20 17:15:48', '2019-03-20 17:15:48');
INSERT INTO `m_base_file` VALUES ('24', '登录日志管理.png', '2019/03-20/54d9fd6b-f292-4dab-a03c-7a65143c0505.png', '2019/03-20/54d9fd6b-f292-4dab-a03c-7a65143c0505.png', 'image/png', 'admin', '1', '1.33KB', 'png', '1362', '80BCB05550F8FC14E767F74876122114', '96766906f25a4d0d896d52035300b218.png', '2019\\03-20\\96766906f25a4d0d896d52035300b218.png', null, '1', '2', null, '1', '2019-03-20 17:32:45', '2019-03-20 17:32:45');
INSERT INTO `m_base_file` VALUES ('25', '单位管理.png', '2019/03-20/6bbf8fd0-f32f-4b5c-b571-018469e83b0e.png', '2019/03-20/6bbf8fd0-f32f-4b5c-b571-018469e83b0e.png', 'image/png', 'admin', '1', '1.33KB', 'png', '1367', '05307CA3CD3C0373AEDE1C01731D6094', '6403059a091d4a29996fa94d9aac571a.png', '2019\\03-20\\6403059a091d4a29996fa94d9aac571a.png', null, '1', '2', null, '1', '2019-03-20 17:32:45', '2019-03-20 17:32:45');
INSERT INTO `m_base_file` VALUES ('26', '部门管理.png', '2019/03-20/9f543d2b-37a1-4cba-b0b1-69fedfc58b6f.png', '2019/03-20/9f543d2b-37a1-4cba-b0b1-69fedfc58b6f.png', 'image/png', 'admin', '1', '1.31KB', 'png', '1346', 'F6CDDBB74B5B6512C6AC7D8DD8A8D0A1', '1ad4a8f52b194dbd8412ff24eb60b0e2.png', '2019\\03-20\\1ad4a8f52b194dbd8412ff24eb60b0e2.png', null, '1', '2', null, '1', '2019-03-20 17:32:45', '2019-03-20 17:32:45');
INSERT INTO `m_base_file` VALUES ('27', '工程类型管理.png', '2019/03-20/c83bd6af-303a-4dcd-8b53-9fe9a0e35a94.png', '2019/03-20/c83bd6af-303a-4dcd-8b53-9fe9a0e35a94.png', 'image/png', 'admin', '1', '1.20KB', 'png', '1229', 'ABF2B431A65F5AB1169C4024AC5BDD2D', 'd5dfb31066f14efba92624ed413f0057.png', '2019\\03-20\\d5dfb31066f14efba92624ed413f0057.png', null, '1', '2', null, '1', '2019-03-20 17:32:45', '2019-03-20 17:32:45');
INSERT INTO `m_base_file` VALUES ('28', '角色管理.png', '2019/03-20/f2352225-aa28-4b47-86d2-6faf7bf2859a.png', '2019/03-20/f2352225-aa28-4b47-86d2-6faf7bf2859a.png', 'image/png', 'admin', '1', '1.40KB', 'png', '1434', '82FE981B02C3948FB0910E49F8E13BA1', 'ec31854871fb437d88a85f85879cf40f.png', '2019\\03-20\\ec31854871fb437d88a85f85879cf40f.png', null, '1', '2', null, '1', '2019-03-20 17:32:45', '2019-03-20 17:32:45');
INSERT INTO `m_base_file` VALUES ('29', '权限管理.png', '2019/03-20/5d7abbf1-5386-42a0-8766-74ba32396b8e.png', '2019/03-20/5d7abbf1-5386-42a0-8766-74ba32396b8e.png', 'image/png', 'admin', '1', '1.31KB', 'png', '1341', 'C8A60F600DFB2C9E36E5EF08F0273B4D', '3dddc271de1b4dae8cfe6a4acca45a83.png', '2019\\03-20\\3dddc271de1b4dae8cfe6a4acca45a83.png', null, '1', '2', null, '1', '2019-03-20 17:32:46', '2019-03-20 17:32:46');
INSERT INTO `m_base_file` VALUES ('30', '审核流程自定义.png', '2019/03-20/529c2cac-1ae9-423b-b755-4e8084d880fe.png', '2019/03-20/529c2cac-1ae9-423b-b755-4e8084d880fe.png', 'image/png', 'admin', '1', '1.36KB', 'png', '1388', '435DE05B3CF7F1D3C86E5D68D5AFF04E', '4a40283886994f1788840c172ed03d96.png', '2019\\03-20\\4a40283886994f1788840c172ed03d96.png', null, '1', '2', null, '1', '2019-03-20 17:32:46', '2019-03-20 17:32:46');
INSERT INTO `m_base_file` VALUES ('31', '数字字典管理.png', '2019/03-20/bd1b718d-c5de-480b-8c24-1ad5ba56b69c.png', '2019/03-20/bd1b718d-c5de-480b-8c24-1ad5ba56b69c.png', 'image/png', 'admin', '1', '1.23KB', 'png', '1263', 'D4A34CAC992B5EE799D676E4D5B5D6A9', 'ac77b2ba21024566a20603023722bd3f.png', '2019\\03-20\\ac77b2ba21024566a20603023722bd3f.png', null, '1', '2', null, '1', '2019-03-20 17:32:46', '2019-03-20 17:32:46');
INSERT INTO `m_base_file` VALUES ('32', '文件路径管理.png', '2019/03-20/0fad4315-a0ae-46e5-8c63-f44e1c551126.png', '2019/03-20/0fad4315-a0ae-46e5-8c63-f44e1c551126.png', 'image/png', 'admin', '1', '1.23KB', 'png', '1257', 'D60C79C879422D082CB16ED28A119162', '99a810641624497fb1145908e318d704.png', '2019\\03-20\\99a810641624497fb1145908e318d704.png', null, '1', '2', null, '1', '2019-03-20 17:32:46', '2019-03-20 17:32:46');
INSERT INTO `m_base_file` VALUES ('33', '用户管理.png', '2019/03-20/8c8d2534-e2d1-46f7-a053-00732df1d780.png', '2019/03-20/8c8d2534-e2d1-46f7-a053-00732df1d780.png', 'image/png', 'admin', '1', '1.29KB', 'png', '1325', '35C91D025F86FB057A02F5E1650D8FFF', '2a98dd0eb966499fb0d58ed797e1adaf.png', '2019\\03-20\\2a98dd0eb966499fb0d58ed797e1adaf.png', null, '1', '2', null, '1', '2019-03-20 17:32:46', '2019-03-20 17:32:46');
INSERT INTO `m_base_file` VALUES ('34', '管理单位评价审核.png', '2019/03-20/723e32d4-d1cc-4d97-8702-d5d1c3837e8d.png', '2019/03-20/723e32d4-d1cc-4d97-8702-d5d1c3837e8d.png', 'image/png', 'admin', '1', '1.50KB', 'png', '1532', 'D30EDBE8D1DF83B3DA2C35DB1733D145', 'b3edd9ff091f4b1cb1330f9b29c26b4b.png', '2019\\03-20\\b3edd9ff091f4b1cb1330f9b29c26b4b.png', null, '1', '2', null, '1', '2019-03-20 17:35:12', '2019-03-20 17:35:12');
INSERT INTO `m_base_file` VALUES ('35', '评分标准.png', '2019/03-20/9381ee7c-28c3-46eb-a8b9-f05ad410e831.png', '2019/03-20/9381ee7c-28c3-46eb-a8b9-f05ad410e831.png', 'image/png', 'admin', '1', '1.55KB', 'png', '1590', 'A5EE86CD311C4310A714D8CB062A1074', '783e6ca7c32b4006ab6fd93df8d4d254.png', '2019\\03-20\\783e6ca7c32b4006ab6fd93df8d4d254.png', null, '1', '2', null, '1', '2019-03-20 17:35:12', '2019-03-20 17:35:12');
INSERT INTO `m_base_file` VALUES ('36', '评分统计.png', '2019/03-20/819693bd-87f2-4295-9911-5f6caa97da43.png', '2019/03-20/819693bd-87f2-4295-9911-5f6caa97da43.png', 'image/png', 'admin', '1', '1.32KB', 'png', '1350', '6B0A7F8235DB1A4793D797AD8A50E61B', '2e538522aefd41e28f3b79aa1a628543.png', '2019\\03-20\\2e538522aefd41e28f3b79aa1a628543.png', null, '1', '2', null, '1', '2019-03-20 17:35:12', '2019-03-20 17:35:12');
INSERT INTO `m_base_file` VALUES ('37', '评价审核.png', '2019/03-20/3221cd95-883f-4ff0-aed2-e79483782bef.png', '2019/03-20/3221cd95-883f-4ff0-aed2-e79483782bef.png', 'image/png', 'admin', '1', '1.54KB', 'png', '1575', '7D116504600FE75B311915C9D9DC5E5C', '39e980cba0e14860991faa0a0943f2b5.png', '2019\\03-20\\39e980cba0e14860991faa0a0943f2b5.png', null, '1', '2', null, '1', '2019-03-20 17:35:12', '2019-03-20 17:35:12');
INSERT INTO `m_base_file` VALUES ('38', '系统管理.png', '2019/03-20/f7c8ea87-f526-4735-a63c-ee17107bd00e.png', '2019/03-20/f7c8ea87-f526-4735-a63c-ee17107bd00e.png', 'image/png', 'admin', '1', '1.56KB', 'png', '1595', '2657CBCE03FDFE1C9AC5B27831C437B6', '71a019cabba540ab87cf07b063c8817f.png', '2019\\03-20\\71a019cabba540ab87cf07b063c8817f.png', null, '1', '2', null, '1', '2019-03-20 17:35:12', '2019-03-20 17:35:12');
INSERT INTO `m_base_file` VALUES ('39', '项目信息管理.png', '2019/03-20/aae1d7ff-e28a-4898-8546-149306a7d4b2.png', '2019/03-20/aae1d7ff-e28a-4898-8546-149306a7d4b2.png', 'image/png', 'admin', '1', '1.41KB', 'png', '1443', 'D5D4975B9FC81A200DDC8D7A35DD9938', '650710695c42453399edd5faba4f66d9.png', '2019\\03-20\\650710695c42453399edd5faba4f66d9.png', null, '1', '2', null, '1', '2019-03-20 17:35:12', '2019-03-20 17:35:12');
INSERT INTO `m_base_file` VALUES ('40', '图标管理.png', '2019/03-21/0e181813-5773-4943-810c-c5b3d8769246.png', '2019/03-21/0e181813-5773-4943-810c-c5b3d8769246.png', 'image/png', 'admin', '1', '1.73KB', 'png', '1768', '0B802A411DAF0F88502B081C02F7E7B6', '6a65d8b78e474ad9a7c73be439b2ffbb.png', '2019\\03-21\\6a65d8b78e474ad9a7c73be439b2ffbb.png', null, '1', '2', null, '1', '2019-03-21 11:15:02', '2019-03-21 11:15:02');

-- ----------------------------
-- Table structure for m_zone_path
-- ----------------------------
DROP TABLE IF EXISTS `m_zone_path`;
CREATE TABLE `m_zone_path` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `virtual_path` varchar(255) DEFAULT NULL,
  `view_path` varchar(255) DEFAULT NULL,
  `warm_value` bigint(20) DEFAULT NULL,
  `zone_name` varchar(1) DEFAULT NULL,
  `flag` smallint(6) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_zone_path
-- ----------------------------
INSERT INTO `m_zone_path` VALUES ('1', '普通文件', '1', 'D:/SZZJ_FILE_STORE/common-file', 'commomFile', '/SZZJ_FILE_STORE/common-file/view', '/view', '10000', 'D', '0', null, '2018-08-06 08:47:40', '2019-03-20 17:18:11');
INSERT INTO `m_zone_path` VALUES ('2', '临时文件地址', '1', 'D:/SZZJ_FILE_STORE/temp-file', 'tempFile', '', 'tempFile', '10000', 'D', '0', null, '2017-07-25 09:16:07', '2018-10-15 09:34:14');

-- ----------------------------
-- Table structure for sys_logs
-- ----------------------------
DROP TABLE IF EXISTS `sys_logs`;
CREATE TABLE `sys_logs` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `THREAD` varchar(100) DEFAULT NULL,
  `CLASS_NAME` varchar(200) DEFAULT NULL,
  `METHOD` varchar(100) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `LOGLEVEL` varchar(10) DEFAULT NULL,
  `MSG` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=235514 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_logs
-- ----------------------------

-- ----------------------------
-- Table structure for sys_white_domain
-- ----------------------------
DROP TABLE IF EXISTS `sys_white_domain`;
CREATE TABLE `sys_white_domain` (
  `id` varchar(32) NOT NULL,
  `sort` bigint(20) NOT NULL AUTO_INCREMENT,
  `white_address` varchar(255) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `gmt_modified` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `white_sort_key` (`sort`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_white_domain
-- ----------------------------
