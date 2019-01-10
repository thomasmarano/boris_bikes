class Bike
  attr_accessor :condition
  CONDITION = "working"
  def initialize(condition = CONDITION)
    @condition = condition
  end
  def working?
    true
  end
  def docked?
    true
  end
  def bike_broken
    @condition = "broken"
  end
end
