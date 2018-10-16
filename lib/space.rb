require './lib/ship'

class Space
  attr_reader     :status

  def initialize(status = "  ")
    @status = status
  end

  def hit
    @status = "H "
      # change value @ that instance of a space-obect to "H "
  end

  def miss
    @status = "M "
      # change value @ that instance of a space-obect to "M "
  end

end
