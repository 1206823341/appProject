<template>
  <div>
    <nav class="mui-bar mui-bar-tab">
      <a v-for="(item,i) of icons" :key="i" :data-i="i" class="mui-tab-item" @click="turn">
        <span :data-i="i" class="mui-icon">
          <img :data-i="i" class="icons" :src="i==s?item.url2:item.url1" alt>
        </span>
        <span :data-i="i" class="mui-tab-label" :class="i==s?'active':''">{{item.name}}</span>
      </a>
    </nav>
  </div>
</template>
<script>
export default {
  created(){
    this.s=this.$store.state.s;
  },
  data() {
    return {
      i:"",
      s:"",
      icons: [
        {
          name: "新闻",
          href: "/index",
          url1: "img/tabbar_btn_news_normal.png",
          url2: "img/tabbar_btn_news_selected.png",
        },
        {
          name: "游戏",
          href: "/game",
          url1: "img/tabbar_btn_game_normal.png",
          url2: "img/tabbar_btn_game_selected.png",
        },
        {
          name: "",
          href: "#",
          url1: "img/tababr_btn_add_normal.png",
          url2: "img/tababr_btn_add_selected.png",
        },
        {
          name: "俱乐部",
          href: "/club",
          url1: "img/tabbar_btn_circle_normal.png",
          url2: "img/tabbar_btn_circle_selected.png",
        },
        {
          name: "我的",
          href: "/user",
          url1: "img/tabbar_btn_me_normal.png",
          url2: "img/tabbar_btn_me_selected.png",
        }
      ]
    };
  },
  methods: {
    turn(e){
      this.i=e.target.dataset.i;
      this.$router.push(this.icons[this.i].href);
    }
  },
  beforeMount(){
    if(!window.localStorage.getItem("islogin")){
      this.icons[4].href="/login"
    }
  }
};
</script>
<style>
#app .mui-icon img {
  width: 100%;
}
* {
  touch-action:pan-y;
}
.mui-bar{
  box-shadow:none !important;
}
.active{
  color:#2abaca
}
</style>
