class AddUniqueTaggableId < ActiveRecord::Migration
  def up
    add_column :taggables, :taggableID, :integer
    add_index :taggables, :taggableID, :unique => true
  end

  def change
    add_column :taggables, :taggableID, :integer
    add_index :taggables, :taggableID, :unique => true
  end

  def down
  end
end
