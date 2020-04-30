class DatumToStartime < ActiveRecord::Migration[6.0]
  def change
    remove_column :tasks, :datum
  end
end
