class Month

  def initialize(month_number,year)
      @month_number = month_number
      @year = year
  end

  def name
    monthNames = ['January','February','March','April','May','June','July','August','September','October','November','December']
    monthNames[@month_number - 1]
  end

  def num_of_days
    daysInMonth=[31,28,31,30,31,30,31,31,30,31,30,31]
    if @month_number - 1 == 1 && self.leap_year?
      return 29
    else
      daysInMonth[@month_number - 1]
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
    #Zeller's congruence http://en.wikipedia.org/wiki/Zeller's_congruence
    start_num = (q + ((month + 1)*26  / 10).floor + @year + (@year / 4).floor + (6*(@year / 100).floor) + (@year / 400).floor) % 7;
    days_of_the_week[start_num]
  end

  def leap_year?
    if @year % 400 == 0
      return true
    elsif @year % 100 == 0
      return false
    elsif @year % 4 == 0
      return true
    else
      return false
    end
  end

  def print_month

    #get the start day string and get index of it
    start = self.start_day
    days = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday',]
    startday = days.index(start)

    #build output of dates
    output = " "
    startday.times do output.prepend("   ") end #add space at the beginning to account for start date
    output += (1..9).to_a.join("  ")
    output += " "
    output += (10..self.num_of_days).to_a.join(" ")
    new_output = output.scan(/.{1,21}/)
    new_output.each do |o|
      o.rstrip!
    end

    #print out the month
    first_line = "#{self.name} #{@year}".center(20)
    second_line = "Su Mo Tu We Th Fr Sa"
    new_output.unshift(second_line).unshift(first_line)
  end
end