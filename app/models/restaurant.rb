class Restaurant < ApplicationRecord
  #"chinese", "italian", "japanese", "french", "belgian"
  CATEGORY = %w[chinese italian japanese french belgian].freeze
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
