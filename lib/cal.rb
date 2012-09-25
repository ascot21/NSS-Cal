require_relative 'calendar'

#take in arguments
month = ARGV[0].to_i
year = ARGV[1].to_i

#create new Calendar object
cal = Calendar.new(month,year)

#create string of Month and Year,calculate needed spaces and
dateline = "#{cal.name} #{year}"

#get the start day string and get index of it
start = cal.start_day
days = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday',]
startday = days.index(start)

#build output of dates
output = " "
startday.times do output.prepend("   ") end #add space at the beginning to accont for start date
output += (1..9).to_a.join("  ")
output += " "
output += (10..cal.num_of_days).to_a.join(" ")
new_output = output.scan(/.{1,21}/)

#print out the month
puts dateline.center(20)
puts "Su Mo Tu We Th Fr Sa"
puts new_output










