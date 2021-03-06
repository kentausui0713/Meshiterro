class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # モデル同士の関連づけ（アソシエーション）記述
  has_many :post_images, dependent: :destroy
  has_many :post_coments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  attachment :profile_image

end
