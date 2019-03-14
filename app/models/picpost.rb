class Picpost < ApplicationRecord
  belongs_to :user

  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :user


  mount_uploader :picture, PictureUploader
end
