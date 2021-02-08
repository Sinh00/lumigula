<template>
  <v-app-bar app dark>
    <app-logo />

    <v-toolbar-title class="hidden-mobile-and-down">
      {{ appName }}
    </v-toolbar-title>

    <v-spacer />

    <v-toolbar-items class="ml-2 hidden-ipad-and-down">
      <v-btn
        v-for="(menu, i) in menus"
        :key="`menu-btn-${i}`"
        text
        :class="{ 'hidden-sm-and-down': menu.title === 'about' }"
        @click="goTo(menu.title)"
      >
        {{ $t(`menus.${menu.title}`) }}
      </v-btn>
    </v-toolbar-items>

    <signup-link />
    <login-link />

    <v-menu bottom nudge-left="110" nudge-width="100">
      <template v-slot:activator="{ on }">
        <v-app-bar-nav-icon class="hidden-ipad-and-up" v-on="on" />
      </template>
      <v-list dense class="hidden-ipad-and-up">
        <v-list-item v-for="(menu, i) in menus" :key="`menu-list-${i}`" exact @click="goTo(menu.title)">
          <v-list-item-title>
            {{ $t(`menus.${menu.title}`) }}
          </v-list-item-title>
        </v-list-item>
      </v-list>
    </v-menu>
  </v-app-bar>
</template>

<script lang="ts">
import Vue from 'vue'

export default Vue.extend({
  props: {
    menus: {
      type: Array,
      default: () => [],
    },
  },
  data: ({ $config: { appName } }) => {
    return {
      appName,
    }
  },
})
</script>
