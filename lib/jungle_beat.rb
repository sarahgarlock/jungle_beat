require "./lib/linked_list"
require "./lib/node"

class JungleBeat
  attr_accessor :list
  def initialize()
    @list = LinkedList.new
  end

  # same append method from LinkedList class. Need to split string, append in three nodes. Use a loop
  # def append(sounds) 
  #   if @head.nil?
  #     @head = Node.new(sounds)
  #     return
  #   end

  #   current = @head
  #   while current.next_node != nil
  #     current = current.next_node
  #   end

  #   current.next_node = Node.new(sounds)
  # end

  def append(sounds)
    added_sounds = added_sounds(sounds)
    added_sounds.each do |added_sound|
      list.append(sound)

 
  # same count method from LinkedList class
  def count
    count = 0
    current = @head
    while current != nil
      count += 1
      current = current.next_node
    end
    count
  end
end