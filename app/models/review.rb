class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, presence: true, numericality: { in: 0..5, only_integer: true }
  belongs_to :restaurant
end
