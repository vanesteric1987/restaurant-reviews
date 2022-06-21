class Review < ApplicationRecord
  belongs_to :restaurant
  validates :context, presence: true
end
