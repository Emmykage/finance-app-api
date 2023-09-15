class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.decimal :amount
      t.integer :type, default: 0
      t.integer :status, default: 0
      t.references :wallet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
