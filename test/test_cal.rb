require 'test/unit'
require 'calendar'

class CalendarTest < Test::Unit::TestCase

  def test_01_return_month_name
    mnth = Calendar.new(2,2012)
    mnth2 = Calendar.new(4,2012)
    mnth3 = Calendar.new(7,2012)
    assert_equal("February", mnth.name)
    assert_equal("April", mnth2.name)
    assert_equal("July", mnth3.name)
  end

  def test_02_Calendar_num_day
    mnth = Calendar.new(2,2012)
    mnth2 = Calendar.new(1,2013)
    mnth3 = Calendar.new(7,2013)
    assert_equal(29, mnth.num_of_days)
    assert_equal(31, mnth2.num_of_days)
    assert_equal(31, mnth3.num_of_days)
  end

  def test_03_leap_year
    yr = Calendar.new(2,2400)
    yr2 = Calendar.new(2,2000)
    yr3 = Calendar.new(2,2100)
    yr4 = Calendar.new(2,2012)
    yr5 = Calendar.new(2,1800)
    yr6 = Calendar.new(2,1900)
    yr7 = Calendar.new(2,2013)
    assert_equal(true, yr.leap_year?)
    assert_equal(true, yr2.leap_year?)
    assert_equal(false, yr3.leap_year?)
    assert_equal(true, yr4.leap_year?)
    assert_equal(false, yr5.leap_year?)
    assert_equal(false, yr6.leap_year?)
    assert_equal(false, yr7.leap_year?)
  end

  def test_04_start_day
    yr = Calendar.new(9,2012)
    yr2 = Calendar.new(4,2012)
    yr3 = Calendar.new(5,2013)
    yr4 = Calendar.new(2,2014)
    yr5 = Calendar.new(3,2030)
    yr6 = Calendar.new(1,2030)
    yr7 = Calendar.new(2,1865)
    assert_equal("Saturday",yr.start_day)
    assert_equal("Sunday",yr2.start_day)
    assert_equal("Wednesday",yr3.start_day)
    assert_equal("Saturday",yr4.start_day)
    assert_equal("Friday",yr5.start_day)
    assert_equal("Tuesday",yr6.start_day)
    assert_equal("Wednesday",yr7.start_day)
  end

  def test_05_print_one_month
    yr = Calendar.new(9,2012)
    expected = []
    expected << "   September 2012   "
    expected << "Su Mo Tu We Th Fr Sa"
    expected << "                   1"
    expected << " 2  3  4  5  6  7  8"
    expected << " 9 10 11 12 13 14 15"
    expected << "16 17 18 19 20 21 22"
    expected << "23 24 25 26 27 28 29"
    expected << "30"
    assert_equal(expected,yr.print_month)
  end
end
