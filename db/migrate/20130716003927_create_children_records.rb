class CreateChildrenRecords < ActiveRecord::Migration
  def change
    create_table :children_records do |t|
      t.string :name
      t.text :profile
      t.references :user

      t.timestamps
    end
    add_index :children_records, :user_id
  end
end
