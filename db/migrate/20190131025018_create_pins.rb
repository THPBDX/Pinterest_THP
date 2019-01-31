class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
     t.integer :user_id
     t.integer :comment_id
     t.string :url
     t.timestamps
     t.references :user , foreign_key: true
     t.references :comment, foreign_key: true
   end
 end
end
