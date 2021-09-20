class PostImage < ApplicationRecord
  # モデル同士の関連づけ（アソシエーション）記述
  belongs_to :user

  attachment :image
end
