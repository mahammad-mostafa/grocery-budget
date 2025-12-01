class CreateGroupsItems < ActiveRecord::Migration[7.1]
  def change
    create_table :groups_items do |t|
      t.references :group, foreign_key: true, null: false
      t.references :item, foreign_key: true, null: false
    end
  end
end
