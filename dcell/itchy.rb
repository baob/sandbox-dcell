require 'dcell'

DCell.start :id => "itchy", :addr => "tcp://127.0.0.1:9001"

class Arbitrary
  def initialize(anything)
    @anything = anything
  end
end


class Itchy
  include Celluloid

  def initialize
    puts "Ready for mayhem!"
    @n = 0
  end

  def fight(who)
    puts "you're fighting #{who.inspect} ?"
    @n = (@n % 6) + 1
    if @n <= 3
      puts "Bite!"
    else
      puts "Fight!"
    end
  end
end

Itchy.supervise_as :itchy
sleep