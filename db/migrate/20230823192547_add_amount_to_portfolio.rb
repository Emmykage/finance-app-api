class AddAmountToPortfolio < ActiveRecord::Migration[7.0]
  def change
    add_column :portfolios, :amount, :decimal
    
  end
end
