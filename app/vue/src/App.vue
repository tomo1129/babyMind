<template>
  <router-view></router-view>
</template>

<script>
import VueCookies from 'vue-cookies'
import Vue from 'vue'
import axios from 'axios'

Vue.use(VueCookies)

export default {
  name: 'app',
  beforeCreate () {
    axios.defaults.headers['X-Requested-With'] = 'XMLHttpRequest'
    axios.defaults.headers['X-From'] = location.href
    axios.defaults.headers['Authorization'] = this.$cookies.get('minnanoKimochi')
  }
}
</script>
