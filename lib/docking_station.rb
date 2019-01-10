require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :docks, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
      @capacity = capacity
      @docks = []
  end
  def release_bike
      fail 'There are no bikes!' if empty?
      @docks.shift()
  end

  def dock(bike, condition = "working")
      fail 'This dock is full' if full?
      @docks.push(bike)
      if condition != "working"
          bike.bike_broken
      end
  end

private

  def full?
      @docks.length >= @capacity
  end

  def empty?
      @docks.length == 0
  end

end
