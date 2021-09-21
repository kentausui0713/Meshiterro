class PostImage < ApplicationRecord
  # モデル同士の関連づけ（アソシエーション）記述
  belongs_to :user
  attachment :image
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
