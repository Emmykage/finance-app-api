class Wallet < ApplicationRecord
  belongs_to :user
  has_many :transactions
  # before_save :get_balance


  # deposit
  

  def deposit
    if transactions.where(transaction_type: "deposit").any?
      transactions.where(transaction_type: "deposit").collect{|transaction| transaction.amount }.sum
    else
      0.0
    end
  end  
  def withdrawal
    if transactions.where(transaction_type: "withdraw").any?
      transactions.where(transaction_type: "withdraw").collect{|transaction| transaction.amount }.sum
    else
      "0.0"
    end 
   end

  def wallet_balance 
    self[:balance] = deposit - withdrawal

  end  
  def total
    transactions.collect {|t| t.amount}.sum   
    # 344
  end

  
  # binding.b
  # tester

end
