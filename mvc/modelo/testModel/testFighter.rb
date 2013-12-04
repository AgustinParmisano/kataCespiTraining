require "../fighters.rb"
require 'minitest/autorun'

class TestFighter < MiniTest::Unit::TestCase
  def setup

    param = {nameF: "exacto",
             lifeF: 100,
             pointsF: 40,
             exp: 120
    }

    @fighter1 = Fighter.new(param)
    @fighter2 = Fighter.new(param)
  end
  def test_initialize
    assert_equal(@fighter1.name, 'exacto')
    assert_equal(@fighter1.life, 100)
    assert_equal(@fighter1.points, 40)
    assert_equal(@fighter1.experience, 120)
  end
end

=begin
    @name = name
    @abilities = []
    @life = 0
    @points = 0
    @experience = 0
    @estrategyAttack = []
    @estrategyDefense = []
=end
