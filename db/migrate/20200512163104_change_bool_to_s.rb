class ChangeBoolToS < ActiveRecord::Migration[6.0]
  def change
    remove_column :tasks, :ocenjevanje
    add_column :tasks, :ocenjevanje, :string
  end
end
