class RemoveImgUrl < ActiveRecord::Migration
  def up
    remove_column :taggables, :img_url
  end

  def change
    remove_column :taggables, :img_url
  end

  def down
    add_column :taggables, :img_url, :string
  end
end
