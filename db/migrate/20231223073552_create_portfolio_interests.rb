class CreatePortfolioInterests < ActiveRecord::Migration[7.0]
  def change
    create_table :portfolio_interests do |t|
      t.decimal :interest
      t.boolean :withdrawn
      t.references :portfolio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
