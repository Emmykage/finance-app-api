class AddDetatilToAsset < ActiveRecord::Migration[7.0]
  def change
    add_column :assets, :share_in_excess, :float
    add_column :assets, :annual_mangt_fee, :float
    add_column :assets, :annual_flat_expense, :float
    add_column :assets, :overview_description, :text
    add_column :assets, :overview_note, :text
  end
end
