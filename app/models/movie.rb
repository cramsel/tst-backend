class Movie < ApplicationRecord
  validates :movie_title, presence: true

  belongs_to :report, optional: true
end
