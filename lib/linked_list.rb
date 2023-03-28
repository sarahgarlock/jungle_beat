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
    data
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
      string = ''
      until current == nil
        string += current.data.to_s
        string += ' ' if current.next_node != nil
      # loop data to print in " " / "#{data}"
       # str.concat("#{current.data}")
      # str += current.data.to_s
        current = current.next_node
      end
      string
    end
  end

  def prepend(data) # add new node at the beginning
    new_node = Node.new(data) # new node with specified data
    new_node.next_node = @head
    @head = new_node # new head of list is new_node
  end


  def insert(index, data)
    new_node = Node.new(data)
    current = @head
    previous = nil
    current_index = 0

    if index == 0 # if index is 0, node will be current head
      new_node.next_node = current
      @head = new_node
    end
    while current_index < index && !current.nil? # inserts if there is a head
      previous = current
      current = current.next_node # sets next_node to the current node
      current_index += 1 # transverses
    end
    previous.next_node = new_node
    new_node.next_node = current
  end


  def find(index, elements)
    data = ""
    counter = 0
    current_node = @head
    return false if !current_node.next_node
    until counter == index
      current_node = current_node.next_node
      counter += 1
    end
    counter = 0
    while counter < elements
      data += "#{current_node.data} "
      counter += 1
      current_node = current_node.next_node
    end
    data.rstrip
  end

  def includes?(sound)
    string = to_string.split
    if string.include?(sound)
      true
    else
      false
    end
  end

  def pop
    if @head.nil?
      return nil
    elsif @head.next_node.nil?
      value = @head.value
      @head = nil
      return value
    else
      current_node = @head
      while current_node.next_node.next_node != nil
        current_node = current_node.next_node
      end
      value = current_node.next_node.value
      current_node.next_node = nil
      return value
    end
  end

end

  