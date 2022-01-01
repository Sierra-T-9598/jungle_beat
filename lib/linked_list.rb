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
      current_node = current_node.next
    end
    new_node = Node.new(data)
    new_node.next = current_node.next
    current_node.next = new_node
  end

  def find(position, return_number)
    if position >=  self.count || position < 0
      return nil
    end

    p = 0
    new_list = []
    current_node = @head
    while p < position do
      current_node = current_node.next
      p += 1
    end
    new_list << current_node.data

    search = return_number - (self.count - return_number)
    if search == -1
      (search * -1).times do
        current = current_node.next
        new_list << current.data
      end

    elsif return_number == 0
      new_list

    else
      search.times do
        current = current_node.next
        new_list << current.data
        new_list << current.next.data
      end
    end

    return new_list.join(" ")
  end

  def includes?(value)
    current = @head

    if current.data == value
      return true
    else
      loop do
        current = current.next
        if current.data == value || current.next == nil
          break
        end

      end
    end

    if current.data != value
      return false
    else
      return true
    end
  end

  def pop

    current = @head

    last_data = self.pretty_print.last
    if current.data == last_data
      @head = current.next
    else
      while(current.next != nil) && (current.next.data != last_data )
        current = current.next
      end
      unless current.next == nil
        current.next = (current.next).next
      end
    end
  end
end
