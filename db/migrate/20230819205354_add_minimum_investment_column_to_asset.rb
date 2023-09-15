class AddMinimumInvestmentColumnToAsset < ActiveRecord::Migration[7.0]
  def change
    add_column :assets, :minimum_investment, :decimal
    add_column :assets, :term, :string
    add_column :assets, :payment_schedule, :integer, default: 0
  end
end
