Here you will be able to understand classes:
#This is a class method example 
class Ticket

def self.price #( to define this method you can ony use either the name of the class or word "self")

 puts "£50"
end

end

Ticket.price

#This class only prints tickets with £50 of value




# Here is a method on how to write a functional classes. 

class Ticket
  attr_reader :price, :destination

  def initialize(price, destination ="Warsaw") #when our ticket is borned we are going to run an agrument with price through it
    @price = price
    @destination = destination

  end

  def price=(price) # no space here!! This is called setter method we call it to be able to move prices
    @price = price
  end
end

 my_ticket = Ticket.new(50,"Lisbon")
 puts my_ticket.price = 60
 my_ticket.destination

puts "price for my ticket is #{my_ticket.price} and I am going to #{my_ticket.destination}"

 my_other_ticket = Ticket.new(60)
 my_other_ticket.price
 my_other_ticket.destination
 
 
 
 # Testing classes - note that you can only have default value for the last argument
 
 require_relative "classes_accessor_with_method"
require "test/unit"

#name of test class must be different to original class
class TicketToTrain < Test::Unit::TestCase

  def test_if_returns_right_price
    my_ticket = Ticket.new(50)
    assert_equal(50, my_ticket.price)
  end

  def test_if_returns_right_destination
  my_ticket = Ticket.new(1,"Lisbon") # this is important
  # you will have to put first parameter in as well . we didn't have to do it with the first one as we had a set default for Warsaw
  assert_equal("Lisbon", my_ticket.destination)
  end
end

