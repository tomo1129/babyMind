<template>
  <main class="main-contents">
    <div class="edge-outer">
      <div class="edge-inner">
        <section class="mypage">

          <div class="user-data-wrap">
            <p class="user-data-header">各ページごとに別々のユーザ名を設定することができます。</p>
            <p class="user-data">
              <label for="mother-name">お母さんページのユーザ名</label>
              <input name="mother-name" id="mother-name" v-model="motherName" class="input1"/>
            </p>
            <p class="user-data">
              <label for="father-name">お父さんページのユーザ名</label>
              <input name="father-name" id="father-name" v-model="fatherName" class="input1"/>
            </p>
            <p class="user-data">
              <label for="fetal-name">胎児ページのユーザ名</label>
              <input name="fetal-name" id="fetal-name" v-model="fetalName" class="input1"/>
            </p>
            <p class="user-data">
              <label for="baby-name">乳児ページのユーザ名</label>
               <input name="baby-name" id="baby-name" v-model="babyName" class="input1"/>
            </p>
            <p class="user-data">
              <label for="grandpa-name">おじいちゃんページのユーザ名</label>
              <input name="grandpa-name" id="grandpa-name" v-model="grandpaName" class="input1"/>
            </p>
            <p class="user-data">
              <label for="grandma-name">おばあちゃんページのユーザ名</label>
              <input name="grandma-name" id="grandma-name" v-model="grandmaName" class="input1"/>
            </p>
            <p class="btn-area">
              <a @click="saveName()" class="btn1">ユーザ名の変更</a>
            </p>
          </div>

          <div class="user-data-wrap">
            <p class="user-data-header">メールアドレスを変更することができます。</p>
            <p class="user-data">
              <label for="email">メールアドレス</label>
              <input name="email" id="email" v-model="email" class="input1"/>
            </p>
            <p class="btn-area">
              <a @click="saveEmail()" class="btn1">メールアドレスの変更</a>
            </p>
          </div>

          <div class="user-data-wrap">
            <p class="user-data-header">パスワードを変更することができます。</p>
            <p class="user-data">
              <label for="password">新パスワード</label>
              <input name="password" id="password" v-model="password" class="input1"/>
            </p>
            <p class="user-data">
              <label for="password-confirm">新パスワード再入力</label>
              <input name="password-confirm" id="password-confirm" v-model="passwordConfirm" class="input1"/>
            </p>
            <p class="user-data">
              <label for="password-old">旧パスワード</label>
              <input name="password-old" id="password-old" v-model="passwordOld" class="input1"/>
            </p>
            <p class="btn-area">
              <a @click="savePassword()" class="btn1">パスワードの変更</a>
            </p>
          </div>

        </section>
      </div>
    </div>
  </main>
</template>

<script>
import axios from 'axios'

export default {
  name: 'mypage',
  data () {
    return {
      motherName: null,
      fatherName: null,
      fetalName: null,
      babyName: null,
      grandpaName: null,
      grandmaName: null,
      email: null,
      password: null,
      passwordConfirm: null,
      passwordOld: null
    }
  },
  created () {
    axios.get('/api/users', {})
    .then(res => {
      if (res.statusText === 'OK') {
        this.motherName = res.data[0].name
        this.fatherName = res.data[1].name
        this.fetalName = res.data[2].name
        this.babyName = res.data[3].name
        this.grandpaName = res.data[4].name
        this.grandmaName = res.data[5].name
//        this.fatherName = res.data[1].name
//        this.fatherName = res.data[1].name
//        this.fatherName = res.data[1].name
      }
    })
  },
  methods: {
    saveName () {
      axios.post('/api/users/save/name', {
        motherName: this.motherName,
        fatherName: this.fatherName,
        fetalName: this.fetalName,
        babyName: this.babyName,
        grandpaName: this.grandpaName,
        grandmaName: this.grandmaName
      })
      .then(res => {
        if (res.statusText === 'OK') {
          console.log()
        }
      })
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="scss" scoped src="../scss/Mypage.scss"></style>
