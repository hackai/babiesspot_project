class CreateUserRsses < ActiveRecord::Migration
  def change
    create_table :user_rsses do |t|
      t.references :user
      t.references :rss_feed

      t.timestamps
    end
    add_index :user_rsses, :user_id
    add_index :user_rsses, :rss_feed_id
  end
end
