class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.references :author, foreign_key: { to_table: :users }, null: false
      t.string :name
      t.integer :amount
      t.timestamps
    end
  end
end
