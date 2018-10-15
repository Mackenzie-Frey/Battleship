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

  # or define a .to_s string method

  # def inspect
  #   # create a string whenver you call puts on it
  #   "1234"
  #   # make a string method that
  #   # call it in our puts
  # end

end
