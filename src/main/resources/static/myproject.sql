/*
 Navicat Premium Data Transfer

 Source Server         : 本机
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : myproject

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 18/06/2019 16:15:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `goods_id` bigint(20) NOT NULL,
  `number` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit_price` double NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `selected` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (33, 17, 1, '佳能（Canon） EOS 700D 单反套机', 4799, 'http://demo.dtcms.net/upload/201504/20/thumb_201504200154277661.jpg', 1);
INSERT INTO `cart` VALUES (34, 15, 1, '苹果Apple iPhone 6 Plus 16G 4G手机（联通三网版）', 5780, 'http://demo.dtcms.net/upload/201504/20/thumb_201504200059017695.jpg', 1);
INSERT INTO `cart` VALUES (36, 16, 1, '小米（Mi）小米Note 16G双网通版', 2199, 'http://demo.dtcms.net/upload/201504/20/thumb_201504200119256512.jpg', 1);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '风景');
INSERT INTO `category` VALUES (2, '美女');
INSERT INTO `category` VALUES (3, '动漫卡通');
INSERT INTO `category` VALUES (4, '娱乐明星');
INSERT INTO `category` VALUES (5, '萌宠');
INSERT INTO `category` VALUES (6, '汽车');
INSERT INTO `category` VALUES (7, '游戏');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(0) NULL DEFAULT NULL,
  `click` int(11) NOT NULL,
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `market_price` double NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sell_price` double NOT NULL,
  `stock_quantity` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (17, '2019-06-05 19:53:31', 0, 'http://demo.dtcms.net/upload/201504/20/thumb_201504200154277661.jpg', 5099, '◆ 佳能普及型单反新旗舰记忆的片段，偶然的相遇，铭', 4799, 100, '佳能（Canon） EOS 700D 单反套机', 'GYU-97867578');
INSERT INTO `goods` VALUES (15, '2019-06-05 19:52:40', 0, 'http://demo.dtcms.net/upload/201504/20/thumb_201504200059017695.jpg', 6388, 'iPhone 6 Plus设计上和iPhone6', 5780, 200, '苹果Apple iPhone 6 Plus 16G 4G手机（联通三网版）', 'RED-56453584');
INSERT INTO `goods` VALUES (16, '2019-06-05 19:52:58', 0, 'http://demo.dtcms.net/upload/201504/20/thumb_201504200119256512.jpg', 2699, '小米Note此次采用的5.7英寸夏普/JDI分率', 2199, 60, '小米（Mi）小米Note 16G双网通版', 'UHF-76766546');
INSERT INTO `goods` VALUES (14, '2019-06-05 19:52:09', 0, 'http://demo.dtcms.net/upload/201504/20/thumb_201504200046589514.jpg', 2499, '荣耀6 Plus，该机型分为两款型号，分别为PE-', 2195, 60, '华为（HUAWEI）荣耀6Plus 16G双4G版', 'OOK-66453578');
INSERT INTO `goods` VALUES (18, '2019-06-05 19:53:45', 0, 'http://demo.dtcms.net/upload/201504/20/thumb_201504200214471783.jpg', 3150, '作为D3200的升级版，尼康D3300最大特点即是', 3180, 10, '尼康(Nikon)D3300套机（18-55mm f/3.5-5.6G VRII）（黑色）', 'KKJ-66221376');
INSERT INTO `goods` VALUES (19, '2019-06-05 19:53:58', 0, 'http://demo.dtcms.net/upload/201504/20/thumb_201504200225107390.jpg', 4599, 'G系列全面支持Windows 8 简体中文版，在秉', 2999, 100, '联想（Lenovo） G510AM 15.6英寸笔记本电脑', 'HUB-88667754');
INSERT INTO `goods` VALUES (20, '2019-06-05 19:54:18', 0, 'http://demo.dtcms.net/upload/201504/20/201504200341260763.jpg', 7988, '—— iMac —— 锋锐设计，锋芒表现。iMac', 7200, 10, 'Apple iMac MF883CH/A 21.5英寸一体机电脑', 'FTV-97657865');
INSERT INTO `goods` VALUES (21, '2019-06-05 19:54:40', 0, 'http://demo.dtcms.net/upload/201504/20/thumb_201504200239192345.jpg', 99, '品名：金士顿颜色：银色容量：32GBUSB2.0', 79, 100, '金士顿（Kingston） DataTraveler SE9 32GB 金属U盘', 'FFG-88643456');
INSERT INTO `goods` VALUES (22, '2019-06-05 19:54:59', 0, 'http://demo.dtcms.net/upload/201504/20/thumb_201504200242250674.jpg', 2099, '全新hp laserjet p2035系列激光印', 1899, 100, '惠普（HP）LaserJet 2035商用黑白激光打印机（黑色）', 'BBN-33535644');
INSERT INTO `goods` VALUES (23, '2019-06-05 19:55:10', 0, 'http://demo.dtcms.net/upload/201504/20/thumb_201504200253026047.jpg', 2099, '专业彩色打印件的单页成本比激光打印机低 50%，从', 1999, 100, '惠普(HP) Officejet Pro 8610商用彩色喷墨一体机', 'NMM-99987780');

-- ----------------------------
-- Table structure for goods_comment
-- ----------------------------
DROP TABLE IF EXISTS `goods_comment`;
CREATE TABLE `goods_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `goods_id` bigint(20) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_comment
-- ----------------------------
INSERT INTO `goods_comment` VALUES (1, 'sdsdsds', '2019-06-06 17:14:29', 15, '匿名');
INSERT INTO `goods_comment` VALUES (2, '?????', '2019-06-06 17:14:32', 15, '匿名');
INSERT INTO `goods_comment` VALUES (3, '佳能还不错的', '2019-06-06 17:14:51', 17, '匿名');
INSERT INTO `goods_comment` VALUES (4, '第一楼', '2019-06-06 17:15:18', 16, '匿名');

-- ----------------------------
-- Table structure for goods_desc
-- ----------------------------
DROP TABLE IF EXISTS `goods_desc`;
CREATE TABLE `goods_desc`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_id` bigint(20) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_desc
-- ----------------------------
INSERT INTO `goods_desc` VALUES (1, '<div class=\"art-wrap\">\r\n<div class=\"guideImg\">\r\n<img src=\"//img0.pconline.com.cn/pconline/1707/26/9655758_20150812_0b9c71ec724ce4e83319y0AsS9BlOR5t_thumb.jpg\" alt=\"\" width=\"100%\">\r\n</div>\r\n\r\n\r\n<div class=\"art-body\" size=\"normal\" id=\"JartBd\">\r\n<div class=\"art-content\" id=\"JlazyImg\">\r\n<p>　　佳能在生产电机机器、光学仪器以及半导体方面具有非常突出的变现，它的产品在市场上也具有非常大的竞争力。其中佳能700d是佳能摄像机里面比较好的一款摄像机，它的性能和外形都是比较特别的，与市场上同期的产品相比，它也是很不错的。</p><center><p><img alt=\"\" src=\"//img0.pconline.com.cn/pconline/1707/26/9655758_20150812_0b9c71ec724ce4e83319y0AsS9BlOR5t_thumb.jpg\" width=\"602\"> </p></center><p>　　(一)佳能700d怎么样的分析</p><p>　　1 从相机的外形来看的话，在继承600d外形的基础上它做出了一些比较好的创新，比如说它的高质感颗粒涂层，使得相机更加具有时尚感和质感。而且相机的模式转盘的金属凸起图标更是别具特色，摸起来也具有很好的手感。此外最亮眼的便是它的触摸屏了，3.0英寸的设计再加上104万的像素，可以说大大的满足了用户使用的需要。</p><p>　　2 佳能700d采用的生意APS-C规格的CMOS 传感器 ，在使用的时候效果非常的不错。而且相机的有效像素达到了1800万，在配上DIGIC5的数字影像处理器，可以说相机的性能是很高的。而且它可以实现SO100-6400的感光范围，感光的效果也是很不错的，并且它最好的效果可以达到ISO25600，大大的适应了不同环境，也很好的提高了画面的质感和清晰度。</p><center><p><img alt=\"\" src=\"//img0.pconline.com.cn/pconline/1707/26/9655758_20150812_55cbc7c6f6d05e60ace0VeT6ssFILQOV_thumb.jpg\"> </p></center><p>　　3 在拍摄的过程中，如果使用连拍的话能够做到每秒5张照片的拍摄效果，而且快 门 的速度也非常的快，它的范围在1/4000-30秒，能够很好的适应用户抓拍的需要，不错过任何一个美好的瞬间。</p><p>　　4 这款相机配置有9点自动对焦系统，同时中心F2.8对焦点为双十字结构，另外还具有单十字结构，能够方便用户在不同情况下进行快速的选择，而且这些对焦点形成的十字结构都能够对应f5.6的光圈，所以使用起来也不会太繁琐。</p><center><p><img alt=\"\" src=\"//img0.pconline.com.cn/pconline/1707/26/9655758_20150812_6e771f42f5564c3e36ce4EleHdzqhnCN_thumb.jpg\"> </p></center><p>　　5 佳能700d这款相机的内部设有多种的特效过滤器，能够支持用户进行效果的设置，使照片的风格和个性变得多种多样。而且它的HDR拍摄模式能够很好的支持夜间的拍摄，能够在拍摄的时候进行照片的连拍合成，在满足了用户更多的需要，也大大的提升了相机的价值。</p><center><img alt=\"\" src=\"//img0.pconline.com.cn/pconline/1707/26/9655758_20150812_6009f071cefc232f8fb4SKJqZUTbdawu_thumb.jpg\"> </center><p></p><p>　　佳能700d在角度调节器、取景器、反光镜等方面都采用的是比较先进的零件，再加上它本身的性能，相机的价值得到了很好的提高，在使用的时候也十分的方便，充分的体现了人性化和科技化，所以说这款相机是很不错的。</p>\r\n</div>\r\n</div>\r\n<!-- 点赞、踩  开始-->\r\n\r\n<!-- 点赞、踩  结束-->\r\n<!-- 分享按钮 -->\r\n\r\n</div>', 17, '佳能（Canon） EOS 700D 单反套机');
INSERT INTO `goods_desc` VALUES (2, '<div class=\"goods-desc-content\"><div class=\"article-content\"><p><span class=\"bjh-p\">如果你一直在使用iPhone 6 Plus，不想更换手机，你可以再用一年。但现在不建议买二手货。</span></p><p><span class=\"bjh-p\">在实际使用方面，iPhone 6 Plus目前还不是很顺利，但在QQ上玩游戏、发推、聊天还不是一个问题。</span></p><p><span class=\"bjh-p\">但话又说回来,毕竟,是三年前的产物,处理器性能,照片质量和外观的ID,是现在的主流模型有较大的差距,不要说835全屏旗舰肖龙,龙是普通小660模型必须比它的经验。</span></p><div class=\"img-container\"><img class=\"normal\" data-loadfunc=\"0\" src=\"http://t12.baidu.com/it/u=917946791,2968963053&amp;fm=173&amp;app=25&amp;f=JPEG?w=419&amp;h=220&amp;s=02926423BCF796861B3DF9840100A0A0\" data-loaded=\"0\"></div><p><span class=\"bjh-p\">以作者删除的iPhone 6为例，日常使用也不觉得太卡(当然，包太多应用说)，打个电话，发送微信信息，刷微博，看视频仍然很好用。然而，老旧的机器毕竟是一台老机器，电池耗竭，电池也不会持续一天。</span></p><p><span class=\"bjh-p\">因此，这个题目说他打算买一个二手的iPhone 6 Plus，他需要用以下的方式来准备:1。2。安装应用程序不平滑;升级新系统将会非常缓慢。</span></p><p><span class=\"bjh-p\">虽然现在二手iPhone 6 +价格通常低于二千的主备用看鱼(提问),但只是添加一些钱足够买好的android手机,小米6,同僚r11,体内X20的,以及即将到来的V10的荣耀,一加五是不错的选择,价格一般在3000元。这些手机在处理器性能、照片功能和系统流畅性方面远远优于iPhone 6 Plus。</span></p><div class=\"img-container\"><img class=\"normal\" data-loadfunc=\"0\" src=\"http://t11.baidu.com/it/u=1726002160,2496203240&amp;fm=173&amp;app=25&amp;f=JPEG?w=353&amp;h=300&amp;s=FF91EB03EAD364DC4E1D67BD0300E006\" data-loaded=\"0\"></div><p><span class=\"bjh-p\"><span class=\"bjh-br\"></span></span></p><p><span class=\"bjh-p\">此外，今年的iOS 11已经淘汰了iPhone 5s之下的设备，而iPhone 6系列将很快无法更新新系统。即使是这样，估计的流利也很尴尬。</span></p><p><span class=\"bjh-p\">因此，我认为二手iPhone 6 Plus根本没有购买价值，我建议以2000-3000元的价格购买安卓手机。</span></p><p><span class=\"bjh-p\">如果你真的喜欢苹果，可以看看iPhone 7 Plus，如果价格合适，你可以买。不建议使用老型号。</span></p><p><span class=\"bjh-p\">IPhone一直在市场价格上属于第一层，刚刚发布的最新一代IPhone X是0到8000以上，通常对大多数用户来说手机消费只有1000-3000。但高价格的经历肯定是不同的。首先是iPhone的耐用性。一般的手机会在两年内被卡住，甚至连工作都不会。但IOS也会有一个纸箱，但它会比其他系统更耐用。这就是为什么很多不想频繁更换手机的人宁愿为iPhone花更多的钱。与此同时，iPhone制造商继续满足这个价格。高端大气，也是成为街头机器的元素，符合大众审美。</span></p><div class=\"img-container\"><img class=\"normal\" data-loadfunc=\"0\" src=\"http://t10.baidu.com/it/u=1050242112,1050847169&amp;fm=173&amp;app=25&amp;f=JPEG?w=492&amp;h=300&amp;s=FE8B7A2B66725186D89448D50300C0A0\" data-loaded=\"0\"></div><p><span class=\"bjh-p\">还有多少年呢?答案是肯定的。忘记iPhone 6 !我的旧iPhone 4还在使用中，虽然电池基本没电了，但我相信我可以用一个更好的。我仍然把它作为我自己的音乐播放器，在我上下班的时候听它。你也可以播放微信和tweet。当然，这个系统已经有点卡住了，不过要习惯它。当然你必须对它有耐心。</span></p><p><span class=\"bjh-p\">所以如果你想买一部iPhone 6，这是不推荐的。1。电池和系统将随着机器的使用时间逐渐恶化。2。系统无法更新。这两种因素都对日常使用产生影响。因此，如果有条件，选择更新一代手机。</span></p><p><span class=\"bjh-p\"></span></p></div></div>', 15, '苹果Apple iPhone 6 Plus 16G 4G手机（联通三网版）');
INSERT INTO `goods_desc` VALUES (3, '<div class=\"article-content\"><p><span class=\"bjh-blockquote\"><span class=\"bjh-p\">转载自百家号作者：怪客数码</span></span></p><p><span class=\"bjh-p\">作为红米独立后的第一款产品，红米Note7可是相当高调。除了雷军在社交平台的拼命宣传以外，红米还收入了一名猛将卢伟冰。那么，红米Note7究竟能否满足用户的需求呢？下面笔者通过对红米Note7深度的评测，通过最真实的感受告诉你优缺点。看完之后，你们就知道红米Note7究竟值不值得入手了？</span></p><div class=\"img-container\"><img class=\"large\" data-loadfunc=\"0\" src=\"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=1085551606,2237521514&amp;fm=173&amp;app=49&amp;f=JPEG?w=640&amp;h=400&amp;s=0822C91540834751C815B7CD0300E0A0\" data-loaded=\"0\"></div><p><span class=\"bjh-p\">我们先从外观来聊一聊。红米Note7采用了6.3英寸的水滴屏设计。正面的外观和小米Play有些相似。而机身背面则采用了渐变色机身设计。从这两个方面来看，貌似红米Note7还是比较不错的。不过，笔者觉得比较遗憾的是红米Note7的下巴还是有些宽。这一点注定红米Note7是主打千元机市场了。就外观而言，红米Note7中规中矩，甚至比苹果iPhoneXR好看一点点。</span></p><div class=\"img-container\"><img class=\"large\" data-loadfunc=\"0\" src=\"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=1420150099,3496314246&amp;fm=173&amp;app=49&amp;f=JPEG?w=640&amp;h=400&amp;s=10A3D014E2524A7642175B9B0300C088\" data-loaded=\"0\"></div><p><span class=\"bjh-p\">既然是主打千元机市场，因此，注定在硬件配置方面会有所缩水。红米Note7采用了3GB内存、搭载满血的高通骁龙660处理器。对于骁龙660处理器，大家一定不会陌生。毕竟是2018年，中端旗舰手机的标配。笔者对红米Note7进行主流的手游评测来看，在游戏过程中，红米Note7基本可以流畅的运行。不过，偶尔也会出现卡顿的现象。但是，这一切都是在可接受的范围内。</span></p><div class=\"img-container\"><img class=\"large\" data-loadfunc=\"0\" src=\"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=1790286490,2420650846&amp;fm=173&amp;app=49&amp;f=JPEG?w=640&amp;h=400&amp;s=1CA6C010CA217E0DEABFC3C20300F0AF\" data-loaded=\"0\"></div><p><span class=\"bjh-p\">相机作为红米Note7最大的卖点。它采用了后置4800万像素+500万像素的双摄像头设计。虽然不是采用索尼的传感器，但是红米Note7所采用的三星传感器在参数上和索尼传感器不相上下的。笔者对于红米Note7相机的真实评测来看，不管是白天还是黑夜，红米Note7的表现都是可圈可点的。尤其在夜拍中，红米Note7对于噪点的控制更是相当出色。整个画面的纯净度还是比较高的。这个是红米Note7最大的优势了。</span></p><div class=\"img-container\"><img class=\"large\" data-loadfunc=\"0\" src=\"https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1478732400,443176160&amp;fm=173&amp;app=49&amp;f=JPEG?w=640&amp;h=400&amp;s=DFA180416A875F4750804A9103007097\" data-loaded=\"0\"></div><p><span class=\"bjh-p\">综上所述，笔者对于红米Note7的初步上手来看，红米Note7应该算是千元机市场的“水桶机”了。笔者个人觉得，如果你对于性能没有太多的要求，那么，红米Note7还是比较值得入手的。毕竟4800万像素的摄像头，还是比较不错的。但是，如果你对于性能有更高的要求，那么，小米8等旗舰机型或是更好的选择。对此，你们怎么看？</span></p><p><span class=\"bjh-p\"><span class=\"bjh-br\"></span></span></p></div>', 16, '小米（Mi）小米Note 16G双网通版');

-- ----------------------------
-- Table structure for goods_swipe_pic
-- ----------------------------
DROP TABLE IF EXISTS `goods_swipe_pic`;
CREATE TABLE `goods_swipe_pic`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `goods_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_swipe_pic
-- ----------------------------
INSERT INTO `goods_swipe_pic` VALUES (1, '17', 'http://demo.dtcms.net/upload/201504/20/thumb_201504200154277661.jpg');
INSERT INTO `goods_swipe_pic` VALUES (2, '17', 'http://demo.dtcms.net/upload/201504/20/thumb_201504200154282586.jpg');
INSERT INTO `goods_swipe_pic` VALUES (3, '15', 'http://demo.dtcms.net/upload/201504/20/thumb_201504200059017695.jpg');
INSERT INTO `goods_swipe_pic` VALUES (4, '15', 'http://demo.dtcms.net/upload/201504/20/thumb_201504200059022920.jpg');
INSERT INTO `goods_swipe_pic` VALUES (5, '16', 'http://demo.dtcms.net/upload/201504/20/thumb_201504200119256512.jpg');
INSERT INTO `goods_swipe_pic` VALUES (6, '16', 'http://demo.dtcms.net/upload/201504/20/thumb_201504200119262837.jpg');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `click` int(11) NOT NULL,
  `content` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `pic_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (17, 0, '<p class=\"otitle\">\n                        （原标题：网红喜茶店因卫生问题一天被停业两家）\n                    </p>\n                    \n                    <p><!--StartFragment-->网红喜茶店因卫生问题一天被停业两家，喜茶：不解决不开业</p><p>北京头条客户端</p><p>2019-06-02 11:29</p><p>字号</p><p>5月29日，江苏苏州一位孕妇称在喜茶饮品中喝出苍蝇引发公众和媒体关注。在于喜茶方面协商未果后，该孕妇向监管部门举报。5月31日，涉事喜茶门店因店内飞虫较多，被当地监管部门查封。门店被查封后，喜茶总部发布通报称，向广大消费者道歉，并表示一天不解决飞虫问题一天不重新开张。</p><p>北京青年报记者注意到，5月31日当天，苏州另一家喜茶店也被监管部门要求整改，且5月以来全国以后多家喜茶门店爆出卫生问题。记者从北京多家喜茶门店处获悉，目前喜茶总部也已经就卫生和安全问题要求各家门店加强管理。</p><p><strong>苏州孕妇称在喜茶中喝到绿头苍蝇</strong></p><p>5月29日下午13时许，江苏苏州王女士和同事一起用微信小程序在苏州喜茶圆融店点了5杯“多肉葡萄”，1杯“满杯红柚”。下午2点多，茶送到了单位，目前怀孕7个多月的王女士称,她要的是一杯“满杯红柚”，结果刚喝了两口，就在饮品中发现了一只绿头苍蝇。</p><p class=\"f_center\"><img src=\"http://cms-bucket.ws.126.net/2019/06/02/41634cce99924b02a3b8c44cf724a575.jpeg\" width=\"600\" height=\"800\" style=\"border-width: 0px; border-style: initial; border-; vertical-align: middle; padding: 0px; display: block; margin: 0px auto; max-width: 100%; height: auto !important;\"></p><p>“看到苍蝇以后别提多恶心了，好在我没有喝进去，但是我是个孕妇，心理上非常不好受。因为怕同事知道了不好意思，所以下班后我自己去找喜茶理论。”在去喜茶店的路上，她专门上网查询了一下这种事情一般要求怎么处理。“我看网上都说应该要求10倍赔偿，所以我去了就跟店里要求我这杯25元的饮品10倍赔偿，也就是250元。”</p><p>然而，喜茶圆融店的店员没有当场给答复，而是说会上报。随后，王女士接到自称是该店店长的来电，对方并不承认苍蝇是在制作过程中飞入的。“那个店长说我都点了这么久了，而且是外卖，中间的环节和时间很多，不能说明苍蝇是在店里进去的。”6月1日下午，王女士告诉北青报记者，当时收到喜茶时，饮品的盖子不是塑封的，但是盖子是盖着的，吸管孔也是完好的，是她亲手插了吸管。</p><p>对于王女士的情况，该店长表示不能10倍赔偿，但是下次点单的时候可以免费送王女士三杯茶，到店就可取，不用排队。“我都喝出苍蝇了，怎么可能再来喝三杯，我当时就表示不接受，坚持要他们10倍赔偿，并且公开道歉。”王女士说。</p><p><strong>涉事喜茶店已被监管部门要求停业整改</strong></p><p>跟喜茶协商未果的王女士选择了向当地媒体爆料，5月30日，当地媒体记者来到喜茶圆融店，看到果茶制作间是开放式的，制作间一侧的墙上开着灭蚊蝇灯。记者也点了一杯“满杯红柚”，在等待过程中，店内有蚊子和苍蝇飞过。店里出售的茶饮有的含有果肉，制作间的桌面上就放着存有果肉的盒子，果肉盒长时间敞开着。</p><p class=\"f_center\"><img src=\"http://cms-bucket.ws.126.net/2019/06/02/0ec7c7b1d727407da2b33b9fe756bbff.jpeg\" width=\"600\" height=\"819\" style=\"border-width: 0px; border-style: initial; border-; vertical-align: middle; padding: 0px; display: block; margin: 0px auto; max-width: 100%; height: auto !important;\"></p><p>5月31日，苏州市人民政府新闻办公室微博发布通报称，孕妇在喜茶圆融店，喝到绿头苍蝇的消息，引发巨大反响和关注。31日上午，该店所在的苏州工业园区市场监督管理局食品药品安全稽查大队执法人员上门检查，发现店堂内及操作台上飞虫很多。执法人员现场对喜茶圆融店开具了停业整改的通知书，要求店家及时进行整改，目前喜茶已经停业整改。</p><p>北青报记者在苏州工业园区市场监督管理局开具的《实施行政强制措施决定书》中看到，该店涉嫌违反《中国人民共和国食品安全法》的相关规定，该局对店铺和设施实施了查封，期限为30天。</p><p><strong>喜茶：飞虫问题不解决不开业</strong></p><p>5月31日19时许，喜茶官方微博对苏州圆融店具体情况进行了通报。</p><p>通报称，5月29日下午13:46分，有顾客在苏州圆融店购买了6杯外送饮品。下午18:00左右，该顾客拿着其中一杯饮品来到门店反应在里面喝到苍蝇，提出需要整单10倍的赔偿金解决方案，并对值班经理说明如果不进行赔偿就去消费者协会投诉，同时把饮品拿走了。</p><p>事情发生后喜茶方面第一时间查看了这单饮品制作的监控，未发现在制作过程中有苍蝇进入，同时店经理也第一时间联系了顾客进行致歉，同时向顾客解释已经查看过监控由于距离下单时间已过4个小时且是外送，途中有很多不可控因素，希望帮他进行退款并任意赠饮3杯。顾客态度强硬只要整单10倍赔偿金，表示退款会退到同事手机里很难沟通，同时再次表示如果不给就ㄊ找消费者协会、媒体投诉曝光。</p><p>5月31日，由于顾客的举报，苏州工业园区市场监督管理局到喜茶苏州圆融时代店进行卫生检查，发现店内存在飞虫的卫生问题，并下达了停业整改的通知书。</p><p>通报中，喜茶方面表示，苏州圆融门店由于靠近湖边，开业以来飞虫一直很多，尤其夏季更加增多。该店之前在店内装配了灭蚊灯，配备了灭蚊拍定期进行灭蚊，并找了第三方机构为该店定期进行全店灭虫灭蚊。店内的空调也调得比较冷希望能能减少飞虫飞入，同时门口加装了风幕机，但效果依然不好。</p><p class=\"f_center\"><img src=\"http://cms-bucket.ws.126.net/2019/06/02/b0c5533f60e44c428df26e74c9d6de1c.jpeg\" width=\"600\" height=\"718\" style=\"border-width: 0px; border-style: initial; border-; vertical-align: middle; padding: 0px; display: block; margin: 0px auto; max-width: 100%; height: auto !important;\"></p><p>由于之前该店已经采取过很多措施，依然未能杜绝飞虫问题，该店将一方面进一步想办法，例如完全整改门店大门，进一步加灭蚊设备，并找专业的杀虫公司做进一步沟通拟定方案；另一方面喜茶方面承诺，如果找不到有效的方法解决圆融店的飞虫问题，即使过了整改期，也不会恢复圆融店营业甚至考虑永久闭店或更换其他位置。</p><p>北青报记者在该通报中看到，喜茶方面多次向广大喜茶的消费者致歉，但并没有单独公开向王女士致歉。</p><p><strong>消费者：没有拿到赔偿但是店铺停业整改很欣慰</strong></p><p>“我昨天就看到了喜茶的通报，感觉非常不满意。”6月1日下午，王女士向北青报记者表示，她并没有从喜茶官方对苏州圆融店的情况通报里看到任何对她个人的歉意，反而是一直在强调喝出苍蝇的事他们没有责任。“现在我也没有收到任何的赔偿，包括通报里有很多说法也并不准确，比如我并没有要求过整单的10倍赔偿，我一直都是要求我那一杯10倍赔偿。”</p><p class=\"f_center\"><img src=\"http://cms-bucket.ws.126.net/2019/06/02/302e74bfbaed43bba3f8c954382f0357.jpeg\" width=\"600\" height=\"426\" style=\"border-width: 0px; border-style: initial; border-; vertical-align: middle; padding: 0px; display: block; margin: 0px auto; max-width: 100%; height: auto !important;\"></p><p>虽然既没有得到公开道歉也没有收到10倍赔偿，但是王女士表示不准备再追究下去。“我现在怀着孕，还要上班，过几个月就该生了，没有精力去纠结这件事。现在看到那家店也被查封整改了，我也挺欣慰，反正我以后是再也不会喝喜茶了。”</p><p><strong>卫生问题频现喜茶食品安全待考</strong></p><p>6月1日下午，北青报记者在喜茶的官方网站看到，目前官网上全国门店分布的苏州门店只有3家，苏州圆融店并没有显示在官网上。记者从该店工作人员处了解到，目前该店正在停业整改，至于具体整顿的内容需要喜茶总部做出答复。</p><p>而在大众点评APP中，该店也显示暂停营业。北青报记者在该店的评价中看到，2019年5月7日有用户发布评论称在该店饮品的瓶盖部分发现小虫子，另有用户评论称在饮品中喝到不明黑色胶状物。</p><p>北青报记者注意到，就在苏州圆融店被查封的同一天，有当地媒体报道称，喜茶苏州永旺梦乐城店也被要求整改，原因是餐具用具清洗消毒设施不足。6月1日下午，北青报记者致电该店获悉，目前该店的确在停业整改，具体什么时候能再次营业还不确定。</p><p class=\"f_center\"><img src=\"http://cms-bucket.ws.126.net/2019/06/02/3abd411462704d5d8a40df4cd029b6cd.jpeg\" width=\"600\" height=\"630\" style=\"border-width: 0px; border-style: initial; border-; vertical-align: middle; padding: 0px; display: block; margin: 0px auto; max-width: 100%; height: auto !important;\"></p><p>一天内苏州两家喜茶店被查，不少网友对喜茶的食品安全问题提出了疑问。北青报记者检索近期报道看到，济南当地媒体报道称5月26日，有消费者在喜茶济南和谐广场店现场购买饮品后也喝出了苍蝇，最终双方和解收场。5月9日，喜茶厦门万象城门店被厦门思明区市场监管局查出盛放水果的餐具清洁程度不达标，被要求整改，随后喜茶官方微博发出致歉声明，承认此次事件暴露了相关门店员工执行餐饮用具消毒规定不到位，并表示已进行整改，同时在全国门店也做了相关排查。</p><p>6月1日下午，北青报记者致电了北京的多家喜茶门店，门店均表示已收到喜茶总部关于加强店内卫生自查和管理的要求。喜茶北京新中关店店长表示，苏州圆融店事件后，总部要求各门店要更加重视卫生管理问题。“我们店内的各项卫生和情节问题都有专人监督管理，包括灭蝇灯和灭蝇纸都是每天检查和更换的，这些都是食品安全最基本的东西，我们一直都非常重视，出不起问题的。</p><p><!--EndFragment--></p><p></p><div class=\"gg200x300\">\n<div class=\"at_item right_ad_item\" adtype=\"rightAd\" requesturl=\"https://nex.163.com/q?app=7BE0FC82&amp;c=tech&amp;l=133&amp;site=netease&amp;affiliate=tech&amp;cat=article&amp;type=logo300x250&amp;location=12\"><iframe width=\"300\" height=\"250\" frameborder=\"0\" border=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe></div>\n<a href=\"javascript:;\" target=\"_self\" class=\"ad_hover_href\"></a>\n</div>\n                    <!-- 作者 -->\n                    \n                        <p></p>\n                        <div class=\"ep-source cDGray\">\n                            <span class=\"left\"><a href=\"http://tech.163.com/\"><img src=\"https://static.ws.126.net/cnews/css13/img/end_tech.png\" alt=\"yaoliwei\" width=\"13\" height=\"12\" class=\"icon\"></a> 本文来源：北京头条  </span>\n                            <span class=\"ep-editor\">责任编辑：姚立伟_NT6056</span>\n                        </div>', '2019-06-02 20:54:58', 'http://cms-bucket.ws.126.net/2019/06/02/b0c5533f60e44c428df26e74c9d6de1c.jpeg', '网红喜茶店因卫生问题一天被停业两家');
INSERT INTO `news` VALUES (16, 0, '<p><!--StartFragment--></p><p>（原标题：同泰街上，男子挨打昏倒在路中央，几分钟后惨剧发生了…）</p><p>2018年12月13日凌晨1时40分许，在沙河口区太原街和同泰街交会处，男子陈某一顿拳打脚踢将佟某打倒后离开，而昏倒在路中间的佟某遭出租车碾压当场死亡。近日，这起案件终于有了结果。</p><p class=\"f_center\"><img src=\"http://dingyue.ws.126.net/aNeyAXfI1=XkNZVW9TVoPQvfYNlV4mNXba7wto2bTUVtY1559420571377.jpg\" id=\"netease1559420570312413\" style=\"vertical-align: middle; border-width: 0px; border-style: initial; border-; box-sizing: border-box; max-width: 100%;\"></p><p><b>男子遭拳打脚踢晕倒在路中央</b></p><p><b>视频显示：</b></p><p>凌晨1点38分一名身着黑衣白鞋的男子和一名穿黄色外套的男子一起过马路，后面跟上来一名高个的黑衣男子，与前面两人争吵着，随后三人离开监控画面。</p><p>1时40分许高个黑衣男子与黑衣白鞋男子厮打着又回到监控画面中，而“黄外套”却不知所终。白鞋男子被摔倒在马路中央，高个男子骑在他身上用拳头打其头部。1分钟后，白鞋男子已倒地不起，高个男子起身后再次用脚踢其头部。最初，白鞋男子还能用手抱头防护，但很快手就放下了……</p><p>1时42分许白鞋男子躺在路口一动不动，这时路口处来了多辆车，打人的高个男子随后离开，其他车辆陆续从白鞋男子身旁绕了过去。</p><p>倒地男子遭转弯出租车碾压</p><p>半分钟后，一辆出租车在该路口转向，没有注意到男子倒在马路中央，直接从男子身上轧了过去，男子瞬间被卷到了车下……</p><p>司机立即停车，随后下车查看。</p><p class=\"f_center\"><img src=\"http://dingyue.ws.126.net/FChuX6Gg7GY7Wrj6UQwtpmVCVMnUl2YH0Rj9dsDdwjS621559420571377.jpg\" id=\"netease1559420570312447\" style=\"vertical-align: middle; border-width: 0px; border-style: initial; border-; box-sizing: border-box; max-width: 100%;\"></p><p>打人的高个男子陈某1980年出生，住大连市沙河口区。曾因犯危险驾驶罪、盗用身份证罪、妨害作证罪于2018年7月12日被中山区人民法院判处有期徒刑七个月，2018年9月27日释放 。因涉嫌犯过失致人死亡罪，陈某于2019年1月17日被依法逮捕。</p><p>经查，2018年12月13日1时27分许，陈某在沙河口区太原街某洗浴中心内，因琐事与高某、佟某发生争执，高某对陈某殴打后与佟某离开洗浴中心，佟某走到太原街与同泰街交叉路口时被陈某追赶上，双方发生厮打，陈某将佟某摔倒在地，并对其头部拳打脚踢，致佟某昏倒在该交叉路口行车道中间失去行动能力。</p><p class=\"f_center\"><img src=\"http://dingyue.ws.126.net/fo01t5N2jOsKZYWMWkmNGNOnDF6aPIl5zJSXVIDhqMn1h1559420571379.jpg\" id=\"netease155942057031240\" style=\"vertical-align: middle; border-width: 0px; border-style: initial; border-; box-sizing: border-box; max-width: 100%;\"></p><p>陈某于同日1时41分55秒离开现场，1时42分32秒，李某驾驶出租车驶入该路口碾压过佟某身体，120急救人员至现场后确认佟某已死亡。后经鉴定，佟某系因道路交通损伤致颅骨骨折 、蛛网膜下腔出血、胸廓损伤、肺脏损伤死亡。</p><p><b>犯过失致人死亡罪被判缓刑</b></p><p>2019年3月26日，沙河口区人民检察院以犯过失致人死亡罪对陈某提起公诉。</p><p>在诉讼过程中，陈某赔偿被害人近亲属的经济损失并取得了谅解。</p><p>法院审理认为，陈某殴打被害人并致其昏倒在交叉路口行车道中间失去行动能力，自己离开现场，其应当预见自己的行为可能发生被害人死亡的结果，由于疏忽大意没有预见，陈某的行为与被害人死亡结果的发生有因果关系，侵犯了公民的人身权利，构成过失致人死亡罪。陈某具有自首情节，赔偿被害人的经济损失并取得谅解，认罪认罚，故予以从轻处罚，其有前科 ，在量刑时予以综合考虑。鉴于陈某确有悔罪表现，不致再危害社会，可适用缓刑。</p><p>沙河口区人民法院一审判决，陈某犯过失致人死亡罪，判处有期徒刑三年，缓刑三年。</p><p><!--EndFragment--></p>\n                <p></p>\n                                                <div class=\"ep-source cDGray\">\n                    <span class=\"left\"><a href=\"https://auto.163.com/\"><img src=\"https://static.ws.126.net/cnews/css13/img/end_auto.png\" alt=\"邹楠\" width=\"13\" height=\"12\" class=\"icon\"></a> 本文来源：半岛晨报(沈阳)  </span>\n                    <!--邹楠_NA1248--><span class=\"ep-editor\">责任编辑：邹楠_NA1248</span>                </div>\n                                                                                                \n                      ', '2019-06-02 20:52:28', 'http://dingyue.ws.126.net/aNeyAXfI1=XkNZVW9TVoPQvfYNlV4mNXba7wto2bTUVtY1559420571377.jpg', '男子被打昏在路中央 几分钟后又遭出租车碾压身亡');
INSERT INTO `news` VALUES (15, 0, '\n                <p>　　原标题：勿做“信息偏食”者（创见）</p><p>　　不断地学习，不断地寻找新知，一直是打破信息茧房最有效的手段。而在互联网时代，还要多做一点，就是打破对碎片化信息的被动接受，主动去学习成系统、成体系的知识。如此，才不至于沦为“信息偏食者”</p><p>　　这个世界上谁最了解你？父母、伴侣还是朋友？恐怕对于如今的很多人来说，答案是自己的手机。它知道你每天几点起床、何时入睡、走了多少步路程，知道你喜欢看什么文章、听什么音乐，它记录了你跟谁聊天的频率最高，知道你每一笔网购都花在了哪里……透过一个个软件，它甚至比你更了解你自己。</p><p>　　如今，技术的发展不仅让它更“懂”你，而且更会投你所好。想必很多人都有过这样的经历：在某软件刷了一会儿搞笑视频，从此以后它向你推送的搞笑视频就多了；搜索了一次某类服装，关于这类服装的广告推送马上就发送到你手机里；浏览了某明星的八卦，该明星的八卦此后就源源不断地为你推送过来……这些都不是偶然，而是一种叫“算法”的东西根据你的喜好特意推荐给你的。其出发点似乎也无可厚非：既然你关注此类信息，我就主动给你多提供此类信息，照顾你阅读偏好的同时，也提高了用户的使用黏度。岂不是双赢？</p><p>　　的确，在信息爆炸的时代，面对汹涌而来的海量信息，“善解人意”的算法可以随时精准抓取信息，帮助人们在泛滥的信息中滤掉自己不感兴趣的内容，提高获取信息的效率和舒适度。随着媒体技术的发展，这种算法个性化推荐如今已经越来越成为人们在互联网上获取信息的主流方式。</p><p>　　不过，也有人反思，这种信息获取方式固然舒适高效，但是否存在简单片面的问题？就好比一个孩子喜欢吃糖，如果他越爱吃、越想吃，你就越给他吃，他可能就会变得偏食，吃完糖也许就不愿意好好吃饭了。同理，如果总是被自己喜欢看到的信息填满，我们是否还有时间和精力去看那些不那么“好看”但却对自己有用的信息？长此以往，我们是否会成长为一个“信息偏食”者？无疑，长期“信息偏食”，将会使我们在无意识中缩窄自己的眼界。</p><p>　　这种担忧并不是杞人忧天。美国学者凯斯·桑斯坦就提出了“信息茧房”的概念——在信息传播中，公众往往只注意自己选择的东西和使自己愉悦的领域，久而久之，会将自身桎梏于像蚕茧一般的“茧房”中。身处“信息茧房”之中，有如把自己封闭在回音室里，每个人听到的只是自己的回音，相同的意见会不断被重复，不同的观点会被过滤，这无异是一个作茧自缚的过程。互联网世界，算法获取信息的方式无疑大大加强了信息茧房效应。</p><p>　　互联网的发明，原本是用来让我们更高效便利地获取信息、拓展视野的，但新技术却往往存在双刃剑效应，驾驭它的人需要格外小心。其实，从认知心理学的角度看，信息茧房本就一直存在，人们一旦形成观念，总是倾向于抱持固有的认知。只不过，在互联网世界，这种信息茧房效应被进一步放大，甚至被商家加以包装利用，迎合人们的懒惰心理，这必须引起我们的警觉。</p><p>　　“生也有涯，而知也无涯。”不断地学习，不断地寻找新知，一直是打破信息茧房最有效的手段。而在互联网时代，还要多做一点，就是打破对碎片化信息的被动接受，主动去学习成系统、成体系的知识。如此，才不至于沦为“信息偏食者”。</p>', '2019-06-02 20:45:24', 'http://dingyue.ws.126.net/snL86ct78zlp4mAZdabH3=3qAOfD1VEIF52O9Gf5FwbDt1487222219457.jpg', '人民日报：互联网时代勿做\"信息偏食\"者');

-- ----------------------------
-- Table structure for news_comment
-- ----------------------------
DROP TABLE IF EXISTS `news_comment`;
CREATE TABLE `news_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `news_id` bigint(20) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news_comment
-- ----------------------------
INSERT INTO `news_comment` VALUES (1, '这也太恶心了吧！！！！！', '2019-06-03 10:29:07', 17, '匿名');
INSERT INTO `news_comment` VALUES (2, '呕呕呕！！！必须办他', '2019-06-03 10:29:53', 17, '山丹丹的那个花开');
INSERT INTO `news_comment` VALUES (3, '上次我也喝到了，TNND', '2019-06-03 10:30:17', 17, '小伙计');
INSERT INTO `news_comment` VALUES (4, '搞什么飞机哦', '2019-06-03 14:08:53', 17, '匿名');
INSERT INTO `news_comment` VALUES (5, '打算打算的撒打算发', '2019-06-03 14:09:30', 17, '匿名');
INSERT INTO `news_comment` VALUES (6, '我擦擦擦擦擦', '2019-06-03 14:22:17', 17, '匿名');
INSERT INTO `news_comment` VALUES (7, '真的恶心的商家', '2019-06-03 14:25:41', 17, '匿名');
INSERT INTO `news_comment` VALUES (8, '下次别去了', '2019-06-03 14:26:34', 17, '匿名');
INSERT INTO `news_comment` VALUES (9, 'WQNMLGB', '2019-06-03 14:27:11', 17, '匿名');
INSERT INTO `news_comment` VALUES (10, '打315投诉他，太可恶了，严惩不贷', '2019-06-03 14:27:59', 17, '匿名');
INSERT INTO `news_comment` VALUES (11, '哼哼哼哼哼哼哼哼哼', '2019-06-03 14:28:19', 17, '匿名');
INSERT INTO `news_comment` VALUES (12, '擦擦擦擦擦擦擦', '2019-06-03 14:28:31', 17, '匿名');
INSERT INTO `news_comment` VALUES (13, '别喝了', '2019-06-03 14:28:47', 17, '匿名');
INSERT INTO `news_comment` VALUES (14, '出事了才曝光，平时检查的呢', '2019-06-03 14:34:04', 17, '匿名');
INSERT INTO `news_comment` VALUES (15, '可恶', '2019-06-03 14:35:12', 17, '匿名');
INSERT INTO `news_comment` VALUES (16, '黑社会啊', '2019-06-03 14:36:18', 16, '匿名');
INSERT INTO `news_comment` VALUES (17, '好凶哦', '2019-06-03 14:36:23', 16, '匿名');
INSERT INTO `news_comment` VALUES (18, '扫黑除恶', '2019-06-03 14:36:30', 16, '匿名');
INSERT INTO `news_comment` VALUES (19, '呵呵呵呵', '2019-06-03 14:36:33', 16, '匿名');
INSERT INTO `news_comment` VALUES (20, '嗯，说得好', '2019-06-03 14:36:54', 15, '匿名');
INSERT INTO `news_comment` VALUES (21, '没毛病', '2019-06-03 14:36:58', 15, '匿名');
INSERT INTO `news_comment` VALUES (22, '666啊老铁', '2019-06-03 14:37:02', 15, '匿名');
INSERT INTO `news_comment` VALUES (23, '铁汁，摇就完事了嗷', '2019-06-03 14:37:26', 15, '匿名');
INSERT INTO `news_comment` VALUES (24, 'dfdfdfd', '2019-06-05 11:20:45', 17, '匿名');
INSERT INTO `news_comment` VALUES (25, 'fsfs', '2019-06-05 11:29:42', 17, '匿名');
INSERT INTO `news_comment` VALUES (26, 'ddddddd', '2019-06-05 11:30:13', 17, '匿名');
INSERT INTO `news_comment` VALUES (27, '有病', '2019-06-05 12:56:54', 17, '匿名');

-- ----------------------------
-- Table structure for photo
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cate_id` bigint(20) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of photo
-- ----------------------------
INSERT INTO `photo` VALUES (3, '站在这里一看，真怪，山简直变了样，它们的形状与在平原或半山望上来大不相同，它们变得十分层叠、杂乱，雄伟而奇特。往上仰望，山就是天，天也是山，前后左右尽是山，好像你的鼻子都可随时触到山。', 1, '山水风景', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559629862055&di=0a42f7a55e1b28e790fc155486d219af&imgtype=0&src=http%3A%2F%2Fpic37.nipic.com%2F20140110%2F8821914_135241051000_2.jpg');
INSERT INTO `photo` VALUES (2, '风，那么轻柔，带动着小树、小草一起翩翩起舞，当一阵清风飘来，如同母亲的手轻轻抚摸自己的脸庞，我喜欢那种感觉，带有丝丝凉意，让人心旷神怡。享受生活，不一定要有山珍海味、菱罗绸缎为伴，大自然便是上帝所赐予人类最为珍贵的。', 1, '春日山水风景图片', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559629745318&di=c777ca2d3fcaf9d887cecb97df4d63c8&imgtype=0&src=http%3A%2F%2Fpic31.nipic.com%2F20130728%2F3822951_140613063000_2.jpg');
INSERT INTO `photo` VALUES (4, '我仰望深蓝色的天空，稀落的残星疲倦地眨着眼睛。周围的一切都是模模糊糊的。我凝视着东方，东方渐渐有些发白了。过了一会儿，星星全都不见了。渐渐地，东方有些微红，并越来越浓，不断地向上扩展着。终于。太阳公公露出半个火红的笑脸，染红了天边。', 1, '天空风景图片', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559629745317&di=534be18cd820e851039d8790c4e44a95&imgtype=0&src=http%3A%2F%2Fpic44.nipic.com%2F20140716%2F8716187_010828140000_2.jpg');
INSERT INTO `photo` VALUES (5, '走在步行梯上，两边有许多形态各异的石狮子。有的石狮子正在玩顶球，样子可爱极了；有的石狮子正在做向游人招手的动作，好像在欢迎游客们的到来；还有的石狮子用眼睛狠狠的瞪着你，好像是正在为游客打扰了它们的休息而生气呢。', 1, '马尔代夫 巴厘岛 海边海岛屿风景', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559629745314&di=fe46103940734990fc9e5aef7de4f070&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2Fcd56ca327c1354f49585f1f7935e388782202d61d5f2b-TH2AiZ_fw658');
INSERT INTO `photo` VALUES (6, '升高了，更高了，火红火红的太阳悬在空中，放出耀眼的光芒。周围的一切清晰地呈现在我的眼前。啊！太阳升起来了，它把温暖洒向大地，把光明带给人间。', 1, '18最餐厅走到世界尽头只为桌边风景(组图)', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559629745313&di=a5e5ab6655e51a23772b17872b697f7f&imgtype=0&src=http%3A%2F%2Fphotocdn.sohu.com%2F20150929%2FImg422354234.jpg');
INSERT INTO `photo` VALUES (7, '清绝的月色吸引着我，于是披衣出门，踏着如水的月色，缓步走入花园，栀子花沐浴在月光下，寒凝带露，如一帘清远的幽梦。竹影随韵轻舞，如水月色轻轻穿过，回映着明月的清辉。万物都在月色中丰盈灵动起来。俗世的喧嚣与浮躁，犹豫与彷徨都消融在这如水月色中。顿然心悟，豁然开朗。', 1, '海鸥翱翔在广阔的海面上', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559629745312&di=7a7e4071bf9977ad11f9cea3fdad1aa7&imgtype=0&src=http%3A%2F%2Fpic5.nipic.com%2F20091224%2F3822085_091707089473_2.jpg');
INSERT INTO `photo` VALUES (8, '清晨，甘棠湖上一片白茫茫，像仙女的白纱巾在飘舞。太阳出来后，一道道阳光映在湖水里，湖面上波光粼粼；一条条游船在湖里游来游去，湖水划出一道道波痕。湖边一排排大树把湖给包围起来了。', 1, '热带海滩 海边风景图片', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559629745226&di=bc4807e5eaaac2f496f767b289453b3d&imgtype=0&src=http%3A%2F%2Fpic19.nipic.com%2F20120302%2F2786001_164927058000_2.jpg');
INSERT INTO `photo` VALUES (9, '左右两边都是高大的山，瀑布顺着刀劈一样的绝壁流下来，仿佛青龙吐涎，激起一朵朵水花飞溅在山涧。溪水清澈见底，溪底是五色斑斓的鹅卵石，银色的水泡似一串串珍珠抛在水面上，泛起微微涟漪。', 1, '唯美大自然风景高清电脑桌面 1920x1200 13p', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559629745225&di=920b5db7bfddbcb4a4ddfbbd023c92ce&imgtype=0&src=http%3A%2F%2Fwww.33lc.com%2Farticle%2FUploadPic%2F2012-10%2F2012101714105846249.jpg');
INSERT INTO `photo` VALUES (10, '深蓝色的天空里悬着无数半明半昧的星。船在动，星也在动，它们是这样低，真是摇摇欲坠呢！渐渐地我的眼睛模糊了，我好像看见无数萤火虫在我的周围飞舞。海上的夜是柔和的，是静寂的，是梦幻的。我望着那许多认识的星，我仿佛看见它们在对我霎眼，我仿佛听见它们在小声说话。这时我忘记了一切。在星的怀抱中我微笑着，我沉睡着。 我觉得自己是一个小孩子，现在睡在母亲的怀里了。', 1, '震撼眼球的风景大图', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559629745224&di=faad98b9ce4ae282de4308aa4acf8229&imgtype=0&src=http%3A%2F%2Fimg1.cache.netease.com%2Fcatchpic%2F1%2F19%2F19906B6772099C376B7AED148727964E.jpg');
INSERT INTO `photo` VALUES (11, '走在步行梯上，两边有许多形态各异的石狮子。有的石狮子正在玩顶球，样子可爱极了；有的石狮子正在做向游人招手的动作，好像在欢迎游客们的到来；还有的石狮子用眼睛狠狠的瞪着你，好像是正在为游客打扰了它们的休息而生气呢。', 1, '北京风景', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559629745222&di=a6ff3e66d120a6e47dd9fcc44cf4b1cd&imgtype=0&src=http%3A%2F%2Fimg8.zol.com.cn%2Fbbs%2Fupload%2F17547%2F17546389.jpg');
INSERT INTO `photo` VALUES (12, '普陀的山真秀啊！有的像绿色的屏障，有的像新生的竹笋，色彩明丽，倒影水中。', 1, '现如今的天津发展建设是一座大都市的风景美图.', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559629745219&di=f170780b1aec97c921219542ff518f02&imgtype=0&src=http%3A%2F%2Fs9.sinaimg.cn%2Fmiddle%2F93655805tb5462d09cdf8%26690');

-- ----------------------------
-- Table structure for photo_comment
-- ----------------------------
DROP TABLE IF EXISTS `photo_comment`;
CREATE TABLE `photo_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `photo_id` bigint(20) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of photo_comment
-- ----------------------------
INSERT INTO `photo_comment` VALUES (1, 'aaaa', '2019-06-05 11:28:19', 3, '匿名');
INSERT INTO `photo_comment` VALUES (2, 'cacaca', '2019-06-05 11:29:20', 3, '匿名');
INSERT INTO `photo_comment` VALUES (3, 'hehe', '2019-06-05 11:29:24', 3, '匿名');
INSERT INTO `photo_comment` VALUES (4, 'dsdsdsdsds', '2019-06-05 11:29:30', 3, '匿名');
INSERT INTO `photo_comment` VALUES (5, 'vvv', '2019-06-05 11:29:32', 3, '匿名');
INSERT INTO `photo_comment` VALUES (6, '牛逼', '2019-06-05 12:56:28', 3, '匿名');
INSERT INTO `photo_comment` VALUES (7, '啊啊啊吧', '2019-06-05 13:04:43', 3, '匿名');
INSERT INTO `photo_comment` VALUES (8, '', '2019-06-11 21:16:57', 2, '匿名');
INSERT INTO `photo_comment` VALUES (9, '', '2019-06-11 21:16:58', 2, '匿名');

-- ----------------------------
-- Table structure for photo_info
-- ----------------------------
DROP TABLE IF EXISTS `photo_info`;
CREATE TABLE `photo_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `click` int(11) NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `photo_id` bigint(20) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of photo_info
-- ----------------------------
INSERT INTO `photo_info` VALUES (1, 0, '黯淡了刀光剑影，远去了鼓角铮鸣。解放后，党领导人民建起了万里黄河第一坝，历史掀开崭新的一页。雄伟的大坝横空截断河水，大坝两边出现两种景观，坝内是“高峡出平湖”，水面平静犹如镜子，仿佛是一位娴静、贤淑的女子；坝外则又是一个景观，河水急速奔腾而下，犹如粗狂不羁的汉子一般，两种景观完美地统一在大坝两侧，岂不奇哉！', '2019-06-04 18:31:35', 3, '山水风景');
INSERT INTO `photo_info` VALUES (2, 0, '巴黎让人沉醉，让人迷离，而让人震撼的景，我想最值得一提的是美国旧金山的金门大桥。只是在一张照片上的一瞥，那般的金光灿烂，那般的美仑美奂，就像建在云端，天地都成为她的陪衬，在金色的阳光中熠熠生辉，让人永生难忘。真正的大气磅礴，气吞山河。我甚至不敢去那个地方，怕那时拍这照片的摄影师高超的记忆才制造出的美丽，或者怕自己的身影会玷污了这风景。', '2019-06-04 18:32:20', 2, '春日山水风景图片');

-- ----------------------------
-- Table structure for photo_thumbnail
-- ----------------------------
DROP TABLE IF EXISTS `photo_thumbnail`;
CREATE TABLE `photo_thumbnail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `photo_id` bigint(20) NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of photo_thumbnail
-- ----------------------------
INSERT INTO `photo_thumbnail` VALUES (1, 3, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559660825214&di=8248586ae75ed8aedca0cd2c067b753a&imgtype=0&src=http%3A%2F%2Fimg17.3lian.com%2Fd%2Ffile%2F201702%2F23%2F6e12cb5e536cbaaa63d4f841f8bcb1dc.jpg');
INSERT INTO `photo_thumbnail` VALUES (2, 3, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559660825214&di=c9973b9889b062fcebc1d35b58e35cd6&imgtype=0&src=http%3A%2F%2Fimage.naic.org.cn%2Fuploadfile%2F2017%2F1024%2F1508826478097694.jpg');
INSERT INTO `photo_thumbnail` VALUES (3, 3, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559660825214&di=4b96871051a32bbca94eedcdbb34b5c0&imgtype=0&src=http%3A%2F%2Fimg.sccnn.com%2Fbimg%2F337%2F31452.jpg');
INSERT INTO `photo_thumbnail` VALUES (4, 3, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559660825213&di=9539d041b5d16a8ee2aa9a6dc2a9bb2c&imgtype=0&src=http%3A%2F%2Fpic30.nipic.com%2F20130622%2F11921802_224554002000_2.jpg');
INSERT INTO `photo_thumbnail` VALUES (5, 3, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559660825213&di=526fe43ff950b33f7e7318e8cf644c00&imgtype=0&src=http%3A%2F%2Fpic170.nipic.com%2Ffile%2F20180625%2F11949215_162115287000_2.jpg');

-- ----------------------------
-- Table structure for swipe_pic
-- ----------------------------
DROP TABLE IF EXISTS `swipe_pic`;
CREATE TABLE `swipe_pic`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `disk_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of swipe_pic
-- ----------------------------
INSERT INTO `swipe_pic` VALUES (7, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558278876464&di=c226fedee2a8019c9407c48c30229159&imgtype=0&src=http%3A%2F%2Fpic.58pic.com%2F58pic%2F15%2F68%2F59%2F71X58PICNjx_1024.jpg', 'pic1');
INSERT INTO `swipe_pic` VALUES (8, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558278962712&di=b064eb9a4818e7b5ecf8b008575649fe&imgtype=0&src=http%3A%2F%2Fpic32.nipic.com%2F20130823%2F13339320_183302468194_2.jpg', 'pic2');
INSERT INTO `swipe_pic` VALUES (9, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558278975248&di=d8bcd89a9b371990c8627ab40bc8b41b&imgtype=0&src=http%3A%2F%2Fk.zol-img.com.cn%2Fsjbbs%2F7692%2Fa7691515_s.jpg', 'pic3');

SET FOREIGN_KEY_CHECKS = 1;
