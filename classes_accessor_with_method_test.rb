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
