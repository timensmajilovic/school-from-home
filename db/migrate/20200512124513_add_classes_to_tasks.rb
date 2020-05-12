class AddClassesToTasks < ActiveRecord::Migration[6.0]
  def change
    add_reference :tasks, :class, foreign_key: true
    add_column :tasks, :ocenjevanje, :boolean 
  end
end
