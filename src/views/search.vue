<template>
  <div class="search">
    <header id="header" class="mui-bar">
      <div class="top">
        <img src="img/navbar_btn_back_selected.png" alt @click="back">
        <div>
          <input type="text" placeholder="请输入内容" v-model="input">
        </div>
        <img src="img/navbar_btn_search_normal.png" alt @click="search">
      </div>
    </header>
    <div class="hot" v-show="show">
      <div>热词</div>
      <div class="hotitem" v-for="(item,i) in searchlist" :key="i" v-text="item" @click="txt  "></div>
    </div>
    <div class v-if="!show">
      <div class="not" v-if="found==1">^_^暂无此资讯哦~</div>
      <div class="yes box animated zoomIn" v-else-if="found==2" v-for="(item,i) in inf" :key="i">
        <div>
          <div v-text="item.title"></div>
          <div v-text="item.stitle"></div>
        </div>
        <div>
          <img :src="'http://127.0.0.1:3000/img/search/'+item.img" alt>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      show: true,
      inf: {},
      input: "",
      found: "",
      searchlist:["怪物猎人","皮卡丘","精灵宝可梦","大侦探","世界"]
    };
  },
  methods: {
    search() {
      var url = "http://127.0.0.1:3000/search?title=" + this.input;
      this.axios.get(url).then(res => {
        if (!this.input) {
          this.inf = "";
          this.found = 1;
          
        } else {
          if (res.data.code == -1) {
            this.found = 1;
            this.show=false;
          } else {
            this.inf = res.data.result;
            this.found = 2;
            this.show=false;
          }
        }
      });
    },
    back(){
        this.$router.go(-1)
    },
    txt(e){
      console.log(e)
        this.input=e.target.innerText
    }
  },
  watch:{
      input:function(){
          if(!this.input){
              this.show=true
          }
      }   
  }
};
</script>

<style scoped>
/*顶部*/
.top {
  height: 50px;
  background: #2abaca !important;
  position: relative;
  display: flex;
  align-items: center;
  justify-content: space-around;
}
.mui-bar {
  padding: 0 !important;
}
.top > img:nth-child(1) {
  width: 8%;
  height: 60%;
}
.top > img:nth-child(3) {
  width: 8%;
  height: 60%;
}
.top > div:nth-child(2) {
  width: 90;
  height: 75%;
  padding-left: 2%;
}
/* 热词 */
.hot {
  position: relative;
  top: 59px;
  display: flex;
  flex-flow: column;
  text-indent: 2%;
  animation: pulse 1s;
}
.hot > div:first-child {
  color: rgb(139, 139, 139);
  text-align: left;
  border-bottom: 1px solid rgb(156, 156, 156, 0.4);
  padding-bottom: 2%;
  font-size: 0.8rem;
}
.hotitem {
  text-align: left;
  color: #000;
  font-weight: 500;
  font-size: 1rem;
  border-bottom: 1px solid rgb(156, 156, 156, 0.4);
  padding: 3% 0 3% 0;
}
/* 无法查看 */
.not {
  position: relative;
  top: 65px;
}
/* 有数据可看 */
.yes {
  position: relative;
  top: 60px;
  display: flex;
  height: 120px;
  background: #fff;
  align-items: center;
  width: 95%;
  margin: 0 auto;
  padding: 2%;
  box-shadow: 2px 2px 7px rgb(107, 107, 107);
  margin-bottom: 3%;
}
.yes > :first-child {
  display: flex;
  height: 100%;
  flex-flow: column;
  justify-content: space-between;
  width: 70%;
}
.yes > :first-child > :first-child {
  height: 35%;
  font-size: 0.8rem;
  color: #000;
  text-align: left;
  font-weight: 600;
}
.yes > :first-child > :nth-child(2) {
  height: 60%;
  font-size: 0.2rem;
  text-align: left;
  color: rgb(78, 78, 78, 0.8);
}
.yes > :nth-child(2) {
  width: 30%;
}
.yes > :nth-child(2) img {
  width: 95%;
}
</style>
