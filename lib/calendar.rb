class Calendar
  attr_reader :name

  def initialize(month_number,year)
    @month_number = month_number
    @year = year
  end

  def name
    monthNames=['January','February','March','April','May','June','July','August','September','October','November','December'];
    true_num = @month_number - 1
    monthNames[true_num]
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

  def print_month
    #create string of Month and Year,calculate needed spaces and
    dateline = "#{self.name} #{@year}"

    #get the start day string and get index of it
    start = self.start_day
    days = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday',]
    startday = days.index(start)

    #build output of dates
    output = " "
    startday.times do output.prepend("   ") end #add space at the beginning to accont for start date
    output += (1..9).to_a.join("  ")
    output += " "
    output += (10..self.num_of_days).to_a.join(" ")
    new_output = output.scan(/.{1,21}/)
    new_output.each do |o|
      o.rstrip!
    end

    #print out the month
    first_line = dateline.center(20)
    second_line = "Su Mo Tu We Th Fr Sa"
    new_output.unshift(second_line).unshift(first_line)
  end


end