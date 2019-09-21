class Team
  attr_accessor :name, :motto
  def initialize(arguments)
    @name = arguments[:name]
    @motto = arguments[:motto]
  end
end
