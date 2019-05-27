<template>
  <div class="user">
    <!-- 顶部 -->
    <header id="header" class="mui-bar">
      <div class="top">
        <img src="img/navbar_btn_store_normal.png" alt>
        <span>我的</span>
        <img src="img/navbar_btn_settings_normal.png" alt>
      </div>
    </header>
    <!-- user -->
    <div class="userinf">
      <div class="userhead">
        <img :src="'http://127.0.0.1:3000/img/'+headimg">
      </div>
      <div class="userinfc">
        <div>
          <img src="../../public/img/20190510104246.png" alt>
        </div>
        <div>82.00%</div>
        <div>
          <span v-text="username"></span>
          <img src="../../public/img/icon_sex_secret.png" height="100%" alt>
        </div>
        <div class="signin">
          <div>
            <img src="../../public/img/icon_badge_normal.png" alt>
            <span>0枚徽章</span>
          </div>
          <div>
            <img src="../../public/img/icon_signed_normal.png" alt>
            <span>连续签到</span>
          </div>
        </div>
      </div>
      <div class="userinfb">
        <div>
          <div>0</div>
          <div>想玩</div>
        </div>
        <div>
          <div>0</div>
          <div>在玩</div>
        </div>
        <div>
          <div>0</div>
          <div>弃坑</div>
        </div>
        <div>
          <div>0</div>
          <div>通关</div>
        </div>
      </div>
    </div>
    <!-- 关注 -->
    <div class="attention">
      <div>
        <div>2</div>
        <div>关注</div>
      </div>
      <div>
        <div>3895</div>
        <div>被关注</div>
      </div>
    </div>
    <!-- 操作 -->
    <div class="operate">
      <ul class="mui-table-view">
        <li v-for="(item,i) of operateitem" :key="i" class="mui-table-view-cell">
          <a class="mui-navigate-right">
            <div class="operateitem">
              <img :src="item.img" alt>
              <span v-text="item.txt"></span>
            </div>
          </a>
        </li>
      </ul>
    </div>
    <!-- 操作2 -->
    <div class="operate2">
      <ul class="mui-table-view">
        <li v-for="(item,i) of operateitem2" :key="i" class="mui-table-view-cell">
          <a class="mui-navigate-right">
            <div class="operateitem">
              <img :src="item.img" alt>
              <span v-text="item.txt"></span>
            </div>
          </a>
        </li>
      </ul>
    </div>
    <!-- 退出登录 -->
    <button class="loginout" @click="loginout">退出登录</button>
    <my-footer></my-footer>
  </div>
</template>
<script>
import myFooter from "@/components/footer.vue";
import { MessageBox } from "mint-ui";
import { Toast } from "mint-ui";
export default {
  components: {
    myFooter
  },
  methods: {
    loginout() {
      MessageBox.confirm("确定执行此操作?", "提示")
        .then(action => {
          if (action == "confirm") {
            window.localStorage.removeItem("headimg");
            window.localStorage.removeItem("islogin");
            window.localStorage.removeItem("username");
            this.$router.push("/login");
          }
        })
        .catch(error => {
          if (error == "cancel") {
            Toast({ message: "取消退出", position: "bottom" });
          }
        });
    }
  },
  created() {
    this.$store.state.s = 4;
  },
  mounted() {
    this.headimg = window.localStorage.getItem("headimg");
    this.username = window.localStorage.getItem("username");
  },
  data() {
    return {
      operateitem: [
        { img: "img/icon_timeline_normal.png", txt: "时间线" },
        { img: "img/icon_collection_normal.png", txt: "我的收藏" },
        { img: "img/icon_message_normal.png", txt: "我的消息" },
        { img: "img/icon_subscribe_normal.png", txt: "我的订阅" },
        { img: "img/icon_tip_record_normal.png", txt: "打赏记录" },
        { img: "img/icon_draft_normal.png", txt: "草稿" }
      ],
      operateitem2: [
        { img: "img/icon_scan_normal.png", txt: "扫一扫" },
        { img: "img/icon_feedback_normal.png", txt: "意见反馈" }
      ],
      headimg: "",
      username: ""
    };
  }
};
</script>
<style scoped>
/* 顶部 */
.user {
  background: #fff;
  height: 950px;
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
/*user*/
.userinf {
  height: 300px;
  display: flex;
  flex-flow: column;
  position: relative;
  top: 49px;
  border-bottom: 2px solid rgba(73, 73, 73, 0.137);
}
.userhead {
  height: 35%;
  padding: 1% 0 0 0;
}
.userinfc {
  height: 40%;
  padding: 0 0 2% 0;
  display: flex;
  flex-flow: column;
}
.userinfb {
  height: 25%;
  display: flex;
  justify-content: center;
}
.userhead img {
  height: 100%;
}
.userinfc > div:nth-child(1) {
  height: 20%;
}
.userinfc > div:nth-child(2) {
  height: 25%;
  font-size: 0.2rem;
  font-weight: bold;
}
.userinfc > div:nth-child(3) {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 25%;
  font-size: 1.3rem;
  font-weight: bold;
  color: rgb(128, 128, 128);
}
.signin {
  height: 30%;
  display: flex;
  padding-top: 0.5%;
}
.signin > div:first-child {
  width: 50%;
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 0.8rem;
  font-weight: 600;
}
.signin > div:first-child img {
  height: 70%;
  width: 14%;
  padding-right: 5%;
}
.signin > div:nth-child(2) {
  width: 50%;
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 0.8rem;
  font-weight: 600;
  color: lightskyblue;
}
.signin > div:nth-child(2) img {
  height: 70%;
  width: 18%;
  padding-right: 5%;
}
.userinfb > :nth-child(1),
.userinfb > :nth-child(2),
.userinfb > :nth-child(3),
.userinfb > :nth-child(4) {
  display: flex;
  flex-flow: column;
  width: 25%;
  align-items: center;
  justify-content: center;
  flex-wrap: wrap-reverse;
}
.userinfb > :nth-child(1) div,
.userinfb > :nth-child(2) div,
.userinfb > :nth-child(3) div,
.userinfb > :nth-child(4) div {
  height: 50%;
  line-height: 2rem;
  font-weight: 600;
  color: rgba(104, 104, 104, 0.568);
}
/*关注*/
.attention {
  display: flex;
  height: 60px;
  position: relative;
  top: 53px;
  padding: 2% 0 2% 0;
  border-bottom: 2px solid rgba(73, 73, 73, 0.137);
  border-top: 2px solid rgba(73, 73, 73, 0.137);
}
.attention > div:nth-child(1),
.attention > div:nth-child(2) {
  width: 50%;
  display: flex;
  flex-flow: column;
}
.attention > div:nth-child(1) div,
.attention > div:nth-child(2) div {
  height: 50%;
  line-height: 1.5rem;
  color: #2abaca;
  font-weight: 600;
}
/* 操作 */
.operate {
  position: relative;
  top: 60px;
  text-align: left;
}
.operateitem {
  display: flex;
  font-weight: 600;
  font-size: 1rem;
}
.operateitem > img {
  width: 5%;
  height: 5%;
  margin-right: 10px;
}
/* 操作2 */
.operate2 {
  position: relative;
  top: 70px;
  text-align: left;
}
/* 退出登录 */
.loginout {
  position: relative;
  top: 80px;
  width: 100%;
  height: 5%;
  border: none;
  background: rgba(255, 0, 0, 0.712);
  color: #fff;
  border-radius: 0;
  font-weight: 600;
  font-size: 1.1rem;
}
</style>
