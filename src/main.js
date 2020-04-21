// src/main.js

import Vue from 'vue'
import VueCompositionApi from "@vue/composition-api";
import App from './App'

Vue.use(VueCompositionApi)

new Vue({
  el: '#app',
  render: h => h(App)
})
