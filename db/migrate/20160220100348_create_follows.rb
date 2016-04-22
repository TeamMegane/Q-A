class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
      t.integer :user_id, null: false
      t.integer :target_user_id, null: false
      t.timestamps
      t.datetime  :created_at,      null: false
      t.index     [:user_id, :target_user_id], unique: true
 	  t.index     :target_user_id
    end

    add_index :follows, [:user_id, :target_user_id], unique: true
  end
end