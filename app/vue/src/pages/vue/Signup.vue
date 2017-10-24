<template>
  <main class="main-contents">
    <div class="edge-outer">
      <div class="edge-inner">
        <section class="signup-section">

          <p class="guide">以下のフォームを入力してください。</p>
          <input class="input1" type="text" v-model="email" placeholder="メールアドレス"/>
          <input class="input1" type="password" v-model="password" placeholder="パスワード" />
          <input class="input1" type="password" v-model="passwordConfirm" placeholder="パスワード再入力" />
          <p class="btn-area">
            <a @click="signup()" class="btn1">会員登録</a>
          </p>

        </section>
      </div>
    </div>
  </main>
</template>

<script>
import axios from 'axios'
import store from '../../vuex'

export default {
  name: 'signup',
  data () {
    return {
      email: null,
      password: null,
      passwordConfirm: null
    }
  },
  methods: {
    signup () {
      axios.post('/api/signup', {
        user: {
          email: this.email,
          password: this.password,
          passwordConfirm: this.passwordConfirm
        }
      })
        .then(res => {
          if (res.statusText === 'OK') {
//            うまくいったらloginのメソッド
            console.log(res)
          }
        })
    },
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="scss" scoped src="../scss/Signup.scss"></style>
