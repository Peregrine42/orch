class Instrument < ActiveRecord::Base
  def formatted_price
    return "%.2f" % price
  end
end
