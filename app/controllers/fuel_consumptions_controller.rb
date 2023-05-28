class FuelConsumptionsController < ApplicationController
  def index
    @fuel_consumptions = FuelConsumption.all
  end

  def new
    @fuel_consumption = FuelConsumption.new
  end

  def create
    @fuel_consumption = FuelConsumption.new(fuel_consumption_params)
    if @fuel_consumption.save
      flash[:success] = 'Fuel record created successfully.'
      redirect_to fuel_consumptions_path
    else
      render :new
    end
  end

  def destroy
    fuel_consumption = FuelConsumption.find(params[:id])
    fuel_consumption.destroy
    flash[:success] = "Fuel record deleted successfully."
    redirect_to fuel_consumptions_path
  end

  private

  def fuel_consumption_params
    params.require(:fuel_consumption).permit(:liters, :price, :refuel_date, :distance, :avg_consumption)
  end
end
