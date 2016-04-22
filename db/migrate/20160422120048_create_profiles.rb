class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :email
      t.string :passwd
      t.text :introduction
      t.string :birthdate
      t.string :user_name

      t.timestamps null: false
    end
  end
end
