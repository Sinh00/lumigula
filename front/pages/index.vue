<template>
  <div>index.vue</div>
</template>

<script>
export default {
  layout({ store }) {
    // 未ログイン時はwelcome
    return store.state.loggedIn ? 'default' : 'welcome'
  },
}
</script>
