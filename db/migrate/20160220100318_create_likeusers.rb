class CreateLikeusers < ActiveRecord::Migration
  def change
    create_table :likeusers do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
