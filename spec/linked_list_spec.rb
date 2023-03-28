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

    # list.append('doop')

    expect(list.append('doop')).to eq('doop')
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
  #  binding.pry 
  end

  it 'prepends' do
    list = LinkedList.new

    list.append('plop')
    list.append('suu')
    list.prepend('dop')
    list.to_string

    expect(list.head.data).to eq('dop')
    expect(list.count).to eq (3)
    expect(list.to_string).to eq('dop plop suu')
  end


  it 'inserts nodes' do
    list = LinkedList.new

    list.append('plop')
    list.append('suu')
    list.prepend('dop')
    list.insert(1, 'woo')


    # binding.pry
    expect(list.to_string).to eq ('dop woo plop suu')
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
  end

  it 'includes a sound' do
    list = LinkedList.new

    list.append('deep')
    list.append('woo')
    list.append('shi')
    list.append('shu')
    list.append('blop')

    list.includes?('deep')

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

  it 'removes the last element' do
    list = LinkedList.new

    list.append('deep')
    list.append('woo')
    list.append('shi')
    list.append('shu')
    list.append('blop')

    list.pop
    list.pop

    expect(list.to_string).to eq('deep woo shi')
  end
end