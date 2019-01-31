class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.string :body
      t.timestamps
      t.references :user, :pin, foreign_key: true
    end
  end
end
