require_relative 'month'
require_relative 'year'

#take in arguments
if ARGV.length == 1
  if ARGV[0].length > 2
    year = ARGV[0].to_i
    month = 7
    cal = Year.new(month,year)
    puts cal.print_year
  else
    year = 2012
    month = ARGV[0].to_i
    cal = Month.new(month,year)
    puts cal.print_month
  end
else
  month = ARGV[0].to_i
  year = ARGV[1].to_i
  cal = Month.new(month,year)
  puts cal.print_month
end

# #create new Calendar object
# cal = Calendar.new(month,year)
# puts cal.print_month









