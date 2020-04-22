// src/App.vue

<template>
  <div class="container">
    <h1>{{ message }}</h1>
    <Button inverse>
      Test 123
    </Button>
    <Avatar borderStyle="dashed" borderWidth="thick" size="large">
      <img
          style="width:100%;height:100%;borderRadius:50%;"
          src="https://res.cloudinary.com/demo/w_150,h_150,c_thumb,g_face/woman.jpg"
        />
    </Avatar>
  </div>
</template>

<script>
import { Button, Avatar } from "@virtusize/design-system";

export default {
  name: 'App',
  components: {
    Button,
    Avatar,
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
