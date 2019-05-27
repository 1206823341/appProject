import Vue from 'vue'
import Router from 'vue-router'
import index from './views/index.vue'
import game from './views/game.vue'
import club from './views/club.vue'
import user from './views/user.vue'
import search from './views/search.vue'
import notfound from './views/notfound.vue'
import login from './views/login.vue'



Vue.use(Router)

export default new Router({
  routes: [
    {path:"/index",component:index},
    {path:"/game",component:game},
    {path:"/club",component:club},
    {path:"/user",component:user},
    {path:"/search",component:search},
    {path:"/login",component:login},
    {path:"*",component:notfound}
  ]
})
