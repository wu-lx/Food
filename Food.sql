USE [Food]
GO
/****** Object:  Table [dbo].[t_reply]    Script Date: 2018/5/16 11:28:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_reply](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[t_t_id] [int] NULL,
	[t_u_id] [int] NULL,
	[rtime] [datetime] NULL,
	[rcontent] [varchar](1000) NULL,
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_section]    Script Date: 2018/5/16 11:28:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_tag](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tname] [varchar](40) NULL,
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_topic]    Script Date: 2018/5/16 11:28:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_topic](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[t_u_id] [int] NULL,
	[t_l_id] [int] NULL,
	[content] [varchar](1000) NULL,
	[ptime] [datetime] NULL,
	[title] [varchar](200) NULL,
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_user]    Script Date: 2018/5/16 11:28:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[face] [varchar](200) NULL,
	[username] [varchar](20) NULL,
	[password] [varchar](30) NULL,
	[sex] [varchar](4) NULL,
	[type] [varchar](10) NULL
) ON [PRIMARY]


GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[t_reply] ON 

INSERT [dbo].[t_reply] ([id], [t_t_id], [t_u_id], [rtime], [rcontent]) VALUES (41, 11, 26, CAST(0x0000A8D80140B20C AS DateTime), N'一楼沙发')
INSERT [dbo].[t_reply] ([id], [t_t_id], [t_u_id], [rtime], [rcontent]) VALUES (42, 15, 27, CAST(0x0000A8D800AC614D AS DateTime), N'哇！好好吃的样子！')
INSERT [dbo].[t_reply] ([id], [t_t_id], [t_u_id], [rtime], [rcontent]) VALUES (43, 11, 28, CAST(0x0000A8D900AC614C AS DateTime), N'谢谢楼主的分享')
INSERT [dbo].[t_reply] ([id], [t_t_id], [t_u_id], [rtime], [rcontent]) VALUES (44, 13, 29, CAST(0x0000A8DA00AC614C AS DateTime), N'码住')
INSERT [dbo].[t_reply] ([id], [t_t_id], [t_u_id], [rtime], [rcontent]) VALUES (45, 14, 30, CAST(0x0000A8D900AC614C AS DateTime), N'点个赞')
INSERT [dbo].[t_reply] ([id], [t_t_id], [t_u_id], [rtime], [rcontent]) VALUES (46, 11, 37, CAST(0x0000A8DA00AC614C AS DateTime), N'方法很好，做成了')
INSERT [dbo].[t_reply] ([id], [t_t_id], [t_u_id], [rtime], [rcontent]) VALUES (47, 21, 38, CAST(0x0000A8D900AC614C AS DateTime), N'好吃！')
INSERT [dbo].[t_reply] ([id], [t_t_id], [t_u_id], [rtime], [rcontent]) VALUES (48, 15, 39, CAST(0x0000A8DA00AC614C AS DateTime), N'赞')
INSERT [dbo].[t_reply] ([id], [t_t_id], [t_u_id], [rtime], [rcontent]) VALUES (49, 17, 40, CAST(0x0000A8D900AC614C AS DateTime), N'又到了改善伙食的日子了')
INSERT [dbo].[t_reply] ([id], [t_t_id], [t_u_id], [rtime], [rcontent]) VALUES (50, 14, 28, CAST(0x0000A8DA00AC614C AS DateTime), N'脑子：我会了。手：不，你不会！')
INSERT [dbo].[t_reply] ([id], [t_t_id], [t_u_id], [rtime], [rcontent]) VALUES (51, 18, 29, CAST(0x0000A8D900AC614C AS DateTime), N'谢谢楼主的分享')
SET IDENTITY_INSERT [dbo].[t_reply] OFF
SET IDENTITY_INSERT [dbo].[t_tag] ON 

INSERT [dbo].[t_tag] ([id], [tname]) VALUES (1,  N'中餐')
INSERT [dbo].[t_tag] ([id], [tname]) VALUES (2, N'西餐')
INSERT [dbo].[t_tag] ([id], [tname]) VALUES (3, N'甜品')
INSERT [dbo].[t_tag] ([id], [tname]) VALUES (4, N'小吃')
INSERT [dbo].[t_tag] ([id], [tname]) VALUES (5, N'饮品')
INSERT [dbo].[t_tag] ([id], [tname]) VALUES (6, N'包点')
INSERT [dbo].[t_tag] ([id], [tname]) VALUES (7, N'水果')
INSERT [dbo].[t_tag] ([id], [tname]) VALUES (8, N'探店')
INSERT [dbo].[t_tag] ([id], [tname]) VALUES (9, N'其它')
SET IDENTITY_INSERT [dbo].[t_tag] OFF
SET IDENTITY_INSERT [dbo].[t_topic] ON 

INSERT [dbo].[t_topic] ([id], [t_u_id], [content], [ptime], [title],[t_l_id]) VALUES (11, 27, N'将生抽、醋、蚝油、糖，按1：1：0.25：1.5的比例放入碗中，再加入少量淀粉搅拌均匀备用；
木耳洗净泡水待用；红萝卜去皮 青椒 仔姜 切丝  蒜切片；
瘦肉买回来最好放冰箱急冻一会儿，这样比较容易切丝，随后在肉丝中加入生抽、淀粉抓匀腌制；
这样入味而且丝滑（用鸡蛋清代替淀粉会更好）；
起锅烧油，下入红萝卜翻炒至变色，大约1分钟，这个比较难熟；
随后加入木耳青椒丝翻炒均匀，听到木耳噼里啪啦爆开的声音再炒个20秒就差不多可以出锅装盘待用了；
下入肉丝翻炒至变白 八成熟就行了，出锅待用；
大火，加入蒜片跟郫县豆瓣酱翻炒；
倒入刚炒好的半成品跟仔姜丝，淋入少许料酒 ，翻炒几下加入步骤1调好的芡汁（用筷子搅拌下）炒个1分钟左右就可以出锅了。',
CAST(0x0000A8D800000000 AS DateTime), N'鱼香肉丝', 1)
INSERT [dbo].[t_topic] ([id], [t_u_id], [content], [ptime], [title],[t_l_id]) VALUES (12, 27, N'xx市xx路xx号的xxx真的超级好吃~吃过一次回味无穷呀！那里的环境也相当不错，大家有机会一定要去尝尝！', 
CAST(0x0000A8D800107AC0 AS DateTime), N'超好吃的xxx', 8)
INSERT [dbo].[t_topic] ([id], [t_u_id], [content], [ptime], [title],[t_l_id]) VALUES (13, 26, N'先来准备食材，将所需要的食材准确称重，然后需要清洗的清洗净；
将美国碧根果用手掰碎，这样打豆浆的时候会更细腻；
将所有食材放到豆浆里，再加入清水1000ml；
盖上豆浆机的盖子，选择豆浆功能的五谷浆，静等大约30分钟，就可以品尝了。', 
CAST(0x0000A8D80020F580 AS DateTime), N'碧根果豆浆', 5)
INSERT [dbo].[t_topic] ([id], [t_u_id], [content], [ptime], [title],[t_l_id]) VALUES (14, 26, N'鸡蛋洗干净放到凉水锅内，煮开，8分钟，关火；
煮鸡蛋的时间刚好准备其他配料：八角、桂皮、香叶、生抽、老抽，盐；
准备好茶叶包，用普通茶叶也可以；
煮好鸡蛋捞出，给它们泡个凉水澡；
剥壳，为了更加入味我划了花刀；
再次放入凉水锅中，把所有其他配料统统倒入锅中；
水开后，中火煮10分钟，关火，在锅中焖一晚上，当早餐特别省时间；
浸泡了一晚上，就可以吃了。', 
CAST(0x0000A8D80041EB00 AS DateTime), N'茶叶蛋', 4)
INSERT [dbo].[t_topic] ([id], [t_u_id], [content], [ptime], [title],[t_l_id]) VALUES (15, 28, N'这么多年，挑水果的经验总结出来跟大家分享一下：
1. 水果有屁股的，屁股凹进去的甜 
2. 皮薄的果肉多，皮厚的果肉少，果肉越多核越小
3. 大小适中的最好，不要买什么奇形怪状的
4. 闻起来的时候香味和烂味是不同的
5. 捏的时候某一部分是软的就是烂的
6. 苹果和梨大的和重的比较多汁
7. 挑蜜瓜香瓜时可以闻一闻瓜脐
大家还有什么我不知道的挑水果的小窍门，也可以分享给我呀~', 
CAST(0x0000A8D800107AC0 AS DateTime), N'挑水果的小秘诀', 7)
INSERT [dbo].[t_topic] ([id], [t_u_id], [content], [ptime], [title],[t_l_id]) VALUES (16, 28, N'去成都旅行背回来的特产里最多的就是各种辣椒、麻椒和酱料。家里正好有鸡腿就试试做一下鸡块状的重庆辣子鸡，大口啃肉的感觉超级爽，香辣过瘾有嚼劲！
所需食材：鸡腿肉、干辣椒、麻椒、大葱、姜、大蒜、白芝麻、花生油、盐、料酒、淀粉、生抽
1、把鸡腿斩成鸡块，清洗后沥干水分，加入盐、料酒、生抽和淀粉，拌均匀后腌制20分钟让其入味。
2、炒锅中火烧至掌心灼热，倒入花生油，油温烧至8成热的时候下入腌制好的鸡块进行炸制。
3、小火低温炸至鸡肉变成白色，表面微缩后转中火炸。用锅铲翻面，炸至鸡块变成金黄色。转大火炸至鸡块金黄酥脆。
4、将炸好的鸡块捞出沥油；用剪刀将干辣椒剪成小辣椒段；大葱切成葱花；姜和蒜切片备用。
5、烧热锅中底油，放入姜片和蒜片小火炒香之后下入葱花、干辣椒段和麻椒一起翻炒出香味。
6、下入炸好的鸡块进行翻炒。片刻后撒入白芝麻，翻炒均匀即可出锅装盘。
7、麻辣干香的辣子鸡就做好了，备好酒水就可以开吃了。', 
CAST(0x0000A8D900107AC0 AS DateTime), N'重庆辣子鸡', 1)
INSERT [dbo].[t_topic] ([id], [t_u_id], [content], [ptime], [title],[t_l_id]) VALUES (17, 29, N'简单，经典的牛排，决定成败的关键在于黄油。
做法  
准备好食谱中需要的牛肉、迷迭香、大蒜以及爱乐薇咸味黄油等；
迷迭香百里香用刀切碎；
与黄油混合制作成香草黄油备用；
大火把锅烧烫倒入色拉油；
牛排上均匀涂抹盐，胡椒，放入加热的锅内将四面均匀煎一下
将大蒜拍碎放入，继续放入些许百里香迷迭香；
放入大块黄油将其融化；
然后将锅内形成的汁水不断均匀的浇在牛排上，三分钟后即可
将牛排拿出切开摆盘；
将之前完成的香草黄油均匀的放在顶部即可食用；',
 CAST(0x0000A8D800107AC0 AS DateTime), N'经典黄油牛排', 2)
INSERT [dbo].[t_topic] ([id], [t_u_id], [content], [ptime], [title],[t_l_id]) VALUES (18, 30, N'天天路过一家不开门的古早味蛋糕店，还是自己做做快呀，求人不如求己~戚风蛋糕不太成功的同学可以试试这款古早蛋糕，比较容易成功。
准备一个模具，圆的，方的都可以，这是八寸的，事先铺好硅油纸，下面可任意用水或油使得硅油纸可以服帖住模具。
将面粉和玉米淀粉过筛在大碗里。
玉米油或者其他无明显气味的植物油加热到温热，大约70来度的样子，浇到面粉混合物中，一字混匀。
加入牛奶，混匀。
加入蛋黄，混匀。这份混合物简称蛋黄混合物。
打发蛋白前，预热烤箱，看各自烤箱脾气，预热时上管145°，下管165°。
每个人烤箱不一样，得根据自己情况。
蛋白分三次加入糖，打发到打蛋头提起小弯钩状态。
蛋黄混合物和打发后的蛋白混匀，翻拌手法，跟戚风蛋糕一样。
倒入模具中，震几下，没有大气泡就好。
放在装有差不多40°温水的烤盘中，水浴法烤蛋糕。上管135°，下管155°，这也是我的烤箱情况，大家一边烤一边观察，我烤了75分钟的样子。
假如上色不太好，最后十分钟建议加高十度上色。大家还是要根据实际情况调节，不是一概而论的。
出来，震一下，撕开硅油纸，放烤架上晾凉。
切块。', CAST(0x0000A8DA00107AC0 AS DateTime), N'古早蛋糕', 3)
INSERT [dbo].[t_topic] ([id], [t_u_id], [content], [ptime], [title],[t_l_id]) VALUES (19, 37, N'吃一口即让人沦陷的盐面包来啦，表皮酥香内里松软咸香，一口即可俘获你的味蕾，这个方子看似有点复杂，但是只要每一步都严格把握，最后出啦，成品绝对是你所吃过的盐面包里最好吃也会是你最喜欢的，再说了，从来就没有什么美食是简单易得的
提前一夜制作烫种：将面粉、糖、盐混合倒入煮沸的水揉匀包保鲜膜待冷却后冷藏一夜
将全部材料混合速度搅匀转高速（佳麦厨师机5档）搅拌至完全扩展，完成面温25-27度，26度湿度65环境基础发酵60分钟
基础发酵完成后分割50克每个滚圆搓成水滴状（见图四）冷藏松弛60分钟
将松弛好的的面团擀成长形倒三角，然后从中部开始涂一层很薄很薄的融化的黄油
在顶部裹入一块咸味黄油自上而下卷成一个4-5圈的羊角
烤盘垫垫烘焙油纸或油布，放发酵箱30度65湿度发酵40-60分钟（这款面包发酵不需要发足，轻按缓慢回弹即可）趁发酵时间可以预热烤箱，上火210度，下火190度，烤箱底层加石板，中层网架放一个小烤盘装派石一起预热40分钟
表面刷融化黄油，撒海盐片，送入烤箱（放在底层的石板上）然后快速的往中层网架上的小烤盘里倒入沸水关门，烘烤12-15分钟
出炉趁热吃啊，一口气三颗不在话下啊', 
CAST(0x0000A8DB00735B40 AS DateTime), N'牛角面包', 6)
INSERT [dbo].[t_topic] ([id], [t_u_id], [content], [ptime], [title],[t_l_id]) VALUES (20, 38, N'苦苣、生菜、黄瓜清洗干净；
水萝卜、圣女果、蓝莓清洗干净；干果、坚果准备一些；我用的干果是袋装即食的，里面有大桃仁、腰果、核桃、蔓越莓、蓝莓、葡萄干，也可以随喜欢自己搭配；
苦苣切寸段，生菜切大块，黄瓜斜切成薄片；
水萝卜切薄片，圣女果对半切，草莓一切4瓣，干果坚果也入盆；
三色藜麦准备好，用量无固定，我用了80克干藜麦，用凉水淘洗两遍后入锅煮；
倒入适量的百香果醋，这道凉拌菜用各种果醋口味更清爽，而且与其中的草莓、圣女果、干果的甜味相得益彰；不要用陈醋等颜色重、味道浓酸的那种，实在没有果醋可以用白米醋加少许白糖代替；这也是饭馆的拌素菜味道清爽开胃的原因；
再倒入适量橄榄油，橄榄油有软化心脑血管、降低胆固醇等作用，做凉拌菜时放一些还有助于提升菜品的光亮度；再撒少许盐，拌均匀即可食用。
 藜麦蔬菜沙拉，开胃解腻清肠胃！', 
CAST(0x0000A8DB00735B40 AS DateTime), N'藜麦蔬菜沙拉', 7)
INSERT [dbo].[t_topic] ([id], [t_u_id], [content], [ptime], [title],[t_l_id]) VALUES (21, 39, N' 密封半月有余的自制酸菜今天开缸了，一开盖子就知道成功了，因为就是这个味O(∩_∩)O哈哈~
 在春节前买了一把芥菜，尝试着自己腌制酸菜，每天都在观察着它的变化，颜色从翠绿渐渐变成诱人的黄色，看着就口水就不觉开始分泌了(¯﹃¯)
【材料】
芥菜1把、盐适量、热开水适量、无油无水的容器和密封罐各一个
【做法】
1、将芥菜清洗干净后挂在通风的地方晾干水分
2、将手洗净，把晾好的芥菜，放入无油无水容器中，放一层菜撒一层盐
3、摆好后淋上热开水，没过芥菜即可，放置一夜
4、泡制一夜的芥菜放入干净的密封罐，最后连同水一起倒入（可以最后再淋上少许白醋）
5、腌制半个月以上就可以了', 
CAST(0x0000A8D800000000 AS DateTime), N'自制酸菜', 9)
INSERT [dbo].[t_topic] ([id], [t_u_id], [content], [ptime], [title],[t_l_id]) VALUES (22, 40, N'将糯米粉150g和45g粟粉筛入盆中，放进100g白砂糖,加入270g牛奶.
用蛋抽搅拌至无颗粒状，冷水上锅！隔水蒸40分钟；大火上气后转中火。
蒸好后取出放60g黄油，自然融化成液体。
用抓捏捣的方式混合，（烫！用手套隔热）整个过程不停歇要10-20分钟至混合均匀完全没有一丝液体，呈年糕状。覆盖上保鲜膜，室温放凉后冷藏8小时以上。
炒粉: 将糯米粉50-100g放入锅中小火（！！）炒熟，要不停翻动，防止糊锅，比生粉颜色略黄即可。
将冷藏好的面团（不黏手）用刮板从盆中铲出来，稍微揉几下整形后，滚成长条，撒粉，切小块儿。
每一块都团成团，压扁，撒粉，擀成皮，在底部撒上熟粉放入盆中，盖好保鲜膜继续冷藏！
准备水果，打奶油：奶油+白砂糖打发。打完装裱花袋使用！挤一点奶油，放几块水果，再覆盖奶油，水果换奥利奥碎就是奥利奥雪媚娘。
可用个小碗将皮子放进去包，从两侧边缘提起捏在一起，反过来放纸托，装盒。
做好冷藏一小时后再食，亲测过夜皮不会硬，一般都是当天消灭完！', 
CAST(0x0000A8D800107AC0 AS DateTime), N'雪媚娘', 3)
INSERT [dbo].[t_topic] ([id], [t_u_id], [content], [ptime], [title],[t_l_id]) VALUES (23, 38, N'两片吐司夹煎好鸡蛋配生菜或番茄片，看起很简单，其实是营养丰富，早餐来一份，棒棒的。
 1.备好食材:吐司，沙拉酱，鸡蛋，生菜，香肠(熟的)。
 2.吐司放入不粘锅稍微煎一下(也可以不煎昨天做的还很软)。
 3.鸡蛋放入小煎锅煎熟。
 4.香肠切开放入小煎锅加热。
 5.取一片吐司挤上沙拉酱。
 6.铺一片生菜。
 7.放煎蛋，再放香肠(顺序随意即可)。
 8.再放一片生菜。
 9.再取另一片吐司，挤生沙拉酱。
 10.把挤有沙拉酱的一面复盖在生菜上即可，美味的三明治就完成了。
 11.从中间切开，便于食用，也美观。', 
CAST(0x0000A8D80020F580 AS DateTime), N'鸡蛋香肠三文治', 2)
INSERT [dbo].[t_topic] ([id], [t_u_id], [content], [ptime], [title],[t_l_id]) VALUES (24, 37, N'这一款来自奈雪同款哦，霸气菠萝百香，味道新鲜特别，百香果被菠萝征服了！
 1.第一步：在雪克杯中放进菠萝80克；
 2.第二步：捣烂菠萝
 3.第三步：加入冰块180g
 4.第四步：加入百香果果溶 20ml
 5.第五步：四季春茶汤 250ml
 6.第六步：冰糖桨 45ml
 7.第七步：雪克均匀
 8.第八步：最后倒进出品杯就完成啦
 9.饮品就做好啦。',
 CAST(0x0000A8D80041EB00 AS DateTime), N'霸气菠萝百香', 5)
INSERT [dbo].[t_topic] ([id], [t_u_id], [content], [ptime], [title],[t_l_id]) VALUES (25, 35, N'各类别的肉食中，鸡翅是家人喜欢的吧？到了团聚休闲的时候了，不要忘记眼睛巴巴地盯着快餐店烤翅的小馋嘴们，进补就在此时此刻。这款蜜汁儿烤翅喷香美味，操作简单，只需提前把鸡翅腌好，做的时候，放入空气炸锅，设置好程序，就等美味来临吧。
做法步骤：
准备材料：鸡翅，cook100新蜜汁烤肉料，白芝麻
鸡翅内侧切开几刀
cook100新蜜汁烤肉料按比例和水，放入鸡翅，搅拌均匀
用保鲜膜或密封盖封住，放入冰箱冷藏
 烤盘上铺上一层锡纸，码上腌好的鸡翅，连同腌料一起放入。把烤盘放在空气炸锅的高烤架上
设置温度205℃，时间35分钟
其间可翻一下面，喜欢的撒一些白芝麻点缀
腌制时间可按自己的调整，过夜更入味', 
CAST(0x0000A8D800107AC0 AS DateTime), N'蜜汁烤鸡翅', 4)
SET IDENTITY_INSERT [dbo].[t_topic] OFF
SET IDENTITY_INSERT [dbo].[t_user] ON 

INSERT [dbo].[t_user] ([id], [face], [password], [sex], [username], [type]) VALUES (26,  N'/userFace/abff80de-36d0-49c3-8523-79187d1bf7a8.png', N'123', N'女', N'甜品控', N'1')
INSERT [dbo].[t_user] ([id], [face], [password], [sex], [username], [type]) VALUES (27,  N'/userFace/abff80de-36d0-49c3-8523-79187d1bf7a8.png', N'22', N'女',N'小吃货', N'1')
INSERT [dbo].[t_user] ([id], [face], [password], [sex], [username], [type]) VALUES (28, N'/userFace/abff80de-36d0-49c3-8523-79187d1bf7a8.png', N'3', N'男', N'3', N'1')
INSERT [dbo].[t_user] ([id], [face], [password], [sex], [username], [type]) VALUES (29, N'/userFace/abff80de-36d0-49c3-8523-79187d1bf7a8.png', N'4', N'女', N'我饿了', N'1')
INSERT [dbo].[t_user] ([id], [face], [password], [sex], [username], [type]) VALUES (30, N'/userFace/824fb0e8-729c-4e38-bb63-2e4eccbeeb49.jpg', N'5', N'女', N'5', N'1')
INSERT [dbo].[t_user] ([id], [face], [password], [sex], [username], [type]) VALUES (31, N'/userFace/14decd17-0183-4e5d-a389-60d6e9199dc8.png', N'2', N'男', N'2', N'2')
INSERT [dbo].[t_user] ([id], [face], [password], [sex], [username], [type]) VALUES (32, N'/userFace/14decd17-0183-4e5d-a389-60d6e9199dc8.png', N'256', N'女', N'qwe', N'2')
INSERT [dbo].[t_user] ([id], [face], [password], [sex], [username], [type]) VALUES (33, N'/userFace/824fb0e8-729c-4e38-bb63-2e4eccbeeb49.jpg', N'12345678', N'男', N'小黑', N'1')
INSERT [dbo].[t_user] ([id], [face], [password], [sex], [username], [type]) VALUES (34, N'/userFace/14decd17-0183-4e5d-a389-60d6e9199dc8.png', N'abcedegh2', N'男', N'abcedegh2', N'2')
INSERT [dbo].[t_user] ([id], [face], [password], [sex], [username], [type]) VALUES (35, N'/userFace/824fb0e8-729c-4e38-bb63-2e4eccbeeb49.jpg', N'348', N'女', N'wawawa', N'1')
INSERT [dbo].[t_user] ([id], [face], [password], [sex], [username], [type]) VALUES (36, N'/userFace/824fb0e8-729c-4e38-bb63-2e4eccbeeb49.jpg', N'abcedegh', N'男', N'abcedegh', N'2')
INSERT [dbo].[t_user] ([id], [face], [password], [sex], [username], [type]) VALUES (37, N'/userFace/81b30cf4-c05a-46f4-819e-624d097dd0bc.png', N'1',N'女', N'1', N'1')
INSERT [dbo].[t_user] ([id], [face], [password], [sex], [username], [type]) VALUES (38, N'/userFace/4ebfc07d-51f0-482f-95c4-5ec183a93512.png', N'1111111',N'男', N'修仙中', N'1')
INSERT [dbo].[t_user] ([id], [face], [password], [sex], [username], [type]) VALUES (39, N'/userFace/14decd17-0183-4e5d-a389-60d6e9199dc8.png', N'qazwsx', N'男', N'11010111', N'1')
INSERT [dbo].[t_user] ([id], [face], [password], [sex], [username], [type]) VALUES (40, N'/userFace/c55c2f59-ac74-4250-bc98-0383d04bf4cd.png', N'azsx', N'女', N'红红红红红', N'1')
SET IDENTITY_INSERT [dbo].[t_user] OFF

 
/****** Object:  Index [PK_T_REPLY]    Script Date: 2018/5/16 11:28:23 ******/
ALTER TABLE [dbo].[t_reply] ADD  CONSTRAINT [PK_T_REPLY] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_TAG]    Script Date: 2018/5/16 11:28:23 ******/
ALTER TABLE [dbo].[t_tag] ADD  CONSTRAINT [PK_T_tag] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_TOPIC]    Script Date: 2018/5/16 11:28:23 ******/
ALTER TABLE [dbo].[t_topic] ADD  CONSTRAINT [PK_T_TOPIC] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_T_USER]    Script Date: 2018/5/16 11:28:23 ******/
ALTER TABLE [dbo].[t_user] ADD  CONSTRAINT [PK_T_USER] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [AK_NUNAME_T_USER]    Script Date: 2018/5/16 11:28:23 ******/
ALTER TABLE [dbo].[t_user] ADD  CONSTRAINT [AK_NAME_T_USER] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


ALTER TABLE [dbo].[t_reply]  WITH CHECK ADD  CONSTRAINT [FK_T_REPLY_RELATIONS_T_TOPIC] FOREIGN KEY([t_t_id])
REFERENCES [dbo].[t_topic] ([id])
GO
ALTER TABLE [dbo].[t_reply] CHECK CONSTRAINT [FK_T_REPLY_RELATIONS_T_TOPIC]
GO
ALTER TABLE [dbo].[t_reply]  WITH CHECK ADD  CONSTRAINT [FK_T_REPLY_RELATIONS_T_USER] FOREIGN KEY([t_u_id])
REFERENCES [dbo].[t_user] ([id])
GO
ALTER TABLE [dbo].[t_reply] CHECK CONSTRAINT [FK_T_REPLY_RELATIONS_T_USER]
GO
ALTER TABLE [dbo].[t_topic]  WITH CHECK ADD  CONSTRAINT [FK_T_TOPIC_RELATIONS_T_TAG] FOREIGN KEY([t_l_id])
REFERENCES [dbo].[t_tag] ([id])
GO
ALTER TABLE [dbo].[t_topic] CHECK CONSTRAINT [FK_T_TOPIC_RELATIONS_T_TAG]
GO
ALTER TABLE [dbo].[t_topic]  WITH CHECK ADD  CONSTRAINT [FK_T_TOPIC_RELATIONS_T_USER] FOREIGN KEY([t_u_id])
REFERENCES [dbo].[t_user] ([id])
GO
ALTER TABLE [dbo].[t_topic] CHECK CONSTRAINT [FK_T_TOPIC_RELATIONS_T_USER]
GO

