class AddCategoryIdToStories < ActiveRecord::Migration[6.0]
  def change
    add_column :stories, :category_id, :int
  end
end
