class Space
  attr_reader     :status

  def initialize(status = "empty")
    @status     = status
  end

end
