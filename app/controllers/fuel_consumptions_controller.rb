class FuelConsumptionsController < ApplicationController
  before_action :set_fuel_consumption, only: [:edit, :update, :destroy]

  def index
    @fuel_consumptions = FuelConsumption.all
  end

  def new
    @fuel_consumption = FuelConsumption.new
  end

  def create
    @fuel_consumption = FuelConsumption.new(fuel_consumption_params)
    if @fuel_consumption.save
      redirect_to fuel_consumptions_path, notice: 'Fuel consumption record was successfully created.'
    else
      render :new
    end
  end

  def edit
    @fuel_consumption = FuelConsumption.find(params[:id])
  end

  def update
    @fuel_consumption = FuelConsumption.find(params[:id])
    if @fuel_consumption.update(fuel_consumption_params)
      redirect_to fuel_consumptions_path, notice: 'Fuel consumption record was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @fuel_consumption.destroy
    redirect_to fuel_consumptions_path, notice: 'Fuel consumption record was successfully deleted.'
  end

  private

  def set_fuel_consumption
    @fuel_consumption = FuelConsumption.find(params[:id])
  end

  def fuel_consumption_params
    params.require(:fuel_consumption).permit(:car, :liters, :price, :refuel_date, :distance, :avg_consumption)
  end
end
