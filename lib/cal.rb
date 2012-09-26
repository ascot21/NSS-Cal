require_relative 'calendar'

#take in arguments
month = ARGV[0].to_i
year = ARGV[1].to_i

#create new Calendar object
cal = Calendar.new(month,year)
puts cal.print_month









