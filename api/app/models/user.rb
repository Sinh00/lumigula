require "validator/email_validator"

class User < ApplicationRecord
  # アソシエーション
  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy

  # gem bcrypt
  has_secure_password

  # バリデーション
  before_validation :downcase_email
  validates :user_id, presence: true, length: { maximum: 15, allow_blank: true }
  validates :user_name, presence: true, length: { maximum: 30, allow_blank: true }
  validates :email, presence: true, email: { allow_blank: true }
  VALID_PASSWORD_REGEX = /\A[\w\-]+\z/
  validates :password, presence: true,
                     length: { minimum: 8 },
                     format: {
                       with: VALID_PASSWORD_REGEX,
                       message: :invalid_password,
                     },
                     allow_blank: true

  # クラスメソッド
  # emailからアクティブなユーザーを返す
  def self.find_activated(email)
    find_by(email: email, activated: true)
  end

  # インスタンスメソッド
  # 自分以外の同じemailのアクティブなユーザーがいる場合にtrueを返す
  def email_activated?
    users = User.where.not(id: id)
    users.find_activated(email).present?
  end

  # プライベートメソッド
  private

    # email小文字化
    def downcase_email
      self.email.downcase! if email
    end
end
