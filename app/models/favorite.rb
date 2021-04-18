class Favorite < ApplicationRecord

  belongs_to :user
  belongs_to :book

  # 1つの投稿に対して1いいねしかできないようにする
  validates_uniqueness_of :book_id, scope: :user_id
end
