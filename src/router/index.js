import Vue from 'vue'
import Router from 'vue-router'
import Main from '@/components/login/main'  //主页面
import Welcome from '@/components/login/welcome'     //欢迎页面
import Admin from '@/components/admin/admin'        //管理员列表页
import User from '@/components/user/user'        //用户列表页
import Product from '@/components/product/product'         //产品展示
import AddProduct from '@/components/product/addproduct'         //产品 添加
import ChangeProduct from '@/components/product/changeproduct'         //产品 修改
import DeleteProduct from '@/components/product/deleteproduct'         //产品 删除
import Banner from '@/components/banner/banner'         //banner展示
import AddBanner from '@/components/banner/addbanner'         //banner 增加
import DeleteBanner from '@/components/banner/deletebanner'         //banner 删除
//


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
      //管理员
      {
          path: '/admin',
          name: 'admin',
          component: Admin
      },
      //用户
      {
          path: '/user',
          name: 'user',
          component: User
      },
      //产品展示
      {
          path: '/product',
          name: 'product',
          component: Product
      },
      //产品添加
      {
          path: '/addproduct',
          name: 'addproduct',
          component: AddProduct
      },
      //产品 修改
      {
          path: '/changeproduct',
          name: 'changeproduct',
          component: ChangeProduct
      },
      //产品 删除
      {
          path: '/deleteproduct',
          name: 'deleteproduct',
          component: DeleteProduct
      },
      //banner 展示
      {
          path: '/banner',
          name: 'banner',
          component: Banner
      },
      //banner 增加
      {
          path: '/addbanner',
          name: 'addbanner',
          component: AddBanner
      },
      //banner 删除
      {
          path: '/deletebanner',
          name: 'deletebanner',
          component: DeleteBanner
      },
  ]
})
