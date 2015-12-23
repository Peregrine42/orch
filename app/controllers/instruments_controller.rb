class InstrumentsController < ApplicationController
  
  def index
    @instruments = Instrument.all
  end
  
  def create
    @instrument = Instrument.create!(instrument_params)
    render :show
  end
  
  def show
    @instrument = Instrument.find(params[:id])
  end
  
  private
  def instrument_params
    params.permit(:name, :description, :price)
  end
  
end
