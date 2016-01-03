class Instrument < ActiveRecord::Base
  validates :amount, :reserved, :price, presence: true
  
  def formatted_price
    return "%.2f" % price
  end
end
