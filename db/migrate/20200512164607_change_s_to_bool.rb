class ChangeSToBool < ActiveRecord::Migration[6.0]
  def change
    remove_column :tasks, :ocenjevanje
    add_column :tasks, :ocenjevanje, :boolean
  end
end
