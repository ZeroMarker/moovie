class Review < ApplicationRecord
  belongs_to :movie

  validates :reviewer_name, :body, presence: true
  validates :rating, inclusion: { in: 1..5 }
end
