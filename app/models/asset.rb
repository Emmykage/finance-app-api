class Asset < ApplicationRecord
  belongs_to :user

  has_many :portfolios
  enum :payment_schedule, {event_based: 0, monthly: 1, quarterly: 2, biannually: 3, yearly: 4}
end
