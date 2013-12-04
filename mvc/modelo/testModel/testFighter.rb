require "../fighter.rb"
require 'minitest/autorun'

class TestAbilities < MiniTest::Unit::TestCase
  def setup
    @fighter1 = Fighter.new('neim', 'descripchon', 'taip', 'pointz')
    @fighter2 = Fighter.new('neim2', 'descripchon2', 'taip2', 'pointz2')
  end
  def test_initialize
    assert_equal(@fighter1.name, 'neim')
    assert_equal(@fighter1.description,'descripchon')
    assert_equal(@fighter1.type,'taip')
    assert_equal(@fighter1.points,'pointz')
  end
end
