class TaggableIdToTag < ActiveRecord::Migration
  def up
    add_column :tags, :taggable_id, :integer
  end

  def change
    add_column :tags, :taggable_id, :integer
  end

  def down
    remove_column :tags, :taggable_id
  end
end
