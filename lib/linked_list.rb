require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    if n < 1 || head == nil
      return nil
    end
    test = head
    array = []
    until test.next_node == nil
      array << test
      test = test.next_node
    end
    array << test
    
    array[-n] ? array[-n].value : nil
  end

end
