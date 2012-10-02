class Year

  def initialize(month_number,year)
    @month_number = month_number
    @year = year
  end

  def print_year()
    #print the year number
    yearstring = "#{@year}"
    yearstring = yearstring.center(64)
    puts yearstring

    #fill array with full months
    yr = []
    12.times do |x|
      var = Month.new(x+1,@year)
      yr.push(var.print_month)
    end

    y = 0
    z = 0
    4.times do
      #process full months into parts
      mnthblock = []
      monthstring = ""
      weekonestr = ""
      weektwostr = ""
      weekthreestr = ""
      weekfourstr = ""
      weekfivestr = ""
      weeksixstr = ""
      y = z
      until y == (z+3) do
        monthname = yr[y][0]
        monthname = monthname.gsub(/\d/, '')
        monthname = monthname.center(22)
        monthstring << monthname

        weekone = yr[y][2]
        weekonestr << weekone
        weekonestr << "  "

        weektwo = yr[y][3]
        weektwostr << weektwo
        weektwostr << "  "

        weekthree = yr[y][4]
        weekthreestr << weekthree
        weekthreestr << "  "

        weekfour = yr[y][5]
        weekfourstr << weekfour
        weekfourstr << "  "

        weekfive = yr[y][6]
        if weekfive
          weekfivestr << weekfive
          weekfivestr << " "*(22-weekfive.length)
        else
          weekfivestr = " "*22
        end

        weeksix = yr[y][7]
        if weeksix
          weeksixstr << weeksix
          weeksixstr << " "*(22-weeksix.length)
        else
          weeksixstr << " "*22
        end
        y += 1
      end

      output = monthstring
      output += "\n"
      output += "Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa"
      output += "\n"
      output += weekonestr
      output += "\n"
      output += weektwostr
      output += "\n"
      output += weekthreestr
      output += "\n"
      output += weekfourstr
      output += "\n"
      output += weekfivestr
      output += "\n"
      output += weeksixstr
      puts output
      z += 3
    end

  end
end