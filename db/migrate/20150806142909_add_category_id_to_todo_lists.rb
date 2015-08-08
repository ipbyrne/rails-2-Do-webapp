class AddCategoryIdToTodoLists < ActiveRecord::Migration
  def change
    add_column :todo_lists, :category_id, :integer
  end
end
