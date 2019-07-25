class Ticket < ApplicationRecord
  # relations
  has_many :deliveries, dependent: :destroy
end
