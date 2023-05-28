class FuelConsumption < ApplicationRecord
  validates :liters, :price, :refuel_date, :distance, :avg_consumption, presence: true
end
