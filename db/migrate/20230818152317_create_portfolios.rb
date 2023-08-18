class CreatePortfolios < ActiveRecord::Migration[7.0]
  def change
    create_table :portfolios do |t|
      t.string :portfolio_name
      t.references :assets, null: false, foreign_key: true

      t.timestamps
    end
  end
end
