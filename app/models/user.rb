class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :likes, dependent: :destroy

  def liked?(spot)
    self.likes.exists?(spot_id: spot.id)
  end
end
