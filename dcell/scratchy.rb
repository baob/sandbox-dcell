require 'dcell'

DCell.start :id => "scratchy", :addr => "tcp://127.0.0.1:9002"
itchy_node = DCell::Node["itchy"]

class Arbitrary
  def initialize(something)
    @something = something
  end
end

puts "Fighting itchy! (check itchy's output)"

6.times do
  itchy_node[:itchy].fight(Arbitrary.new(:jim))
  sleep 1
end