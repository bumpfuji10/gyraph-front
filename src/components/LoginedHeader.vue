<template>
  <div>
    <header>
      <div class="logo-container">
        <nav class="gyraph-logo" @click="hoge">
          Gyraph
        </nav>
        <div class="button-and-icon">
          <button class="write-record">
            日誌を書く
          </button>
          <nav class="user-icon">
            <img src="../assets/icons/default_user_icon.png" class="user-icon">
          </nav>
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
