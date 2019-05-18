class Ticket
  attr_accessor :price, :destination

  def initialize(price , destination = "Warsaw") #when our ticket is borned we are going to run an agrument with price through it
    @price = price
    @destination = destination
  end

  def directions
    if @destination == "Lisbon"
      puts "Terminal 5 to #{@destination}"
    elsif @destination == "Warsaw"
      puts "Terminal 8 to #{@destination}"
    else
      puts "Ask for help"

    end
  end
end

 my_ticket = Ticket.new(50,"Lisbon")
 puts my_ticket.price = 60
 my_ticket.destination
 my_ticket.directions

puts "price for my ticket is #{my_ticket.price} and I am going to #{my_ticket.destination}"


 my_other_ticket = Ticket.new(60)
 my_other_ticket.price
 my_other_ticket.destination
 my_other_ticket.directions
