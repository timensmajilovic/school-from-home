class CreateClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :classes do |t|
      t.string :name
      t.string :opis

      t.timestamps
      
    end
  end
end
