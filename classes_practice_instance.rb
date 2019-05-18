#This is an instance method example


class Ticket

  def initialize(price, destination ="Warsaw") #when our ticket is borned we are going to run an agrument with price through it
    @price = price
    @destination = destination

  end

  def price
     @price
  end

  def destination
     @destination
  end

end

 my_ticket = Ticket.new(50,"Lisbon")
 my_ticket.price
 my_ticket.destination

puts "price for my ticket is #{my_ticket.price} and I am going to #{my_ticket.destination}"

 my_other_ticket = Ticket.new(60)
 my_other_ticket.price
 my_other_ticket.destination

#creating an instance means creating an object of that class

# try creating test asking for specific output
