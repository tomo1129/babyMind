<template>
  <main class="main-contents">
    <div class="edge-outer">
      <div class="edge-inner">
        <section class="thread">

          <div class="create-thread-wrap">
            <p class="create-thread-header">1ユーザにつき1日10スレッドまで作成できます。</p>
            <p class="create-thread">
              <label for="thread-title">スレッドタイトル</label>
              <input name="thread-title" id="thread-title" v-model="title" class="input1"/>
            </p>
            <p class="create-thread">
              <label for="thread-body">スレッド詳細</label>
              <textarea name="thread-body" id="thread-body" v-model="body" class="textarea1"></textarea>
            </p>
            <p class="create-thread">
              <label for="thread-questionnaire">アンケートをつける</label>
              <input type="checkbox" name="thread-questionnaire" id="thread-questionnaire" v-model="questionnaire" class="checkbox1">
            </p>
            <p class="create-thread" v-if="questionnaire === true">
              <label>選択式</label>
              単一選択式<input type="radio" name="thread-question-type" value="1" v-model="questionType" class="radio1">
              複数回答式<input type="radio" name="thread-question-type" value="2" v-model="questionType" class="radio1">
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
      title: null,
      body: null,
      questionnaire: null,
      questionType: null,
      relation: this.$route.params.relation
    }
  },
  methods: {
    saveThread () {
      axios.post('/api/thread', {
        title: this.title,
        body: this.body,
        questionnaire: this.questionnaire,
        questionType: this.questionType,
        relation: this.relation
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
