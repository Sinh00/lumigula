<template>
  <v-card id="card" class="mx-auto py-10" max-width="363">
    <v-container fluid class="pa-0">
      <v-row align="center">
        <v-col cols="12" sm="12">
          <div class="text-center">
            <app-logo />
            <p>好きを共有しよう</p>

            <div class="px-8 my-2">
              <signup-link />
            </div>
            <div class="px-8 my-2">
              <login-link />
            </div>
          </div>
        </v-col>
      </v-row>
    </v-container>
  </v-card>
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({})
</script>

<style>
#card {
  background-color: rgba(255, 255, 255, 0.92);
}
</style>
