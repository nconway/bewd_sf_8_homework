# Nicole Conway number game
# this class keeps track of the user's name.

class Player
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def welcome
    puts "Welcome #{name}"
  end
end