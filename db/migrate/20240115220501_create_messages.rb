class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :title
      t.text :body
      t.references :sender, null: false, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
