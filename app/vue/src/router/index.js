import Vue from 'vue'
import Router from 'vue-router'
import Index from '@/pages/Index'
import Home from '@/pages/vue/Home'
import Signup from '@/pages/vue/Signup'
import Mypage from '@/pages/vue/mypage'

Vue.use(Router)

export default new Router({
  mode: 'history',
  routes: [
    {
      path: '/:relation',
      component: Index,
      children: [
        {
          path: '',
          component: Home
        },
        {
          path: 'signup',
          component: Signup
        },
        {
          path: 'mypage',
          component: Mypage
        }
      ]
    }
  ]
})
