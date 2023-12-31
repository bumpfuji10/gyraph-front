<template>
  <div class="base-background">
    <div class="signup-header-container">
      <h1 class="base-center-logo">
        <router-link to="/">Gyraph</router-link>
      </h1>
    </div>
    <div v-if="errorMessage">
      {{ errorMessage }}
    </div>
    <div class="base-center-text">
      新規登録
    </div>
    <main class="base-main-zone">
      <Form @submit.prevent="submitForm" :validationSchema="signupValidateSchema">
        <div class="signup-grid">
          <div class="input-name-and-validate">
            <label for="" class="signup-label">
              名前
            </label>
          </div>
          <Field v-model="newUser.name" name="name" type="text" class="signup-form-input" />
          <ErrorMessage name="name" class="input-error-message"/>
        </div>
        <div class="signup-grid">
          <div class="input-name-and-validate">
            <label for="" class="signup-label">
              メールアドレス
            </label>
          </div>
          <Field v-model="newUser.email" name="email" type="email" class="signup-form-input" />
          <ErrorMessage name="email" class="input-error-message" />
        </div>
        <div class="signup-grid">
          <div class="input-name-and-validate">
            <label for="" class="signup-label">
              パスワード
            </label>
          </div>
          <Field v-model="newUser.password" name="password" type="password" class="signup-form-input" />
          <ErrorMessage name="password" class="input-error-message" />
        </div>
        <button @click="submitForm" :class="isFormValid ? 'signup-button' : 'not-input-button'" :disabled="!isFormValid">
          <div v-if="isLoading" class="loading"></div>
          <span v-if="!isLoading">登録</span>
        </button>
      </Form>
    </main>
  </div>
</template>

<script lang="ts">
  import { ErrorMessage, Field, Form } from 'vee-validate';
  import { createUser } from '../../resources/user';

  export default {
    name: 'Signup',
    components: {
      ErrorMessage,
      Field,
      Form
    },
    data() {
      return {
        newUser: {
          name: '',
          email: "",
          password: "",
        },
        errorMessage: "",
        isLoading: false,
        signupValidateSchema: {
          name(value: string) {
            return value && value.trim() ? true : '名前は必須項目です';
          },
          email(value: string) {
            return value && value.trim() ? true : 'メールアドレスは必須項目です'
          },
          password(value: string) {
            return value && value.trim() ? true : 'パスワードは必須項目です'
          }
        }
      }
    },
    methods: {
      async submitForm() {
        try {
          this.isLoading = true;
          const response = await createUser(this.newUser);
          console.log(response)
          this.$nextTick(() => {
            this.$router.push('/');
          });
        } catch(error: any) {
          console.error(error)
          if (error.response && error.response.status === 422) {
            const fullMessages = error.response.data.full_messages;
            this.errorMessage = fullMessages
          }
        } finally {
          this.isLoading = false
        }
      }
    },
    computed: {
      isFormValid() {
        return this.newUser.name && this.newUser.email && this.newUser.password
      }
    }
  }

</script>
