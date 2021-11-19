import Vue from 'vue'
import VueRouter from 'vue-router'
import Login from '../components/Login.vue'
import ElementUI from '../components/ElementUI.vue'
import Home from '../components/Home.vue'
import User from '../components/user/user.vue'
import Item from '../components/items/Item.vue'
import ItemCat from '../components/items/ItemCat.vue'
import addItem from '../components/items/addItem.vue'

//使用路由机制
Vue.use(VueRouter)
const routes = [
  {path: '/', redirect: '/login'},
  {path: '/login', component: Login},
  {path: '/elementUI', component: ElementUI},
  {path:'/home',component:Home,
    children:[
      {path:'/user',component:User},
      {path:'/Item',component:Item},
      {path:'/Item/addItem',component:addItem},
      {path:'/ItemCat',component:ItemCat
     },
    ]
  }


]

//路由导航守卫!!!!!!!

const router = new VueRouter({
  routes
})
/*to:路由跳转网址
*:from:路由从哪里来
*next:放行
*检查是否有token
* 有
 * */
router.beforeEach((to,from,next)=>{


  if(to.path==="/login"){
    return next()
  }
  let token=window.sessionStorage.getItem("token")
  // if(token!===null&&token.length>0){
  if(token){
    return next()
  }
  next("/login")


})
export default router
