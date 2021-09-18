class PostImage < ApplicationRecord
  # モデル同士の関連づけ（アソシエーション）記述
  belogs_to :user
end
