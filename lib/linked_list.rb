require "./lib/node"
class LinkedList
  attr_accessor :head
  def initialize
    @head = nil
  end

  def is_empty?
    if @head == nil
      return true
    else
      false
    end
  end

  def append(data)
    if self.is_empty?
      @head = Node.new(data)
    else
      current_node = @head
      new_node = Node.new(data)
      while current_node.next != nil
        current_node = current_node.next
      end
      current_node.next = new_node
    end
  end

  def pretty_print
        array = []
        current_node = @head
        if self.is_empty?
          array
        else
            while current_node.next != nil
                array << current_node.data
                current_node = current_node.next
            end
          array << current_node.data
       end
    array
  end

  def count
    pretty_print.count
  end

  def to_string
      self.pretty_print.join(" ")
  end

  def prepend(data)
    if self.is_empty?
      @head = Node.new(data)
    else
      current_head = Node.new(data)
      current_head.next = @head
      @head = current_head
    end
  end

  def insert(position, data)
    current_node = @head
    (position - 1).times do
      raise "list not long enough" if current_node.nil?
      current_node = current.next
    end
    new_node = Node.new(data)
    new_node.next = current_node.next
    current_node.next = new_node
  end
end
