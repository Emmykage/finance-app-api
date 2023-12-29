class EarningTransaction < ApplicationRecord
  belongs_to :earning

  before_create :valid_transaction 


  def valid_transaction
    if amount > earning.net_earnings 
      errors.add(:base, "Insufficient funds for withdrawal")
    elsif amount <= 0 
      errors.add(:amount, "Amount must be greater than zero")
    end
  end
end
