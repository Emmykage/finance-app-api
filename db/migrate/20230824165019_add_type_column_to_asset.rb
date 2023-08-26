class AddTypeColumnToAsset < ActiveRecord::Migration[7.0]
  def change
    add_column :assets, :asset_type, :string, default: 0
    add_column :assets, :title, :string
    add_column :assets, :description, :text
  end
end
