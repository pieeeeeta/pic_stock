class AddTextToPicpost < ActiveRecord::Migration[5.2]
  def change
    add_column :picposts, :text, :text
    remove_column :picposts, :title, :string
  end
end
