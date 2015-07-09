class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :creator_id
      t.text :group_description
      t.string :imageurl

      t.timestamps null: false
    end
  end
end
