/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50726 (5.7.26)
 Source Host           : localhost:3306
 Source Schema         : chancms

 Target Server Type    : MySQL
 Target Server Version : 50726 (5.7.26)
 File Encoding         : 65001

 Date: 07/01/2025 21:47:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cms_article
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NULL DEFAULT NULL COMMENT '栏目id',
  `subCid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其它栏目id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `shortTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '短标题',
  `tagId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标签id',
  `attr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '1头条 2推荐 3轮播 4热门',
  `articleView` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '详情页模板',
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作者',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章简述',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '缩略图',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '文章内容',
  `status` tinyint(2) NULL DEFAULT 0 COMMENT '0 发布 1 不发布',
  `pv` int(10) NULL DEFAULT 0 COMMENT '浏览量',
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '外链',
  `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_article
-- ----------------------------
INSERT INTO `cms_article` VALUES (1, 2, '', 'ChanCMS内容管理系统', '', '2', '', '', '', '', 'ChanCMS是一款基于Node、Express、MySQL、Vue3研发的高质量实用型CMS系统。轻量、灵活、稳定、高性能、易扩展，让开发更简单。', '', '<p>ChanCMS是一款基于Node、Express、MySQL、Vue3研发的高质量实用型CMS系统。轻量、灵活、稳定、高性能、易扩展，让开发更简单。</p>\n<ul>\n<li>自研。基于自研chanjs轻量级mvc框架实现，轻量、灵活、稳定、高性能、可持续。</li>\n<li>SEO。专注于<code>seo</code>,伪静态<code>html</code>和拼音导航，灵活设置关键词和描述。</li>\n<li>安全。基于<code>knex</code>,高防<code>sql</code>注入，接口权限校验，为安全提供保障。</li>\n<li>灵活。碎片功能，支持零碎文案配置，方便各类灵活文案配置。</li>\n<li>高扩展。支持扩展模型，字段配置，可动态生成表，超强扩展。</li>\n<li>模块化。一切模块相互独立，互不干扰。</li>\n<li>插件化。灵活开发，支持完整功能模块。</li>\n<li>无头cms，为多端提供接口支持。</li>\n</ul>', 0, 14, '', '2024-09-13 22:49:28', '2024-11-24 02:43:13');
INSERT INTO `cms_article` VALUES (2, 3, '', 'ChanCMS山水图：风景图', '', '2', '', '', '', '', '山峰树林湖泊', '/public/cover/04.jpg', '<p><img src=\"https://q5.itc.cn/q_70/images03/20240706/62869b54ec3c4ea5a842b97ac9722630.jpeg\" alt=\"\" width=\"2062\" height=\"1200\"></p>', 0, 32, '', '2024-09-13 22:55:57', '2024-12-13 23:36:50');
INSERT INTO `cms_article` VALUES (3, 4, '', 'ChanCMS后台基本操作', '', '2', '', '', '', '', 'ChanCMS后台基本操作', '', '<p><iframe src=\"//player.bilibili.com/player.html?isOutside=true&aid=877077167&bvid=BV17N4y1Y7WC&cid=1362009352&p=1\" height=\"520\" frameborder=\"no\" scrolling=\"no\" allowfullscreen=\"allowfullscreen\"></iframe></p>', 0, 7, '', '2024-09-13 22:59:58', '2024-10-02 21:42:15');
INSERT INTO `cms_article` VALUES (5, 7, '', 'ChanCMS简介', '', '2', '', '', '', '', 'ChanCMS简介', '', '<p><strong>ChanCMS内容管理系统</strong></p>\n<p>ChanCMS是一款基于Node、Express、MySQL、Vue3研发的高质量实用型CMS系统。轻量、灵活、稳定、高性能、易扩展，让开发更简单。</p>\n<p><strong>系统特色</strong></p>\n<p>自研。基于自研chanjs轻量级mvc框架实现，轻量、灵活、稳定、高性能、可持续。</p>\n<p>SEO。专注于seo,伪静态html和拼音导航，灵活设置关键词和描述。</p>\n<p>安全。基于knex,高防sql注入，接口权限校验，为安全提供保障。</p>\n<p>灵活。碎片功能，支持零碎文案配置，方便各类灵活文案配置。</p>\n<p>高扩展。支持扩展模型，字段配置，可动态生成表，超强扩展。</p>\n<p>模块化。一切模块相互独立，互不干扰。</p>\n<p>插件化。灵活开发，支持完整功能模块。</p>\n<p>无头cms，为多端提供接口支持。</p>\n<p><strong>软件架构</strong></p>\n<p>后台管理FE</p>\n<pre class=\"language-markup\"><code>vue3\nvue-router\npina\nelement-plus\nvite4\ntinymce</code></pre>\n<p>服务端技术栈</p>\n<pre class=\"language-markup\"><code>nodejs v20.16.0+\nexpress 4.18+\nmysql v5.7.26\nknex (sql操作)\nart-tempate v4.13.2+\npm2 v5.2.2\njwt\npm2 (prd)\nnodemon (dev)</code></pre>', 0, 66, '', '2024-09-13 23:06:30', '2024-12-13 22:05:13');
INSERT INTO `cms_article` VALUES (6, 3, '', 'ChanCMS山水图：桂林山水', '', '2', '', '', '', '', '', '/public/cover/06.jpg', '<p><img src=\"https://img-qn.51miz.com/preview/element/00/01/30/75/E-1307587-924E2CBE.png!/quality/90/unsharp/true/compress/true/format/png/fwfh/900x640\" alt=\"\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://p3-pc-sign.douyinpic.com/tos-cn-i-0813c001/ogKHZvfQQ30BGWXEzfeP2BQ70OA5AA7AAdyJgF~tplv-dy-aweme-images-v2:3000:3000:q75.webp?biz_tag=aweme_images&from=327834062&s=PackSourceEnum_AWEME_DETAIL&sc=image&se=false&x-expires=1729130400&x-signature=vl4RUOePzX7s4npn4oARkHH6EAc%3D\" alt=\"\" width=\"896\" height=\"1536\"></p>', 0, 5, '', '2024-09-17 10:53:54', '2024-12-13 23:36:52');
INSERT INTO `cms_article` VALUES (7, 3, '', 'ChanCMSAIGC图片美女', '', '2', '', '', '', '', '', '/public/cover/10.jpg', '<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://p9-heycan-hgt-sign.byteimg.com/tos-cn-i-3jr8j4ixpe/31f5581b6dee463bb23c6f4a31d1b204~tplv-3jr8j4ixpe-aigc_resize:0:0.png?lk3s=43402efa&x-expires=1728864000&x-signature=AP23D4sBKcal3LurrbHp9WWra8M%3D&format=.png\" alt=\"\"></p>', 0, 4, '', '2024-09-27 10:06:09', '2024-12-13 23:36:54');
INSERT INTO `cms_article` VALUES (8, 3, '', 'ChanCMS图片美女', '', '2', '', '', '', '', '', '/public/cover/06.jpg', '<p style=\"text-align: center;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://p3-heycan-hgt-sign.byteimg.com/tos-cn-i-3jr8j4ixpe/b9255497ccf94fcf9a1c873eda23b78f~tplv-3jr8j4ixpe-aigc_resize:0:0.png?lk3s=43402efa&x-expires=1728864000&x-signature=xU2jY9QGyZY5ZeG56f%2BZgRyJ4Yk%3D&format=.png\" alt=\"\"></p>', 0, 2, '', '2024-09-27 10:07:52', '2024-12-13 23:36:55');
INSERT INTO `cms_article` VALUES (9, 3, '', 'ChanCMS图片美女', '', '2', '', '', '', '', '', '/public/cover/07.jpg', '<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://p3-heycan-hgt-sign.byteimg.com/tos-cn-i-3jr8j4ixpe/9266d858c987459a96ff3a1847d8c9fb~tplv-3jr8j4ixpe-aigc_resize:0:0.png?lk3s=43402efa&x-expires=1728864000&x-signature=%2F%2BWXysOaMFc6Gm%2Fkiv%2FyT2d%2FoAQ%3D&format=.png\" alt=\"\"></p>', 0, 5, '', '2024-09-27 10:37:12', '2024-12-13 23:36:57');
INSERT INTO `cms_article` VALUES (10, 3, '', 'ChanCMS图片美女', '', '2', '', '', '', '', '', '/public/cover/04.jpg', '<p style=\"text-align: center;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://p9-heycan-hgt-sign.byteimg.com/tos-cn-i-3jr8j4ixpe/178004138fad44e3ac7bfd0e6f415e38~tplv-3jr8j4ixpe-aigc_resize:2000:2000.png?lk3s=43402efa&x-expires=1747308745&x-signature=zEPP6LTkWbEnU%2B9af0J1pBPfrqI%3D&format=.png\" alt=\"\" width=\"288\" height=\"512\"></p>', 0, 5, '', '2024-09-27 10:46:27', '2024-12-13 23:36:58');
INSERT INTO `cms_article` VALUES (11, 6, '', 'ChanCMS欢迎使用ChanCMS系统', '', '2', '', 'special.html', '', '', '', '', '<section class=\"banner row justify-center\">\n<h1 class=\"chanyue text-c\">ChanCMS</h1>\n<p class=\"f-23 text-c mt-20\">基于express+mysql的一款轻量级高质量cms管理系统</p>\n<p class=\"text-c mt-20\"><span class=\"el-button el-button--primary is-round mr-10 c-fff\"><a href=\"https://www.chancms.top/docs/index.html\" target=\"_blank\" rel=\"noopener\">开始使用</a> </span><span class=\"el-button el-button--primary is-round c-fff\"><a href=\"https://gitee.com/yanyutao0402/chanyue-cms\" target=\"_blank\" rel=\"noopener\">码云</a></span></p>\n</section>\n<section class=\"main center flex justify-between flex-wrap pd-30\">\n<div class=\"m-card\">\n<h3 class=\"f-20 mb-20\">大道至简</h3>\n<p class=\"f-16 mb-20\">基于express自研mvc框架， 优秀的稳定性，可持续迭代，拒绝复杂设计模式。</p>\n</div>\n<div class=\"m-card\">\n<h3 class=\"f-20 mb-20\">独有特色</h3>\n<p class=\"f-16 mb-20\">轻量、灵活、自研、稳定、高性能。</p>\n</div>\n<div class=\"m-card\">\n<h3 class=\"f-20 mb-20\">SEO标准</h3>\n<p class=\"f-16 mb-20\">专注于seo功能，伪静态、自定义导航、灵活设置关键词和描述。</p>\n</div>\n<div class=\"m-card\">\n<h3 class=\"f-20 mb-20\">灵活</h3>\n<p class=\"f-16 mb-20\">万能碎片功能，支持零碎文案配置，把灵活发挥到极致。</p>\n</div>\n<div class=\"m-card\">\n<h3 class=\"f-20 mb-20\">高扩展</h3>\n<p class=\"f-16 mb-20\">无头cms和传统模板共存，多端渲染。灵活模块开发，开发多领域网站。</p>\n</div>\n<div class=\"m-card\">\n<h3 class=\"f-20 mb-20\">高持续性</h3>\n<p class=\"f-16 mb-20\">多年深入nodejs技术栈，一心致力于自研开发，前后端代码逐行开发，可持续性强。</p>\n</div>\n</section>\n<footer class=\"pd-20\">\n<p class=\"mt-30 text-c f-14\">&copy;CopyRight ChanCMS</p>\n<p class=\"mt-5 text-c f-12\"><a href=\"https://beian.miit.gov.cn/\" target=\"_blank\" rel=\"external nofollow noopener\">皖ICP备2024033678号-1</a></p>\n</footer>', 0, 45, '', '2024-10-02 13:58:53', '2024-12-13 23:37:01');
INSERT INTO `cms_article` VALUES (13, 5, '', 'ChanCMS v3.0.6下载', '', '2', '', '', '', '', '', '', '<p>ChanCMS是一款基于Node、Express、MySQL、Vue3研发的高质量实用型CMS系统。</p>', 0, 16, '', '2024-10-02 15:40:46', '2024-10-02 15:40:46');
INSERT INTO `cms_article` VALUES (14, 2, '', 'ChanCMS', '', '2', '', 'article-pdf.html', '', '', '', '', '<p>/public/doc/1.pdf</p>', 0, 36, '', '2024-11-09 18:40:34', '2024-12-13 23:37:02');
INSERT INTO `cms_article` VALUES (15, 9, '', 'ChanCMS于作者', '', '2', '', '', '', '', '关于作者测试单页', '', '<p>关于作者测试单页</p>', 0, 21, '', '2024-12-05 23:26:59', '2024-12-13 23:37:04');
INSERT INTO `cms_article` VALUES (18, 8, '', 'ChanCMS早间新闻—2024-12-08', '', '2', '', '', '', '', '123', '', '<p>123</p>', 0, 1, '', '2024-12-09 23:16:07', '2024-12-09 23:16:07');
INSERT INTO `cms_article` VALUES (21, 8, '', 'ChanCMS一条鱼如何“接二连三”', '', '2', '', NULL, '', '', '  凌晨2点刚过，王金友就赶到自家鱼塘忙着捕鱼出货了。', '', '  <p>凌晨2点刚过，王金友就赶到自家鱼塘忙着捕鱼出货了。</p> <p>两个小时左右，3万来斤黄金鲫就经由水路运抵兴化市沙沟镇上的鱼行，近18万元卖鱼款很快到账。随着早市开场，从各个塘口汇聚而来的鲜鱼将发往农副市场、食品企业、景区饭店等处。</p> <p>兴化水网纵横，渔业发达，是江苏著名的“鱼米之乡”。当地的“一条鱼”，不仅富了养殖业，兴了加工业，也带动了旅游业发展，成了江苏农特产“接二连三”融合发展的缩影。</p> <p style=\"text-align: center;\"><img src=\"http://www.people.com.cn//NMediaFile/2024/0822/LOCAL1724282105015SPVOL0QXRZ.jpg\" width=\"600\" height=\"338\" alt=\"王金友家的鱼塘配备了自动投饵机。人民网 范尧摄\"></p> <p style=\"text-align: center;\"><span desc=\"desc\">王金友家的鱼塘配备了自动投饵机。人民网 范尧摄</span></p> <p><strong>一条鱼，养在水中富民增收</strong></p> <p>“如果不是今天捕鱼，现在投饵根本不出家门，直接手机操作，还可以看到鱼塘的实时画面。”王金友说。</p> <p>作为有着30多年经验的养鱼户，以前最让王金友头疼的就是喂鱼。一袋袋菜籽饼搬到船上，用铁锹拌匀，一锹锹撒到水塘，每天成百上千斤的鱼食，“哪怕是冬季，一到喂鱼时那汗出的，衣服就没有干过。”</p> <p>如今，鱼塘全部装上了自动投饵机，定时定量投喂，王金友感慨：“现在承包400亩鱼塘，一年能卖600多万元，从来没觉得养鱼像这样轻松。”</p> <p>作为主打农产品，兴化市淡水鱼养殖规模常年维持在16万亩。当地以淡水鱼、大闸蟹为主的水产品年产量超30万吨，连续34年位居江苏省内陆渔业县级之首，渔业经济年产值达260多亿元。</p> <p style=\"text-align: center;\"><img src=\"http://www.people.com.cn//NMediaFile/2024/0822/LOCAL1724282118793UALTZ2ZRGW.jpg\" width=\"600\" height=\"450\" alt=\"当地企业展柜里摆放着部分以鱼为原料开发的食品。人民网 王丹丹摄\"></p> <p style=\"text-align: center;\"><span desc=\"desc\">当地企业展柜里摆放着部分以鱼为原料开发的食品。人民网 王丹丹摄</span></p> <p><strong>一条鱼，生产线上吃干榨净</strong></p> <p>早上7点，5辆厢式货车陆续驶入兴化经济开发区的大泽水产制品有限公司。这趟运来的5万多斤鲢鱼，是渔业经纪人姜绍喜一早从兴化各塘口收来的。</p> <p>活鱼经传送带进入车间，生产线启动作业，80多位工人依次进行分级、打鳞、切断等初处理。</p> <p>一条鲢鱼切为鱼头和鱼身，分别在剁椒鱼头和鱼块生产线上速冻锁鲜，抽真空后再组合料包，做成不同种类的包装食品。此外，鱼骨等经过熟化、粉碎、烘干被加工成宠物饲料。</p> <p>“仅‘边角料’利用，每年就为企业增收近百万元。”该公司总经理张永山介绍，这种对一条鱼“吃干榨净”式的综合利用，既提高了经济效益，也实现了对生鱼废料的清洁化处理。“我们每天要用掉10万斤左右鲢鱼，把兴化本地的鲢鱼都买完，也只能满足需求量的1/3。”他说。</p> <p>在兴化，以鱼为原料的包装食品，除了剁椒鱼头，还有烤鱼、酸菜鱼等。与此同时，健康食品产业也已成为当地三大主导产业之一，规上企业年度开票收入突破110亿元。</p> <p style=\"text-align: center;\"><img src=\"http://www.people.com.cn//NMediaFile/2024/0822/LOCAL1724282131269FYZXGVZQYM.jpg\" width=\"600\" height=\"337\" alt=\"沙沟镇河网纵横，尽显水乡风貌。人民网 范尧摄\"></p> <p style=\"text-align: center;\"><span desc=\"desc\">沙沟镇河网纵横，尽显水乡风貌。人民网 范尧摄</span></p> <p><strong>一条鱼，以农兴旅的美食担当</strong></p> <p>72岁的江荣根在外工作了大半辈子，退休后以“游客”身份回到家乡兴化。促使他回乡“旅居”的，是一碗念念不忘的鱼汤面。</p> <p>“原本只想在亲戚家住两天就回上海，结果却在老家住了下来。”江荣根入住的民宿“枇杷苑”，老板王秀荣做得一手家乡菜，而最能打动江荣根的，还是那碗鱼汤面。</p> <p>鱼汤是将鳝鱼剔肉留骨，加入小鲫鱼、大猪骨煸炒，用文火慢炖到浓白，最后再把下好的面条放到汤头里。这一碗汤鲜味美的鱼汤面让江荣根穿过数十年岁月，吃到了“小时候的味道”。</p> <p>每年住在兴化的时间里，江荣根都会邀请他在上海的“退休团”朋友同来，春看垛田油菜，夏赏万亩荷塘，秋游水上森林，冬观候鸟翔集。沙沟古镇景区内的金沙沟水席馆，一道兴化鱼圆颇受大家的好评。“不少客人都说，就为这口鱼圆来的兴化，吃完还要打包几份带走。高峰期我们一天能卖掉大几百斤。”在金沙沟水席馆总经理张庄巧眼里，鱼汤面也好，鱼圆也罢，都是本乡人的家常饭菜，也是城里人舌尖上的乡愁记忆。</p> <p>以农兴旅，以旅促农，美食总是屡试不爽的关键。仅金沙沟水席馆这一家，一年上百万元的营业额中，淡水鱼有关的菜品销售占近七成。而像这样的餐馆，兴化境内的景区里比比皆是。</p> <p style=\"text-align: center;\"><img src=\"http://www.people.com.cn//NMediaFile/2024/0822/LOCAL17242819971464D92R8R6C7.jpg\" width=\"600\" height=\"567\" alt=\"每年6月的万人龙虾宴，是盱眙龙虾爆火的标志。许昌银摄\"></p> <p style=\"text-align: center;\"><span desc=\"desc\">每年6月的万人龙虾宴，是盱眙龙虾爆火的标志。许昌银摄</span></p> <p><strong>“接二连三”的，不止一条鱼</strong></p> <p>产业振兴是乡村振兴的重中之重。事实上，像“兴化的一条鱼”这样“接二连三”的故事，江苏还有很多。</p> <p>淮安市盱眙县有“中国龙虾之都”的美称，该县小龙虾养殖面积97万亩，从养殖、加工到餐饮，从事龙虾相关产业的人口超过20万，形成了一个年产值超300亿元的富民产业。去年投产的龙虾超级工厂，更让盱眙龙虾成为只需24小时就能从当地虾田送到全国消费者手中的即食美味。</p> <p>在无锡市惠山区阳山镇，3.5万亩桃林，5000多户桃农，成就了当地人的一项甜蜜产业。当地不光卖桃，还卖起了风景，全年200多万的游客带来农旅两旺，阳山农民人均可支配收入高达6.6万元。</p> <p>近些年，江苏持续倡导推动农村一二三产业融合发展。人民网从江苏省农业农村厅了解到，截至目前，江苏以“一村一品、一镇一特、一县一业”为抓手，已打造10亿元以上县域优势特色产业近200个，培育国家农业产业强镇60多个、全国“一村一品”示范村镇200多个。</p> <p>“一二三产业融合发展可以将资源优势转变为产品优势，产品优势转化为产业优势，产业优势转化为市场优势，是乡村产业振兴的进阶方向。其关键在于找准特色资源和优势产业，注重发挥龙头企业的带动作用，并持续优化产业链合作机制，切实带动农民增收。”江苏省农科院农产品加工研究所首席研究员李春阳说。</p><center></center> ', 0, 2, '', '2024-12-09 23:17:35', '2024-12-13 23:44:46');
INSERT INTO `cms_article` VALUES (22, 8, NULL, 'ChanCMS早间新闻—2024-12-14', '', '', '', '', '', '', '', '', NULL, 0, 1, '', '2024-12-15 14:56:27', '2024-12-15 14:56:27');
INSERT INTO `cms_article` VALUES (23, 8, NULL, 'ChanCMS早间新闻—2024-12-14', '', '', '', '', '', '', '', '', NULL, 0, 1, '', '2024-12-15 14:58:59', '2024-12-15 14:58:59');
INSERT INTO `cms_article` VALUES (24, 8, NULL, 'ChanCMS早间新闻—2024-12-14', '', '', '', '', '', '', '', '', NULL, 0, 1, '', '2024-12-15 15:04:13', '2024-12-15 15:04:13');
INSERT INTO `cms_article` VALUES (25, 8, NULL, 'ChanCMS早间新闻—2024-12-14', '', '', '', '', '', '', '', '', '<p>1、财政部：个人养老金投资环节收益暂不征个税，领取环节按3%税率缴个税；</p><p>2、中国足协：将进一步严格准入标准，对假赌黑零容忍；</p><p>3、国防部：福建舰下步将逐步展开后续试验项目；</p><p>4、13日，国足原主教练李铁一审获刑20年，犯受贿罪等五项罪名，涉案金额上亿元，当庭认罪悔罪；</p><p>5、杭州：明年起，在中心城区限制国四柴油汽车通行；</p><p>6、安徽一男子开皮卡给农机打一千多元柴油，被罚3万元，执法人员：已按照最低限度进行罚款，已是人性化处罚；</p><p>7、台媒：美制M1A2T主战坦克将于深夜抵台，首批38辆，台军称是“地表最强“；</p><p>8、加拿大考虑对铀、石油和钾肥等大宗商品征收出口税，以反击特朗普关税威胁；</p><p>9、中美续签两国政府科学技术合作协定，将延期5年；</p><p>10、越共中央决定对前国家主席阮春福给予纪律处分和警告；</p><p>11、外媒：特朗普当选《时代》杂志2024年年度人物，称不排除与伊朗开战可能性；</p><p>12、乌媒：俄高级导弹科学家莫斯科郊外被枪杀，曾任俄“火星设计局“首席科学家及软件部门负责人，俄暂未回应；</p><p>13、特朗普：“强烈反对“乌方使用美制导弹袭击俄腹地，克宫回应：与俄方立场\'完全一致“；</p><p>14、德法英等国外长发表声明：支持增加对乌军事、经济和财政援助，并继续支持支持乌加入北约和欧盟；</p><p>15、韩媒：韩国国会对总统尹锡悦的第二次弹劾动议案将提前至14日下午4时进行表决；尹锡悦继续行使总统权力，先后批准了42项法案及施行令等，还向国会提交大法官任命同意案；韩国民调显示尹锡悦支持率降至11%，创历史新低；</p>', 0, 1, '', '2024-12-15 15:04:39', '2024-12-15 15:04:39');

-- ----------------------------
-- Table structure for cms_articletag
-- ----------------------------
DROP TABLE IF EXISTS `cms_articletag`;
CREATE TABLE `cms_articletag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NULL DEFAULT NULL COMMENT '文章id',
  `tid` int(11) NULL DEFAULT NULL COMMENT '标签id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章-标签表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_articletag
-- ----------------------------
INSERT INTO `cms_articletag` VALUES (22, 5, 0);
INSERT INTO `cms_articletag` VALUES (23, 1, 2);
INSERT INTO `cms_articletag` VALUES (24, 2, 1);
INSERT INTO `cms_articletag` VALUES (25, 3, 2);
INSERT INTO `cms_articletag` VALUES (27, 6, 1);
INSERT INTO `cms_articletag` VALUES (28, 7, 1);
INSERT INTO `cms_articletag` VALUES (29, 8, 1);
INSERT INTO `cms_articletag` VALUES (30, 9, 1);
INSERT INTO `cms_articletag` VALUES (31, 10, 1);
INSERT INTO `cms_articletag` VALUES (37, 11, 0);
INSERT INTO `cms_articletag` VALUES (62, 21, 2);
INSERT INTO `cms_articletag` VALUES (63, 18, 2);
INSERT INTO `cms_articletag` VALUES (64, 15, 2);
INSERT INTO `cms_articletag` VALUES (65, 14, 2);
INSERT INTO `cms_articletag` VALUES (67, 22, 0);
INSERT INTO `cms_articletag` VALUES (68, 23, 0);
INSERT INTO `cms_articletag` VALUES (69, 24, 0);
INSERT INTO `cms_articletag` VALUES (70, 25, 0);
INSERT INTO `cms_articletag` VALUES (71, 13, 2);

-- ----------------------------
-- Table structure for cms_category
-- ----------------------------
DROP TABLE IF EXISTS `cms_category`;
CREATE TABLE `cms_category`  (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT COMMENT '栏目id',
  `pid` tinyint(2) NOT NULL DEFAULT 0 COMMENT '父级栏目',
  `seoTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'seo标题',
  `seoKeywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'seo关键字',
  `seoDescription` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'seo描述',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '栏目名称',
  `pinyin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '栏目标识',
  `path` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目路径',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '栏目描述',
  `type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '0 栏目 1 页面',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '网址',
  `orderBy` tinyint(2) NULL DEFAULT 0 COMMENT '排序',
  `target` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '打开方式 0 当前页面打开 1 新页面打开',
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '0 显示 1隐藏',
  `mid` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '模型id',
  `listView` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'list.html' COMMENT '列表页模板',
  `articleView` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'article.html' COMMENT '详情页模板',
  `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '网站栏目' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_category
-- ----------------------------
INSERT INTO `cms_category` VALUES (1, 0, '', '', '', '首页', 'home', '/home', '', '1', '', 0, '0', '0', '0', 'index.html', 'article.html', '2024-09-13 22:38:12', '2024-09-17 15:47:29');
INSERT INTO `cms_category` VALUES (2, 0, '', '', '', '文章', 'art3', '/art3', '', '0', '', 0, '0', '0', '0', 'list.html', 'article.html', '2024-09-13 22:38:12', '2024-12-06 00:13:05');
INSERT INTO `cms_category` VALUES (3, 0, '', '', '', '图片', 'pics', '/pics', '', '0', '', 0, '0', '0', '0', 'list-img.html', 'article-img.html', '2024-09-13 22:39:02', '2024-09-17 10:26:10');
INSERT INTO `cms_category` VALUES (4, 0, '', '', '', '视频', 'video', '/video', '', '0', '', 0, '0', '0', '0', 'list.html', 'article.html', '2024-09-13 22:39:22', '2024-09-13 22:39:22');
INSERT INTO `cms_category` VALUES (5, 0, '', '', '', '下载', 'down', '/down', '', '0', '', 0, '0', '0', '1', 'list.html', 'article-down.html', '2024-09-13 22:39:44', '2024-10-02 15:45:16');
INSERT INTO `cms_category` VALUES (6, 0, '', '', '', '专题', 'topic', '/topic', '', '1', '', 0, '0', '0', '0', 'list.html', 'special.html', '2024-09-13 22:42:10', '2024-10-01 14:41:51');
INSERT INTO `cms_category` VALUES (7, 0, '', '', '', '关于', 'about', '/about', '', '1', '', 0, '0', '0', '0', 'list.html', 'page.html', '2024-09-13 22:42:55', '2024-09-13 23:09:29');
INSERT INTO `cms_category` VALUES (8, 2, '', '', '', '文档', 'doc', '/art2/doc', '', '0', '', 0, '0', '0', '0', 'list.html', 'article.html', '2024-12-05 22:35:58', '2025-01-07 21:41:13');
INSERT INTO `cms_category` VALUES (9, 7, '', '', '', '作者', 'zuozhe', '/about/zuozhe', '', '1', '', 0, '0', '0', '0', 'list.html', 'page.html', '2024-12-05 23:25:44', '2024-12-05 23:34:37');

-- ----------------------------
-- Table structure for cms_field
-- ----------------------------
DROP TABLE IF EXISTS `cms_field`;
CREATE TABLE `cms_field`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NULL DEFAULT NULL COMMENT '模型id',
  `cname` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模型字段中文名称',
  `ename` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '模型字段英文名称',
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表单类型\r\n1单行文本	\r\n2.多行文本 \r\n3.下拉菜单 \r\n4.单选 \r\n5.多选 \r\n6.时间和日期 7.数字',
  `val` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段配置 下拉菜单多选等选项配置',
  `defaultVal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '默认值',
  `orderBy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '字段顺序',
  `length` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字段长度',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `model_id`(`mid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字段字典' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_field
-- ----------------------------
INSERT INTO `cms_field` VALUES (1, 1, '文件名称', 'fileName', '1', '', '', '0', '');
INSERT INTO `cms_field` VALUES (2, 1, '文件版本', 'fileVersion', '1', '', '', '0', '');
INSERT INTO `cms_field` VALUES (3, 1, '文件链接', 'fileLink', '1', '', '', '0', '');
INSERT INTO `cms_field` VALUES (4, 1, '测试1', 'test1', '4', '', '{\"options\":[{\"label\":\"本地下载\",\"value\":\"1\"},{\"label\":\"电信下载\",\"value\":\"2\"}]}', '0', '');

-- ----------------------------
-- Table structure for cms_frag
-- ----------------------------
DROP TABLE IF EXISTS `cms_frag`;
CREATE TABLE `cms_frag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '名称',
  `mark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标识',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '内容',
  `type` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '类型 1 富文本 2 文本框',
  `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '碎片' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_frag
-- ----------------------------
INSERT INTO `cms_frag` VALUES (1, 'chancms简介', 'chancms', '<p><span style=\"font-size: 14px;\">ChanCMS是一款基于Node、Express、MySQL、Vue3研发的高质量实用型CMS系统。轻量、灵活、稳定、高性能、易扩展，让开发更简单。</span></p>', '1', '2024-09-13 22:53:33', '2024-09-27 10:51:41');
INSERT INTO `cms_frag` VALUES (2, 'PowerBy', 'PowerBy', '<p style=\"text-align: center;\">Powder By <a href=\"http://www.chancms.top\" target=\"_blank\" rel=\"noopener\">ChanCMS v3.0.11</a></p>', '1', '2024-09-27 11:00:03', '2024-12-06 21:52:17');

-- ----------------------------
-- Table structure for cms_friendlink
-- ----------------------------
DROP TABLE IF EXISTS `cms_friendlink`;
CREATE TABLE `cms_friendlink`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '链接名称',
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '链接地址',
  `orderBy` tinyint(255) NULL DEFAULT 0 COMMENT '排序',
  `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '友情链接' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_friendlink
-- ----------------------------
INSERT INTO `cms_friendlink` VALUES (1, 'ChanCMS官网', 'https://www.chancms.top', 0, '2024-10-02 14:12:45', '2024-10-02 14:12:45');

-- ----------------------------
-- Table structure for cms_message
-- ----------------------------
DROP TABLE IF EXISTS `cms_message`;
CREATE TABLE `cms_message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('1','2','3','4') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '留言分类 1->咨询 2->建议 3->投诉 4->其它',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '留言标题',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `tel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电话',
  `wechat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信',
  `company` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '留言内容',
  `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '留言' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_message
-- ----------------------------

-- ----------------------------
-- Table structure for cms_model
-- ----------------------------
DROP TABLE IF EXISTS `cms_model`;
CREATE TABLE `cms_model`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模型名称',
  `tableName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模型对应的表名',
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '1->开启 0->关闭',
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '模型字典' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_model
-- ----------------------------
INSERT INTO `cms_model` VALUES (1, '下载模型', 'ext_download', '1', '下载模型');

-- ----------------------------
-- Table structure for cms_site
-- ----------------------------
DROP TABLE IF EXISTS `cms_site`;
CREATE TABLE `cms_site`  (
  `id` int(2) NOT NULL AUTO_INCREMENT COMMENT '站点id',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '网站名称',
  `domain` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '网站域名',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `wx` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信',
  `icp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ICP备案号',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '站点统计代码',
  `json` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '万能配置',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '页面标题',
  `keywords` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '页面关键词',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '页面描述',
  `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '网站信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_site
-- ----------------------------
INSERT INTO `cms_site` VALUES (1, 'ChanCMS', 'www.chancms.top', '867528315@qq.com', NULL, '皖ICP备2024030927号-1', '', '', 'ChanCMS', 'ChanCMS', 'ChanCMS是一款基于Express和MySQL研发的高质量实用型CMS管理系统。它具备多种类型网站开发，易扩展、基于模块化和插件化开发模式，适用于商用企业级程序开发。', NULL, '2024-12-02 21:58:18');

-- ----------------------------
-- Table structure for cms_slide
-- ----------------------------
DROP TABLE IF EXISTS `cms_slide`;
CREATE TABLE `cms_slide`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `imgUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '轮播图',
  `linkUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '轮播链接',
  `mark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '轮播图' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_slide
-- ----------------------------
INSERT INTO `cms_slide` VALUES (1, '轮播图1', '/public/cover/01.jpg', '', NULL, '2024-09-17 10:52:05', '2024-09-17 10:52:05');
INSERT INTO `cms_slide` VALUES (2, '轮播图2', '/public/cover/02.jpg', '', NULL, '2024-09-17 10:52:15', '2024-09-17 10:52:15');
INSERT INTO `cms_slide` VALUES (3, '轮播图01', '/public/uploads/default/2024/12/15/1734245257724_source_001.jpg', 'http://www.baidu.com', NULL, '2024-09-17 10:52:25', '2024-12-15 14:48:38');

-- ----------------------------
-- Table structure for cms_tag
-- ----------------------------
DROP TABLE IF EXISTS `cms_tag`;
CREATE TABLE `cms_tag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标签名称',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '标识',
  `count` int(11) NULL DEFAULT 0 COMMENT '引用次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '标签' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_tag
-- ----------------------------
INSERT INTO `cms_tag` VALUES (1, '图片', 'pic', 6);
INSERT INTO `cms_tag` VALUES (2, 'chancms', 'chancms', 7);

-- ----------------------------
-- Table structure for ext_download
-- ----------------------------
DROP TABLE IF EXISTS `ext_download`;
CREATE TABLE `ext_download`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL,
  `fileName` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `fileVersion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fileLink` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `test1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '下载模型' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ext_download
-- ----------------------------
INSERT INTO `ext_download` VALUES (2, 13, 'ChanCMS', 'V3.0.7', 'https://www.chancms.top', '2');

-- ----------------------------
-- Table structure for plus_collect
-- ----------------------------
DROP TABLE IF EXISTS `plus_collect`;
CREATE TABLE `plus_collect`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `taskName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '任务名称',
  `targetUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '采集地址',
  `listTag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '列表tag标签',
  `startNum` int(11) NULL DEFAULT 1 COMMENT '开始页面',
  `endNum` int(11) NULL DEFAULT NULL COMMENT '结束页面',
  `increment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '1' COMMENT '递增数量默认1',
  `titleTag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `articleTag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文章内容',
  `charset` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '编码 1-> utf-8  2-> gb2312',
  `pages` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '采集地址集合',
  `parseData` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '格式化数据函数',
  `cid` int(11) NULL DEFAULT NULL COMMENT '存储到栏目',
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '1' COMMENT '发布状态 1 草稿 2 发布',
  `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '采集' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of plus_collect
-- ----------------------------
INSERT INTO `plus_collect` VALUES (1, '草堂札记', 'http://www.news.cn/', '#headline h1 a', 1, 1, '1', '.head-line h1', '#detail', '1', 'http://www.news.cn/politics/xxjxs/20240810/e3701f953af54eb796a3fbd278748366/c.html', '// 你的目标URL前缀\nvar urlPrefix = \"http://www.news.cn/politics/xxjxs/20240810/e3701f953af54eb796a3fbd278748366/\";\n// 使用正则表达式进行全局匹配和替换\ndata = data.replaceAll(/(<img[^>]*src=[\"\'])([^\"\']*)(\".*>)/g, function(match, p1, p2, p3) {\n    return p1 + urlPrefix + p2 + p3;\n});\n\n// 移除所有 <span> 标签\ndata = data.replace(/<span[^>]*>(.*?)<\\/span>/g, \'$1\');\n// 移除所有 class 属性\ndata = data.replace(/ class\\s*=\\s*[\"\\\']([^\"\\\']*)[\"\\\']/g, \'\');\n// 移除所有内联样式 style 属性\ndata = data.replace(/ style\\s*=\\s*[\"\\\']([^\"\\\']*)[\"\\\']/g, \'\');\n// 使用replace函数删除匹配的部分\ndata= data.replace(/<div[^>]+id\\s*=\\s*[\'\"]articleEdit[\'\"][^>]*>[\\s\\S]*<\\/div>/g, \'\');\n// 移除多余空格，注意保留 <p> 标签内的空格\ndata = data.replace(/>\\s+</g, \'> <\'); // 移除标签间的空格\ndata = data.replace(/\\s{2,}/g, \' \');  // 移除两个或以上的空格\n// 移除首尾空格\ndata = data.trim();\nreturn data;', 15, '1', '2023-09-29 19:33:57', '2024-08-11 18:09:56');
INSERT INTO `plus_collect` VALUES (2, '人民网-top文章', 'http://www.people.com.cn/', '#rm_topline a', 1, 1, '1', '#newstit', '.rm_txt_con', '1', 'http://js.people.com.cn/n2/2024/0822/c360301-40951625.html', '//图片加域名\nvar urlPrefix = \"http://www.people.com.cn/\";\n    data = data.replace(/(<img[^>]*src=[\"\'])([^\"\']*)(\".*>)/g, function(match, p1, p2, p3) {\n        return p1 + urlPrefix + p2 + p3;\n    });\n//删除分享\ndata = data .replace(/<p\\s+class=\"paper_num\"[^>]*>[\\s\\S]*<\\/p>/gi, \'\');\n//删除编辑\ndata = data .replace(/<div\\s+class=\"(?:edit\\s+)[^\"]*\"[^>]*>[\\s\\S]*<\\/div>/gi, \'\');\n// 移除 style 属性中的所有样式，但保留 text-align: center;\ndata = data .replace(/ style\\s*=\\s*[\'\"]([^\'\"]*)[\'\"]/g, function(match, style) {\n    // 检查是否已包含 text-align: center;\n    if (style.includes(\'text-align: center;\')) {\n        // 如果存在 text-align: center; 则只保留它\n        return ` style=\"text-align: center;\"`;\n    } else {\n        // 如果不存在 text-align: center; 则移除整个 style 属性\n        return \'\';\n    }\n});\n//清理class\ndata = data.replace(/ class\\s*=\\s*[\'\"]([^\'\\\"]*)[\'\"]/g, \'\');\n//清理空格\ndata = data.replace(/\\s+/g, \' \');\ndata = data.trim();\n//清理空span标签\ndata = data.replaceAll(\'<span></span>\', \'\');\n//清理空p标签\ndata = data.replaceAll(\'<p></p>\', \'\');\n//清理空div标签\ndata = data.replaceAll(\'<div></div>\', \'\');\n//清理空table标签\ndata = data .replace(/<table[^>]*>[\\s\\S]*<\\/table>/gi, \'\');\nreturn data;', 8, '2', '2024-08-22 16:27:19', '2024-12-09 23:17:34');

-- ----------------------------
-- Table structure for plus_gather
-- ----------------------------
DROP TABLE IF EXISTS `plus_gather`;
CREATE TABLE `plus_gather`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `taskName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '任务名称',
  `targetUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '采集地址',
  `parseData` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '格式化数据函数',
  `cid` int(11) NULL DEFAULT NULL COMMENT '存储到栏目',
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '1' COMMENT '发布状态 1 草稿 2 发布',
  `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '开源接口采集' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of plus_gather
-- ----------------------------
INSERT INTO `plus_gather` VALUES (3, '每日新闻60s', 'https://api.qqsuu.cn/api/dm-60s?type=json', 'let cont = \'\';\ndata.data.news.map((item)=>{\n   cont +=\'<p>\'+ item+\'</p>\'\n})\nreturn {content:cont ,weiyu:data.data.weiyu,title:\'ChanCMS早间新闻—\'+data.data.date};', 8, '2', '2023-11-29 19:10:45', '2024-12-15 15:04:07');
INSERT INTO `plus_gather` VALUES (4, '60s稳定版本', 'https://api.j4u.ink/v1/store/other/proxy/remote/news/60.json', 'let obj = {\n	title:\'\',\n	content:\'\'\n}\nif(data.code == 200){\n	obj.title = \"香港日报新闻60秒\"+ data.data.date_info.date;\n	let p = \'\';\n	data.data.news.forEach((item)=>{\n	  p += \'<p>\'+item +\'</p>\'\n	});\n       p+=\'<p>[香港日报微语]：\'+data.data.weiyu+\'</p>\'\n      obj.content = p;\n}\nreturn obj;', 15, '1', '2023-12-01 00:03:35', '2023-12-10 19:36:36');
INSERT INTO `plus_gather` VALUES (5, '1', 'https://api.qqsuu.cn/api/dm-60s?type=json', 'let cont = \'\';\ndata.data.news.map((item)=>{\n   cont +=\'<p>\'+ item+\'</p>\'\n})\nreturn {content:cont ,weiyu:data.data.weiyu,title:\'ChanCMS早间新闻—\'+data.data.date};', 8, '1', '2024-12-15 14:56:22', '2024-12-15 15:24:44');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `template` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'default' COMMENT 'view模板名称',
  `appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '微信小程序appid',
  `secret` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '微信小程序秘钥',
  `accessKey` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '七牛云ak',
  `secretKey` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '七牛云sk',
  `domain` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '七牛云域名',
  `bucket` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '七牛云bucket',
  `uploadWay` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '1' COMMENT '上传方式 1->普通 2->七牛云',
  `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '应用配置' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, 'default', 'chancms', 'chancms', 'test', 'test', 'chancms.top', 'test', '1', '2023-10-07 21:52:21', '2024-12-05 23:26:09');

-- ----------------------------
-- Table structure for sys_loginlog
-- ----------------------------
DROP TABLE IF EXISTS `sys_loginlog`;
CREATE TABLE `sys_loginlog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户id',
  `ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'ip',
  `country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国家',
  `prov` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市',
  `district` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区',
  `isp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '网络提供商',
  `lat` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '纬度',
  `lng` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '经度',
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '登录时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`, `createdAt`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '登录日志' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_loginlog
-- ----------------------------
INSERT INTO `sys_loginlog` VALUES (1, 3, '112.80.235.47', '中国', '江苏省', '南京市', '秦淮区', '中国联通', '32.003749', '118.805657', '2024-09-13 22:34:45');
INSERT INTO `sys_loginlog` VALUES (2, 2, '112.80.235.47', '中国', '江苏省', '南京市', '秦淮区', '中国联通', '32.003749', '118.805657', '2024-09-13 22:35:37');
INSERT INTO `sys_loginlog` VALUES (3, 1, '101.125.4.178', '中国', '江苏省', '', '', '中国联通', '', '', '2024-09-15 16:22:19');
INSERT INTO `sys_loginlog` VALUES (4, 1, '101.125.4.178', '中国', '江苏省', '', '', '中国联通', '', '', '2024-09-17 09:33:08');
INSERT INTO `sys_loginlog` VALUES (5, 1, '122.96.42.113', '中国', '江苏省', '南京市', '', '中国联通', '32.053245', '118.766351', '2024-09-23 20:18:58');
INSERT INTO `sys_loginlog` VALUES (6, 1, '122.96.44.57', '中国', '江苏省', '南京市', '', '中国联通', '32.053245', '118.766351', '2024-09-25 17:12:15');
INSERT INTO `sys_loginlog` VALUES (7, 1, '101.125.4.178', '中国', '江苏省', '', '', '中国联通', '', '', '2024-09-27 10:02:12');
INSERT INTO `sys_loginlog` VALUES (8, 1, '122.96.40.52', '中国', '江苏省', '南京市', '', '中国联通', '32.053245', '118.766351', '2024-10-01 14:29:06');
INSERT INTO `sys_loginlog` VALUES (9, 1, '112.80.234.195', '中国', '江苏省', '南京市', '秦淮区', '中国联通', '32.003749', '118.805657', '2024-10-01 22:14:08');
INSERT INTO `sys_loginlog` VALUES (10, 1, '101.125.4.178', '中国', '江苏省', '', '', '中国联通', '', '', '2024-10-02 13:58:28');
INSERT INTO `sys_loginlog` VALUES (11, 1, '112.80.234.195', '中国', '江苏省', '南京市', '秦淮区', '中国联通', '32.003749', '118.805657', '2024-10-14 22:00:54');
INSERT INTO `sys_loginlog` VALUES (12, 1, '112.80.234.195', '中国', '江苏省', '南京市', '秦淮区', '中国联通', '32.003749', '118.805657', '2024-10-24 23:09:24');
INSERT INTO `sys_loginlog` VALUES (13, 1, '112.80.234.195', '中国', '江苏省', '南京市', '秦淮区', '中国联通', '32.003749', '118.805657', '2024-11-02 22:38:44');
INSERT INTO `sys_loginlog` VALUES (14, 1, '112.80.234.195', '中国', '江苏省', '南京市', '秦淮区', '中国联通', '32.003749', '118.805657', '2024-11-03 18:40:28');
INSERT INTO `sys_loginlog` VALUES (15, 1, '112.80.234.195', '中国', '江苏省', '南京市', '秦淮区', '中国联通', '32.003749', '118.805657', '2024-11-04 00:17:33');
INSERT INTO `sys_loginlog` VALUES (16, 1, '122.96.45.38', '中国', '江苏省', '南京市', '', '中国联通', '32.053245', '118.766351', '2024-11-04 21:08:50');
INSERT INTO `sys_loginlog` VALUES (17, 1, '112.80.234.58', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-11-09 20:21:36');
INSERT INTO `sys_loginlog` VALUES (18, 1, '112.80.234.58', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-11-09 20:23:00');
INSERT INTO `sys_loginlog` VALUES (19, 1, '112.80.234.58', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-11-09 20:25:37');
INSERT INTO `sys_loginlog` VALUES (20, 1, '112.80.234.58', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-11-09 20:26:12');
INSERT INTO `sys_loginlog` VALUES (21, 1, '112.80.234.58', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-11-09 20:34:32');
INSERT INTO `sys_loginlog` VALUES (22, 1, '112.80.234.58', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-11-15 09:54:57');
INSERT INTO `sys_loginlog` VALUES (23, 1, '112.80.234.58', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-11-15 12:28:13');
INSERT INTO `sys_loginlog` VALUES (24, 1, '112.80.234.58', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-11-15 13:15:09');
INSERT INTO `sys_loginlog` VALUES (25, 1, '112.80.234.58', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-11-15 14:21:42');
INSERT INTO `sys_loginlog` VALUES (26, 1, '112.80.234.58', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-11-15 21:27:08');
INSERT INTO `sys_loginlog` VALUES (27, 1, '112.80.234.58', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-11-15 22:32:20');
INSERT INTO `sys_loginlog` VALUES (28, 1, '112.80.234.58', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-11-15 22:50:51');
INSERT INTO `sys_loginlog` VALUES (29, 1, '112.80.234.58', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-11-15 23:04:46');
INSERT INTO `sys_loginlog` VALUES (30, 1, '112.80.234.58', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-11-16 22:28:12');
INSERT INTO `sys_loginlog` VALUES (31, 1, '122.96.147.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-11-17 22:02:59');
INSERT INTO `sys_loginlog` VALUES (32, 1, '122.96.147.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-11-22 22:12:38');
INSERT INTO `sys_loginlog` VALUES (33, 1, '112.80.234.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-11-29 21:49:46');
INSERT INTO `sys_loginlog` VALUES (34, 1, '112.80.234.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-11-29 22:21:31');
INSERT INTO `sys_loginlog` VALUES (35, 1, '112.80.234.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-11-29 22:26:25');
INSERT INTO `sys_loginlog` VALUES (36, 1, '112.80.234.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-11-29 23:02:52');
INSERT INTO `sys_loginlog` VALUES (37, 1, '112.80.234.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-11-29 23:07:47');
INSERT INTO `sys_loginlog` VALUES (38, 1, '112.80.234.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-11-29 23:35:04');
INSERT INTO `sys_loginlog` VALUES (39, 1, '112.80.234.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-12-01 22:49:59');
INSERT INTO `sys_loginlog` VALUES (40, 1, '112.80.234.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-12-02 21:57:58');
INSERT INTO `sys_loginlog` VALUES (41, 1, '112.80.234.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-12-05 22:29:03');
INSERT INTO `sys_loginlog` VALUES (42, 1, '112.80.234.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-12-05 22:32:13');
INSERT INTO `sys_loginlog` VALUES (43, 1, '112.80.234.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-12-05 23:47:47');
INSERT INTO `sys_loginlog` VALUES (44, 1, '112.80.234.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-12-06 21:50:57');
INSERT INTO `sys_loginlog` VALUES (45, 1, '122.96.40.254', '中国', '', '', '', '', NULL, NULL, '2024-12-07 23:35:10');
INSERT INTO `sys_loginlog` VALUES (46, 1, '112.80.234.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-12-09 21:50:12');
INSERT INTO `sys_loginlog` VALUES (47, 1, '112.80.234.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-12-09 22:37:11');
INSERT INTO `sys_loginlog` VALUES (48, 1, '112.80.234.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-12-09 22:44:00');
INSERT INTO `sys_loginlog` VALUES (49, 1, '112.80.234.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-12-09 22:52:24');
INSERT INTO `sys_loginlog` VALUES (50, 1, '112.80.234.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-12-09 22:53:04');
INSERT INTO `sys_loginlog` VALUES (51, 1, '112.80.234.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-12-09 23:21:42');
INSERT INTO `sys_loginlog` VALUES (52, 1, '112.80.234.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-12-12 22:52:23');
INSERT INTO `sys_loginlog` VALUES (53, 1, '112.80.234.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-12-12 23:03:16');
INSERT INTO `sys_loginlog` VALUES (54, 1, '112.80.234.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-12-12 23:05:51');
INSERT INTO `sys_loginlog` VALUES (55, 1, '112.80.234.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-12-12 23:13:24');
INSERT INTO `sys_loginlog` VALUES (56, 1, '112.80.234.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-12-12 23:13:53');
INSERT INTO `sys_loginlog` VALUES (57, 1, '112.80.234.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-12-12 23:46:53');
INSERT INTO `sys_loginlog` VALUES (58, 1, '112.80.234.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-12-13 21:49:54');
INSERT INTO `sys_loginlog` VALUES (59, 1, '112.80.234.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-12-13 22:00:45');
INSERT INTO `sys_loginlog` VALUES (60, 1, '112.80.234.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-12-15 10:33:47');
INSERT INTO `sys_loginlog` VALUES (61, 1, '112.80.234.68', '中国', '江苏省', '南京市', '秦淮区', '中国联通', NULL, NULL, '2024-12-15 14:40:27');
INSERT INTO `sys_loginlog` VALUES (62, 1, '122.96.42.220', '中国', '江苏省', '南京市', '', '中国联通', NULL, NULL, '2025-01-07 21:36:46');
INSERT INTO `sys_loginlog` VALUES (63, 1, '122.96.42.220', '中国', '江苏省', '南京市', '', '中国联通', NULL, NULL, '2025-01-07 21:38:06');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '菜单配置',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (2, '{\n  \"route\": [\n    {\n      \"path\": \"/dashboard\",\n      \"name\": \"dashboard\",\n      \"component\": \"@/views/base/dashboard/index.vue\",\n      \"meta\": {\n        \"title\": \"网站信息\",\n        \"icon\": \"DataLine\",\n        \"isShow\": true,\n        \"role\": [\n          \"admin\",\n          \"super\",\n          \"editor\"\n        ]\n      }\n    },\n   \n    {\n      \"path\": \"/site\",\n      \"name\": \"site\",\n      \"meta\": {\n        \"title\": \"站点管理\",\n        \"icon\": \"Monitor\",\n        \"isShow\": true,\n        \"role\": [\n          \"admin\",\n          \"super\",\n          \"editor\"\n        ]\n      },\n      \"redirect\": \"/site-index\",\n      \"children\": [\n        {\n          \"path\": \"/site-index\",\n          \"name\": \"site-index\",\n          \"component\": \"@/views/cms/home/site.vue\",\n          \"meta\": {\n            \"title\": \"站点设置\",\n            \"isShow\": true,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        }\n      ]\n    },\n    {\n      \"path\": \"/content\",\n      \"name\": \"content\",\n      \"meta\": {\n        \"title\": \"内容管理\",\n        \"isShow\": true,\n        \"icon\": \"Grid\",\n        \"role\": [\n          \"admin\",\n          \"super\",\n          \"editor\"\n        ]\n      },\n      \"redirect\": \"/category\",\n      \"children\": [\n        {\n          \"path\": \"/category\",\n          \"name\": \"category-index\",\n          \"component\": \"@/views/cms/category/index.vue\",\n          \"meta\": {\n            \"title\": \"栏目管理\",\n            \"isShow\": true,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/category/add\",\n          \"name\": \"category-add\",\n          \"component\": \"@/views/cms/category/add.vue\",\n          \"meta\": {\n            \"title\": \"栏目管理-新增\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/category/edit/:id\",\n          \"name\": \"category-edit\",\n          \"component\": \"@/views/cms/category/edit.vue\",\n          \"meta\": {\n            \"title\": \"页面管理-更新\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/article\",\n          \"name\": \"article-index\",\n          \"component\": \"@/views/cms/article/index.vue\",\n          \"meta\": {\n            \"title\": \"文章管理\",\n            \"isShow\": true,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/article/add\",\n          \"name\": \"article-add\",\n          \"component\": \"@/views/cms/article/add.vue\",\n          \"meta\": {\n            \"title\": \"文章管理-新增\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/article/edit/:id\",\n          \"name\": \"article-edit\",\n          \"component\": \"@/views/cms/article/edit.vue\",\n          \"meta\": {\n            \"title\": \"文章管理-更新\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/slide\",\n          \"name\": \"slide-index\",\n          \"component\": \"@/views/cms/slide/index.vue\",\n          \"meta\": {\n            \"title\": \"轮播管理\",\n            \"isShow\": true,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/slide/add\",\n          \"name\": \"slide-add\",\n          \"component\": \"@/views/cms/slide/add.vue\",\n          \"meta\": {\n            \"title\": \"轮播管理-新增\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/slide/edit/:id\",\n          \"name\": \"slide-edit\",\n          \"component\": \"@/views/cms/slide/edit.vue\",\n          \"meta\": {\n            \"title\": \"轮播管理-更新\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/tag\",\n          \"name\": \"tag-index\",\n          \"component\": \"@/views/cms/tag/index.vue\",\n          \"meta\": {\n            \"title\": \"标签管理\",\n            \"isShow\": true,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/tag/add\",\n          \"name\": \"tag-add\",\n          \"component\": \"@/views/cms/tag/add.vue\",\n          \"meta\": {\n            \"title\": \"标签管理-新增\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/tag/edit/:id\",\n          \"name\": \"tag-edit\",\n          \"component\": \"@/views/cms/tag/edit.vue\",\n          \"meta\": {\n            \"title\": \"标签管理-更新\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/frag\",\n          \"name\": \"frag-index\",\n          \"component\": \"@/views/cms/frag/index.vue\",\n          \"meta\": {\n            \"title\": \"碎片管理\",\n            \"isShow\": true,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/frag/add\",\n          \"name\": \"frag-add\",\n          \"component\": \"@/views/cms/frag/add.vue\",\n          \"meta\": {\n            \"title\": \"碎片管理-新增\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/frag/edit/:id\",\n          \"name\": \"frag-edit\",\n          \"component\": \"@/views/cms/frag/edit.vue\",\n          \"meta\": {\n            \"title\": \"碎片管理-更新\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        }\n      ]\n    },\n    {\n      \"path\": \"/gathers\",\n      \"name\": \"gathers\",\n      \"meta\": {\n        \"title\": \"采集功能\",\n        \"icon\": \"MagicStick\",\n        \"isShow\": true,\n        \"role\": [\n          \"super\"\n        ]\n      },\n      \"redirect\": \"/collect\",\n      \"children\": [\n        {\n          \"path\": \"/collect\",\n          \"name\": \"collect-index\",\n          \"component\": \"@/views/cms/collect/index.vue\",\n          \"meta\": {\n            \"title\": \"页面采集\",\n            \"isShow\": true,\n            \"role\": [\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/collect/add\",\n          \"name\": \"collect-add\",\n          \"component\": \"@/views/cms/collect/add.vue\",\n          \"meta\": {\n            \"title\": \"页面采集-新增\",\n            \"isShow\": false,\n            \"role\": [\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/collect/:id\",\n          \"name\": \"collect-edit\",\n          \"component\": \"@/views/cms/collect/edit.vue\",\n          \"meta\": {\n            \"title\": \"页面采集-更新\",\n            \"isShow\": false,\n            \"role\": [\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/gather\",\n          \"name\": \"gather-index\",\n          \"component\": \"@/views/cms/gather/index.vue\",\n          \"meta\": {\n            \"title\": \"接口采集\",\n            \"isShow\": true,\n            \"role\": [\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/gather/add\",\n          \"name\": \"gather-add\",\n          \"component\": \"@/views/cms/gather/add.vue\",\n          \"meta\": {\n            \"title\": \"接口采集-新增\",\n            \"isShow\": false,\n            \"role\": [\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/gather/edit/:id\",\n          \"name\": \"gather-edit\",\n          \"component\": \"@/views/cms/gather/edit.vue\",\n          \"meta\": {\n            \"title\": \"接口采集-更新\",\n            \"isShow\": false,\n            \"role\": [\n              \"super\"\n            ]\n          }\n        }\n      ]\n    },\n    {\n      \"path\": \"/extend\",\n      \"name\": \"extend\",\n      \"meta\": {\n        \"title\": \"功能管理\",\n        \"icon\": \"Operation\",\n        \"isShow\": true,\n        \"role\": [\n          \"super\",\n          \"admin\",\n          \"editor\"\n        ]\n      },\n      \"children\": [\n        {\n          \"path\": \"/model\",\n          \"name\": \"model-index\",\n          \"component\": \"@/views/cms/model/index.vue\",\n          \"meta\": {\n            \"title\": \"模型管理\",\n            \"isShow\": true,\n            \"role\": [\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/model/add\",\n          \"name\": \"model-add\",\n          \"component\": \"@/views/cms/model/add.vue\",\n          \"meta\": {\n            \"title\": \"模型管理-新增\",\n            \"isShow\": false,\n            \"role\": [\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/model/edit/:id\",\n          \"name\": \"model-edit\",\n          \"component\": \"@/views/cms/model/edit.vue\",\n          \"meta\": {\n            \"title\": \"模型管理-更新\",\n            \"isShow\": false,\n            \"role\": [\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/model/field\",\n          \"name\": \"field-index\",\n          \"component\": \"@/views/cms/field/index.vue\",\n          \"meta\": {\n            \"title\": \"字段管理\",\n            \"isShow\": false,\n            \"role\": [\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/model/field/add\",\n          \"name\": \"field-add\",\n          \"component\": \"@/views/cms/field/add.vue\",\n          \"meta\": {\n            \"title\": \"字段管理-新增\",\n            \"isShow\": false,\n            \"role\": [\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/model/field/edit\",\n          \"name\": \"field-edit\",\n          \"component\": \"@/views/cms/field/edit.vue\",\n          \"meta\": {\n            \"title\": \"字段管理-更新\",\n            \"isShow\": false,\n            \"role\": [\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/friendlink\",\n          \"name\": \"friendlink-index\",\n          \"component\": \"@/views/cms/friendlink/index.vue\",\n          \"meta\": {\n            \"title\": \"友情链接\",\n            \"isShow\": true,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/friendlink/add\",\n          \"name\": \"friendlink-add\",\n          \"component\": \"@/views/cms/friendlink/add.vue\",\n          \"meta\": {\n            \"title\": \"友情链接-新增\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/friendlink/edit/:id\",\n          \"name\": \"friendlink-edit\",\n          \"component\": \"@/views/cms/friendlink/edit.vue\",\n          \"meta\": {\n            \"title\": \"友情链接-更新\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/message\",\n          \"name\": \"message-index\",\n          \"component\": \"@/views/cms/message/index.vue\",\n          \"meta\": {\n            \"title\": \"消息管理\",\n            \"isShow\": true,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/message/add\",\n          \"name\": \"message-add\",\n          \"component\": \"@/views/cms/message/add.vue\",\n          \"meta\": {\n            \"title\": \"消息管理-新增\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/message/edit/:id\",\n          \"name\": \"message-edit\",\n          \"component\": \"@/views/cms/message/edit.vue\",\n          \"meta\": {\n            \"title\": \"消息管理-更新\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        }\n      ]\n    },\n    {\n      \"path\": \"/sys\",\n      \"name\": \"sys\",\n      \"meta\": {\n        \"title\": \"系统管理\",\n        \"isShow\": true,\n        \"icon\": \"Setting\",\n        \"role\": [\n          \"admin\",\n          \"super\"\n        ]\n      },\n      \"redirect\": \"/user\",\n      \"children\": [\n        {\n          \"path\": \"/user\",\n          \"name\": \"user-index\",\n          \"component\": \"@/views/cms/user/index.vue\",\n          \"meta\": {\n            \"title\": \"用户管理\",\n            \"isShow\": true,\n            \"role\": [\n              \"admin\",\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/user/add\",\n          \"name\": \"user-add\",\n          \"component\": \"@/views/cms/user/add.vue\",\n          \"meta\": {\n            \"title\": \"用户列表-新增\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/user/edit/:id\",\n          \"name\": \"user-edit\",\n          \"component\": \"@/views/cms/user/edit.vue\",\n          \"meta\": {\n            \"title\": \"用户列表-更新\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/role\",\n          \"name\": \"role-index\",\n          \"component\": \"@/views/cms/role/index.vue\",\n          \"meta\": {\n            \"title\": \"角色管理\",\n            \"isShow\": true,\n            \"role\": [\n              \"admin\",\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/role/add\",\n          \"name\": \"role-add\",\n          \"component\": \"@/views/cms/role/add.vue\",\n          \"meta\": {\n            \"title\": \"角色列表-新增\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/role/edit/:id\",\n          \"name\": \"role-edit\",\n          \"component\": \"@/views/cms/role/edit.vue\",\n          \"meta\": {\n            \"title\": \"角色列表-更新\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/menu\",\n          \"name\": \"menu-index\",\n          \"component\": \"@/views/cms/menu/index.vue\",\n          \"meta\": {\n            \"title\": \"菜单管理\",\n            \"isShow\": true,\n            \"role\": [\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/loginlog\",\n          \"name\": \"loginLog-index\",\n          \"component\": \"@/views/cms/loginlog/index.vue\",\n          \"meta\": {\n            \"title\": \"登录日志\",\n            \"isShow\": true,\n            \"role\": [\n              \"admin\",\n              \"super\"\n            ]\n          }\n        }\n      ]\n    }\n  ]\n}', NULL);

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
  `type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公告状态（0关闭  1正常）',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `value` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色值',
  `sort` int(4) NOT NULL DEFAULT 0 COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '角色状态（1正常 0停用）',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'super', 0, '1', NULL, '2023-10-30 21:57:52', '2023-10-30 22:00:50');
INSERT INTO `sys_role` VALUES (2, '普通管理员', 'admin', 0, '1', NULL, '2023-10-30 22:01:04', '2023-10-30 22:01:04');
INSERT INTO `sys_role` VALUES (3, '编辑管理', 'editor', 0, '1', NULL, '2023-10-30 22:01:11', '2023-10-30 22:02:14');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `role_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色id',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户账号',
  `password` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '帐号状态（1正常 0停用）',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `createdAt` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, '1', 'chancms', '$2a$10$P2KJwlUv/88rqcMVCEgOiO2B0tRWxlJ0T2/LMn1vJmbATtNhOBBQe', '1', NULL, '2023-10-30 22:42:01', '2024-12-09 23:21:33');
INSERT INTO `sys_user` VALUES (2, '1', 'super', '$2a$10$6FSOS7HRIw7xz91ohv91oO6J5AMuAPWQg/qH87F/3AAyiG/1IDu5y', '1', NULL, '2023-10-30 22:42:18', '2024-11-09 20:26:29');
INSERT INTO `sys_user` VALUES (3, '3', 'admin', '$2a$10$c7Kzy7/oTE5lyPvmXyX6P.8fvFMc05GZLHk41qiwAjQAchrm1QwUi', '1', NULL, '2023-10-31 00:06:55', '2024-11-09 20:25:50');

SET FOREIGN_KEY_CHECKS = 1;
