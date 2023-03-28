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
    expect(list.head).to be_a(Node)

    list.append('deep')
    list.append('plop')

    expect(list.head.data).to eq('doop')
    expect(list.head.next_node.data).to eq ('deep')
    expect(list.head.next_node.next_node.data).to eq('plop')
  end

  it 'counts' do
    list = LinkedList.new

    expect(list.count).to eq 0

    list.append('doop')

    expect(list.count).to eq 1

    list.append('deep')
    list.append('plop')

    expect(list.count).to eq 3

  end

  it 'returns nodes to a string' do
    list = LinkedList.new

    list.append('doop')
    list.append('deep')

    expect(list.to_string).to eq('doop deep')

    list.append('plop')

    expect(list.to_string).to eq ('doop deep plop')
  end

  it 'prepends' do
    list = LinkedList.new

    expect(list.head).to eq(nil)

    list.append('plop')
    list.append('suu')
    list.prepend('dop')
    list.to_string

    expect(list.head.data).to eq('dop')
    expect(list.count).to eq (3)
    expect(list.to_string).to eq('dop plop suu')
  end


  it 'inserts nodes at specific position' do
    list = LinkedList.new

    list.append('plop')
    list.append('suu')
    list.prepend('dop')
    list.insert(1, 'woo')

    expect(list.count).to eq 4
    expect(list.to_string).to eq ('dop woo plop suu')
    expect(list.head.next_node.data).to eq ('woo')
  end

  it 'finds nodes' do
    list = LinkedList.new

    list.append('shi')
    list.append('shu')
    list.append('blop')
    list.prepend('deep')
    list.insert(1, 'woo')

    expect(list.to_string).to eq ('deep woo shi shu blop')

    expect(list.find(2, 1)).to eq('shi')
    expect(list.find(1, 3)).to eq('woo shi shu')
    expect(list.find(0, 5)).to eq('deep woo shi shu blop')
  end

  it 'includes a sound' do
    list = LinkedList.new

    list.append('deep')
    list.append('woo')
    list.append('shi')
    list.append('shu')
    list.append('blop')

    expect(list.includes?('deep')).to be true
  end
  
  it 'does not include a sound' do
    list = LinkedList.new
    
    list.append('deep')
    list.append('woo')
    list.append('shi')
    list.append('shu')
    list.append('blop')

    list.includes?('dep')

    expect(list.includes?('dep')).to be false
  end

  it 'removes the last node' do
    list = LinkedList.new

    list.append('deep')
    list.append('woo')
    list.append('shi')
    list.append('shu')
    list.append('blop')

    list.pop
    
    expect(list.to_string).to eq('deep woo shi shu')

    list.pop
    list.pop

    expect(list.to_string).to eq('deep woo')
  end
end