class ChangeDateInTasks < ActiveRecord::Migration[6.0]
  def up
    change_column :tasks, :datum, :date
  end

  def down
    change_column :tasks, :datum, :timestamp
  end
end
