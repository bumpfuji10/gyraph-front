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
      <Form>
        <div class="login-grid">
          <div class="input-name-and-validate">
            <label for="" class="login-label">
              メールアドレス
            </label>
          </div>
          <Field name="email" type="text" class="login-form-input" rules="required|email" placeholder="メールアドレスを入力" />
          <ErrorMessage name="email" class="input-error-message"/>
        </div>
        <div class="login-grid">
          <div class="input-name-and-validate">
            <label for="" class="login-label">
              パスワード
            </label>
          </div>
          <Field name="password" type="text" class="login-form-input" rules="required" placeholder="パスワードを入力" />
          <ErrorMessage name="password" class="input-error-message"/>
        </div>
        <button @submit="submitLogin" :class="isFormValid ? 'login-button' : 'not-input-button'" :disabled="!isFormValid">
          ログイン
        </button>
      </Form>
      <div class="redirect-password-forgot">
        <router-link to="/signup">パスワードをお忘れの方はこちら</router-link>
      </div>
      <div class="redirect-signup">
        <router-link to="/signup">登録はこちら</router-link>
      </div>
    </main>
  </div>
</template>

<script lang="ts">
import { ErrorMessage, Field, Form } from 'vee-validate';
import NotLoginHeader from '../NotLoginHeader.vue';
import './../../customValidations';

export default {
  name: 'Login',
  components: {
    NotLoginHeader,
    ErrorMessage,
    Field,
    Form
  },
  methods: {
    isFormValid() {
      return true;
    },
    async submitLogin() {
      console.log("login!")
    }
  }
}
</script>
