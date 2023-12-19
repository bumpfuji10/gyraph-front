<template>
  <div>
    <NotLoginHeader />
    <div class="base-background">

    </div>
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
