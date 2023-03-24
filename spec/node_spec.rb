require 'rspec'
require './lib/node'
require 'pry'

RSpec.describe Node do
  it 'exists' do  
    data = 'plop'
    node = Node.new(data)

    expect(node).to be_a(Node)
  end

  it 'has data' Node do
    data = 'plop'
    node = Node.new(data)

    expect(node.data).to eq('plop')
  end


end

