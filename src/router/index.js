import Vue from 'vue'
import Router from 'vue-router'
import Main from '@/components/login/main'  //主页面
import Welcome from '@/components/login/welcome'     //欢迎页面
import Car from '@/components/car/car'                  //



import "../assets/css/basis.css"
Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'main',
      component: Main
    },
      {
          path: '/welcome',
          name: 'welcome',
          component: Welcome
      },
      {
          path: '/car',
          name: 'car',
          component: Car
      }
  ]
})
