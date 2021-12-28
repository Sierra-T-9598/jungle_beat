require "./lib/node"
require './lib/linked_list'

node = Node.new("plop")
p node.data
p node.next

p list = LinkedList.new
p list.head
p list.append("doop")
p list.head
p list.head.next
p list.count
p list.to_string 
