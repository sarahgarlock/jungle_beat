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

    expect(list.head.data).to eq('doop')
    expect(list.head.next_node).to eq(nil)
  end

  it 'counts' do
    list = LinkedList.new

    expect(list.count).to eq(0)

    list.append('doop')

    expect(list.count).to eq(1)

    list.append('deep')

    expect(list.count).to eq(2)

  end

  it 'returns nodes to a string' do
    list = LinkedList.new

    list.append('doop')
    list.append('deep')

    expect(list.to_string).to eq('doop deep')
   binding.pry 
  end

end