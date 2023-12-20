<template>
  <div class="base-background">
    <div class="login-header-container">
      <h1 class="baseCenterLogo">
        <router-link to="/">Gyraph</router-link>
      </h1>
    </div>
    <div class="baseCenterText">
      ログイン
    </div>
    <main class="base-main-zone">
      <div class="login-grid">
        <label for="" class="login-label">
          メールアドレス
        </label>
        <form action="">
          <input type="text" class="login-form-input">
        </form>
      </div>
      <div class="login-grid">
        <label for="" class="login-label">
          パスワード
        </label>
        <form action="">
          <input type="text" class="login-form-input">
        </form>
      </div>
      <button class="login-button">
        ログイン
      </button>
      <div>
        <router-link to="/signup" class="redirectSignup">登録はこちら</router-link>
      </div>
    </main>
  </div>
</template>

<script lang="ts">
import NotLoginHeader from '../NotLoginHeader.vue';

export default {
  name: 'Login',
  components: {
    NotLoginHeader
  },
  methods: {
    hoge() {
      console.log("hoge");
    }
  }
}
</script>
