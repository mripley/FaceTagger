class CreateTaggables < ActiveRecord::Migration
  def change
    create_table :taggables do |t|
      t.string :img_url

      t.timestamps
    end
  end
end
