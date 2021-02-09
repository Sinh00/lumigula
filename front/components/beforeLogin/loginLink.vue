<template>
  <v-btn id="btn_login" rounded block text to="/login">
    {{ $t('pages.login') }}
  </v-btn>
</template>

<script>
export default {}
</script>

<style>
#btn_login {
  background-color: rgba(0, 0, 0, 0.04);
  color: #5c5c5c;
  font-weight: bold;
  height: 40px;
}
</style>
