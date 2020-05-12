class RenameTableClasses < ActiveRecord::Migration[6.0]
  def self.up
    rename_table :classes, :groups
  end

  def self.down
    rename_table :groups, :classes
  end
end
