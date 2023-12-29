class CreateEarningTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :earning_transactions do |t|
      t.decimal :amount
      t.references :earning, null: false, foreign_key: true

      t.timestamps
    end
  end
end
