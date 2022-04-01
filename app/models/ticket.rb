class Ticket < ApplicationRecord
  belongs_to :movie, optional: true
end
