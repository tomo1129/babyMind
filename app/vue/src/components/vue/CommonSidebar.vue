<template>
  <div class="sidebar">
    <div class="edge-outer">
      <div class="edge-inner">

        <section>

          <div class="login-area" v-if="$store.getters['login/getLoginStatus'] === false">
            <input class="input1" type="text" v-model="email" placeholder="メールアドレス" />
            <input class="input1" type="password" v-model="password" placeholder="パスワード" />
            <p class="btn-area">
              <a @click="login()" class="btn1">ログイン</a>
            </p>
            <a :href="'/' + $route.params.relation + '/signup'">会員登録がまだの方はこちら</a>
          </div>
          <div class="login-area" v-if="$store.getters['login/getLoginStatus'] === true">
            <p class="btn-area">
              <a :href="'/' + $route.params.relation + '/mypage'" class="btn1">マイページ</a>
              <a @click="logout()" class="btn1">ログアウト</a>
            </p>
          </div>

          <dl class="thread-list">
            <dt>&#9830;人気スレッド</dt>
            <dd><a href="">テストテストテストテストテストテストテストテストテストテスト</a></dd>
            <dd><a href="">テストテストテストテストテストテストテストテストテストテスト</a></dd>
            <dd><a href="">テストテストテストテストテストテストテストテストテストテスト</a></dd>
          </dl>

          <dl class="thread-list">
            <dt>&#9830;人気アンケート</dt>
            <dd><a href="">テストテストテストテストテストテストテストテストテストテスト</a></dd>
            <dd><a href="">テストテストテストテストテストテストテストテストテストテスト</a></dd>
            <dd><a href="">テストテストテストテストテストテストテストテストテストテスト</a></dd>
          </dl>

        </section>

      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios'
import store from '../../vuex'
import VueCookies from 'vue-cookies'
import Vue from 'vue'

Vue.use(VueCookies)
export default {
  name: 'common-sidebar',
  data () {
    return {
      email: null,
      password: null
    }
  },
  methods: {
// TODO vue-facebook-signin-buttonを使ったログインボタンまで入れる
    login () {
      axios.post('/api/user_token', {
        auth: {
          email: this.email,
          password: this.password
        }
      })
      .then(res => {
        if (res.statusText === 'Created') {
          store.dispatch('login/setLoginStatus', true)
          this.email = null
          this.password = null
        }
      })
    },
    logout () {
      axios.post('/api/signin/logout', {})
        .then(res => {
          if (res.statusText === 'No Content') {
            store.dispatch('login/setLoginStatus', false)
          }
        })
        .catch(e => {
          store.dispatch('login/setLoginStatus', false)
          throw e
        })
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="scss" scoped src="../scss/CommonSidebar.scss"></style>
