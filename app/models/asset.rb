class Asset < ApplicationRecord
  belongs_to :user

  has_many :portfolios
  enum :payment_schedule, {event_based: 0, monthly: 1, quarterly: 2, biannually: 3, yearly: 4}
  enum :type, {other: 0, crtpto: 1, art: 2, legal: 3, private_credit: 4, private_equity: 5, real_estate: 6, venture_capital: 7, transportation: 8, short_term_notes: 9 }
end
