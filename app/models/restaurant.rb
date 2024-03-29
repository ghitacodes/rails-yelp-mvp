class Restaurant < ApplicationRecord
  CATEGORY = %w(chinese italian japanese french belgian).freeze
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORY }
  has_many :reviews, dependent: :destroy
end
