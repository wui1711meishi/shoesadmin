import Vue from 'vue'
import Router from 'vue-router'
import Main from '@/components/login/main'
import Car from '@/components/car/car'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'main',
      component: Main
    },
      {
          path: '/car',
          name: 'car',
          component: Car
      }
  ]
})
