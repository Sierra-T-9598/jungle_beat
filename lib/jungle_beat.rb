require "./lib/node"
require "./lib/linked_list"

class JungleBeat < LinkedList
  attr_accessor :list
  def initialize
    @list = LinkedList.new
  end

  def split_string(string)
    string.split(' ')
  end

  def append(string)
    array = split_string(string)
    amount = array.count
    while list.is_empty?
      head = Node.new(array.first)
      @list.append(head.data)
      amount -= 1
    end
    if list.is_empty? == false
      (amount).times do
        current_node = @list.head
        array.shift
        new_node = Node.new(array[0])

        while current_node.next != nil
          current_node = current_node.next
        end
        current_node.next = new_node
      end
    end
  end

  def count
    list.count
  end

  def play
    beats = list.to_string
    `say -r 400 #{beats}`
  end
end
