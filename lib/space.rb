class Space
  attr_reader     :coordinate,
                  :status

  def initialize(coordinate, status = "empty")
    @coordinate = coordinate
    @status     = status
  end

end
