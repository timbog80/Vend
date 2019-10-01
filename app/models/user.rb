class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :listings
  
  has_one_attached :profile_image
  has_one_attached :banner_image

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
