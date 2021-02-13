import Login from '../pages/login.vue'

describe('pages/login.vue', () => {
  it('ログインページのテスト', () => {
    const defaultData = Login.data()
    // isValid の初期値をテストする
    expect(defaultData.isValid).toBe(false)
  })
})
