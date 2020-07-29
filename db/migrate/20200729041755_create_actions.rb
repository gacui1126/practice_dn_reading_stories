class CreateActions < ActiveRecord::Migration[6.0]
  def change
    create_table :actions do |t|
      t.integer :user_id
      t.integer :story_id
      t.integer :type
      t.integer :rating_number

      t.timestamps
    end
  end
end
