<template>
  <div />
</template>
<script>
export default {
  async middleware({ store, redirect, from }) {
    await store.dispatch('logout')
    // トップページ以外の場合はそのままリダイレクト
    if (from.name !== 'index') {
      return redirect('/')
    }
  },
  layout: 'logout',
  // トップページの場合はレイアウトを再読み込み
  beforeCreate() {
    this.$router.replace('/')
  },
}
</script>
