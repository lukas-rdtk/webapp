class CreateFuelConsumptions < ActiveRecord::Migration[7.0]
  def change
    create_table :fuel_consumptions do |t|
      t.float :liters
      t.float :price
      t.date :refuel_date
      t.integer :distance
      t.float :avg_consumption

      t.timestamps
    end
  end
end
