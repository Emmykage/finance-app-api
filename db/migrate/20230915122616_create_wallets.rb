class CreateWallets < ActiveRecord::Migration[7.0]
  def change
    create_table :wallets do |t|
      t.decimal :balance
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
