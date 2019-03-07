class CreatePicposts < ActiveRecord::Migration[5.2]
  def change
    create_table :picposts do |t|

      t.string :title
      t.string :place
      t.references :user, foreign_key: true
      t.string :picture

      t.timestamps
    end
  
      add_index :picposts, [:user_id, :created_id]
  end
end
