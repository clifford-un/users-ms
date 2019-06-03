class CreateFriendRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :friend_requests do |t|
      t.integer :user_id_from
      t.integer :user_id_to

      t.timestamps
    end
  end
end
