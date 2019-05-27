<template>
  <div class="club">
    <header id="header" class="mui-bar">
      <div class="top">
        <img src="img/navbar_btn_store_normal.png" alt>
        <span>精华</span>
        <img src="img/navbar_btn_search_normal.png" alt @click="search">
      </div>
    </header>
    <!-- 下方文章 -->
    <div class="clubitem  animated rollIn" v-for="(item,i) in list" :key="i">
      <div class="clubitemtop">
        <div>
          <img :src="item.head" alt>
        </div>
        <div>
          <div v-text="item.name"></div>
          <div>
            <span v-text="item.time"></span>
            <span>发布文章</span>
          </div>
        </div>
        <div>
          <img src="../../public/img/club/article_btn_bottom_comment.png" alt>
          <span v-text="item.chat"></span>
        </div>
      </div>
      <div class="clubmoddle">
        <div v-text="item.title"></div>
        <div>
          <img :src="item.img" alt>
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
this.$store.state.s=3
  },
  data() {
    return {
        list:[
            {head:"img/club/18060811180353.jpg",name:"EK",time:"昨天12:33",chat:"265",title:"摸鱼三分钟:换色大发好",img:"img/club/1.png"},
            {head:"img/club/170527120806126.jpg",name:"奶油布里兹",time:"今天07:58",chat:"65",title:"游戏才能办得到的事vol.1 --感同身受边缘人群",img:"img/club/2.png"},
            {head:"img/club/180625224800143.png",name:"神域永恒",time:"今天02:23",chat:"23",title:"LOADING...--游戏的名片",img:"img/club/3.png"},
            {head:"img/club/190127160350640.jpg",name:"多兰古雷格咖啡",time:"昨天19:03",chat:"541",title:"瘟疫肆虐之下，姐弟二人眼中的世界",img:"img/club/4.png"},
            {head:"img/club/190428184623606.png",name:"阳卿然",time:"昨天15:01",chat:"678",title:"在手游大厂的最新作里,氪金不是用来抽卡的",img:"img/club/5.png"},
            {head:"img/club/190513155633442.jpg",name:"星景",time:"昨天10:46",chat:"231",title:"摸鱼三分钟:真有你们的啊",img:"img/club/6.png"},
            {head:"img/club/180625224800143.png",name:"神域永恒",time:"今天09:27",chat:"45",title:"对于新型号的Switch,你有哪些期待？",img:"img/club/7.png"},
            {head:"img/club/190127160350640.jpg",name:"多兰古雷格咖啡",time:"今天07:33",chat:"11",title:"《最终幻想7 重置版》新预告解析",img:"img/club/8.png"},
        ]
    };
  },
  methods:{
    search(){
      this.$router.push("/search")
    }
  }
};
</script>
<style scoped>
.club{
    background: #fff;
    height:1450px;
}
/*顶部*/
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
/* 下方文章 */
.clubitem {
  position: relative;
  top: 55px;
  display: flex;
  width: 95%;
  margin: 0 auto;
  height: 150px;
  flex-flow: column;
  padding-top: 2%;
  margin-bottom:4%;
  box-shadow: 2px 2px 8px 3px #dddddd;
}
.clubitemtop {
  display: flex;
  width: 100%;
  height: 30%;
}
.clubitemtop > :first-child {
  width: 20%;
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
}
.clubitemtop > :first-child > img {
  border-radius: 50%;
  width: 40%;
}
.clubitemtop > :nth-child(2) {
  width: 60%;
  height: 100%;
  display: flex;
  flex-flow: column;
  text-align: left;
}
.clubitemtop > :nth-child(2) > div:first-child {
  font-size: 1rem;
  font-weight: 500;
  color: rgb(0, 0, 0);
}
.clubitemtop > :nth-child(2) > div:nth-child(2) {
  font-size: 0.8rem;
}
.clubitemtop > :nth-child(2) > div:nth-child(2) > span:nth-child(1) {
  color: #757575a2;
  padding-right: 0.5rem;
}
.clubitemtop > :nth-child(2) > div:nth-child(2) > span:nth-child(2) {
  color: #32c7d8;
  font-weight: bold;
}
.clubitemtop > :nth-child(3) {
  width: 20%;
  height: 100%;
  display: flex;
  color: #757575a2;
  align-items: center;
  justify-content: center;
}
.clubitemtop > :nth-child(3) > span {
  width: 50%;
}
.clubitemtop > :nth-child(3) > img {
  width: 30%;
  height: 45%;
}
.clubmoddle {
  width: 100%;
  height: 70%;
  display: flex;
  justify-content: space-between;
  text-align: left;
  padding-top:2%;
}
.clubmoddle > div:first-child {
  width: 70%;
  padding-left:5%;
  color:#000;
  font-weight: 600;
  font-size: 1rem;
}
.clubmoddle>div:nth-child(2){
    width:30%;
}
.clubmoddle>div:nth-child(2) img{
    width:100%;
    height: 80%;
    padding-right:5%;
}
</style>
