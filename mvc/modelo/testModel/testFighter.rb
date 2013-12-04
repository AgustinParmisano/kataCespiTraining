require "../fighters.rb"
require 'minitest/autorun'

class TestFighter < MiniTest::Unit::TestCase
  def setup

    param = {nameF: "exacto",
             lifeF: 2,
             pointsAF: 3,
             pointsDF: 3,
             exp: 120
    }

    @fighter1 = Fighter.new(param)
    @fighter2 = Fighter.new(param)
  end
  def test_initialize
    assert_equal(@fighter1.name, 'exacto')
    assert_equal(@fighter1.life, 2)
    assert_equal(@fighter1.pointsA, 3)
    assert_equal(@fighter1.pointsD, 3)
    assert_equal(@fighter1.experience, 120)
  end
end

