class CreateBirds < ActiveRecord::Migration
  def change
    create_table :birds do |t|
      t.string :name
      t.string :species
      t.integer :age

      t.timestamps null: false
    end
  end
end
