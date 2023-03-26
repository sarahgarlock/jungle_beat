class LinkedList
  attr_reader :head, :next_node

  def initialize
    @head = nil

  end

  def append(data)
    current = Node.new(data)
    last_node = nil
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
    current = @head
    while current != nil
      # loop data to print in " " / "#{data}"
      current = current.next_node
    end

  end


end

  #  From another student
  #  def append(data)
  #     node = @head
  #     last_node = nil
  #     if node.nil?
  #       @head = Node.new(data)
  #     else
  #       until node.nil?
  #         last_node = node
  #         node = node.next_node
  #       end
  #       last_node.next_node = Node.new(data)
  #     end
  #     data
  #   end