
require 'rspec'
require "./lib/linked_list"
require "./lib/node"
require "./lib/jungle_beat"

RSpec.describe JungleBeat do
  it 'exists' do
    jb = JungleBeat.new

    expect(jb).to be_an_instance_of(JungleBeat)
  end
end
