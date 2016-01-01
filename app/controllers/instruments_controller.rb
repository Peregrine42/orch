class InstrumentsController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  
  def create
    @instrument = Instrument.create!(instrument_params)
    render :show
  end
  
  def index
    @instruments = Instrument.all
  end
  
  def show
    @instrument = Instrument.find(params[:id])
  end
  
  def update
    @instrument = Instrument.find(params[:id])
    @instrument.update(instrument_params)
    render :show
  end
    
  private
  def instrument_params
    params.permit(
      :name, :amount, :reserved, :description, :price
    )
  end
  
end
