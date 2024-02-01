class AddReturnToAssets < ActiveRecord::Migration[7.0]
  def change
    add_column :assets, :return, :integer
  end
end
