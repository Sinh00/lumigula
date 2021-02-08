<template>
  <v-app>
    <wel-app-bar :menus="menus" />

    <v-img dark v-bind:src="image_src" :height="imgHeight">
      <v-row align="center" justify="center" :style="{ height: `${imgHeight}px` }">
        <v-col cols="12" class="text-center">
          <h1 class="display-1 mb-4">好きを共有しよう。</h1>
          <h4 class="subheading" :style="{ letterSpacing: '5px' }">あなたのすきがきっとみつかる</h4>
        </v-col>
      </v-row>
    </v-img>

    <v-sheet>
      <v-container fluid :style="{ maxWidth: '1280px' }">
        <v-row v-for="(menu, i) in menus" :key="`menu-${i}`">
          <v-col cols="12">
            <v-card flat>
              <v-card-title class="justify-center display-1">
                {{ $t(`menus.${menu.title}`) }}
              </v-card-title>
              <v-card-text class="text-center">
                {{ menu.subtitle }}
              </v-card-text>
            </v-card>
          </v-col>

          <v-col cols="12">
            <div :is="`wel-${menu.title}`" />
          </v-col>
        </v-row>
      </v-container>
    </v-sheet>

    <bef-login-footer />
  </v-app>
</template>

<script>
import welAbout from '~/components/welcome/welAbout'
import welProducts from '~/components/welcome/welProducts'
import welPrice from '~/components/welcome/welPrice'
import welContact from '~/components/welcome/welContact'
import welCompany from '~/components/welcome/welCompany'

export default {
  components: {
    welAbout,
    welProducts,
    welPrice,
    welContact,
    welCompany,
  },
  data() {
    return {
      image_src: require('~/assets/img/top.jpg'),
      imgHeight: 1000,
      menus: [
        {
          title: 'about',
          subtitle: 'このサイトはブログ"独学プログラマ"で公開されているチュートリアルのデモアプリケーションです',
        },
        { title: 'products', subtitle: '他にはない優れた機能の数々' },
        { title: 'price', subtitle: '会社の成長に合わせた3つのプラン' },
        { title: 'contact', subtitle: 'お気軽にご連絡を' },
        { title: 'company', subtitle: '私たちの会社' },
      ],
    }
  },
}
</script>
