/*
 Navicat Premium Dump SQL

 Source Server         : 自已本地
 Source Server Type    : MySQL
 Source Server Version : 50726 (5.7.26)
 Source Host           : localhost:3306
 Source Schema         : chancms

 Target Server Type    : MySQL
 Target Server Version : 50726 (5.7.26)
 File Encoding         : 65001

 Date: 23/01/2025 16:20:33
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
  `createdAt` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updatedAt` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `pics` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '图片',
  `videos` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '视频',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_article
-- ----------------------------
INSERT INTO `cms_article` VALUES (2, 3, '', '山水图：风景图', '', '1', '', '', '', '', '山峰树林湖泊', '/public/cover/04.jpg', '<p><img src=\"https://q5.itc.cn/q_70/images03/20240706/62869b54ec3c4ea5a842b97ac9722630.jpeg\" alt=\"\" width=\"2062\" height=\"1200\"></p>', 0, 33, '', '2024-09-13 22:55:57', '2025-01-10 16:26:38', NULL, NULL);
INSERT INTO `cms_article` VALUES (3, 4, '', 'ChanCMS后台基本操作', '', '2', '', '', '', '', 'ChanCMS后台基本操作', '', '<p><iframe src=\"//player.bilibili.com/player.html?isOutside=true&aid=877077167&bvid=BV17N4y1Y7WC&cid=1362009352&p=1\" height=\"520\" frameborder=\"no\" scrolling=\"no\" allowfullscreen=\"allowfullscreen\"></iframe></p>', 0, 11, '', '2024-09-13 22:59:58', '2025-01-22 10:55:29', NULL, NULL);
INSERT INTO `cms_article` VALUES (6, 3, '', '山水图：桂林山水', '', '1', '', '', '', '', '', '/public/cover/06.jpg', '<p><img src=\"https://img-qn.51miz.com/preview/element/00/01/30/75/E-1307587-924E2CBE.png!/quality/90/unsharp/true/compress/true/format/png/fwfh/900x640\" alt=\"\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://p3-pc-sign.douyinpic.com/tos-cn-i-0813c001/ogKHZvfQQ30BGWXEzfeP2BQ70OA5AA7AAdyJgF~tplv-dy-aweme-images-v2:3000:3000:q75.webp?biz_tag=aweme_images&from=327834062&s=PackSourceEnum_AWEME_DETAIL&sc=image&se=false&x-expires=1729130400&x-signature=vl4RUOePzX7s4npn4oARkHH6EAc%3D\" alt=\"\" width=\"896\" height=\"1536\"></p>', 0, 5, '', '2024-09-17 10:53:54', '2024-09-17 10:53:54', NULL, NULL);
INSERT INTO `cms_article` VALUES (7, 3, '', 'AIGC图片美女', '', '1', '', '', '', '', '', '/public/cover/10.jpg', '<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://p9-heycan-hgt-sign.byteimg.com/tos-cn-i-3jr8j4ixpe/31f5581b6dee463bb23c6f4a31d1b204~tplv-3jr8j4ixpe-aigc_resize:0:0.png?lk3s=43402efa&x-expires=1728864000&x-signature=AP23D4sBKcal3LurrbHp9WWra8M%3D&format=.png\" alt=\"\"></p>', 0, 4, '', '2024-09-27 10:06:09', '2024-09-27 10:06:09', NULL, NULL);
INSERT INTO `cms_article` VALUES (8, 3, '', 'AIGC图片美女', '', '1', '', '', '', '', '', '/public/cover/06.jpg', '<p style=\"text-align: center;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://p3-heycan-hgt-sign.byteimg.com/tos-cn-i-3jr8j4ixpe/b9255497ccf94fcf9a1c873eda23b78f~tplv-3jr8j4ixpe-aigc_resize:0:0.png?lk3s=43402efa&x-expires=1728864000&x-signature=xU2jY9QGyZY5ZeG56f%2BZgRyJ4Yk%3D&format=.png\" alt=\"\"></p>', 0, 4, '', '2024-09-27 10:07:52', '2025-01-20 14:23:33', NULL, NULL);
INSERT INTO `cms_article` VALUES (9, 3, '', 'AIGC图片美女', '', '1', '', '', '', '', '', '/public/cover/07.jpg', '<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://p3-heycan-hgt-sign.byteimg.com/tos-cn-i-3jr8j4ixpe/9266d858c987459a96ff3a1847d8c9fb~tplv-3jr8j4ixpe-aigc_resize:0:0.png?lk3s=43402efa&x-expires=1728864000&x-signature=%2F%2BWXysOaMFc6Gm%2Fkiv%2FyT2d%2FoAQ%3D&format=.png\" alt=\"\"></p>', 0, 5, '', '2024-09-27 10:37:12', '2024-11-15 09:53:22', NULL, NULL);
INSERT INTO `cms_article` VALUES (10, 3, '', 'AIGC图片美女', '', '1', '', '', '', '', '', '/public/cover/04.jpg', '<p style=\"text-align: center;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://p9-heycan-hgt-sign.byteimg.com/tos-cn-i-3jr8j4ixpe/178004138fad44e3ac7bfd0e6f415e38~tplv-3jr8j4ixpe-aigc_resize:2000:2000.png?lk3s=43402efa&x-expires=1747308745&x-signature=zEPP6LTkWbEnU%2B9af0J1pBPfrqI%3D&format=.png\" alt=\"\" width=\"288\" height=\"512\"></p>', 0, 8, '', '2024-09-27 10:46:27', '2025-01-22 10:54:52', NULL, NULL);
INSERT INTO `cms_article` VALUES (13, 5, '', 'ChanCMS v3.0.6下载', '', '', '', '', '', '', '', '', '<p>ChanCMS是一款基于Node、Express、MySQL、Vue3研发的高质量实用型CMS系统。</p>', 0, 19, '', '2024-10-02 15:40:46', '2025-01-22 10:56:53', NULL, NULL);
INSERT INTO `cms_article` VALUES (15, 9, '', '公司介绍', '', '', '', '', '', '', 'ChanCMS是一款基于Node、Express、MySQL、Vue3研发的高质量实用型CMS系统。它具有轻量、灵活、稳定、高性能、易扩展等特点，让开发更简单。系统采用自研的chanjs框架实现，专注于SEO，支持伪静态html和拼音导航，可灵活设置关键词和描述。在安全性方面，基于knex高防sql注入，进行接口权限校验，为网站安全提供有力保障。', '/public/uploads/default/2025/01/17/1737088616965_source_poster.gif', '<div class=\"markdown-container\" data-v-010c3103=\"\" data-v-5d235d8f=\"\">\n<div class=\"markdown\" data-v-53cd9be5=\"\" data-v-010c3103=\"\">\n<div class=\"paragraph\">3ChanCMS是一款基于Node、Express、MySQL、Vue3研发的高质量实用型CMS系统。它具有轻量、灵活、稳定、高性能、易扩展等特点，让开发更简单。系统采用自研的chanjs框架实现，专注于SEO，支持伪静态html和拼音导航，可灵活设置关键词和描述。在安全性方面，基于knex高防sql注入，进行接口权限校验，为网站安全提供有力保障。</div>\n<div class=\"paragraph\">&nbsp;</div>\n</div>\n<div class=\"paragraph\"><img src=\"/public/uploads/default/2025/01/17/1737081622190_source_mceclip0.png\" style=\"display: block; margin-left: auto; margin-right: auto;\"></div>\n<div class=\"markdown\" data-v-53cd9be5=\"\" data-v-010c3103=\"\">\n<div class=\"paragraph\">&nbsp;</div>\n<div class=\"paragraph\">ChanCMS的功能丰富多样。内容管理是其核心功能，支持文章的发布、编辑、删除等操作，并配备Markdown编辑器，方便用户撰写格式优美的文章。栏目管理功能强大，用户可创建无限级栏目，并对其进行排序、修改和删除，轻松构建符合需求的网站结构。用户管理方面，支持用户注册、登录、权限设置等功能，还提供用户角色管理，满足不同场景下的权限需求。此外，系统还提供丰富的主题模板，用户可根据喜好和需求选择，也可通过修改CSS、JavaScript等文件，实现更深入的个性化定制。强大的扩展性是ChanCMS的一大亮点，支持用户安装各种插件来丰富网站功能，如评论插件、友情链接插件、图片库插件等。</div>\n<div class=\"paragraph\">&nbsp;</div>\n<div class=\"paragraph\">在应用场景上，ChanCMS十分广泛。企业可以利用它快速搭建具有新闻发布、产品展示、招聘信息等模块的官方网站。个人用户也能轻松搭建属于自己的博客，记录生活点滴、分享技术心得。对于新闻资讯类网站，ChanCMS支持多栏目、多用户协同工作，是构建新闻门户的理想选择。</div>\n</div>\n<div class=\"paragraph\">&nbsp;</div>\n</div>', 0, 271, '', '2024-12-05 23:26:59', '2025-01-23 15:57:18', NULL, NULL);
INSERT INTO `cms_article` VALUES (20, 18, '', '企业文化', '', '', '', '', '', '', '人才是企业最宝贵的财富。我们重视人才的引进、培养和使用，为员工提供广阔的发展空间和公平的竞争机会。我们倡导“德才兼备，以德为先”的用人标准，注重员工的品德修养和专业能力，通过建立完善的培训体系和激励机制，激发员工的工作积极性和创造力，打造一支高素质、专业化的人才队伍。', '/public/uploads/default/2025/01/17/1737090945766_source_2.gif', '<h2 class=\"\">一、企业使命</h2>\n<div class=\"paragraph\">&ldquo;[企业名称]&rdquo;致力于成为[行业领域]的引领者，以创新为动力，以客户为中心，为社会创造价值，为员工提供成长平台，推动行业进步，助力人类美好生活。我们深知肩负的责任，将不懈努力，以卓越的产品和服务，满足客户日益增长的需求，为社会的可持续发展贡献力量。</div>\n<h2 class=\"\">二、企业愿景</h2>\n<div class=\"paragraph\">打造全球领先的[具体业务领域]企业，成为行业标杆，树立卓越品牌形象。在未来的发展中，我们将持续拓展业务领域，提升核心竞争力，实现技术领先、管理先进、服务一流，让&ldquo;[企业名称]&rdquo;的产品和服务在全球范围内得到广泛认可，为客户创造更多价值，为员工赢得更多尊重，为社会带来更大福祉。</div>\n<h2 class=\"\">三、核心价值观</h2>\n<h3 class=\"\">客户至上</h3>\n<div class=\"paragraph\">客户是企业生存和发展的基础。我们始终将客户的需求放在首位，以客户满意为衡量工作的标准。通过深入了解客户需求，提供个性化、高质量的产品和服务，建立长期稳定的合作关系，实现与客户的共同发展。我们承诺，将以最快的速度响应客户需求，以最专业的态度解决客户问题，以最优质的服务赢得客户信任。</div>\n<h3 class=\"\">创新驱动</h3>\n<div class=\"paragraph\">创新是企业发展的不竭动力。我们鼓励员工勇于创新，敢于突破传统思维，积极探索新的技术、新的业务模式和新的管理方法。通过持续的创新投入，提升企业的核心竞争力，推动企业的快速发展。我们相信，只有不断创新，才能在激烈的市场竞争中立于不败之地，为客户提供更具价值的产品和服务。</div>\n<h3 class=\"\">团队协作</h3>\n<div class=\"paragraph\">团队是企业成功的关键。我们倡导团队合作精神，强调团队成员之间的相互信任、相互支持和密切配合。通过建立高效的沟通机制和协作平台，打破部门壁垒，实现资源共享，充分发挥团队的整体优势。我们相信，只有团结一心，才能战胜各种困难和挑战，实现企业的宏伟目标。</div>\n<h3 class=\"\">诚信守法</h3>\n<div class=\"paragraph\">诚信是企业的立身之本。我们坚持诚信经营，遵守法律法规，遵循商业道德，以诚实守信的形象赢得客户、合作伙伴和社会的信任。我们要求员工在工作中做到言行一致，公平公正，廉洁自律，维护企业的良好声誉。我们深知，只有坚守诚信底线，才能赢得市场的认可，实现企业的长远发展。</div>\n<h2 class=\"\">四、企业精神</h2>\n<h3 class=\"\">拼搏进取</h3>\n<div class=\"paragraph\">在市场竞争中，我们始终保持拼搏进取的精神状态，勇于面对困难和挑战，敢于担当，积极作为。我们不满足于现状，不断追求卓越，以更高的目标激励自己，努力超越自我，实现企业的快速发展。我们相信，只有拼搏进取，才能在激烈的市场竞争中脱颖而出，创造更加辉煌的业绩。</div>\n<h3 class=\"\">开放包容</h3>\n<div class=\"paragraph\">我们秉持开放包容的心态，积极学习借鉴国内外先进的技术和管理经验，不断拓展视野，提升企业的国际化水平。我们尊重不同文化背景的员工，营造多元包容的工作环境，鼓励员工发挥各自的优势，为企业发展贡献力量。我们相信，只有开放包容，才能汇聚各方智慧，激发创新活力，推动企业的持续进步。</div>\n<h2 class=\"\">五、企业理念</h2>\n<h3 class=\"\">人才理念</h3>\n<div class=\"paragraph\">人才是企业最宝贵的财富。我们重视人才的引进、培养和使用，为员工提供广阔的发展空间和公平的竞争机会。我们倡导&ldquo;德才兼备，以德为先&rdquo;的用人标准，注重员工的品德修养和专业能力，通过建立完善的培训体系和激励机制，激发员工的工作积极性和创造力，打造一支高素质、专业化的人才队伍。</div>\n<h3 class=\"\">质量理念</h3>\n<div class=\"paragraph\">质量是企业的生命线。我们始终坚持&ldquo;质量第一&rdquo;的原则，以国际先进的质量标准为标杆，建立完善的质量管理体系，从原材料采购到生产加工，再到产品交付，每一个环节都严格把控质量关。我们相信，只有以优质的产品和服务赢得市场，才能树立良好的品牌形象，实现企业的可持续发展。</div>\n<h3 class=\"\">环保理念</h3>\n<div class=\"paragraph\">我们积极履行社会责任，坚持绿色发展理念，将环保贯穿于企业生产经营的全过程。通过采用先进的环保技术和设备，减少污染物排放，提高资源利用效率，努力实现企业发展与环境保护的良性互动。我们倡导员工树立环保意识，从点滴做起，为建设美丽地球贡献力量。</div>\n<h2 class=\"\">六、企业口号</h2>\n<div class=\"paragraph\">&ldquo;[企业名称]，创新引领未来！&rdquo;这句口号简洁明了，富有感染力，体现了我们的企业精神和核心价值观。它激励着每一位员工以创新为动力，以客户为中心，不断追求卓越，为实现企业的宏伟目标而努力奋斗。无论是在产品研发、生产制造，还是市场营销、客户服务等各个环节，我们都要以这句口号为指引，始终保持积极向上的精神状态，以优质的产品和服务赢得市场，以创新的思维和行动引领未来。</div>\n<div class=\"paragraph\">企业文化是企业的灵魂，是推动企业发展的强大动力。在&ldquo;[企业名称]&rdquo;，我们将始终坚守企业使命，践行核心价值观，传承企业精神，秉持企业理念，以企业口号为指引，团结一心，拼搏奋进，为实现企业愿景而努力奋斗，为社会创造更多价值，为员工赢得更多尊重，为人类美好生活贡献力量。</div>', 0, 174, '', '2025-01-17 13:11:11', '2025-01-21 16:27:07', NULL, NULL);
INSERT INTO `cms_article` VALUES (21, 7, '', '关于我们', '', '', '', '', '', '', '', '', '<p>关于我们2323</p>', 0, 86, '', '2025-01-17 13:22:10', '2025-01-20 17:00:39', NULL, NULL);
INSERT INTO `cms_article` VALUES (22, 8, NULL, '文档1', '', '', '', '', '', '', '', '', '欢迎使用ChanCMS系统', 0, 3, '', '2025-01-20 14:02:41', '2025-01-22 09:59:11', NULL, NULL);
INSERT INTO `cms_article` VALUES (23, 19, '', '营业执照', '', '', '', '', '', '', '', '/public/uploads/default/2025/01/20/1737353424334_source_12.png', '<p><img src=\"/public/uploads/default/2025/01/20/1737353545020_source_blobid0.png\"></p>', 0, 138, '', '2025-01-20 14:08:56', '2025-01-21 10:20:50', NULL, NULL);
INSERT INTO `cms_article` VALUES (24, 22, '', '创新驱动发展，迈向新征程', '', '', '', '', '', '', '近日，[公司名称]在[具体日期]迎来了公司发展史上的又一重要里程碑。在全体成员的共同努力下，公司成功推出了[新产品/新服务/新项目]，标志着公司在[行业领域]的创新能力和市场竞争力迈上了新的台阶。', '/public/uploads/default/2025/01/20/1737356403215_source_123.png', '<div class=\"paragraph\">近日，[公司名称]在[具体日期]迎来了公司发展史上的又一重要里程碑。在全体成员的共同努力下，公司成功推出了[新产品/新服务/新项目]，标志着公司在[行业领域]的创新能力和市场竞争力迈上了新的台阶。</div>\n<div class=\"paragraph\"><strong class=\"\">一、创新引领，突破瓶颈</strong></div>\n<div class=\"paragraph\">一直以来，[公司名称]秉持着&ldquo;创新驱动，客户至上&rdquo;的发展理念，致力于在[行业领域]中不断探索和突破。此次推出的[新产品/新服务/新项目]，是公司在[相关技术或业务领域]多年深耕的成果。研发团队经过[研发周期]的不懈努力，攻克了多项技术难题，最终实现了产品的成功落地。该产品采用了[核心创新技术或特点]，不仅在性能上有了显著提升，还在用户体验和成本控制方面达到了行业领先水平。</div>\n<div class=\"paragraph\"><strong class=\"\">二、市场拓展，合作共赢</strong></div>\n<div class=\"paragraph\">随着[新产品/新服务/新项目]的推出，[公司名称]在市场拓展方面也取得了显著进展。公司积极与国内外多家知名企业建立了合作关系，共同开拓市场。在[具体市场或行业]领域，公司凭借创新的产品和技术，赢得了客户的高度认可和信赖。目前，[新产品/新服务/新项目]已获得[客户订单数量或市场占有率]，为公司带来了可观的经济效益，同时也为行业的技术升级和市场发展注入了新的活力。</div>\n<div class=\"paragraph\"><strong class=\"\">三、人才赋能，持续发展</strong></div>\n<div class=\"paragraph\">[公司名称]深知人才是企业发展的核心竞争力。为了支持公司的持续创新和业务拓展，公司不断加大人才引进和培养力度。近期，公司成功引入了一批行业顶尖的技术专家和管理人才，进一步优化了人才结构。同时，公司还与多所高校和科研机构建立了产学研合作机制，为员工提供了广阔的学习和发展空间。通过人才赋能，[公司名称]将不断提升自身的技术实力和创新能力，为公司的长远发展奠定坚实基础。</div>\n<div class=\"paragraph\"><strong class=\"\">四、社会责任，践行使命</strong></div>\n<div class=\"paragraph\">在追求企业发展的过程中，[公司名称]始终不忘肩负的社会责任。公司积极参与社会公益活动，关注环境保护和可持续发展。此次推出的[新产品/新服务/新项目]，在设计和研发过程中充分考虑了环保和节能因素，旨在为社会创造更大的价值。未来，[公司名称]将继续秉持&ldquo;创新、合作、责任、共赢&rdquo;的企业价值观，为推动行业发展和社会进步贡献更多力量。</div>\n<div class=\"paragraph\">展望未来，[公司名称]将继续坚持以创新为核心驱动力，不断优化产品和服务，提升客户满意度。公司将持续加强与各方的合作，拓展市场边界，努力实现企业的可持续发展。我们相信，在全体成员的共同努力下，[公司名称]将在[行业领域]中创造更多的辉煌，为股东、客户和社会创造更大的价值。</div>\n<div class=\"paragraph\">[公司名称]，正以创新为帆，以责任为舵，驶向更加广阔的发展蓝海。让我们共同期待[公司名称]在未来的征程中，书写更加精彩的篇章！</div>', 0, 3, '', '2025-01-20 14:54:43', '2025-01-21 16:27:42', NULL, NULL);
INSERT INTO `cms_article` VALUES (25, 22, '', '数字化转型加速，开启智慧发展新纪元', '', '', '', '', '', '', '在当今数字化浪潮席卷全球的背景下，[公司名称]积极拥抱变革，加速推进数字化转型，于[具体日期]正式宣布全面升级企业运营体系，开启智慧发展新纪元。', '/public/uploads/default/2025/01/20/1737357304679_source_14.png', '<div class=\"paragraph\">在当今数字化浪潮席卷全球的背景下，[公司名称]积极拥抱变革，加速推进数字化转型，于[具体日期]正式宣布全面升级企业运营体系，开启智慧发展新纪元。这一举措不仅标志着公司在技术创新和管理升级方面迈出了坚实步伐，也为行业树立了数字化转型的标杆。</div>\n<div class=\"paragraph\"><strong class=\"\">一、数字化转型：赋能企业升级</strong></div>\n<div class=\"paragraph\">近年来，[公司名称]始终将数字化转型作为战略核心，致力于通过技术创新提升企业运营效率和市场竞争力。此次升级涵盖企业资源规划（ERP）、客户关系管理（CRM）、供应链管理（SCM）等多个关键领域，全面引入人工智能、大数据、云计算等前沿技术。通过构建智能化运营平台，公司实现了数据的实时共享与分析，优化了业务流程，大幅提升了决策效率和精准度。</div>\n<div class=\"paragraph\">&ldquo;数字化转型不仅是技术的升级，更是管理理念的革新。&rdquo;公司CEO [姓名]表示，&ldquo;通过数字化手段，我们能够更精准地把握市场需求，为客户提供更优质的产品和服务。&rdquo;</div>\n<div class=\"paragraph\"><strong class=\"\">二、智慧办公：提升协同效率</strong></div>\n<div class=\"paragraph\">作为数字化转型的重要组成部分，[公司名称]全面推行智慧办公系统。新系统集成了远程协作、智能会议、移动办公等功能，打破了时间和空间的限制，使员工能够随时随地高效工作。同时，通过引入智能文档处理、自动化流程审批等工具，公司内部运营效率显著提升，员工的工作体验也得到极大改善。</div>\n<div class=\"paragraph\">&ldquo;智慧办公系统的上线，让我们的工作更加便捷高效。&rdquo;公司员工[姓名]表示，&ldquo;现在，我们可以通过手机或电脑随时处理工作任务，大大提高了工作效率。&rdquo;</div>\n<div class=\"paragraph\"><strong class=\"\">三、客户体验升级：以科技驱动服务</strong></div>\n<div class=\"paragraph\">在数字化转型过程中，[公司名称]始终将客户体验放在首位。通过大数据分析和人工智能技术，公司能够精准洞察客户需求，提供个性化的产品和服务。同时，公司还升级了客户服务平台，引入智能客服系统，实现24小时在线服务，确保客户问题能够得到及时响应和解决。</div>\n<div class=\"paragraph\">&ldquo;我们希望通过数字化手段，为客户创造更加便捷、高效的服务体验。&rdquo;公司市场总监[姓名]表示，&ldquo;客户的满意是我们不断前行的动力。&rdquo;</div>\n<div class=\"paragraph\"><strong class=\"\">四、行业合作：共筑数字生态</strong></div>\n<div class=\"paragraph\">[公司名称]深知数字化转型不仅是企业自身的发展需求，更是行业发展的必然趋势。因此，公司积极与上下游企业、科研机构以及科技公司展开合作，共同构建数字化产业生态。通过共享技术、数据和资源，各方携手推动行业数字化升级，助力传统产业焕发新生。</div>\n<div class=\"paragraph\">&ldquo;数字化转型需要各方共同努力。&rdquo;公司技术总监[姓名]表示，&ldquo;我们希望通过合作，为行业创造更多价值，推动整个产业链的升级。&rdquo;</div>\n<div class=\"paragraph\"><strong class=\"\">五、展望未来：持续创新引领发展</strong></div>\n<div class=\"paragraph\">数字化转型只是[公司名称]迈向智慧发展新纪元的第一步。未来，公司将继续加大研发投入，探索区块链、物联网等新兴技术的应用场景，进一步提升企业的智能化水平。同时，公司还将加强人才培养和引进，打造一支高素质的数字化人才队伍，为企业的持续发展提供坚实支撑。</div>\n<div class=\"paragraph\">&ldquo;数字化转型是一个长期的过程，我们将持续投入、不断创新。&rdquo;公司CEO [姓名]表示，&ldquo;我们相信，通过数字化转型，[公司名称]将在未来的发展中更具竞争力。&rdquo;</div>\n<div class=\"paragraph\">[公司名称]的数字化转型不仅为企业自身发展注入了新动力，也为行业树立了榜样。在数字化浪潮的推动下，[公司名称]将携手各方，共同开启智慧发展的新篇章，为社会创造更多价值。</div>', 0, 19, '', '2025-01-20 15:03:50', '2025-01-23 08:43:46', NULL, NULL);
INSERT INTO `cms_article` VALUES (26, 23, '', '人工智能行业加速发展，多领域应用场景落地', '', '', '', '', '', '', '近期，人工智能行业在全球范围内呈现出快速发展的态势，技术创新和市场扩张成为核心驱动力。根据艾媒咨询发布的《2024-2025年中国人工智能行业发展趋势研究报告》，2024年中国人工智能市场规模达到7470亿元，同比增长41.0%，预计2025年市场规模将突破10457亿元，占全球比重达20.9%', '/public/uploads/default/2025/01/20/1737357316548_source_13.png', '<div class=\"paragraph\">近期，人工智能行业在全球范围内呈现出快速发展的态势，技术创新和市场扩张成为核心驱动力。根据艾媒咨询发布的《2024-2025年中国人工智能行业发展趋势研究报告》，2024年中国人工智能市场规模达到7470亿元，同比增长41.0%，预计2025年市场规模将突破10457亿元，占全球比重达20.9%。</div>\n<h4 class=\"\">技术创新推动行业变革</h4>\n<div class=\"paragraph\">技术创新是人工智能发展的核心驱动力。深度学习和强化学习的进步显著提升了AI的智能性、效率和准确性，使其能够应对更复杂的任务。此外，多模态融合技术的发展让AI能够整合文本、图像、语音等不同数据类型，实现更全面的感知和理解，为各行业的创新应用提供了更多可能性。</div>\n<h4 class=\"\">应用场景加速落地</h4>\n<div class=\"paragraph\">人工智能正在加速融入各行业，应用场景日益丰富。2023年，中国人工智能在互联网（89%）、电信（68%）、政务（65%）、金融（64%）等领域的渗透率显著提升。此外，具身智能技术的快速发展也备受关注。全球科技巨头纷纷布局，特斯拉的Optimus机器人在运动控制和任务执行方面取得显著进展，而国内的智元机器人、宇树科技等企业也在积极探索技术创新和商业化路径。</div>\n<h4 class=\"\">市场规模与投资增长</h4>\n<div class=\"paragraph\">2024年中国人工智能行业投融资金额再创新高，达到5482亿元。这一趋势表明，资本对人工智能行业的信心不断增强，为技术创新、市场扩张和应用深化提供了有力支持。</div>\n<h4 class=\"\">政策与监管影响</h4>\n<div class=\"paragraph\">政策对人工智能行业的发展起到了关键作用。一方面，鼓励性政策推动了人工智能在医疗、金融等领域的应用；另一方面，数据隐私法规的加强也促使企业增加合规投入。例如，欧盟的《通用数据保护条例》（GDPR）对科技行业提出了更高要求，促使企业在全球范围内布局合规能力。</div>\n<h4 class=\"\">未来展望</h4>\n<div class=\"paragraph\">展望2025年，人工智能市场将继续保持高速增长，技术创新将推动更多应用场景落地。同时，随着政策的不断完善，企业需要在技术发展和合规性之间找到平衡，以应对行业竞争和市场变化。</div>', 0, 1, '', '2025-01-20 15:12:09', '2025-01-20 15:12:09', NULL, NULL);
INSERT INTO `cms_article` VALUES (27, 23, NULL, '中国中药行业迎来新机遇：政策支持与市场拓展并进', '', '', '', '', '', '', '近年来，随着人们对健康需求的不断提升以及对传统医学价值的重新认识，中国中药行业呈现出快速发展的态势。根据前瞻产业研究院发布的《2024年中国中药行业市场规模、竞争格局及发展趋势分析》，未来几年，中国中药行业将迎来新的发展机遇，市场规模有望进一步扩大。', '', '<h3 class=\"\">中国中药行业迎来新机遇：政策支持与市场拓展并进</h3>\n<div class=\"paragraph\">近年来，随着人们对健康需求的不断提升以及对传统医学价值的重新认识，中国中药行业呈现出快速发展的态势。根据前瞻产业研究院发布的《2024年中国中药行业市场规模、竞争格局及发展趋势分析》，未来几年，中国中药行业将迎来新的发展机遇，市场规模有望进一步扩大。</div>\n<h4 class=\"\">政策支持助力行业发展</h4>\n<div class=\"paragraph\">近年来，国家对中医药行业的重视程度不断提升，出台了一系列支持政策，推动中药行业的现代化和国际化发展。2024年，国家中医药管理局发布多项政策文件，旨在加强中药质量监管、推动中药创新研发以及促进中医药服务体系建设。这些政策不仅为中药企业的规范化生产提供了保障，也为行业的发展注入了强大动力。</div>\n<div class=\"paragraph\">此外，医保政策的调整也为中药行业带来了新的机遇。越来越多的中药产品被纳入医保目录，进一步扩大了中药产品的市场覆盖范围，提升了消费者的购买意愿。</div>\n<h4 class=\"\">市场规模稳步增长</h4>\n<div class=\"paragraph\">近年来，中国中药市场规模持续扩大。数据显示，2023年中国中药市场规模已达到8500亿元，同比增长12.5%。预计到2025年，市场规模有望突破10000亿元。这一增长趋势不仅得益于国内市场的旺盛需求，也与国际市场对中药的认可度不断提高有关。</div>\n<h4 class=\"\">国际化步伐加快</h4>\n<div class=\"paragraph\">随着&ldquo;一带一路&rdquo;倡议的推进，中药行业国际化进程显著加快。越来越多的中药企业开始拓展海外市场，将中药产品推向全球。目前，中药产品已出口到全球160多个国家和地区，出口额逐年增长。同时，国际标准化组织（ISO）也发布了多项中药标准，为中药的国际化发展提供了技术支撑。</div>\n<h4 class=\"\">创新研发成为核心竞争力</h4>\n<div class=\"paragraph\">在政策支持和市场需求的推动下，中药行业的创新研发能力不断提升。近年来，中药企业加大了对现代制药技术、中药标准化生产以及中药新药研发的投入，推动了中药行业的现代化转型。例如，一些企业通过引入先进的提取技术和制剂工艺，提高了中药产品的质量和稳定性，使其更符合现代消费者的需求。</div>\n<h4 class=\"\">未来发展趋势</h4>\n<div class=\"paragraph\">展望未来，中国中药行业将继续保持良好的发展态势。一方面，政策支持将为行业的发展提供持续动力；另一方面，随着消费者对健康需求的不断提升，中药产品的市场需求也将进一步扩大。同时，随着国际化进程的加快，中药行业将迎来更广阔的发展空间。</div>\n<div class=\"paragraph\">此外，数字化技术的应用也将为中药行业的发展带来新的机遇。通过大数据、人工智能等技术，中药企业可以更好地进行质量控制、产品研发和市场推广，提升企业的核心竞争力。</div>\n<h4 class=\"\">结语</h4>\n<div class=\"paragraph\">中国中药行业正站在新的发展起点上。在政策支持、市场需求和技术创新的共同推动下，中药行业将迎来更大的发展空间。未来，随着国际化进程的加速和数字化技术的应用，中药行业有望在全球健康领域发挥更大的作用，为人类健康事业贡献更多力量。</div>', 0, 1, '', '2025-01-20 15:18:52', '2025-01-20 15:18:52', NULL, NULL);
INSERT INTO `cms_article` VALUES (28, 23, NULL, '人工智能行业：技术创新与多领域应用加速落地', '', '', '', '', '', '', '2025年，人工智能行业正迎来前所未有的发展机遇，技术创新与多领域应用的加速落地成为行业发展的核心驱动力。根据赛迪顾问的最新洞察，2025年人工智能产业将呈现以下几大趋势：', '', '<h3 class=\"\">人工智能行业：技术创新与多领域应用加速落地</h3>\n<div class=\"paragraph\">2025年，人工智能行业正迎来前所未有的发展机遇，技术创新与多领域应用的加速落地成为行业发展的核心驱动力。根据赛迪顾问的最新洞察，2025年人工智能产业将呈现以下几大趋势：</div>\n<h4 class=\"\">1. 全球发展路径分化，中国增速领跑全球</h4>\n<div class=\"paragraph\">全球人工智能发展路径逐渐分化，美国聚焦技术创新，欧洲注重规范制定，而中国则深耕市场需求。尽管各国在特定领域存在差距，但在应用落地方面正逐渐缩小差距。中国人工智能产业在未来10年将迎来爆发式增长，预计从2025年的3985亿元增长至2035年的17295亿元，复合年增长率达到15.6%。</div>\n<h4 class=\"\">2. 多模态交互与内容生成创新</h4>\n<div class=\"paragraph\">2025年将成为多模态融合的爆发之年，尤其是文生视频技术的突破，将彻底改变内容创作的方式，推动AI从单一任务处理向全方位智能交互迈进。例如，AI驱动的视频生成技术将广泛应用于影视制作、广告宣传等领域，大幅提升内容创作效率。</div>\n<h4 class=\"\">3. 智能驾驶与具身智能领衔应用落地</h4>\n<div class=\"paragraph\">智能驾驶和具身智能成为AI应用的第一梯队。智能驾驶技术在物流、公共交通等领域的应用不断深化，例如Waymo在美国部分地区开展无人驾驶出租车服务。同时，具身智能技术在机器人领域的应用也取得显著进展，推动了机器人在工业、服务等场景的广泛应用。</div>\n<h4 class=\"\">4. 端侧AI与智能边缘计算崛起</h4>\n<div class=\"paragraph\">端侧AI技术的快速发展标志着智能边缘计算的崛起。2024年被视为端侧AI的爆发元年，AI手机、智能汽车等消费电子产品能够提供实时翻译、智能驾驶辅助等个性化服务。这一趋势不仅提升了用户体验，还推动了智能设备的普及。</div>\n<h4 class=\"\">5. AI Agent市场迎来商用爆发</h4>\n<div class=\"paragraph\">AI Agent（人工智能代理）市场在2025年将迎来商用爆发元年。AI Agent能够通过自然语言交互完成复杂任务，广泛应用于客户服务、智能办公等领域，为企业和用户提供更高效、便捷的服务。</div>\n<h4 class=\"\">6. &ldquo;人工智能+&rdquo;赋能传统产业</h4>\n<div class=\"paragraph\">&ldquo;人工智能+&rdquo;正加速赋能传统产业的转型升级。例如，在医疗领域，AI辅助诊断系统能够提高疾病诊断的准确性和效率；在制造业，AI驱动的智能工厂通过优化生产流程、提升质量控制，显著提高了生产效率。</div>\n<h3 class=\"\">中药行业：数字化转型与国际化加速</h3>\n<div class=\"paragraph\">2024年，中国中药行业在政策支持、技术创新和国际化发展方面取得了显著进展。根据国家中医药管理局和国家数据局发布的《关于促进数字中医药发展的若干意见》，未来3至5年将推动大数据、人工智能等数字技术融入中医药传承创新的全链条。</div>\n<h4 class=\"\">1. 数字化赋能中药全产业链</h4>\n<div class=\"paragraph\">数字化技术正在重塑中药产业的生产与管理模式。通过大数据、物联网和区块链技术，中药全产业链数据协同加速推进，从中药材种植、加工、仓储到临床应用的全生命周期数据实现互联互通。例如，利用遥感和气象数据打造的中药生态种植数智化场景，提升了中药材种植的智能化水平。</div>\n<h4 class=\"\">2. 中医药国际化进程加速</h4>\n<div class=\"paragraph\">中药国际化进程在2024年取得重要突破。随着国际标准的逐步完善，中药产品在国际市场上的认可度不断提高。例如，中国积极参与国际标准化组织（ISO）的中医药标准制定，提升了中医药在国际上的话语权。同时，中药企业通过在海外建立分支机构、参加国际展会等方式，不断拓展海外市场。</div>\n<h4 class=\"\">3. 中医药与现代科技融合</h4>\n<div class=\"paragraph\">中医药与现代科技的融合成为行业发展的新趋势。例如，利用人工智能技术开发的中医临床智能辅助决策系统，能够为基层医疗机构提供智能化的诊疗支持。此外，数字化技术还推动了中医药文化的传播，通过线上平台和国际交流活动，让更多人了解中医药的价值。</div>\n<h4 class=\"\">4. 市场需求与政策支持推动行业增长</h4>\n<div class=\"paragraph\">2024年，中国中药市场规模有望超过5000亿元，中草药市场规模也呈现稳定增长态势。在政策支持下，中药行业在中药材种植、饮片加工、中成药制造等细分领域迎来快速发展。集采政策的推进和提质扩面，为中药行业带来了新的发展机遇。</div>\n<h3 class=\"\">总结</h3>\n<div class=\"paragraph\">2025年，人工智能行业将继续保持高速增长，技术创新与多领域应用的加速落地将成为核心驱动力。与此同时，中国中药行业在数字化转型和国际化进程方面也取得了显著进展，政策支持与市场需求推动行业迈向高质量发展。未来，随着技术的不断突破和应用场景的拓展，人工智能和中药行业有望在全球范围内创造更大的价值。</div>', 0, 1, '', '2025-01-20 15:20:31', '2025-01-20 15:20:31', NULL, NULL);
INSERT INTO `cms_article` VALUES (29, 23, NULL, '新能源汽车行业：技术创新与市场拓展引领绿色出行新未来', '', '', '', '', '', '', '近年来，新能源汽车行业在全球范围内呈现出蓬勃发展的态势，技术创新、政策支持以及市场需求的共同推动，使其成为汽车产业转型升级的重要方向。2024年，新能源汽车行业继续保持高速增长，市场规模不断扩大，技术创新成果显著，为未来的发展奠定了坚实基础。', '', '<div class=\"paragraph\">近年来，新能源汽车行业在全球范围内呈现出蓬勃发展的态势，技术创新、政策支持以及市场需求的共同推动，使其成为汽车产业转型升级的重要方向。2024年，新能源汽车行业继续保持高速增长，市场规模不断扩大，技术创新成果显著，为未来的发展奠定了坚实基础。</div>\n<h4 class=\"\">一、技术创新：续航与智能化突破</h4>\n<div class=\"paragraph\">新能源汽车的核心竞争力在于技术创新，尤其是电池技术和智能驾驶技术。2024年，电池技术取得重大突破，固态电池的研发和商业化进程加速推进。固态电池不仅提高了能量密度，还显著提升了安全性，使得新能源汽车的续航里程普遍突破600公里，部分高端车型甚至达到800公里以上。这一技术进步极大地缓解了消费者的&ldquo;里程焦虑&rdquo;，推动了新能源汽车的市场普及。</div>\n<div class=\"paragraph\">同时，智能驾驶技术也在不断升级。自动驾驶辅助系统（L2+级别）已成为新能源汽车的标配，部分车型甚至实现了城市道路的自动驾驶功能（L3级别）。通过激光雷达、高精度地图和人工智能算法的融合，车辆能够实现自动变道、自动泊车和交通拥堵辅助等功能，提升了驾驶的安全性和舒适性。</div>\n<h4 class=\"\">二、市场拓展：全球销量增长与市场渗透率提升</h4>\n<div class=\"paragraph\">2024年，全球新能源汽车销量突破1500万辆，同比增长超过50%。中国市场继续领跑全球，销量占比超过50%，欧洲和美国市场也呈现快速增长态势。新能源汽车的市场渗透率不断提升，2024年全球新能源汽车渗透率已达到25%，预计到2025年将突破30%。</div>\n<div class=\"paragraph\">在中国，新能源汽车的市场接受度不断提高，消费者对其续航里程、智能化配置和性价比的认可度显著提升。同时，新能源汽车的消费群体也逐渐从一线城市向二三线城市和农村地区渗透，市场潜力巨大。</div>\n<h4 class=\"\">三、政策支持：补贴与基础设施建设并进</h4>\n<div class=\"paragraph\">政策支持是新能源汽车行业快速发展的关键因素之一。2024年，中国政府继续出台了一系列支持政策，包括购车补贴、税收优惠和免费停车等措施，以鼓励消费者购买新能源汽车。同时，政府还加大了对充电桩、换电站等基础设施的建设力度，2024年全国新增充电桩超过200万个，换电站数量也突破1000座，为新能源汽车的推广提供了有力保障。</div>\n<h4 class=\"\">四、行业竞争：传统车企与新势力的博弈</h4>\n<div class=\"paragraph\">2024年，新能源汽车市场竞争激烈，传统车企与新势力车企纷纷加大投入，推出更多高性能、智能化的车型。传统车企凭借其深厚的技术积累和品牌优势，加速向电动化转型，推出了多款具有竞争力的新能源车型。例如，大众、丰田等传统巨头纷纷加大在电动汽车领域的研发投入，计划在未来几年内实现电动化车型的全面覆盖。</div>\n<div class=\"paragraph\">与此同时，新势力车企如蔚来、小鹏、理想等，凭借其创新的商业模式和智能化技术，继续在市场上占据重要份额。新势力车企通过软件定义汽车、用户运营等创新模式，不断提升用户体验和品牌忠诚度。</div>\n<h4 class=\"\">五、未来展望：可持续发展与智能化出行</h4>\n<div class=\"paragraph\">展望2025年，新能源汽车行业将继续保持高速增长，技术创新和市场拓展将成为核心驱动力。随着固态电池技术的成熟和成本降低，新能源汽车的续航里程将进一步提升，市场接受度也将不断提高。同时，智能驾驶技术的普及将推动自动驾驶功能的逐步落地，为消费者提供更加安全、便捷的出行体验。</div>\n<div class=\"paragraph\">此外，新能源汽车的可持续发展也将成为行业关注的重点。随着电池回收技术的完善和可再生能源的广泛应用，新能源汽车的全生命周期碳排放将进一步降低，为全球绿色出行贡献更多力量。</div>\n<h3 class=\"\">结语</h3>\n<div class=\"paragraph\">新能源汽车行业正站在新的发展起点上。技术创新、政策支持和市场需求的共同推动，使其成为汽车产业转型升级的重要方向。未来，随着续航里程的提升、智能化技术的普及和基础设施的完善，新能源汽车有望在全球范围内实现更广泛的应用，引领绿色出行的新未来。</div>', 0, 1, '', '2025-01-20 15:21:23', '2025-01-20 15:21:23', NULL, NULL);
INSERT INTO `cms_article` VALUES (30, 23, '', '2025年新能源汽车市场：技术创新引领绿色出行新趋势', '', '', '', '', '', '', '', '', '欢迎使用ChanCMS系统', 0, 1, '', '2025-01-20 15:22:28', '2025-01-20 15:22:28', NULL, NULL);
INSERT INTO `cms_article` VALUES (31, 23, '', '人工智能行业加速落地：多模态技术开启智能交互新时代', '', '', '', '', '', '', '', '', '欢迎使用ChanCMS系统', 0, 1, '', '2025-01-20 15:22:37', '2025-01-20 15:22:37', NULL, NULL);
INSERT INTO `cms_article` VALUES (32, 23, '', '中药行业数字化转型：政策赋能“数智中医药”发展', '', '', '', '', '', '', '', '', '欢迎使用ChanCMS系统', 0, 1, '', '2025-01-20 15:22:44', '2025-01-20 15:22:44', NULL, NULL);
INSERT INTO `cms_article` VALUES (33, 23, '', '智能制造行业崛起：工业互联网推动制造业升级', '', '', '', '', '', '', '', '', '欢迎使用ChanCMS系统', 0, 2, '', '2025-01-20 15:22:55', '2025-01-20 15:27:03', NULL, NULL);
INSERT INTO `cms_article` VALUES (34, 23, '', '金融科技行业创新：区块链技术重塑金融服务生态', '', '', '', '', '', '', '近年来，新能源汽车行业在全球范围内呈现出蓬勃发展的态势，技术创新、政策支持以及市场需求的共同推动，使其成为汽车产业转型升级的重要方向。2024年，新能源汽车行业继续保持高速增长，市场规模不断扩大，技术创新成果显著，为未来的发展奠定了坚实基础。', '/public/uploads/default/2025/01/20/1737357992968_source_13.png', '欢迎使用ChanCMS系统', 0, 2, '', '2025-01-20 15:23:03', '2025-01-20 15:27:00', NULL, NULL);
INSERT INTO `cms_article` VALUES (35, 19, '', '基本存款账户信息', '', '', '', '', '', '', '基本存款账户信息基本存款账户信息基本存款账户信息基本存款账户信息基本存款账户信息基本存款账户信息基本存款账户信息', '/public/uploads/default/2025/01/21/1737420558502_source_4fe715b6a851c25eea3aea00598dd1fd.png', '<p><img src=\"/public/uploads/default/2025/01/21/1737420571929_source_4fe715b6a851c25eea3aea00598dd1fd.png\" alt=\"\" width=\"376\" height=\"486\" style=\"display: block; margin-left: auto; margin-right: auto;\"></p>\n<p>&nbsp;</p>\n<pre class=\"language-markup\"><code>try {\n  let query = knex(\"cms_category\")\n    .select([\n      \"id\",\n      \"pid\",\n      \"name\",\n      \"pinyin\",\n      \"path\",\n      \"orderBy\",\n      \"target\",\n      \"status\",\n      \"listView\",\n      \"articleView\",\n      \"seoTitle\",\n      \"seoKeywords\",\n      \"seoDescription\",\n      \"type\",\n    ]);\n\n  if (pid === 0) {\n    query.where(\"id\", 0);\n  } else {\n    query.where(\"pid\", pid);\n  }\n\n  query.orderBy(\"orderBy\", \"ASC\");\n\n  let res = await query;\n  return res;\n} catch (error) {\n  console.error(\"Error executing query:\", error);\n  throw error;\n}</code></pre>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', 0, 43, '', '2025-01-21 08:48:15', '2025-01-21 11:22:56', NULL, NULL);
INSERT INTO `cms_article` VALUES (36, 19, NULL, '232323', '', '', '', '', '', '', '', '', '欢迎使用ChanCMS系统', 0, 1, '', '2025-01-21 09:03:44', '2025-01-21 09:03:44', NULL, NULL);
INSERT INTO `cms_article` VALUES (37, 19, NULL, '23243', '', '', '', '', '', '', '', '', '欢迎使用ChanCMS系统', 0, 1, '', '2025-01-21 09:03:59', '2025-01-21 09:03:59', NULL, NULL);
INSERT INTO `cms_article` VALUES (38, 19, NULL, '2323', '', '', '', '', '', '', '', '', '欢迎使用ChanCMS系统', 0, 3, '', '2025-01-21 09:04:06', '2025-01-21 11:09:06', NULL, NULL);
INSERT INTO `cms_article` VALUES (39, 19, NULL, '24423', '', '', '', '', '', '', '', '', '欢迎使用ChanCMS系统', 0, 3, '', '2025-01-21 09:04:12', '2025-01-21 16:27:11', NULL, NULL);
INSERT INTO `cms_article` VALUES (40, 19, NULL, '42223', '', '', '', '', '', '', '', '', '<p>欢迎使用ChanCMS系统2323</p>', 0, 3, '', '2025-01-21 09:04:23', '2025-01-21 16:27:14', NULL, NULL);
INSERT INTO `cms_article` VALUES (41, 19, NULL, '343443', '', '', '', '', '', '', '', '', '欢迎使用ChanCMS系统', 0, 2, '', '2025-01-21 09:04:31', '2025-01-21 16:27:15', NULL, NULL);
INSERT INTO `cms_article` VALUES (42, 19, '', '24323', '', '', '', '', '', '', '', '', '欢迎使用ChanCMS系统', 0, 2, '', '2025-01-21 09:04:45', '2025-01-21 09:04:45', '[]', '[]');
INSERT INTO `cms_article` VALUES (43, 19, '', '543434', '', '', '', '', '', '', '', '/public/uploads/default/2025/01/22/1737516143046_source_1.png', '欢迎使用ChanCMS系统', 0, 2, '', '2025-01-21 09:04:51', '2025-01-21 09:04:51', '[]', '[]');
INSERT INTO `cms_article` VALUES (44, 19, '', '243', '', '', '', '', '', '', '', '/public/uploads/default/2025/01/22/1737516132542_source_3.png', '欢迎使用ChanCMS系统', 0, 27, '', '2025-01-21 09:05:01', '2025-01-21 09:05:01', '[]', '[]');
INSERT INTO `cms_article` VALUES (45, 21, '', '联系我们', '', '', '', 'contact.html', '', '', '', '', '', 0, 170, '', '2025-01-21 11:51:37', '2025-01-23 16:01:28', '[{\"name\":\"关注二维码\",\"path\":\"/public/uploads/default/2025/01/21/1737445860123_source_1737097977303_source_a1.jpg\"}]', '');
INSERT INTO `cms_article` VALUES (46, 6, NULL, '古建筑工程专业承包一级 ', '', '', '', '', '', '', '', '', '欢迎使用ChanCMS系统', 0, 1, '', '2025-01-21 17:30:28', '2025-01-21 17:30:28', NULL, NULL);
INSERT INTO `cms_article` VALUES (47, 6, '', ' 消防设施工程专业承包二级 ', '', '', '', '', '', '', '', '/public/uploads/default/2025/01/22/1737506173422_source_fc3b3e0505a79dc0f240ceb88e6ce5e0.png', '欢迎使用ChanCMS系统', 0, 1, '', '2025-01-21 17:32:15', '2025-01-21 17:32:15', '[]', '[]');
INSERT INTO `cms_article` VALUES (48, 6, '', '阴水可上佃专业2级 ', '', '', '', '', '', '', '', '/public/uploads/default/2025/01/22/1737506155971_source_5.png', '欢迎使用ChanCMS系统', 0, 2, '', '2025-01-21 17:32:27', '2025-01-23 16:01:51', '[]', '[]');
INSERT INTO `cms_article` VALUES (49, 6, '', '市政公用工程施工承包2级 ', '', '', '', '', '', '', '', '/public/uploads/default/2025/01/22/1737506146704_source_4.png', '欢迎使用ChanCMS系统', 0, 1, '', '2025-01-21 17:32:36', '2025-01-21 17:32:36', '[]', '[]');
INSERT INTO `cms_article` VALUES (50, 6, '', '市政公用工程施工承包2级  ', '', '', '', '', '', '', '', '/public/uploads/default/2025/01/22/1737506139756_source_3.png', '欢迎使用ChanCMS系统', 0, 1, '', '2025-01-21 17:32:47', '2025-01-21 17:32:47', '[]', '[]');
INSERT INTO `cms_article` VALUES (51, 6, '', '建筑装修装饰工程专业承包2级 ', '', '', '', '', '', '', '', '/public/uploads/default/2025/01/22/1737506125523_source_2.png', '欢迎使用ChanCMS系统', 0, 1, '', '2025-01-21 17:32:54', '2025-01-21 17:32:54', '[]', '[]');
INSERT INTO `cms_article` VALUES (52, 6, '', '建筑工程总承包2级', '', '', '', '', '', '', '', '/public/uploads/default/2025/01/22/1737506116846_source_1.png', '欢迎使用ChanCMS系统', 0, 3, '', '2025-01-21 17:33:01', '2025-01-22 09:36:40', '[]', '[]');
INSERT INTO `cms_article` VALUES (53, 8, '', '翼城河上公德山项目', '', '', '', '', '', '', '', '/public/uploads/default/2025/01/22/1737513998533_source_y4Wj00f0Ph8Pjo6O3AdZsoXY8Bk+UQDz3pm27aPOUt47L0WgX1f8TYAD06ChxzXq9dAAAAABJRU5ErkJggg==.png', '<p style=\"text-align: center;\"><img src=\"/public/uploads/default/2025/01/22/1737513491711_source_rwADAELd4qy46Q3RAAAAAElFTkSuQmCC.png\" alt=\"\" width=\"617\" height=\"383\"></p>', 0, 2, '', '2025-01-22 10:37:27', '2025-01-22 10:48:14', '[]', '[]');
INSERT INTO `cms_article` VALUES (54, 8, '', '北京葡萄嘴环岛汇江大厦', '', '', '', '', '', '', '', '/public/uploads/default/2025/01/22/1737513990576_source_S1GAcUlgZ7uh3AgwAc1IxhgSX85wAAAAASUVORK5CYII=.png', '欢迎使用ChanCMS系统', 0, 3, '', '2025-01-22 10:38:18', '2025-01-22 11:08:11', '[]', '[]');
INSERT INTO `cms_article` VALUES (55, 8, '', '晋城市凤城中学', '', '', '', '', '', '', '', '/public/uploads/default/2025/01/22/1737513975379_source_rwADAELd4qy46Q3RAAAAAElFTkSuQmCC.png', '欢迎使用ChanCMS系统', 0, 3, '', '2025-01-22 10:38:47', '2025-01-22 10:48:36', '[]', '[]');

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
) ENGINE = InnoDB AUTO_INCREMENT = 159 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章-标签表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_articletag
-- ----------------------------
INSERT INTO `cms_articletag` VALUES (24, 2, 1);
INSERT INTO `cms_articletag` VALUES (25, 3, 2);
INSERT INTO `cms_articletag` VALUES (27, 6, 1);
INSERT INTO `cms_articletag` VALUES (28, 7, 1);
INSERT INTO `cms_articletag` VALUES (29, 8, 1);
INSERT INTO `cms_articletag` VALUES (30, 9, 1);
INSERT INTO `cms_articletag` VALUES (31, 10, 1);
INSERT INTO `cms_articletag` VALUES (45, 13, 0);
INSERT INTO `cms_articletag` VALUES (73, 20, 0);
INSERT INTO `cms_articletag` VALUES (74, 15, 0);
INSERT INTO `cms_articletag` VALUES (76, 21, 0);
INSERT INTO `cms_articletag` VALUES (77, 22, 0);
INSERT INTO `cms_articletag` VALUES (79, 23, 0);
INSERT INTO `cms_articletag` VALUES (81, 24, 0);
INSERT INTO `cms_articletag` VALUES (84, 25, 0);
INSERT INTO `cms_articletag` VALUES (85, 26, 0);
INSERT INTO `cms_articletag` VALUES (86, 27, 0);
INSERT INTO `cms_articletag` VALUES (87, 28, 0);
INSERT INTO `cms_articletag` VALUES (88, 29, 0);
INSERT INTO `cms_articletag` VALUES (94, 30, 0);
INSERT INTO `cms_articletag` VALUES (95, 31, 0);
INSERT INTO `cms_articletag` VALUES (96, 32, 0);
INSERT INTO `cms_articletag` VALUES (97, 33, 0);
INSERT INTO `cms_articletag` VALUES (100, 34, 0);
INSERT INTO `cms_articletag` VALUES (102, 36, 0);
INSERT INTO `cms_articletag` VALUES (103, 37, 0);
INSERT INTO `cms_articletag` VALUES (104, 38, 0);
INSERT INTO `cms_articletag` VALUES (105, 39, 0);
INSERT INTO `cms_articletag` VALUES (106, 40, 0);
INSERT INTO `cms_articletag` VALUES (107, 41, 0);
INSERT INTO `cms_articletag` VALUES (111, 35, 0);
INSERT INTO `cms_articletag` VALUES (136, 45, 0);
INSERT INTO `cms_articletag` VALUES (137, 46, 0);
INSERT INTO `cms_articletag` VALUES (144, 52, 0);
INSERT INTO `cms_articletag` VALUES (145, 51, 0);
INSERT INTO `cms_articletag` VALUES (146, 50, 0);
INSERT INTO `cms_articletag` VALUES (147, 49, 0);
INSERT INTO `cms_articletag` VALUES (148, 48, 0);
INSERT INTO `cms_articletag` VALUES (149, 47, 0);
INSERT INTO `cms_articletag` VALUES (153, 55, 0);
INSERT INTO `cms_articletag` VALUES (154, 54, 0);
INSERT INTO `cms_articletag` VALUES (155, 53, 0);
INSERT INTO `cms_articletag` VALUES (156, 44, 0);
INSERT INTO `cms_articletag` VALUES (157, 43, 0);
INSERT INTO `cms_articletag` VALUES (158, 42, 0);

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
  `tong` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '顶部通栏图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '网站栏目' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_category
-- ----------------------------
INSERT INTO `cms_category` VALUES (1, 0, '', '', '', '首页', 'home', '/home', '', '1', '', 10, '0', '0', '0', 'index.html', 'article.html', '2024-09-13 22:38:12', '2025-01-10 15:26:43', NULL);
INSERT INTO `cms_category` VALUES (2, 0, '', '', '', '服务案例', 'case', '/case', '', '0', '', 30, '0', '0', '0', 'list-img.html', 'article.html', '2024-09-13 22:38:12', '2025-01-22 10:39:32', NULL);
INSERT INTO `cms_category` VALUES (3, 0, '', '', '', '图片', 'pics', '/pics', '', '0', '', 40, '0', '0', '0', 'list-img.html', 'article-img.html', '2024-09-13 22:39:02', '2025-01-10 15:27:16', NULL);
INSERT INTO `cms_category` VALUES (4, 0, '', '', '', '视频', 'video', '/video', '', '0', '', 50, '0', '0', '0', 'list.html', 'article.html', '2024-09-13 22:39:22', '2025-01-10 15:27:22', NULL);
INSERT INTO `cms_category` VALUES (5, 0, '', '', '', '下载', 'down', '/down', '', '0', '', 60, '0', '0', '1', 'list.html', 'article-down.html', '2024-09-13 22:39:44', '2025-01-10 15:27:41', NULL);
INSERT INTO `cms_category` VALUES (6, 0, '', '', '', '业务服务', 'server', '/server', '', '0', '', 25, '0', '0', '0', 'list-img.html', 'article.html', '2024-09-13 22:42:10', '2025-01-22 09:37:23', '/public/uploads/default/2025/01/17/1737102217606_source_5.jpg');
INSERT INTO `cms_category` VALUES (7, 0, '', '', '', '关于我们', 'about', '/about', '', '1', '', 20, '0', '0', '0', 'list.html', 'page.html', '2024-09-13 22:42:55', '2025-01-21 11:41:23', '/public/uploads/default/2025/01/17/1737102217606_source_5.jpg');
INSERT INTO `cms_category` VALUES (8, 2, '', '', '', '案例分类1', 'case1', '/case1', '', '0', '', 0, '0', '0', '0', 'list-img.html', 'article.html', '2024-12-05 22:35:58', '2025-01-22 10:39:41', NULL);
INSERT INTO `cms_category` VALUES (9, 7, '', '', '', '公司介绍', 'introduce', '/about/introduce', '', '1', '', 0, '0', '0', '0', 'list.html', 'page.html', '2024-12-05 23:25:44', '2025-01-17 17:42:30', '/public/uploads/default/2025/01/17/1737102217606_source_5.jpg');
INSERT INTO `cms_category` VALUES (10, 2, '', '', '', '案例分类2', 'case2', '/case/case2', '', '0', '', 0, '0', '0', '0', 'list-img.html', 'article.html', '2025-01-09 16:29:08', '2025-01-22 10:39:48', NULL);
INSERT INTO `cms_category` VALUES (11, 2, '', '', '', '案例分类3', 'case3', '/case/case3', '', '0', '', 0, '0', '0', '0', 'list-img.html', 'article.html', '2025-01-10 13:28:10', '2025-01-22 10:39:56', NULL);
INSERT INTO `cms_category` VALUES (18, 7, '', '', '', '企业文化', 'culture', '/about/culture', '', '1', '', 0, '0', '0', '0', 'list.html', 'page.html', '2025-01-17 13:14:07', '2025-01-20 15:58:18', '/public/uploads/default/2025/01/17/1737102217606_source_5.jpg');
INSERT INTO `cms_category` VALUES (19, 7, '', '', '', '荣誉资质', 'honor', '/about/honor', '', '0', '', 0, '0', '0', '0', 'list.html', 'article.html', '2025-01-20 14:06:39', '2025-01-20 15:58:23', '/public/uploads/default/2025/01/17/1737102217606_source_5.jpg');
INSERT INTO `cms_category` VALUES (20, 0, '', '', '', '新闻中心', 'news', '/news', '', '0', '', 35, '0', '0', '0', 'list-news.html', 'article-news.html', '2025-01-20 14:28:12', '2025-01-20 15:38:07', '');
INSERT INTO `cms_category` VALUES (21, 0, '', '', '', '联系我们', 'contact', '/contact', '', '1', '', 70, '0', '0', '0', 'list.html', 'contact.html', '2025-01-20 14:29:07', '2025-01-21 12:34:48', '/public/uploads/default/2025/01/17/1737102217606_source_5.jpg');
INSERT INTO `cms_category` VALUES (22, 20, '', '', '', '公司新闻', 'cmnews', '/news/cmnews', '', '0', '', 0, '0', '0', '0', 'list.html', 'article.html', '2025-01-20 14:53:37', '2025-01-21 11:13:23', '');
INSERT INTO `cms_category` VALUES (23, 20, '', '', '', '行业动态', 'indnews', '/news/indnews', '', '0', '', 0, '0', '0', '0', 'list.html', 'article.html', '2025-01-20 14:54:30', '2025-01-21 11:28:47', '');
INSERT INTO `cms_category` VALUES (24, 7, '', '', '', '无数据栏', 'wushujulan', '/about/wushujulan', '', '0', '', 0, '0', '0', '0', 'list.html', 'article.html', '2025-01-21 09:13:34', '2025-01-21 09:13:56', '');
INSERT INTO `cms_category` VALUES (25, 20, '', '', '', '无数据', 'kong', '/news/kong', '', '0', '', 0, '0', '0', '0', 'list.html', 'article.html', '2025-01-21 11:30:27', '2025-01-21 11:30:27', '');

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字段字典' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_field
-- ----------------------------
INSERT INTO `cms_field` VALUES (1, 1, '文件名称', 'fileName', '1', '', '', '0', '');
INSERT INTO `cms_field` VALUES (2, 1, '文件版本', 'fileVersion', '1', '', '', '0', '');
INSERT INTO `cms_field` VALUES (3, 1, '文件链接', 'fileLink', '1', '', '', '0', '');

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '友情链接' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_friendlink
-- ----------------------------
INSERT INTO `cms_friendlink` VALUES (1, 'ChanCMS官网', 'https://www.chancms.top', 0, '2024-10-02 14:12:45', '2024-10-02 14:12:45');
INSERT INTO `cms_friendlink` VALUES (2, '春藤', 'http://www.chunten.com', 0, '2025-01-10 15:30:23', '2025-01-10 15:30:23');

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
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标志',
  `qrcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '二维码',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司地址',
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电话',
  `tel1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电话1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '网站信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_site
-- ----------------------------
INSERT INTO `cms_site` VALUES (1, 'ChanCMS网站系统', 'www.chancms.top', 'intrwins@qq.com', NULL, '皖ICP备2024030927号-1', '', '', 'ChanCMS', 'ChanCMS', 'ChanCMS是一款基于Node、Express、MySQL、Vue3研发的高质量实用型CMS系统。它具有轻量、灵活、稳定、高性能、易扩展等特点，让开发更简单。系统采用自研的chanjs框架实现，专注于SEO，支持伪静态html和拼音导航，可灵活设置关键词和描述。在安全性方面，基于knex高防sql注入，进行接口权限校验，为网站安全提供有力保障。', NULL, '2025-01-21 15:58:55', '/public/uploads/default/2025/01/17/1737097563391_source_1.png', '/public/uploads/default/2025/01/17/1737097977303_source_a1.png', '河南省郑州市惠济区运河上院13楼2单元', '18530816580', '0371-5454541');

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
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '轮播图' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cms_slide
-- ----------------------------
INSERT INTO `cms_slide` VALUES (3, '轮播图1', '/public/uploads/default/2025/01/09/1736413877005_source_ae0042447a6d3b93e98c17d6576b8e2b.jpg', '', NULL, '2024-09-17 10:52:25', '2025-01-23 10:35:50', '1这是轮播图1的内容 我就是想要一些大文本');
INSERT INTO `cms_slide` VALUES (4, '轮播图2', '/public/uploads/default/2025/01/09/1736413877005_source_ae0042447a6d3b93e98c17d6576b8e2b.jpg', '', NULL, '2025-01-09 18:07:54', '2025-01-10 09:20:11', '这是轮播图2的内容 我就是想要一些大文本');
INSERT INTO `cms_slide` VALUES (5, '轮播图3', '/public/uploads/default/2025/01/23/1737599885698_source_54.png', '4', NULL, '2025-01-09 18:13:15', '2025-01-23 10:38:06', '3这是轮播图3的内容 我就是想要一些大文本');

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
INSERT INTO `cms_tag` VALUES (2, 'chancms', 'chancms', 1);

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '下载模型' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ext_download
-- ----------------------------
INSERT INTO `ext_download` VALUES (2, 13, 'ChanCMS', 'V3.0.7', 'https://www.chancms.top');

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
INSERT INTO `plus_collect` VALUES (2, '人民网-top文章', 'http://www.people.com.cn/', '#rm_topline a', 1, 1, '1', '#newstit', '.rm_txt_con', '1', 'http://js.people.com.cn/n2/2024/0822/c360301-40951625.html', '//图片加域名\nvar urlPrefix = \"http://www.people.com.cn/\";\n    data = data.replace(/(<img[^>]*src=[\"\'])([^\"\']*)(\".*>)/g, function(match, p1, p2, p3) {\n        return p1 + urlPrefix + p2 + p3;\n    });\n//删除分享\ndata = data .replace(/<p\\s+class=\"paper_num\"[^>]*>[\\s\\S]*<\\/p>/gi, \'\');\n//删除编辑\ndata = data .replace(/<div\\s+class=\"(?:edit\\s+)[^\"]*\"[^>]*>[\\s\\S]*<\\/div>/gi, \'\');\n// 移除 style 属性中的所有样式，但保留 text-align: center;\ndata = data .replace(/ style\\s*=\\s*[\'\"]([^\'\"]*)[\'\"]/g, function(match, style) {\n    // 检查是否已包含 text-align: center;\n    if (style.includes(\'text-align: center;\')) {\n        // 如果存在 text-align: center; 则只保留它\n        return ` style=\"text-align: center;\"`;\n    } else {\n        // 如果不存在 text-align: center; 则移除整个 style 属性\n        return \'\';\n    }\n});\n//清理class\ndata = data.replace(/ class\\s*=\\s*[\'\"]([^\'\\\"]*)[\'\"]/g, \'\');\n//清理空格\ndata = data.replace(/\\s+/g, \' \');\ndata = data.trim();\n//清理空span标签\ndata = data.replaceAll(\'<span></span>\', \'\');\n//清理空p标签\ndata = data.replaceAll(\'<p></p>\', \'\');\n//清理空div标签\ndata = data.replaceAll(\'<div></div>\', \'\');\n//清理空table标签\ndata = data .replace(/<table[^>]*>[\\s\\S]*<\\/table>/gi, \'\');\nreturn data;', 2, '1', '2024-08-22 16:27:19', '2024-10-01 22:28:56');

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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '开源接口采集' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of plus_gather
-- ----------------------------
INSERT INTO `plus_gather` VALUES (3, '每日新闻60s', 'https://api.qqsuu.cn/api/dm-60s?type=json', 'let cont = \'\';\ndata.data.news.map((item)=>{\n   cont +=\'<p>\'+ item+\'</p>\'\n})\nreturn {article:cont ,weiyu:data.data.weiyu,title:\'ChanCMS早间新闻—\'+data.data.date};', 2, '2', '2023-11-29 19:10:45', '2024-10-01 22:44:06');
INSERT INTO `plus_gather` VALUES (4, '60s稳定版本', 'https://api.j4u.ink/v1/store/other/proxy/remote/news/60.json', 'let obj = {\n	title:\'\',\n	content:\'\'\n}\nif(data.code == 200){\n	obj.title = \"香港日报新闻60秒\"+ data.data.date_info.date;\n	let p = \'\';\n	data.data.news.forEach((item)=>{\n	  p += \'<p>\'+item +\'</p>\'\n	});\n       p+=\'<p>[香港日报微语]：\'+data.data.weiyu+\'</p>\'\n      obj.content = p;\n}\nreturn obj;', 15, '1', '2023-12-01 00:03:35', '2023-12-10 19:36:36');

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
INSERT INTO `sys_config` VALUES (1, 'company', 'chancms', 'chancms', 'test', 'test', 'chancms.top', 'test', '1', '2023-10-07 21:52:21', '2025-01-10 10:08:42');

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
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '登录日志' ROW_FORMAT = DYNAMIC;

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
INSERT INTO `sys_loginlog` VALUES (45, 1, '182.119.229.214', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2024-12-20 16:16:58');
INSERT INTO `sys_loginlog` VALUES (46, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-07 08:29:17');
INSERT INTO `sys_loginlog` VALUES (47, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-07 09:20:48');
INSERT INTO `sys_loginlog` VALUES (48, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-07 14:15:05');
INSERT INTO `sys_loginlog` VALUES (49, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-07 18:12:52');
INSERT INTO `sys_loginlog` VALUES (50, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-08 13:34:30');
INSERT INTO `sys_loginlog` VALUES (51, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-08 13:35:48');
INSERT INTO `sys_loginlog` VALUES (52, 3, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-08 13:39:37');
INSERT INTO `sys_loginlog` VALUES (53, 3, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-08 13:39:49');
INSERT INTO `sys_loginlog` VALUES (54, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 08:16:37');
INSERT INTO `sys_loginlog` VALUES (55, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 08:19:29');
INSERT INTO `sys_loginlog` VALUES (56, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 08:21:04');
INSERT INTO `sys_loginlog` VALUES (57, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 08:21:27');
INSERT INTO `sys_loginlog` VALUES (58, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 08:23:55');
INSERT INTO `sys_loginlog` VALUES (59, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 08:30:26');
INSERT INTO `sys_loginlog` VALUES (60, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 08:30:59');
INSERT INTO `sys_loginlog` VALUES (61, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 08:31:22');
INSERT INTO `sys_loginlog` VALUES (62, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 08:44:02');
INSERT INTO `sys_loginlog` VALUES (63, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 11:13:50');
INSERT INTO `sys_loginlog` VALUES (64, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 11:22:58');
INSERT INTO `sys_loginlog` VALUES (65, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 11:27:30');
INSERT INTO `sys_loginlog` VALUES (66, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 11:34:56');
INSERT INTO `sys_loginlog` VALUES (67, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 11:38:35');
INSERT INTO `sys_loginlog` VALUES (68, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 11:43:37');
INSERT INTO `sys_loginlog` VALUES (69, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 11:59:17');
INSERT INTO `sys_loginlog` VALUES (70, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 12:00:08');
INSERT INTO `sys_loginlog` VALUES (71, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 12:00:23');
INSERT INTO `sys_loginlog` VALUES (72, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 12:02:50');
INSERT INTO `sys_loginlog` VALUES (73, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 12:03:59');
INSERT INTO `sys_loginlog` VALUES (74, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 12:04:12');
INSERT INTO `sys_loginlog` VALUES (75, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 12:43:04');
INSERT INTO `sys_loginlog` VALUES (76, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 13:10:13');
INSERT INTO `sys_loginlog` VALUES (77, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 13:11:58');
INSERT INTO `sys_loginlog` VALUES (78, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 13:12:19');
INSERT INTO `sys_loginlog` VALUES (79, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 13:12:36');
INSERT INTO `sys_loginlog` VALUES (80, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 13:26:52');
INSERT INTO `sys_loginlog` VALUES (81, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 13:30:45');
INSERT INTO `sys_loginlog` VALUES (82, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 13:31:33');
INSERT INTO `sys_loginlog` VALUES (83, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 14:18:27');
INSERT INTO `sys_loginlog` VALUES (84, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 14:18:55');
INSERT INTO `sys_loginlog` VALUES (85, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 14:25:53');
INSERT INTO `sys_loginlog` VALUES (86, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 14:38:47');
INSERT INTO `sys_loginlog` VALUES (87, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 14:39:19');
INSERT INTO `sys_loginlog` VALUES (88, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 14:42:49');
INSERT INTO `sys_loginlog` VALUES (89, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 14:43:25');
INSERT INTO `sys_loginlog` VALUES (90, 1, '182.119.229.32', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-09 15:24:05');
INSERT INTO `sys_loginlog` VALUES (91, 1, '182.119.231.156', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-10 10:06:56');
INSERT INTO `sys_loginlog` VALUES (92, 1, '182.119.228.199', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-17 10:12:27');
INSERT INTO `sys_loginlog` VALUES (93, 1, '182.119.230.218', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-20 10:34:38');
INSERT INTO `sys_loginlog` VALUES (94, 1, '182.119.226.131', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-21 11:20:26');
INSERT INTO `sys_loginlog` VALUES (95, 1, '182.119.226.131', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-21 11:20:48');
INSERT INTO `sys_loginlog` VALUES (96, 1, '182.119.226.131', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-21 11:21:20');
INSERT INTO `sys_loginlog` VALUES (97, 1, '182.119.226.131', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-21 11:22:32');
INSERT INTO `sys_loginlog` VALUES (98, 1, '182.119.226.131', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-21 17:53:35');
INSERT INTO `sys_loginlog` VALUES (99, 1, '182.119.226.131', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-22 08:28:37');
INSERT INTO `sys_loginlog` VALUES (100, 1, '182.119.226.131', '中国', '河南省', '郑州市', '金水区', '中国联通', NULL, NULL, '2025-01-22 09:29:14');
INSERT INTO `sys_loginlog` VALUES (101, 1, '79.127.221.30', '美国', '华盛顿州', '西雅图', '', 'Datacamp Limited', NULL, NULL, '2025-01-23 10:34:54');

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
INSERT INTO `sys_menu` VALUES (2, '{\n  \"route\": [\n    {\n      \"path\": \"/dashboard\",\n      \"name\": \"dashboard\",\n      \"component\": \"@/views/dashboard/index.vue\",\n      \"meta\": {\n        \"title\": \"网站信息\",\n        \"icon\": \"DataLine\",\n        \"isShow\": true,\n        \"role\": [\n          \"admin\",\n          \"super\",\n          \"editor\"\n        ]\n      }\n    },\n    {\n      \"path\": \"/site\",\n      \"name\": \"site\",\n      \"meta\": {\n        \"title\": \"站点管理\",\n        \"icon\": \"Monitor\",\n        \"isShow\": true,\n        \"role\": [\n          \"admin\",\n          \"super\",\n          \"editor\"\n        ]\n      },\n      \"redirect\": \"/site-index\",\n      \"children\": [\n        {\n          \"path\": \"/site-index\",\n          \"name\": \"site-index\",\n          \"component\": \"@/views/home/site.vue\",\n          \"meta\": {\n            \"title\": \"站点设置\",\n            \"isShow\": true,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        }\n      ]\n    },\n    {\n      \"path\": \"/content\",\n      \"name\": \"content\",\n      \"meta\": {\n        \"title\": \"内容管理\",\n        \"isShow\": true,\n        \"icon\": \"Grid\",\n        \"role\": [\n          \"admin\",\n          \"super\",\n          \"editor\"\n        ]\n      },\n      \"redirect\": \"/category\",\n      \"children\": [\n        {\n          \"path\": \"/category\",\n          \"name\": \"category-index\",\n          \"component\": \"@/views/category/index.vue\",\n          \"meta\": {\n            \"title\": \"栏目管理\",\n            \"isShow\": true,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/category/add\",\n          \"name\": \"category-add\",\n          \"component\": \"@/views/category/add.vue\",\n          \"meta\": {\n            \"title\": \"栏目管理-新增\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/category/edit/:id\",\n          \"name\": \"category-edit\",\n          \"component\": \"@/views/category/edit.vue\",\n          \"meta\": {\n            \"title\": \"页面管理-更新\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/article\",\n          \"name\": \"article-index\",\n          \"component\": \"@/views/article/index.vue\",\n          \"meta\": {\n            \"title\": \"文章管理\",\n            \"isShow\": true,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/article/add\",\n          \"name\": \"article-add\",\n          \"component\": \"@/views/article/add.vue\",\n          \"meta\": {\n            \"title\": \"文章管理-新增\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/article/edit/:id\",\n          \"name\": \"article-edit\",\n          \"component\": \"@/views/article/edit.vue\",\n          \"meta\": {\n            \"title\": \"文章管理-更新\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/slide\",\n          \"name\": \"slide-index\",\n          \"component\": \"@/views/slide/index.vue\",\n          \"meta\": {\n            \"title\": \"轮播管理\",\n            \"isShow\": true,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/slide/add\",\n          \"name\": \"slide-add\",\n          \"component\": \"@/views/slide/add.vue\",\n          \"meta\": {\n            \"title\": \"轮播管理-新增\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/slide/edit/:id\",\n          \"name\": \"slide-edit\",\n          \"component\": \"@/views/slide/edit.vue\",\n          \"meta\": {\n            \"title\": \"轮播管理-更新\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/tag\",\n          \"name\": \"tag-index\",\n          \"component\": \"@/views/tag/index.vue\",\n          \"meta\": {\n            \"title\": \"标签管理\",\n            \"isShow\": true,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/tag/add\",\n          \"name\": \"tag-add\",\n          \"component\": \"@/views/tag/add.vue\",\n          \"meta\": {\n            \"title\": \"标签管理-新增\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/tag/edit/:id\",\n          \"name\": \"tag-edit\",\n          \"component\": \"@/views/tag/edit.vue\",\n          \"meta\": {\n            \"title\": \"标签管理-更新\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/frag\",\n          \"name\": \"frag-index\",\n          \"component\": \"@/views/frag/index.vue\",\n          \"meta\": {\n            \"title\": \"碎片管理\",\n            \"isShow\": true,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/frag/add\",\n          \"name\": \"frag-add\",\n          \"component\": \"@/views/frag/add.vue\",\n          \"meta\": {\n            \"title\": \"碎片管理-新增\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/frag/edit/:id\",\n          \"name\": \"frag-edit\",\n          \"component\": \"@/views/frag/edit.vue\",\n          \"meta\": {\n            \"title\": \"碎片管理-更新\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        }\n      ]\n    },\n    {\n      \"path\": \"/gathers\",\n      \"name\": \"gathers\",\n      \"meta\": {\n        \"title\": \"采集功能\",\n        \"icon\": \"MagicStick\",\n        \"isShow\": true,\n        \"role\": [\n          \"super\"\n        ]\n      },\n      \"redirect\": \"/collect\",\n      \"children\": [\n        {\n          \"path\": \"/collect\",\n          \"name\": \"collect-index\",\n          \"component\": \"@/views/collect/index.vue\",\n          \"meta\": {\n            \"title\": \"页面采集\",\n            \"isShow\": true,\n            \"role\": [\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/collect/add\",\n          \"name\": \"collect-add\",\n          \"component\": \"@/views/collect/add.vue\",\n          \"meta\": {\n            \"title\": \"页面采集-新增\",\n            \"isShow\": false,\n            \"role\": [\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/collect/:id\",\n          \"name\": \"collect-edit\",\n          \"component\": \"@/views/collect/edit.vue\",\n          \"meta\": {\n            \"title\": \"页面采集-更新\",\n            \"isShow\": false,\n            \"role\": [\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/gather\",\n          \"name\": \"gather-index\",\n          \"component\": \"@/views/gather/index.vue\",\n          \"meta\": {\n            \"title\": \"接口采集\",\n            \"isShow\": true,\n            \"role\": [\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/gather/add\",\n          \"name\": \"gather-add\",\n          \"component\": \"@/views/gather/add.vue\",\n          \"meta\": {\n            \"title\": \"接口采集-新增\",\n            \"isShow\": false,\n            \"role\": [\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/gather/edit/:id\",\n          \"name\": \"gather-edit\",\n          \"component\": \"@/views/gather/edit.vue\",\n          \"meta\": {\n            \"title\": \"接口采集-更新\",\n            \"isShow\": false,\n            \"role\": [\n              \"super\"\n            ]\n          }\n        }\n      ]\n    },\n    {\n      \"path\": \"/extend\",\n      \"name\": \"extend\",\n      \"meta\": {\n        \"title\": \"功能管理\",\n        \"icon\": \"Operation\",\n        \"isShow\": true,\n        \"role\": [\n          \"super\",\n          \"admin\",\n          \"editor\"\n        ]\n      },\n      \"children\": [\n        {\n          \"path\": \"/model\",\n          \"name\": \"model-index\",\n          \"component\": \"@/views/model/index.vue\",\n          \"meta\": {\n            \"title\": \"模型管理\",\n            \"isShow\": true,\n            \"role\": [\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/model/add\",\n          \"name\": \"model-add\",\n          \"component\": \"@/views/model/add.vue\",\n          \"meta\": {\n            \"title\": \"模型管理-新增\",\n            \"isShow\": false,\n            \"role\": [\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/model/edit/:id\",\n          \"name\": \"model-edit\",\n          \"component\": \"@/views/model/edit.vue\",\n          \"meta\": {\n            \"title\": \"模型管理-更新\",\n            \"isShow\": false,\n            \"role\": [\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/model/field\",\n          \"name\": \"field-index\",\n          \"component\": \"@/views/field/index.vue\",\n          \"meta\": {\n            \"title\": \"字段管理\",\n            \"isShow\": false,\n            \"role\": [\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/model/field/add\",\n          \"name\": \"field-add\",\n          \"component\": \"@/views/field/add.vue\",\n          \"meta\": {\n            \"title\": \"字段管理-新增\",\n            \"isShow\": false,\n            \"role\": [\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/model/field/edit\",\n          \"name\": \"field-edit\",\n          \"component\": \"@/views/field/edit.vue\",\n          \"meta\": {\n            \"title\": \"字段管理-更新\",\n            \"isShow\": false,\n            \"role\": [\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/friendlink\",\n          \"name\": \"friendlink-index\",\n          \"component\": \"@/views/friendlink/index.vue\",\n          \"meta\": {\n            \"title\": \"友情链接\",\n            \"isShow\": true,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/friendlink/add\",\n          \"name\": \"friendlink-add\",\n          \"component\": \"@/views/friendlink/add.vue\",\n          \"meta\": {\n            \"title\": \"友情链接-新增\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/friendlink/edit/:id\",\n          \"name\": \"friendlink-edit\",\n          \"component\": \"@/views/friendlink/edit.vue\",\n          \"meta\": {\n            \"title\": \"友情链接-更新\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/message\",\n          \"name\": \"message-index\",\n          \"component\": \"@/views/message/index.vue\",\n          \"meta\": {\n            \"title\": \"消息管理\",\n            \"isShow\": true,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/message/add\",\n          \"name\": \"message-add\",\n          \"component\": \"@/views/message/add.vue\",\n          \"meta\": {\n            \"title\": \"消息管理-新增\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/message/edit/:id\",\n          \"name\": \"message-edit\",\n          \"component\": \"@/views/message/edit.vue\",\n          \"meta\": {\n            \"title\": \"消息管理-更新\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\",\n              \"editor\"\n            ]\n          }\n        }\n      ]\n    },\n    {\n      \"path\": \"/sys\",\n      \"name\": \"sys\",\n      \"meta\": {\n        \"title\": \"系统管理\",\n        \"isShow\": true,\n        \"icon\": \"Setting\",\n        \"role\": [\n          \"admin\",\n          \"super\"\n        ]\n      },\n      \"redirect\": \"/user\",\n      \"children\": [\n        {\n          \"path\": \"/user\",\n          \"name\": \"user-index\",\n          \"component\": \"@/views/user/index.vue\",\n          \"meta\": {\n            \"title\": \"用户管理\",\n            \"isShow\": true,\n            \"role\": [\n              \"admin\",\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/user/add\",\n          \"name\": \"user-add\",\n          \"component\": \"@/views/user/add.vue\",\n          \"meta\": {\n            \"title\": \"用户列表-新增\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/user/edit/:id\",\n          \"name\": \"user-edit\",\n          \"component\": \"@/views/user/edit.vue\",\n          \"meta\": {\n            \"title\": \"用户列表-更新\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/role\",\n          \"name\": \"role-index\",\n          \"component\": \"@/views/role/index.vue\",\n          \"meta\": {\n            \"title\": \"角色管理\",\n            \"isShow\": true,\n            \"role\": [\n              \"admin\",\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/role/add\",\n          \"name\": \"role-add\",\n          \"component\": \"@/views/role/add.vue\",\n          \"meta\": {\n            \"title\": \"角色列表-新增\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/role/edit/:id\",\n          \"name\": \"role-edit\",\n          \"component\": \"@/views/role/edit.vue\",\n          \"meta\": {\n            \"title\": \"角色列表-更新\",\n            \"isShow\": false,\n            \"role\": [\n              \"admin\",\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/menu\",\n          \"name\": \"menu-index\",\n          \"component\": \"@/views/menu/index.vue\",\n          \"meta\": {\n            \"title\": \"菜单管理\",\n            \"isShow\": true,\n            \"role\": [\n              \"super\"\n            ]\n          }\n        },\n        {\n          \"path\": \"/loginlog\",\n          \"name\": \"loginLog-index\",\n          \"component\": \"@/views/loginlog/index.vue\",\n          \"meta\": {\n            \"title\": \"登录日志\",\n            \"isShow\": true,\n            \"role\": [\n              \"admin\",\n              \"super\"\n            ]\n          }\n        }\n      ]\n    }\n  ]\n}', NULL);

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
INSERT INTO `sys_user` VALUES (1, '1', 'chancms', '$2a$10$pRqh5uY8Nj15k2qaQMVlqOb8Jz.oaFsNVI.kobMkIvfIMUfu3K1.q', '1', NULL, '2023-10-30 22:42:01', '2024-11-09 20:34:11');
INSERT INTO `sys_user` VALUES (2, '1', 'super', '$2a$10$6FSOS7HRIw7xz91ohv91oO6J5AMuAPWQg/qH87F/3AAyiG/1IDu5y', '1', NULL, '2023-10-30 22:42:18', '2024-11-09 20:26:29');
INSERT INTO `sys_user` VALUES (3, '3', 'admin', '$2a$10$c7Kzy7/oTE5lyPvmXyX6P.8fvFMc05GZLHk41qiwAjQAchrm1QwUi', '1', NULL, '2023-10-31 00:06:55', '2024-11-09 20:25:50');

SET FOREIGN_KEY_CHECKS = 1;
