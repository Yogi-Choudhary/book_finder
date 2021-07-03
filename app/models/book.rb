class Book < ApplicationRecord
  validates :title, :author, :isbn, presence: true
  belongs_to :user
  has_many :poly_images, as: :imageable
end
