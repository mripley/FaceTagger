class AddTaggableIDtoTags < ActiveRecord::Migration

  def up
    add_column :tags, :taggableID, :integer
  end

  def change
    add_column :tags, :taggableID, :integer
  end

  def down
  end
end
