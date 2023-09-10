class AddConfirmationStatusToPortfolio < ActiveRecord::Migration[7.0]
  def change
    add_column :portfolios, :payment_status, :boolean, default: false
    add_column :portfolios, :paid, :boolean,  default: false
  end
end
