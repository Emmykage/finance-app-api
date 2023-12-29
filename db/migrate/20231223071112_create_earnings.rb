class CreateEarnings < ActiveRecord::Migration[7.0]
  def change
    create_table :earnings do |t|
      t.references :wallet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
