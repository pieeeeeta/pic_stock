class User < ApplicationRecord
  has_many :picposts, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :likes, dependent: :destroy
  has_many :like_picposts, through: :likes, source: :picpost

  
end
