class Portfolio < ApplicationRecord
  belongs_to :asset
  belongs_to :user
  has_many :portfolio_interests

  before_create :valid_transaction?


  def valid_transaction?
    raise ActiveRecord::RecordNotSaved, "You have limited funds in your wallet" unless amount < user.wallet.wallet_balance
    true
    
  end
  def investment_interest 
    if portfolio_interests.any?
      portfolio_interests.collect{|profit| profit.interest }.sum
    else
      0.0
    end
    
  end
end