class RenameClassId < ActiveRecord::Migration[6.0]
  def change
    remove_reference :tasks, :class
    add_reference :tasks, :group, foreign_key: true
  end
end
