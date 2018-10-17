require './lib/ship'

class Space
  attr_reader     :status
  attr_accessor   :ship

  def initialize(status = "  ")
    @status = status
    @ship = nil
  end

  def hit
    @status = "H "
  end

  def miss
    @status = "M "
  end

end
