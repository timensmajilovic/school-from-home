class AddUraToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :ura, :time
  end
end
