class Transaction < ApplicationRecord
  belongs_to :wallet
  enum :coin_type, {BITCOIN: 0, ETHERUM: 1, "USD THETHER" => 2}
  enum :status, {pending: 0, completed: 1}
  

  def valid_transaction
    if amount < wallet.balance
      true
    else
      false      
    end    
  end



end
