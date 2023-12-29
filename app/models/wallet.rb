class Wallet < ApplicationRecord
  belongs_to :user
  has_many :transactions
 has_one :earning

  def deposit
    if transactions.where(transaction_type: "deposit").any?
      transactions.where(transaction_type: "deposit").where(status: "completed").collect{|transaction| transaction.amount }.sum
    else
      0.0
    end
  end  
  def withdrawal
    if transactions.where(transaction_type: "withdraw").any?
      transactions.where(transaction_type: "withdraw").(status: "completed").collect{|transaction| transaction.amount }.sum
    else
      0.0
    end 
   end

  def wallet_balance 
    deposit - withdrawal

  end  

  def total_earnings 
    user.total_earnings
    
  end

  def net_earnings 
    earning.net_earnings
    
  end
  def total
    transactions.collect {|t| t.amount}.sum   
    # 344
  end

end
