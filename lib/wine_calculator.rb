require 'byebug'

class WineCalculator
  def self.final_price_for(retail_price:)
    calculate_price(retail_price).ceil(2)
  end

  def self.calculate_price(price)
    if price.between?(0, 15)
      price + tier1(price)
    elsif price.between?(15, 30)
      tier1 + tier2(price - 15) + price
    elsif price.between?(30, 50)
      tier1 + tier2 + tier3(price - 30) + price
    elsif price >= 50
      tier1 + tier2 + tier3 + tier4(price - 50) + price
    end
  end

  def self.tier1(price = 15)
    result = price * 0.51
    result.round(2)
  end

  def self.tier2(price = 15)
    result = price * 0.41
    result.round(2)
  end

  def self.tier3(price = 20)
    result = price * 0.31
    result.round(2)
  end

  def self.tier4(price)
    result = price * 0.21
    result.round(2)
  end
end #end WineCalculator
