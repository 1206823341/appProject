import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import Mint from 'mint-ui'
import axios from 'axios'
import animated from 'animate.css'
import './lib/mui/css/mui.css'
import './lib/mui/css/icons-extra.css'

import 'mint-ui/lib/style.css'

Vue.use(animated)
Vue.prototype.axios = axios
Vue.use(Mint);
Vue.config.productionTip = false


new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
