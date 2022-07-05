class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t| 
      t.string :text
      t.integer :wpm
      t.integer :errorChar
      t.integer :length
      t.boolean :starred
      t.integer :user_id
    end 
  end
end
