class Calendar
  attr_reader :name

  def initialize(month_number,year)
    @month_number = month_number
    @year = year
  end

  def generate_calendar_for(month_number,year)
    start_day = get_day_of_week
  end

  def name
    monthNames=['January','February','March','April','May','June','July','August','September','October','November','December'];
    true_nam = @month_number - 1
    monthNames[true_nam]
  end

  def num_of_days
    daysInMonth=[31,28,31,30,31,30,31,31,30,31,30,31]
    true_num = @month_number - 1
    if true_num == 1 && self.leap_year? == true
      return 29
    else
      daysInMonth[true_num]
    end
  end

  def leap_year?
    item = @year
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

  def start_day
    days_of_the_week = ['Saturday','Sunday','Monday','Tuesday','Wednesday','Thursday','Friday']
    q = 1
    month = @month_number
    if month == 1 || month == 2
      month += 12
      @year = @year - 1
    end
    start_num = (q + ((month + 1)*26  / 10).floor + @year + (@year / 4).floor + (6*(@year / 100).floor) + (@year / 400).floor) % 7;
    days_of_the_week[start_num]
  end

end


