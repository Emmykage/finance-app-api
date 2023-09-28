class Transaction < ApplicationRecord
  belongs_to :wallet
  enum :type, {BTC: 0, ETH: 1}
  enum :status, {pending: 0, completed: 1}
  

  def valid_transaction
    if amount < wallet.balance
      true
    else
      false      
    end    
  end



end
