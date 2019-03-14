class AddLikesCountToPicposts < ActiveRecord::Migration[5.2]
  def change
    add_column :picposts, :likes_count, :integer
  end
end
