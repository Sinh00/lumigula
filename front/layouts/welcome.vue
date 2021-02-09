<template>
  <v-app>
    <v-content class="bg" :style="{ backgroundImage: 'url(' + image_src + ')' }">
      <search-bar />
      <div align="center">
        <signup-form />
      </div>

      <bef-login-footer />
    </v-content>
  </v-app>
</template>

<script>
import SignupForm from '../components/ui/signupForm.vue'
// import welAbout from '~/components/welcome/welAbout'

export default {
  components: {
    SignupForm,
    // welAbout,
  },
  data() {
    return {
      image_src: require('~/assets/img/top.jpg'),
    }
  },
}
</script>

<style>
.bg {
  width: 100%;
  height: 100%;
  position: absolute;
  top: 0;
  left: 0;
  background-size: cover;
}
</style>
