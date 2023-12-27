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
      <!-- signup-gridは要リファクタリング -->
      <div class="signup-grid">
        <label for="" class="signup-label">
          名前
        </label>
        <form>
          <input type="text" class="signup-form-input" v-model="newUser.name">
        </form>
      </div>
      <div class="signup-grid">
        <label for="" class="signup-label">
          メールアドレス
        </label>
        <form>
          <input type="text" class="signup-form-input" v-model="newUser.email">
        </form>
      </div>
      <div class="signup-grid">
        <label for="" class="signup-label">
          パスワード
        </label>
        <form>
          <input type="password" class="signup-form-input" v-model="newUser.password">
        </form>
      </div>
      <button @click="submitForm" class="signup-button">
        登録
      </button>
      <div class="redirect-login">
        <router-link to="/login" class="redirect-login">ログインはこちら</router-link>
      </div>
    </main>
  </div>
</template>

<script lang="ts">
import { createUser } from '../../resources/user';
export default {
  name: 'Signup',
  data() {
    return {
      newUser: {
        name: "",
        email: "",
        password: "",
      },
      errorMessage: ""
    }
  },
  methods: {
    async submitForm() {
      try {
        const response = await createUser(this.newUser)
        console.log(response)
        this.$router.push('/');
      } catch(error: any) {
        if (error.response && error.response.status === 422) {
          const fullMessages = error.response.data.full_messages;
          this.errorMessage = fullMessages
        }
      }
    }
  }
}
</script>
