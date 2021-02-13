class Post < ApplicationRecord
  # アソシエーション
  belongs_to :user
  has_many :likes, dependent: :destroy
end
