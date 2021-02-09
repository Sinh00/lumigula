<template>
  <v-form>
    <v-col sm="4" class="d-flex">
      <app-logo />
      <v-text-field solo label="lumigulaを検索" prepend-inner-icon="fa-search" id="search-form"></v-text-field>
    </v-col>
  </v-form>
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({})
</script>

<style>
#search-form {
  font-style: 8px;
}
</style>
