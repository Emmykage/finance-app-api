class Portfolio < ApplicationRecord
  belongs_to :asset
  belongs_to :user

  before_create :valid_transaction?

  def valid_transaction?
    raise ActiveRecord::RecordNotSaved, "You have limited funds in your wallet" unless amount < user.wallet.wallet_balance
    true
    
  end
end
