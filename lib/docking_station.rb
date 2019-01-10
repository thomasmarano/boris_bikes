require_relative 'bike'

class DockingStation
  #attr_reader :bike

  def release_bike
      fail 'There are no bikes!' unless @bike
      @bike
  end

  def dock(bike)
      fail 'This dock is full' if @bike
      @bike = bike
  end

  def bike
    @bike
  end

end
