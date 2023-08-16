class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORY = %w[chinese italian japanese french belgian].freeze
  validates :name, :address, :phone_number, :category, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
