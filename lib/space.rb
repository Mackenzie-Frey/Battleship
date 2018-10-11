class Space
  attr_reader     :status

  def initialize(status = "  ")
    @status = status
  end

  def hit
    @status = "H "
      # change value @ that coordinate to "H "
  end

  def miss
    @status = "M "
      # change value @ that coordinate to "M "
  end

end
