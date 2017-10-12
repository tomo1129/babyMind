<template>
  <header class="header">
    <div class="edge-outer">
      <div class="edge-inner">
        <h1>みんなの気持ち</h1>
        <h2>〜 子育てをめぐるみんなの掲示板 〜</h2>
        <nav class="header-nav">
          <ul class="header-menu">
            <li class="header-menu-list"><a href="/mother" :class="{active : $route.params.relation === 'mother'}">お母さんの気持ち</a></li>
            <li class="header-menu-list"><a href="/father" :class="{active : $route.params.relation === 'father'}">お父さんの気持ち</a></li>
            <li class="header-menu-list"><a href="/fetal" :class="{active : $route.params.relation === 'fetal'}">胎児の気持ち</a></li>
            <li class="header-menu-list"><a href="/baby" :class="{active : $route.params.relation === 'baby'}">乳児の気持ち</a></li>
            <li class="header-menu-list"><a href="/grandpa" :class="{active : $route.params.relation === 'grandpa'}">おじいちゃんの気持ち</a></li>
            <li class="header-menu-list"><a href="/grandma" :class="{active : $route.params.relation === 'grandma'}">おばあちゃんの気持ち</a></li>
          </ul>
        </nav>
        <p class="to-message">お母さん、いつもありがとう</p>
        <p class="topic-list">
          <a href="" class="topic" v-if="nowTopic === 0">テストテストテストテストテストテストテストテストテストテストテスト</a>
          <a href="" class="topic" v-if="nowTopic === 1">テスト2テスト2テスト2テスト2テスト2テスト2テスト2テスト2テスト2テスト2テスト2テスト2テスト2テスト2テスト2テスト2テスト2テスト2テスト2テスト2テスト2テスト2テスト2テスト2テスト2テスト2テスト2テスト2テスト2テスト2テスト2テスト2テスト2</a>
          <a href="" class="topic" v-if="nowTopic === 2">テスト3テスト3テスト3テスト3テスト3テスト3テスト3テスト3テスト3テスト</a>
          <a href="" class="topic" v-if="nowTopic === 3">テスト4テスト4テスト4テスト4テスト4テスト4テスト4テスト4テスト4テスト4テスト4テスト4テスト4テスト4テスト4テスト4テスト4テスト4テスト4テスト4テスト4テスト4テスト4テスト4テスト4テスト4テスト4テスト4テスト4テスト4テスト4テスト4テスト4</a>
        </p>
      </div>
    </div>
  </header>
</template>

<script>
export default {
  name: 'common-header',
  data () {
    return {
      nowTopic: 0,
      showTopic: 0
    }
  },
  mounted: function () {
    var vm = this
    setInterval(function () {
      vm.showTopic += 1
      vm.nowTopic = vm.showTopic % 4
    }, 5000)
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="scss" scoped src="../scss/CommonHeader.scss"></style>
