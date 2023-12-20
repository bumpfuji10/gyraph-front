<template>
  <div class="base-background">
    <div class="signup-header-container">
      <h1 class="base-center-logo">
        <router-link to="/signup">Gyraph</router-link>
      </h1>
    </div>
    <div class="base-center-text">
      新規登録
    </div>
    <main class="base-main-zone">
      <div class="signup-grid">
        <label for="" class="signup-label">
          メールアドレス
        </label>
        <form action="">
          <input type="text" class="signup-form-input">
        </form>
      </div>
      <div class="signup-grid">
        <label for="" class="signup-label">
          パスワード
        </label>
        <form action="">
          <input type="text" class="signup-form-input">
        </form>
      </div>
      <button class="signup-button">
        登録
      </button>
      <div class="redirect-login">
        <router-link to="/login" class="redirect-login">ログインはこちら</router-link>
      </div>
    </main>
  </div>
</template>

<script lang="ts">
export default {
  name: 'Signup',
}
</script>
