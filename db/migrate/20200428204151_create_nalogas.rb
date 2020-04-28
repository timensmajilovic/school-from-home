class CreateNalogas < ActiveRecord::Migration[6.0]
  def change
    create_table :nalogas do |t|
      t.datetime :start_time

      t.timestamps
    end
  end
end
