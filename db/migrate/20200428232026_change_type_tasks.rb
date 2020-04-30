class ChangeTypeTasks < ActiveRecord::Migration[6.0]
  def up
    change_column :tasks, :datum, :datetime
  end

  def down
    change_column :tasks, :datum, :date
  end
end
