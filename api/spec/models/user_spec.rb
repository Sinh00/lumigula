require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'バリデーションテスト' do
    context '作成時' do
      subject(:user) { create(:user) }
      it { is_expected.to be_valid }
      it { is_expected.to validate_presence_of(:user_id) }
      it { is_expected.to validate_presence_of(:user_name) }
      # it { is_expected.to validate_presence_of(:password) }
      it { is_expected.to validate_presence_of(:email) }
      it { is_expected.to validate_length_of(:user_id) }
      it { is_expected.to validate_length_of(:user_name) }
      # it { is_expected.to validate_length_of(:password) }
      it { is_expected.to validate_length_of(:email) }

      it 'user_id, user_name, emailの値が設定済みだと成功' do
        user = build(:user)
        expect(user).to be_valid
      end
      it 'user_id, user_name, emailの値が未設定だと失敗' do
        user = build(:user)
        user.user_id = ''
        user.user_name = ''
        user.email = ''
        expect(user).to_not be_valid
      end
      # it 'user_id, emailの値がユニークだと成功' do
      #   user_1 = create(:user)
      #   user_2 = build(:user)
      #   expect(user_2).to be_valid
      # end
      # it 'user_id, emailの値がユニークでないと失敗' do
      #   user_1 = create(:user)
      #   user_2 = build(:user)
      #   user_2.user_id = user_1.user_id
      #   user_2.email = user_1.email
      #   expect(user_2).to_not be_valid  
      # end
    end

    # context '更新時' do
    #   it 'profileの文字数が255以下だと成功' do
    #     user = build(:user)
    #     user.profile = "255以下"
    #     expect(user).to be_valid
    #   end
    #   it 'profileの文字数が255以上だと失敗' do
    #     user = build(:user)
    #     profile = "255以上" * 255
    #     user.profile = profile
    #     expect(user).to_not be_valid
    #   end
    # end
  end

  describe "アソシエーションテスト" do
    subject(:user) { create(:user)}
    it { is_expected.to have_many(:posts) }
    it { is_expected.to have_many(:likes) }
  end
end
