require 'rspec'
require './lib/node'
require 'pry'

RSpec.describe Node do
  it 'exists' do  
    node = Node.new('plop')

    expect(node).to be_a(Node)
  end

  it 'has data' do
    node = Node.new('plop')

    expect(node.data).to eq('plop')
  end

  it 'has no next node' do
    node = Node.new('plop')
    node.next_node

    expect(node.next_node).to eq(nil)
  end

end

