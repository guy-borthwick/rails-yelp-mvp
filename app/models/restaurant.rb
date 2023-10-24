class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true

  VALID_CATEGORIES = %w[chinese italian japanese french belgian].freeze
  validates :category, inclusion: { in: VALID_CATEGORIES }
end
