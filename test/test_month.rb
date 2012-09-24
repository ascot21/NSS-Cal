require 'test/unit'
require 'month'

class MonthTest < Test::Unit::TestCase

  def test_01_return_month_name
    mnth = Month.new(2)
    assert_equal("February", mnth.name)
  end

  def test_02_month_num_days
    mnth = Month.new(2)
    mnth2 = Month.new(1)
    assert_equal(29, mnth.num_of_days)
    assert_equal(31, mnth2.num_of_days)
  end
end
