<template>
  <v-container>
    <nuxt-child />
  </v-container>
</template>

<script>
export default {
  layout: 'loggedIn',
  // /accountというパスが自動生成されるのでアクセス不可に設定
  validate({ route }) {
    return route.name !== 'account'
  },
}
</script>
