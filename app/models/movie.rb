class Movie < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :title, :slug, :release_year, presence: true
  validates :slug, uniqueness: true
  validates :duration_minutes, numericality: { greater_than: 0 }, allow_nil: true

  scope :featured, -> { where(featured: true) }

  def to_param
    slug
  end

  def average_rating
    reviews.average(:rating)&.round(1)
  end
end
