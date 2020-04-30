class DeleteUra < ActiveRecord::Migration[6.0]
  def change
    remove_column :tasks, :ura
  end
end
