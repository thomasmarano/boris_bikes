class Bike
  attr_reader :broken
  def working?
    true
  end
  def docked?
    true
  end
  def report_broken
    @broken = true
  end
  def broken?
    @broken
  end
end
