require './lib/linked_list'
require './lib/node'

RSpec.describe LinkedList do
  it 'exists' do
    list = LinkedList.new

    expect(list).to be_instance_of(LinkedList)
  end

  it 'defaults to a head of nil' do
    list = LinkedList.new

    expect(list.head).to eq(nil)
  end

  it 'can append data to the list' do
    list = LinkedList.new
    list.append("doop")

    expect(list.head).to_not eq(nil)
    expect(list.head.next).to eq(nil)
  end

  it 'can print an array of the current list' do
    list = LinkedList.new
    list.append("doop")
    list.append("shoop")

    expect(list.pretty_print).to eq(["doop", "shoop"])
  end

  it 'can count the number of things in the list' do
    list = LinkedList.new
    list.append("doop")
    list.append("shoop")

    expect(list.count).to eq(2)
  end

  it 'can convert whatever is in the list to a string' do
    list = LinkedList.new
    list.append("doop")
    list.append("shoop")

    expect(list.to_string).to eq("doop, shoop")
  end
end
