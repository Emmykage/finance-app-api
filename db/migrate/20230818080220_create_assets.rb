class CreateAssets < ActiveRecord::Migration[7.0]
  def change
    create_table :assets do |t|
      t.string :asset_name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
