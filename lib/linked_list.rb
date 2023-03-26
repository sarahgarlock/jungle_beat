class LinkedList
  attr_accessor :head, :next_node

  def initialize
    @head = nil
    @count = 0
  end

  def append(data)
    @head = Node.new(data)
    "#{data}"
  
  end

  def count
    # tells us how many pieces of data are in the list
  end

end