class Hero
  attr_accessor :name, :power, :bio
  def initialize(arguments)
    @name = arguments[:name]
    @power = arguments[:power]
    @bio = arguments[:bio]
  end
end
