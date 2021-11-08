import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from './components/HelloWorld.vue'
import Signup from './components/Signup.vue'
import UserDetailPage from './components/UserDetailPage.vue'

Vue.use(VueRouter)

const routes = [
  {path: '/', component: Home},
  {path: '/signup', component: Signup},
  {path: '/users/:id(\\d+)', name: 'UserDetailPage',component: UserDetailPage},
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
