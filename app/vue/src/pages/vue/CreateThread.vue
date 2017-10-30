<template>
  <main class="main-contents">
    <div class="edge-outer">
      <div class="edge-inner">
        <section class="thread">

          <div class="create-thread-wrap">
            <p class="create-thread-header">1ユーザにつき1日10スレッドまで作成できます。</p>
            <p class="create-thread">
              <label for="thread-title">スレッドタイトル</label>
              <input name="thread-title" id="thread-title" v-model="threadTitle" class="input1"/>
            </p>
            <p class="create-thread">
              <label for="thread-body">スレッド詳細</label>
              <textarea name="thread-body" id="thread-body" v-model="threadBody" class="textarea1"></textarea>
            </p>
            <p class="btn-area">
              <a @click="saveThread()" class="btn1">公開</a>
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
  name: 'createThread',
  data () {
    return {
      threadTitle: null,
      threadBody: null
    }
  },
  methods: {
    saveThread () {
      axios.post('/api/thread', {
        threadTitle: this.threadTitle,
        threadBody: this.threadBody
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
<style lang="scss" scoped src="../scss/CreateThread.scss"></style>
