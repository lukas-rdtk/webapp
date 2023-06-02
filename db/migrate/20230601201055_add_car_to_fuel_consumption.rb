class AddCarToFuelConsumption < ActiveRecord::Migration[7.0]
  def change
    add_column :fuel_consumptions, :car, :string
  end
end
