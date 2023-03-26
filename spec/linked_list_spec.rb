require 'rspec'
require './lib/linked_list'
require './lib/node'
require 'pry'


RSpec.describe LinkedList do
  it 'exists' do
    list = LinkedList.new

    expect(list).to be_a(LinkedList)
    expect(list.head).to eq(nil)
  end

  it 'appends nodes to the end' do
    list = LinkedList.new

    list.append('doop')

    expect(list.append('doop')).to eq("doop")
    expect(list.head.next_node).to eq(nil)
    # binding.pry
  end

  it 'counts' do
    list = LinkedList.new

    list.count
# binding.pry
    expect(list.count).to eq(1)

  end


end