set names utf8;
drop database if exists vgt;
create database vgt charset=utf8;
use vgt;


#搜索
create table vgt_search(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    img     VARCHAR(255),
    title   VARCHAR(255),
    stitle  VARCHAR(255)
);

#用户
CREATE TABLE vgt_user(
    id       INT PRIMARY KEY AUTO_INCREMENT,
    uname    VARCHAR(255),
    upwd     VARCHAR(255),
    headimg  VARCHAR(255),
    username VARCHAR(255)  
);


#搜索
INSERT INTO vgt_search VALUES
(NULL,"b03533fa828ba61e5860c678f8255a0e314e59f5.jpeg","《怪物猎人：世界》新DLC“Iceborne”公布 9月6日登陆PS4","今天索尼在第二期“State of Play”直面会上，公布了《怪物猎人：世界》新DLC“Iceborne”（冰原）预告片"),
(NULL,"78310a55b319ebc4ae0be5fcf24702f81f1716cd.jpeg","《怪物猎人世界》扩展包内容公布 人气怪物迅龙回归","前作中的人气怪物“迅龙”将作为剧情的一部分在此回归，依旧继承了其灵活迅捷的特点。并且会与雄火龙争抢地盘。"),
(NULL,"3c6d55fbb2fb431683bac131c9cd942708f7d347.jpeg","Capcom将推出《怪物猎人世界 Iceborne》随从猫主题手柄支架","Capcom今日宣布将推出一款以《怪物猎人世界 Iceborne》中随从猫为主题的手机手柄通用支架"),
(NULL,"08f790529822720e66efc4b694b0d942f31fabdd.jpeg","《精灵宝可梦：大侦探皮卡丘》，主题延续了游戏中所探讨的问题","看完《精灵宝可梦：大侦探皮卡丘》这部动漫就觉得皮卡丘真的好萌。而且戴福尔摩斯的猎鹿帽很帅啊有木有！"),
(NULL,"23dd74bf7e594fceb6b0e11dbd5ed0e2.jpeg","外媒预测《精灵宝可梦：剑/盾》11月15日发售","日前，外媒gamerant针对该游戏的具体发售日期展开了预测，一起来看一下他们有何高见。"),
(NULL,"5d6034a85edf8db184a969ad57170c50574e7428.jpeg","《精灵宝可梦》推出扭蛋公仔和拓麻歌子，哪个更可爱？","根据日本网站的消息，《精灵宝可梦》将在五月份推出全新系列的扭蛋，主题为“皮卡丘＆伊布”！"),
(NULL,"23dd74bf7e594fceb6b0e11dbd5ed0e2.jpeg","《精灵宝可梦》图鉴490：被称为沧海的王子的宝可梦——玛纳霏","本篇我们要介绍的宝可梦就是被很多玩家誉为沧海的王子的宝可梦——也就是玛纳霏啦，玛纳霏这只宝可梦");


#登录
INSERT INTO vgt_user VALUES
(NULL,"dingding","123456","20190510104340.jpg","SalivaWei丶"),
(NULL,"dangdang","123456","100.jpg","疯狂的羊驼");