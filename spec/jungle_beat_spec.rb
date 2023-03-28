require 'pry'
require 'rspec'
require "./lib/linked_list"
require "./lib/node"
require "./lib/jungle_beat"

RSpec.describe JungleBeat do
  it 'exists' do
    jb = JungleBeat.new

    expect(jb).to be_an_instance_of(JungleBeat)
  end

  xit 'appends multiple sounds' do
    jb = JungleBeat.new

    jb.append('deep doo ditt')
    expect(jb).to eq('deep doo ditt')

    jb.append('woo hoo shu')
    expect(jb).to eq('deep doo ditt woo hoo shu')
  end

  it 'counts all added sounds' do
    jb = JungleBeat.new

    jb.count
    expect(jb.count).to eq(0)

    jb.append('deep doo ditt woo hoo shu')
    expect(jb.count).to eq(6)
  end
end
