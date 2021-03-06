class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :header_image
  has_many :notifications, as: :notificationable
end
