<template>
  <div class="index">
    <header id="header" class="mui-bar">
      <!-- 顶部 -->
      <div class="top">
        <img src="img/navbar_btn_store_normal.png" alt>
        <img src="img/icon_news_title.png" alt>
        <img src="img/navbar_btn_sign_normal.png" alt>
        <img src="img/navbar_btn_search_normal.png" alt @click="search">
      </div>
      <!-- 头顶选项卡 -->
      <div class="mui-content">
        <div  class="mui-fullscreen">
          <div
            class="mui-scroll-wrapper mui-slider-indicator mui-segmented-control mui-segmented-control-inverted"
          >
            <div class="mui-scroll">
              <div class="mui-control-item mui-active">首页</div>
              <div class="mui-control-item">资讯</div>
              <div class="mui-control-item">评测</div>
              <div class="mui-control-item">节目</div>
              <div class="mui-control-item">攻略</div>
              <div class="mui-control-item">专栏</div>
            </div>
          </div>
        </div>
      </div>
    </header>
    <div class="mui-content slider">
      <!-- 轮播图 -->
      <div class="mui-collapse-content">
        <div class="mui-slider">
          <div class="mui-slider-group mui-slider-loop">
            <!-- 额外增加的一个节点(循环轮播：第一个节点是最后一张轮播) -->
            <div class="mui-slider-item mui-slider-item-duplicate">
              <a href="#">
                <img src="img/a5.png">
              </a>
            </div>
            <!-- 第一张 -->
            <div class="mui-slider-item">
              <a href="#">
                <img src="img/a1.png">
              </a>
            </div>
            <!-- 第二张 -->
            <div class="mui-slider-item">
              <a href="#">
                <img src="img/a2.png">
              </a>
            </div>
            <!-- 第三张 -->
            <div class="mui-slider-item">
              <a href="#">
                <img src="img/a3.png">
              </a>
            </div>
            <!-- 第四张 -->
            <div class="mui-slider-item">
              <a href="#">
                <img src="img/a4.png">
              </a>
            </div>
            <!-- 第五张 -->
            <div class="mui-slider-item">
              <a href="#">
                <img src="img/a5.png">
              </a>
            </div>
            <!-- 额外增加的一个节点(循环轮播：最后一个节点是第一张轮播) -->
            <div class="mui-slider-item mui-slider-item-duplicate">
              <a href="#">
                <img src="img/a1.png">
              </a>
            </div>
          </div>
          <div class="mui-slider-indicator">
            <div class="mui-indicator mui-active"></div>
            <div class="mui-indicator"></div>
            <div class="mui-indicator"></div>
            <div class="mui-indicator"></div>
            <div class="mui-indicator"></div>
          </div>
        </div>
      </div>
    </div>
    <!-- 最新资讯 -->
    <div class="newmsg">
      <div class="newmsgtop">
        <a href="#javascript:;">最新资讯</a>
        <a href="#javascript:;">
          更多资讯
          <i class="more_btn icon"></i>
        </a>
      </div>
      <div class="msg">
        <div class="msg1">
          <img src="img/icon_short_news_index.png" alt>国产恐怖新游《彼岸画廊》将于4月26日发售
        </div>
        <div class="msg1">
          <img src="img/icon_short_news_index.png" alt>还说《只狼》不是音游?!外国高玩用鼓打Boss
        </div>
        <div class="msg1">
          <img src="img/icon_short_news_index.png" alt>《伊苏9》将于9月26日发售 亚特鲁红发不再
        </div>
      </div>
    </div>
    <!-- 新闻列表 -->
    <div v-for="(item,i) in news" :key="i" class="midnav">
      <div class="mnavtop">
        <div class="user_head">
          <img :src="item.headimg" alt>
          <div class="user_name">
            <span v-text="item.name"></span>
            <span v-text="item.time"></span>
          </div>
        </div>
        <div class="kind">
          <span v-text="item.class"></span>
        </div>
      </div>
      <div class="mnavmid">
        <div>
          <span v-text="item.title"></span>
          <span v-text="item.stitle"></span>
        </div>
        <div class="relimg">
          <img :src="item.relimg" alt>
        </div>
        <div class="like_chat">
          <span>
            <img src="img/article_btn_bottom_assist_normal.png" alt>
            {{item.like}}
          </span>
          <span>
            <img src="img/article_btn_bottom_comment.png" alt>
            {{item.chat}}
          </span>
        </div>
      </div>
    </div>
    <my-footer></my-footer>
  </div>
</template>

<script>
import myFooter from '@/components/footer.vue'
export default {
  components:{
    myFooter
  },
  created(){
this.$store.state.s=0
  },
  data() {
    return {
      news: [
        {
          name: "沁雅畅慧",
          headimg: "img/190131161749974.png",
          time: "2小时前",
          class: "新闻",
          title: "《只狼 影逝二度》白金奖杯攻略",
          stitle: "电子游戏的的价值不仅仅是娱乐。",
          relimg: "img/190404164516224.jpg",
          like: "9",
          chat: "10"
        },
        {
          name: "小黑灬鹿鹿",
          headimg: "img/100.jpg",
          time: "2小时前",
          class: "新闻",
          title: "美国权威学术期刊：这款游戏能有效识别早期老年痴呆",
          stitle: "电子游戏的价值不仅仅是娱乐",
          relimg: "img/190428145136840.jpg",
          like: "5",
          chat: "7"
        },
        {
          name: "小黑灬鹿鹿",
          headimg: "img/100.jpg",
          time: "3小时前",
          class: "新闻",
          title: "任天堂财报说明会：云游戏有待发展 合作需视情况而定",
          stitle: "云游戏、多方合作、Switch的发展，都是任天堂现在关注的问题",
          relimg: "img/190428161351634.jpg",
          like: "13",
          chat: "21"
        },
        {
          name: "沁雅畅慧",
          headimg: "img/190131161749974.png",
          time: "4小时前",
          class: "新闻",
          title: "【有奖】一起来预测一下《怪物猎人》的新内容吧！",
          stitle: "将抽出一款《怪物猎人》主题展限定周边。",
          relimg: "img/190428103507735.jpg",
          like: "7",
          chat: "38"
        }
      ]
    };
  },
  mounted() {
    var gallery = mui(".mui-slider");
    gallery.slider({
      interval: 2000 //自动轮播周期，若为0则不自动播放，默认为0；
    }); 
    mui('.mui-scroll-wrapper').scroll({ deceleration: 0.0005});
  },
  methods:{
    search(){
      this.$router.push("/search")
    }
  }
};
</script>
<style scoped>
.index{
  height:1220px;
}
* {
  padding: 0%;
  margin: 0%;
}
/* 轮播图 */
.mui-slider {
  top: 20px;
}
.slider::before {
  content: "";
  display: block;
  height: 68px;
}
/* 最顶部 */
.top {
  height: 50px;
  background: #2abaca !important;
  position: relative;
  z-index: 9999;
}
.mui-bar {
  padding: 0;
}
.mui-bar ~ .mui-content .mui-fullscreen {
  top: 43px;
  height: 40px;
}
.top img:nth-child(1) {
  position: absolute;
  top: 25%;
  left: 2%;
  width: 7%;
}
.top img:nth-child(2) {
  margin-top: 4%;
  width: 30%;
}
.top img:nth-child(3) {
  position: absolute;
  top: 25%;
  right: 11%;
  width: 7%;
}
.top img:nth-child(4) {
  position: absolute;
  top: 25%;
  right: 2%;
  width: 7%;
}
/* 滑动选项卡 */
.mui-pull-top-tips {
  position: absolute;
  top: -20px;
  left: 50%;
  margin-left: -25px;
  width: 40px;
  height: 40px;
  border-radius: 100%;
  z-index: 1;
}

.mui-bar ~ .mui-pull-top-tips {
  top: 24px;
}

.mui-pull-top-wrapper {
  width: 42px;
  height: 42px;
  display: block;
  text-align: center;
  background-color: #efeff4;
  border: 1px solid #ddd;
  border-radius: 25px;
  background-clip: padding-box;
  box-shadow: 0 4px 10px #bbb;
  overflow: hidden;
}

.mui-pull-top-tips.mui-transitioning {
  -webkit-transition-duration: 200ms;
  transition-duration: 200ms;
}

.mui-pull-top-tips .mui-pull-loading {
  /*-webkit-backface-visibility: hidden;
				-webkit-transition-duration: 400ms;
				transition-duration: 400ms;*/
  margin: 0;
}

.mui-pull-top-wrapper .mui-icon,
.mui-pull-top-wrapper .mui-spinner {
  margin-top: 7px;
}

.mui-pull-bottom-tips {
  text-align: center;
  background-color: #efeff4;
  font-size: 15px;
  line-height: 40px;
  color: #777;
}

.mui-pull-top-canvas {
  overflow: hidden;
  background-color: #fafafa;
  border-radius: 40px;
  box-shadow: 0 4px 10px #bbb;
  width: 40px;
  height: 40px;
  margin: 0 auto;
}

.mui-pull-top-canvas canvas {
  width: 40px;
}

.mui-slider-indicator.mui-segmented-control {
  background-color: #efeff4;
  top:50px;
}
/* 最新资讯 */
.newmsg {
  margin-top: 5%;
  background: #fff;
}
.newmsgtop {
  padding: 2% 0 2% 0;
}
.newmsgtop::after {
  content: "";
  display: block;
  clear: both;
}
.newmsg .newmsgtop a:nth-child(1) {
  float: left;
  margin-left: 4%;
  color: #000;
  font-weight: bold;
  font-size: 0.9rem;
}
.newmsg .newmsgtop a:nth-child(2) {
  float: right;
  margin-right: 4%;
  font-size: 0.9rem;
  color: #888084;
}
.msg {
  width: 90%;
  margin: auto;
}
.msg1 {
  text-align: left;
  padding: 5px 0 5px 0;
  border-bottom: 1px solid #a5a4a4;
}
.msg1 img {
  width: 7%;
  padding: 3px 7px 0px 7px;
}
/* 精明图 */
.icon {
  position: absolute;
  display: inline-block;
  width: 12px;
  height: 12px;
  background: url(../../public/img/spri_01.svg) 0 0 no-repeat;
  z-index: 1;
}
.more_btn {
  opacity: 0.4;
  transform: scale(0.6);
  width: 16px;
  height: 16px;
  position: relative;
  top: 3px;
  margin-left: 6px;
  background-position: -601px -69px;
}
/* 新闻列表 */
.midnav {
  padding-top: 5px;
  background: #fff;
  border-bottom: 1px solid rgb(175, 200, 206);
}
.mnavtop::after {
  content: "";
  display: block;
  clear: both;
}
.user_head {
  float: left;
  width: 40%;
}
.user_header::after {
  content: "";
  display: block;
  clear: both;
}
.user_head img {
  margin: 4% 0 0 4%;
  float: left;
  border-radius: 50%;
  width: 1.5rem;
}
.user_name {
  padding-top: 5px;
}
.user_name span {
  padding-right: 10px;
  font-size: 10px;
  color: #79818f;
}
.kind {
  float: right;
  border-right: 3px solid #2abaca;
  margin: 5px 10px 0 0;
}
.kind span {
  color: #2abaca;
  padding-right: 7px;
  font-size: 10px;
  text-align: left;
}
.mnavmid div:first-child {
  width: 60%;
  padding: 3% 0 0 3%;
  float: left;
}
.mnavmid div:first-child span {
  display: block;
  padding-bottom: 3%;
  font-size: 0.6em;
  text-align: left;
}
.mnavmid > div:first-child > span:first-child {
  font-size: 0.8em;
  font-weight: 800;
  text-align: left;
}
.mnavmid div:nth-child(2) img {
  width: 35%;
  padding: 5px 2px 0 0;
}
.like_chat {
  text-align: right;
  width: 60%;
}
.like_chat span {
  padding-right: 5%;
}
.like_chat span img {
  width: 12%;
  padding-right: 2%;
}
</style>