class Wallet < ApplicationRecord
  belongs_to :user
  has_many :transactions
  

  def deposit
    transactions.where(amount: deposit).sum
    
  end  
  def withdrawal
    transactions.where(amount: withdrawal).sum
    
end

  def get_balance 
    self[:balance] = deposit - withdrawal

  end
end
