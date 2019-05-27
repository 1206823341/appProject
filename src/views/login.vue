<template>
  <div class="login">
    <!-- 顶部 -->
    <header id="header" class="mui-bar">
      <div class="top">
        <img src="img/navbar_btn_store_normal.png" alt>
        <span>我的</span>
        <img src="img/navbar_btn_settings_normal.png" alt>
      </div>
    </header>
    <div class="middle">
      <div class="inp">
        <div>
          <img src="../../public/img/login/register_btn_user_selected.png" alt>
        </div>
        <input type="text" placeholder="用户名" v-model="uname">
      </div>
      <div class="inp">
        <div>
          <img src="../../public/img/login/register_btn_password_selected.png" alt>
        </div>
        <input type="password" placeholder="密码" v-model="upwd">
      </div>
      <button @click="login">登 录</button>
    </div>
    <my-footer></my-footer>
  </div>
</template>

<script>
import { Toast } from "mint-ui";
import myFooter from "@/components/footer.vue";
import { setInterval } from "timers";
export default {
  data() {
    return {
      uname: "",
      upwd: ""
    };
  },
  components: {
    myFooter
  },
  methods: {
    login() {
      var url =
        "http://127.0.0.1:3000/login?uname=" +
        this.uname +
        "&upwd=" +
        this.upwd;
      if (!this.uname.length) {
        Toast("用户名不能为空");
        return;
      } else if (!this.upwd.length) {
        Toast("密码不能为空");
        return;
      } else {
        this.axios.post(url).then(res => {
          var code = res.data.code;
          if (code == -1) {
            Toast({
              message: "用户名或密码错误",
              position: "bottom",
              duration: 1500
            });
          } else {
            Toast({
              message: "登录成功",
              duration: 1500
            });
            var lock = window.localStorage;
            var username = res.data.result[0].username;
            var headimg = res.data.result[0].headimg;
            lock.setItem("islogin", true);
            lock.setItem("headimg", headimg);
            lock.setItem("username", username);
	    setTimeout(()=>{
            this.$router.push("/user");
	    
	    },300)
          }
        });
      }
    }
  },
  created() {
    this.$store.state.s = 4;
  }
};
</script>

<style scoped>
/* 顶部 */

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
/* 登录中部 */
.middle {
  position: relative;
  top: 140px;
  display: flex;
  flex-flow: column;
  width: 100%;
  height: 400px;
}
.inp {
  display: flex;
  padding-bottom: 5%;
  padding: 5%;
}
.inp > div {
  width: 20%;
  display: flex;
  justify-items: right;
  text-align: right;
}
.inp > div > img {
  height: 60%;
  width: 60%;
}
.inp input {
  outline: none;
  border: none;
  border-bottom: 1px solid #000;
  background: transparent;
}
.middle button {
  height: 15%;
  font-size: 1.5rem;
  background: rgba(21, 165, 40, 0.685);
  color: #fff;
  width: 89%;
  margin: 0 auto;
}
</style>
