<template>
  <main class="main-contents">
    <div class="edge-outer">
      <div class="edge-inner">
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
  export default {
    name: 'home',
    data () {
      return {
        msg: 'Welcome to Your Vue.js App'
      }
    }
  }
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="scss" scoped src="../scss/Home.scss"></style>
