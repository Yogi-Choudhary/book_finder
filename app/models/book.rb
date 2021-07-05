class Book < ApplicationRecord
  validates :title, :author, :isbn, :image, presence: true
  belongs_to :user
  has_many :poly_images, as: :imageable
  has_one_attached :image
  
end
