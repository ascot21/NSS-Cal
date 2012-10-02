require 'test/unit'
require 'cal'

class CalendarTest < Test::Unit::TestCase

  def test_01_return_month_name
    mnth = Month.new(2,2012)
    mnth2 = Month.new(4,2012)
    mnth3 = Month.new(7,2012)
    assert_equal("February", mnth.name)
    assert_equal("April", mnth2.name)
    assert_equal("July", mnth3.name)
  end

  def test_02b_leap_year_if_400
    yr  = Month.new(2,2400)
    yr2  = Month.new(2,2000)
    assert_equal(true, yr.leap_year?)
    assert_equal(true, yr2.leap_year?)
  end

  def test_02c_not_leap_year_if_100
    yr  = Month.new(2,2100)
    yr2  = Month.new(2,1800)
    assert_equal(false, yr.leap_year?)
    assert_equal(false, yr2.leap_year?)
  end

  def test_02d_leap_year_if_4
    yr  = Month.new(2,2012)
    yr2  = Month.new(2,1996)
    assert_equal(true, yr.leap_year?)
    assert_equal(true, yr2.leap_year?)
  end

  def test_02e_not_leap_year_if_random
    yr  = Month.new(2,1993)
    yr2  = Month.new(2,2561)
    assert_equal(false, yr.leap_year?)
    assert_equal(false, yr2.leap_year?)
  end

  def test_03_Calendar_num_day
    mnth = Month.new(1,2013)
    mnth2 = Month.new(7,2013)
    assert_equal(31, mnth.num_of_days)
    assert_equal(31, mnth2.num_of_days)
  end

  def test_03b_february_num_day_when_leap_year
    mnth = Month.new(2,2012)
    assert_equal(29, mnth.num_of_days)
  end

  def test_03c_february_num_day_when_not_leap_year
    mnth = Month.new(2,2011)
    assert_equal(28, mnth.num_of_days)
  end

  def test_04_start_day_non_leap_year
    yr = Month.new(5,2013)
    yr2 = Month.new(2,2014)
    yr3 = Month.new(3,2030)
    assert_equal("Wednesday",yr.start_day)
    assert_equal("Saturday",yr2.start_day)
    assert_equal("Friday",yr3.start_day)
  end

  def test_04b_start_day_leap_year
    yr = Month.new(9,2012)
    yr2 = Month.new(4,2012)
    assert_equal("Saturday",yr.start_day)
    assert_equal("Sunday",yr2.start_day)
  end

  def test_05_print_one_month
    yr = Month.new(9,2012)
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