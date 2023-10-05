class AddWalletAddressToTransaction < ActiveRecord::Migration[7.0]
  def change
    add_column :transactions, :wallet_address, :string
    add_column :transactions, :transaction_type, :string
  end
end
