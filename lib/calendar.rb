require_relative 'month'
require_relative 'year'

class Calendar
  attr_reader :name

  def initialize(month_number,year)
    if month_number == 0
      @month_number = month_number
      @year = year
    else
      @month_number = month_number
      @year = year
      cal = Month.new(month_number,year)
    end

  end



end