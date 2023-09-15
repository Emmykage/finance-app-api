class Transaction < ApplicationRecord
  belongs_to :wallet
  enum :type, {pending: 0, completed: 1}
end
