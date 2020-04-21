// src/App.vue

<template>
  <div class="container">
    <h1>{{ message }}</h1>
    <Button inverse>
      Test 123
    </Button>
  </div>
</template>

<script>
import { Button } from "@virtusize/design-system";

export default {
  name: 'App',
  components: {
    Button,
  },
  data() {
    return {
      message: 'Using Parcel In A Vue.js App',
    };
  },
};
</script>

<style scoped>
  .container {
    width: 600px;
    margin: 50px auto;
    text-align: center;
  }
</style>
