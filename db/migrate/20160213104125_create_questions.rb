class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :body
      t.boolean :is_solved
      t.integer :user_id
      t.string :image
      t.integer :genre_id

      t.timestamps null: false
    end
  end
end
