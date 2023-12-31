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
      <!-- <Form :validationSchema="schema"> -->
      <Form>
        <div class="signup-grid">
          <div class="input-name-and-validate">
            <label for="" class="signup-label">
              名前
            </label>
            <ErrorMessage name="name" class="input-error-message"/>
          </div>
          <Field v-model="newUser.name" name="name" type="text" class="signup-form-input" />
        </div>
        <div class="signup-grid">
          <div class="input-name-and-validate">
            <label for="" class="signup-label">
              メールアドレス
            </label>
            <ErrorMessage name="email" class="input-error-message" />
          </div>
          <Field v-model="newUser.email" name="email" type="email" class="signup-form-input" />
        </div>
        <div class="signup-grid">
          <div class="input-name-and-validate">
            <label for="" class="signup-label">
              パスワード
            </label>
            <ErrorMessage name="password" class="input-error-message" />
          </div>
          <Field v-model="newUser.password" name="password" type="email" class="signup-form-input" />
        </div>
        <button @click="submitForm" class="signup-button">
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
  // import { z } from 'zod';
  // import { toTypedSchema } from '@vee-validate/zod';

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
          name: "",
          email: "",
          password: "",
        },
        errorMessage: "",
        isLoading: false,
        // schema: toTypedSchema(
        //   z.object({
        //     name: z.string({ required_error: "名前を入力してください" }),
        //     email: z.string({ required_error: "メールアドレスを入力してください" }),
        //     password: z.string({ required_error: "パスワードを入力してください" })
        //   })
        // )
      }
    },
    methods: {
      async submitForm() {
        try {
          this.isLoading = true;
          const response = await createUser(this.newUser);
          console.log(response)
          console.log('Attempting to route...');
          this.$router.push('/')
          return response.data;
        } catch(error: any) {
          console.log("error")
          if (error.response && error.response.status === 422) {
            const fullMessages = error.response.data.full_messages;
            this.errorMessage = fullMessages
          }
        } finally {
          console.log("finally")
          this.isLoading = false
        }
      }
    },
    computed: {
      isFormValid() {
        if (this.newUser.name && this.newUser.email && this.newUser.password) {
          console.log("hoge")
        }
      }
    }
  }

</script>
