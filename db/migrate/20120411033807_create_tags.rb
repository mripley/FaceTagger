class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.integer :upperLeftX
      t.integer :upperLeftY
      t.integer :lowerRightX
      t.integer :lowerRightY

      t.timestamps
    end
  end
end
