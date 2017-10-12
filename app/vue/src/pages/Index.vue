<template>
  <div class="l-global" :class="$route.params.relation">
    <common-header></common-header>
    <div class="main-article clearfix">
      <router-view></router-view>
      <common-sidebar></common-sidebar>
    </div>
    <common-footer></common-footer>
  </div>
</template>

<script>
import CommonHeader from '../components/vue/CommonHeader'
import CommonSidebar from '../components/vue/CommonSidebar'
import CommonFooter from '../components/vue/CommonFooter'
import axios from 'axios'
import store from '../vuex'

export default {
  name: 'index',
  components: {
    CommonHeader,
    CommonSidebar,
    CommonFooter
  },
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  },
  created () {
    axios.get('/api/initial', {})
    .then(function (res) {
      store.dispatch('login/setCsrfToken', res.data.csrfToken)
      if (res.data.user !== null) {
        store.dispatch('login/setLoginStatus', true)
        store.dispatch('login/setUser', res.data.user)
      } else {
        store.dispatch('login/setLoginStatus', false)
      }
    })
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="scss">
  @import "../foundation/Base";
  @import "../foundation/Layout";
  @import "../foundation/Reset";
  @import "../foundation/Relation";
</style>
