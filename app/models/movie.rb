class Movie < ApplicationRecord
  belongs_to :report, optional: true
end
