<template>
  <main class="main-contents">
    <div class="edge-outer">
      <div class="edge-inner">

        <section class="create-thread">

          <p class="btn-area">
            <a :href="'/' + $route.params.relation + '/create'" class="btn1">新規スレッド作成</a>
          </p>

        </section>

        <section class="pickup">

          <div class="thread-wrap">
            <dl class="thread-list">
              <dt>&#9830;人気スレッド</dt>
              <dd><a href="">テストテストテストテストテストテストテストテストテストテスト</a></dd>
              <dd><a href="">テストテストテストテストテストテストテストテストテストテスト</a></dd>
              <dd><a href="">テストテストテストテストテストテストテストテストテストテスト</a></dd>
            </dl>
          </div>

          <div class="thread-wrap">
            <dl class="thread-list">
              <dt>&#9830;新着スレッド</dt>
              <dd><a href="">テストテストテストテストテストテストテストテストテストテスト</a></dd>
              <dd><a href="">テストテストテストテストテストテストテストテストテストテスト</a></dd>
              <dd><a href="">テストテストテストテストテストテストテストテストテストテスト</a></dd>
            </dl>
          </div>

        </section>
      </div>
    </div>
  </main>
</template>

<script>
import axios from 'axios'

export default {
  name: 'home',
  data () {
    return {
      newThreads: null
    }
  },
  methods: {
    signup () {
      axios.post('/api/thread/get_new', {})
        .then(res => {
          if (res.statusText === 'OK') {
//            うまくいったらloginのメソッド
            console.log(res)
          }
        })
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="scss" scoped src="../scss/Home.scss"></style>
