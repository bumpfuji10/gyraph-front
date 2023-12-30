<template>
  <main class="base-main-zone">
    <Form :validationSchema="schema">
      <div class="signup-grid">
        <div class="input-name-and-validate">
          <label for="" class="signup-label">
            名前
          </label>
          <ErrorMessage name="name" class="input-error-message"/>
        </div>
        <Field name="name" class="signup-form-input" />
      </div>
      <div class="signup-grid">
        <div class="input-name-and-validate">
          <label for="" class="signup-label">
            メールアドレス
          </label>
          <ErrorMessage name="email" class="input-error-message" />
        </div>
        <Field name="email" class="signup-form-input" />
      </div>
      <div class="signup-grid">
        <div class="input-name-and-validate">
          <label for="" class="signup-label" >
            パスワード
          </label>
          <ErrorMessage name="password" class="input-error-message"/>
        </div>
        <Field name="password" class="signup-form-input" />
      </div>
      <button @click="submitForm" class="signup-button">
        <div v-if="isLoading" class="loading"></div>
        <span v-if="!isLoading">登録</span>
      </button>
    </Form>
  </main>
</template>

<script lang="ts">
  import { ErrorMessage, Field, Form } from 'vee-validate';
  export default {
    data() {
      return {
        isLoading: false
      }
    }
  }
  const schema = {
    name(value: any) {
      return value && value.trim() ? true : '名前は必須です';
    },
    email(value: any) {
      return value && value.trim() ? true : 'メールアドレスは必須です';
    },
    password(value: any) {
      return value && value.trim() ? true : 'パスワードは必須です'
    }
  };

</script>
