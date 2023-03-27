require './lib/node'

class LinkedList
  attr_accessor :head, :next_node

  def initialize
    @head = nil

  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      current = @head
      while current.next_node != nil
        current = current.next_node
      end
      current.next_node = Node.new(data)
     
    end

  end

  def count
    count = 0
    current = @head
    while current != nil
      count += 1
      current = current.next_node
    end
    count

  end

  def to_string
    if
      current = @head
      string = ""
      while current != nil
        string += current.data.to_s
        string += " " if current.next_node !=nil
      # loop data to print in " " / "#{data}"
       # str.concat("#{current.data}")
      # str += current.data.to_s
        current = current.next_node
      end
      string
    else
     ''
    end
  end
end
