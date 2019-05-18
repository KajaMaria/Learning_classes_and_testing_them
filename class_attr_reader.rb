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
