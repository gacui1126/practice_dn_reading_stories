class CreateStories < ActiveRecord::Migration[6.0]
  def change
    create_table :stories do |t|
      t.string :story_name
      t.string :author
      t.integer :user_id
      t.boolean :free
      t.integer :price

      t.timestamps
    end
  end
end
