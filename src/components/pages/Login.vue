<template>
  <div class="base-background">
    <div class="login-header-container">
      <h1 class="base-center-logo">
        <router-link to="/">Gyraph</router-link>
      </h1>
    </div>
    <div class="base-center-text">
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
      <div class="redirect-password-forgot">
        <router-link to="/signup">パスワードをお忘れの方はこちら</router-link>
      </div>
      <div class="redirect-signup">
        <router-link to="/signup" class="redirect-signup">登録はこちら</router-link>
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
