class Year
  attr_reader :leap_year
  attr_reader :payload

  def initialize(payload)
    @payload = payload
  end

  def leap_year?
    item = self.payload
    if item % 400 == 0
      return true
    elsif item % 100 == 0
      return false
    elsif item % 4 == 0
      return true
    else
      return false
    end
  end

end

