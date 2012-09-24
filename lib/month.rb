require 'year'

class Month
  attr_reader :name

  def initialize(payload)
    @payload = payload
  end

  def name
    monthNames=['January','February','March','April','May','June','July','August','September','October','November','December'];
    true_nam = @payload - 1
    monthNames[true_nam]
  end

  def num_of_days
    daysInMonth=[31,28,31,30,31,30,31,31,30,31,30,31]
    true_num = @payload - 1
    if true_num == 1
      return 29
    else
      daysInMonth[true_num]
    end
  end

end

