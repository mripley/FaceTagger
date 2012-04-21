class RemoveTag < ActiveRecord::Migration
  def up
    remove_index :taggables, :taggableID
    remove_column :tags, :taggableID
    add_column :tags, :taggable_id, :integer
  end

  def change
    remove_index :taggables, :taggableID
    remove_column :tags, :taggableID
    add_column :tags, :taggable_id, :integer
  end 

  def down
  end
end
