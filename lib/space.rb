class Space
  attr_reader     :status

  def initialize(status = "  ")
    @status = status
    @occupied = false
  end

  def hit
    @status = "H "
      # change value @ that coordinate to "H "
  end

  def miss
    @status = "M "
      # change value @ that coordinate to "M "
  end

  def occupied?
    
  end

end
