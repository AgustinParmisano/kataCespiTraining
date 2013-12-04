require "../abilities.rb"
require 'minitest/autorun'

class TestAbilities < MiniTest::Unit::TestCase
  def setup
    @ability1 = Ability.new('neim', 'descripchon', 'taip', 'pointz')
    @ability2 = Ability.new('neim2', 'descripchon2', 'taip2', 'pointz2')
  end
  def test_initialize
    assert_equal(@ability1.name, 'neim')
    assert_equal(@ability1.description,'descripchon')
    assert_equal(@ability1.type,'taip')
    assert_equal(@ability1.points,'pointz')
  end
end
