class CreateJoinTableGroupItem < ActiveRecord::Migration[7.1]
  def change
    create_join_table :groups, :items do |t|
      t.index [:group_id, :item_id]
      t.index [:item_id, :group_id]
    end
  end
end
