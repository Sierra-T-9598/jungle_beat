require "./lib/node"
require './lib/linked_list'
#Iteration 0
# node = Node.new("plop")
# p node.data
# p node.next
# #Iteration 1
p list = LinkedList.new
# p list.head
p list.append("doop")
# p list.head
# p list.head.next
# p list.count
# p list.to_string
#Iteration 2
p list.append("deep")
p list.head.next
p list.count
p list.to_string
