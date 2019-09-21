class Team

  attr_accessor :name, :heroes
  TEAM = []

  def initialize(args)
    @name = args[:name]
    @heroes = args[:heroes]

    TEAM << self
  end

  def self.all
    TEAM
  end
end
