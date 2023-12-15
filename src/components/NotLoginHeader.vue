<template>
  <div>
    <header>
      <div class="logo-container">
        <nav class="gyraph-logo" @click="hoge">
          Gyraph
        </nav>
        <div class="loginAndNewAccount">
          <button class="login">
            ログイン
          </button>
          <button class="new-account">
            新規登録
          </button>
        </div>
      </div>
    </header>
  </div>
</template>

<script lang="ts">
export default {
  name: 'Header',
  methods: {
    hoge() {
      console.log("hoge")
    }
  }
}
</script>
