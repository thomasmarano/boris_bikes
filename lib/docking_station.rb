require_relative 'bike'

class DockingStation
  attr_reader :docks

  def initialize
      @docks = []
  end
  def release_bike
      fail 'There are no bikes!' if @docks.length == 0
      @docks.shift()
  end

  def dock(bike)
      fail 'This dock is full' if @docks.length == 20
      @docks.push(bike)
  end

end
