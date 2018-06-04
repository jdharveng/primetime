class CreateFollowings < ActiveRecord::Migration[5.2]
  def change
    create_table :followings do |t|
      t.integer :followee_id, foreign_key: true
      t.integer :follower_id, foreign_key: true

      t.timestamps
    end
  end
end
