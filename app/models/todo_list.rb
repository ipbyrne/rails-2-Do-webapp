class TodoList < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :todo_items
end
