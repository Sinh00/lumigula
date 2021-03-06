import colors from 'vuetify/es5/util/colors'

export default {
  // Disable server-side rendering: https://go.nuxtjs.dev/ssr-mode
  ssr: false,

  // Global page headers: https://go.nuxtjs.dev/config-head
  head: {
    titleTemplate: '%s - ' + process.env.APP_NAME,
    title: process.env.APP_NAME,
    htmlAttrs: {
      lang: 'ja',
    },
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: '' },
    ],
    link: [{ rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' }],
  },

  // Global CSS: https://go.nuxtjs.dev/config-css
  css: [],

  // Plugins to run before rendering page: https://go.nuxtjs.dev/config-plugins
  plugins: ['plugins/auth', 'plugins/axios', 'plugins/vuetify', 'plugins/myInject', 'plugins/nuxtClientInit'],

  // Auto import components: https://go.nuxtjs.dev/config-components
  components: true,

  // Modules for dev and build (recommended): https://go.nuxtjs.dev/config-modules
  buildModules: [
    // https://go.nuxtjs.dev/typescript
    '@nuxt/typescript-build',
    // https://github.com/nuxt-community/eslint-module
    // '@nuxtjs/eslint-module',
    // https://go.nuxtjs.dev/vuetify
    '@nuxtjs/vuetify',
  ],

  // Modules: https://go.nuxtjs.dev/config-modules
  modules: [
    // https://go.nuxtjs.dev/axios
    '@nuxtjs/axios',
    'nuxt-i18n',
  ],

  // Axios module configuration: https://go.nuxtjs.dev/config-axios
  axios: {
    // クライアント側からのリクエストには[browserBaseURL]が使われる
    // [browserBaseURL]のデフォルト値は[baseURL]
    // [baseURL]のデフォルト値は[http://localhost:3000]
    // [$API_URL]が存在する場合、[baseURL]は上書きされる→[$API_URL]で管理すれば設定不要

    // クロスサイトリクエスト時にCookieを使用することを許可する
    credentials: true,
  },

  // Vuetify module configuration: https://go.nuxtjs.dev/config-vuetify
  vuetify: {
    treeShake: true,
    customVariables: ['~/assets/variables.scss'],
    theme: {
      // dark: true,
      themes: {
        light: {
          // primary: '4080BE',
          // secondary: colors.amber.darken3,
          // accent: colors.grey.darken3,
          // info: '4FC1E9',
          // background: 'f6f6f4',
          // success: colors.green.accent3,
          // warning: colors.amber.base,
          // error: colors.deepOrange.accent4,
          // myblue: '1867C0',
          primary: '4080BE',
          info: '4FC1E9',
          success: '44D69E',
          warning: 'FEB65E',
          error: 'FB8678',
          background: 'f6f6f4',
          myblue: '1867C0',
        },
      },
    },
  },

  i18n: {
    strategy: 'no_prefix',
    locales: ['ja', 'en'],
    defaultLocale: 'ja',
    // Doc: https://kazupon.github.io/vue-i18n/api/#properties
    vueI18n: {
      fallbackLocale: 'ja',
      // silentTranslationWarn: true,
      silentFallbackWarn: true,
      messages: {
        ja: require('./locales/ja.json'),
        en: require('./locales/en.json'),
      },
    },
  },

  publicRuntimeConfig: {
    // /front/.envの環境変数を$configで呼び出せるようにする
    appName: process.env.APP_NAME,
    cryptoKey: process.env.CRYPTO_KEY,
  },

  // Build Configuration: https://go.nuxtjs.dev/config-build
  build: {},
}
