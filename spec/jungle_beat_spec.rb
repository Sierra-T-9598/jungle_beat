require './lib/linked_list'
require './lib/node'
require './lib/jungle_beat'

RSpec.describe JungleBeat do
  it 'exists' do
    jb = JungleBeat.new
    expect(jb).to be_instance_of(JungleBeat)
  end

  it 'instantiates a new linked list' do
    jb = JungleBeat.new
    expect(jb.list).to be_instance_of(LinkedList)
    expect(jb.list.head).to eq(nil)
  end

  it 'can append nodes' do
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    expect(jb.list.head.data).to eq("deep")
    expect(jb.list.head.next.data).to eq("doo")
    jb.append("woo hoo shu")
    expect(jb.count).to eq(6)
  end

  it 'can play the beats aloud' do
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")
    expect(jb.count).to eq(6)
    jb.play
  end
end
