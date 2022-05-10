class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.string :image
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
