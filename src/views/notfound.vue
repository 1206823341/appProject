<template>
  <div class="nofound">
    <div>404 NotFound</div>
    <div>该页面还在开发中哦^-^</div>
    <button @click="back">请点击此处返回上一页~</button>
  </div>
</template>

<script>
export default {
  data() {
    return {};
  },
  methods:{
      back(){
          this.$router.go(-1)
      }
  }
};
</script>

<style scoped>
.nofound div{
    width:90%;
    height: 200px;
    margin: 0 auto;
}
</style>
