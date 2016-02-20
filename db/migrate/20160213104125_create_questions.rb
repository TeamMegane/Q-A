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

class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name
      t.string :content

      t.timestamps null: false
    end
  end
end

class AddImageToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :image, :string
  end
end
