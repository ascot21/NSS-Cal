require 'test/unit'
require 'year'

class YearTest < Test::Unit::TestCase

  def test_01_leap_year_if_div_by_4
    yr = Year.new(2012)
    assert_equal(true, yr.leap_year?)
  end

  def test_02_leap_year
    yr = Year.new(2400)
    yr2 = Year.new(2000)
    yr3 = Year.new(2100)
    yr4 = Year.new(2012)
    yr5 = Year.new(1800)
    yr6 = Year.new(1900)
    yr7 = Year.new(2013)
    assert_equal(true, yr.leap_year?)
    assert_equal(true, yr2.leap_year?)
    assert_equal(false, yr3.leap_year?)
    assert_equal(true, yr4.leap_year?)
    assert_equal(false, yr5.leap_year?)
    assert_equal(false, yr6.leap_year?)
    assert_equal(false, yr7.leap_year?)
  end

end
