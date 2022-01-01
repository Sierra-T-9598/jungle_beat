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

    expect(list.to_string).to eq("doop shoop")
  end

  it 'can handle multiple nodes' do
    list = LinkedList.new
    list.append("doop")
    list.append("shoop")

    expect(list.head.data).to eq("doop")
    expect(list.head.next.data).to eq("shoop")
  end

  it 'can add to the front of the list' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")

    expect(list.to_string).to eq("dop plop suu")
    expect(list.count).to eq(3)
  end

  it 'can insert slements at a given position' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")

    expect(list.to_string).to eq("dop woo plop suu")
    expect(list.count).to eq(4)
  end

  it 'can find an element to return and specify the number to reutrn after it' do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    expect(list.find(2, 1)).to eq("shi")
    expect(list.find(1, 3)).to eq("woo shi shu")
  end

  it 'can tell whether a supplied value is in the list' do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    expect(list.includes?("deep")).to eq(true)
    expect(list.includes?("dep")).to eq(false)
    expect(list.includes?("shi")).to eq(true)
  end

  it 'can remove the last element from the list' do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    list.pop
    list.pop
    list.pop

    expect(list.to_string).to eq("deep woo")

  end
end
