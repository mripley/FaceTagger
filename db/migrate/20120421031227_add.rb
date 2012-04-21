class Add < ActiveRecord::Migration
  def up
    add_column :taggables, :user_id, :integer
  end

  def change
    add_column :taggables, :user_id, :integer
  end

  def down
  end
end
