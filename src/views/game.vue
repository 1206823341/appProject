<template>
  <div class="game">
    <header id="header" class="mui-bar">
      <div class="top">
        <img src="img/navbar_btn_store_normal.png" alt>
        <span>找游戏</span>
        <img src="img/navbar_btn_search_normal.png" alt @click="search">
      </div>
    </header>
    <!-- 滑动图片区域 -->
    <div>
      <div class="smtitle">
        <div>像素复古风</div>
        <div>全部 8种 &gt;</div>
      </div>
      <div class="scrollimg">
        <div class="mui-fullscreen">
          <div
            class="mui-scroll-wrapper mui-slider-indicator mui-segmented-control mui-segmented-control-inverted"
          >
            <div class="mui-scroll">
              <div class="mui-control-item" v-for="(item,i) in scrollimg" :key="i">
                <img :src="item.img" alt>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 游戏列表 -->
    <div class="gamelist">
      <div class="smtitle">
        <div>近期发售</div>
        <div>全部 261种 &gt;</div>
      </div>
      <div class="gameul">
        <div class="gameitem" v-for="(item,i) in gamelist1" :key="i">
          <div>
            <img :src="item.img" alt>
          </div>
          <div>
            <div v-text="item.name"></div>
            <div v-text="item.prop"></div>
            <div v-text="item.want+'人想玩'"></div>
          </div>
          <div>
            <img src="../../public/img/game/sign_time.png" alt>
            <span>2019-05-14</span>
          </div>
        </div>
      </div>
    </div>
    <!-- 猜你喜欢 -->
    <div class="mblike">
      <div>
        <img src="../../public/img/game/20190513141747.png" alt>
      </div>
      <div class="mblikeitem" v-for="(item,i) in gamelist2" :key="i">
        <div>
          <img :src="item.img" alt>
        </div>
        <div>
          <div v-text="item.title"></div>
          <div v-text="item.t2"></div>
          <div v-text="item.prop"></div>
        </div>
      </div>
    </div>
    <!-- 图片四宫格 -->
    <div class="playw">
      <div class="smtitle">
        <div>不玩只狼玩什么?</div>
        <div>全部 8种 &gt;</div>
      </div>
      <div class="bigf">
        <div class="witem" v-for="(item,i) in gamelist3" :key="i">
          <div>
            <img :src="item.img" alt>
          </div>
          <div v-text="item.title"></div>
          <div v-text="item.smt"></div>
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
  mounted(){
    mui('.mui-scroll-wrapper').scroll({ deceleration: 0.0005});
  },
  data() {
    return {
      scrollimg: [
        { id: 1, img: "img/game/20190510193808.png" },
        { id: 2, img: "img/game/20190510193930.png" },
        { id: 3, img: "img/game/20190510194004.png" },
        { id: 4, img: "img/game/20190510194032.png" },
        { id: 5, img: "img/game/20190510194100.png" },
        { id: 6, img: "img/game/20190510194120.png" },
        { id: 7, img: "img/game/20190510194211.png" },
        { id: 8, img: "img/game/20190510194239.png" }
      ],
      gamelist1: [
        {
          img: "img/game/20190513095040.png",
          name: "狂怒2",
          prop: "PS4,Xbox One,PC",
          want: "247",
          date: "2019-05-14"
        },
        {
          img: "img/game/20190513110806.png",
          name: "瘟疫传说:无罪",
          prop: "PS4,Xbox One,PC",
          want: "162",
          date: "2019-05-15"
        },
        {
          img: "img/game/20190513110839.png",
          name: "伊苏:塞尔塞塔的树海 改",
          prop: "PS4",
          want: "36",
          date: "2019-05-16"
        }
      ],
      gamelist2: [
        {
          img: "img/game/1.png",
          title: "往日不再",
          t2: "在这个世界，比感染者更危险的，是你的同类",
          prop: "PS4"
        },
        {
          img: "img/game/2.png",
          title: "生化危机2 重置版",
          t2: "淋漓尽致的恐怖体验",
          prop: "PS4,XBone,PC"
        },
        {
          img: "img/game/3.png",
          title: "僵尸世界大战",
          t2: "和同名电影共享世界观，但剧情是新的",
          prop: "PS4,Xbox One,PC"
        }
      ],
      gamelist3:[
        {img:"img/game/4.png",title:"耀西的手工世界",smt:"嚯~ ~ ~！把你吃了，生个蛋 ~"},
        {img:"img/game/5.png",title:"全境封锁2",smt:"特工，华盛顿需要你！"},
        {img:"img/game/6.png",title:"超级机器人大战T",smt:"再一次燃烧吧，钢之魂！"},
        {img:"img/game/7.png",title:"往日不再",smt:"在这个世界，比感染者更危险的，是你的同类。"},
      ]
    };
  },
  created(){
    this.$store.state.s=1
  },
  methods:{
    search(){
      this.$router.push("/search")
    }
  }
}
</script>
<style scoped>
/* 顶部 */
.game {
  height: 1500px;
  background: #fff;
}
.top {
  height: 50px;
  background: #2abaca !important;
  position: relative;
}
.mui-bar {
  padding: 0 !important;
}
.top > img:nth-child(1) {
  position: absolute;
  top: 25%;
  left: 2%;
  width: 7%;
}
.top > span:nth-child(2) {
  color: #fff;
  position: absolute;
  top: 28%;
  left: 46%;
}
.top > img:nth-child(3) {
  position: absolute;
  top: 25%;
  right: 2%;
  width: 7%;
}
/* 小标题 */
.smtitle {
  position: relative;
  top: 58px;
  padding-bottom: 10px;
}
.smtitle::after {
  content: "";
  display: block;
  clear: both;
}
.smtitle > div:first-child {
  float: left;
  font-size: 1.3rem;
  font-weight: 600;
  padding-left: 0.5rem;
}
.smtitle > div:nth-child(2) {
  float: right;
  font-size: 0.8rem;
  font-weight: 600;
  color: rgba(112, 112, 112, 0.616);
  padding-right: 0.5rem;
}
/* 滑动图片区域 */
.scrollimg {
  position: relative;
  top: 60px;
}
.mui-segmented-control.mui-scroll-wrapper .mui-control-item {
  display: inline-block;
  width: auto;
  padding: 0 20px;
  border: 0;
  line-height: 38px;
  display: table-cell;
  overflow: hidden;
  width: 1%;
  transition: background-color 0.1s linear;
  text-align: center;
  white-space: nowrap;
  text-overflow: ellipsis;
}
.mui-segmented-control.mui-scroll-wrapper {
  height: 205px;
}
.mui-control-item > img {
  width: 320px;
}
/*游戏列表*/
.gamelist {
  position: relative;
  top: 230px;
}
.gameitem {
  position: relative;
  top: 64px;
  display: flex;
  height: 85px;
  width: 95%;
  margin: 0 auto;
  box-shadow: 2px 2px 7px #888888;
  padding-top: 0.4rem;
  margin-bottom: 0.5rem;
}
.gameitem > :first-child {
  width: 35%;
}
.gameitem > :nth-child(2) {
  width: 40%;
  display: flex;
  text-align: left;
  flex-flow: column;
}
.gameitem > :nth-child(3) {
  width: 25%;
  padding-top: 15%;
}
.gameitem > :first-child img {
  width: 85%;
}
.gameitem > :nth-child(2) > :first-child {
  font-size: 0.8rem;
  font-weight: 600;
  height: 40%;
}
.gameitem > :nth-child(2) > :nth-child(2) {
  font-size: 0.5rem;
  height: 20%;
}
.gameitem > :nth-child(2) > :nth-child(3) {
  font-size: 0.4rem;
  color: rgb(121, 121, 121);
}
.gameitem > :nth-child(3) img {
  height: 60%;
}
.gameitem > :nth-child(3) span {
  width: 80%;
  display: inline-block;
  font-size: 0.1rem;
  vertical-align: middle;
  color: rgb(121, 121, 121);
  font-weight: bold;
  padding-left: 0.3rem;
}
/* 猜你喜欢 */
.mblike {
  position: relative;
  top: 300px;
  display: flex;
  flex-flow: column;
  height: 370px;
  width: 95%;
  margin: 0 auto;
  box-shadow: 2px 2px 5px -2px #888888;
}
.mblike > :first-child {
  height: 25%;
}
.mblike > :first-child img {
  width: 100%;
  height: 100%;
}
.mblikeitem {
  height: 25%;
  display: flex;
  padding-top: 2%;
}
.mblikeitem > :first-child img {
  height: 90%;
  width: 90%;
}
.mblikeitem > :nth-child(2) {
  display: flex;
  flex-flow: column;
  text-align: left;
  height: 100%;
  width: 100%;
}
.mblikeitem > :nth-child(2) > :nth-child(1) {
  height: 33.333%;
  font-size: 1rem;
  font-weight: bold;
  line-height: 2.5rem;
}
.mblikeitem > :nth-child(2) > :nth-child(2) {
  height: 33.333%;
  font-size: 0.5rem;
  color: rgba(92, 92, 92, 0.63);
  font-weight: bold;
  line-height: 1.8rem;
}
.mblikeitem > :nth-child(2) > :nth-child(3) {
  height: 33.333%;
  font-size: 0.4rem;
  font-weight: bold;
  color: rgba(92, 92, 92, 0.63);
}
/* 图片四宫格 */
.playw {
  position: relative;
  top: 280px;
}
.bigf {
  display: flex;
  flex-wrap: wrap;
  position:relative;
  top:64px;
}
.witem {
  display: flex;
  flex-flow: column;
  padding:0 2% 2% 2%;
  width: 50%;
  text-align: left;
}

.width>div:first-child{
  height:70%;
}
.witem>div img {
  width:100%;
}
.witem>div:nth-child(2){
  font-size:0.9rem;
  height:15%;
  font-weight: bold;
}
.witem>div:nth-child(3){
  font-size: 0.5rem;
  color:#888888
}
</style>