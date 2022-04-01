class Movie < ApplicationRecord
  validates :movie_title, presence: true
  validates :tickets_remaining, numericality: { greater_than_or_equal_to: 0 }

  belongs_to :report, optional: true
  has_many :tickets
end
