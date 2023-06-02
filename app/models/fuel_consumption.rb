class FuelConsumption < ApplicationRecord
  validates :car, :liters, :price, :refuel_date, :distance, :avg_consumption, presence: true
end
