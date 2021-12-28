require './lib/linked_list'
#Iteration 0
# node = Node.new("plop")
# p node.data
# p node.next

# #Iteration 1
# p list = LinkedList.new
# p list.head
# p list.append("doop")
# p list.head
# p list.head.next
# p list.count
# p list.to_string

#Iteration 2
# p list = LinkedList.new
# p list.append("doop")
# p list.append("deep")
# p list.head.next
# p list.count
# p list.to_string

#Iteration 3
p list = LinkedList.new
p list.append("plop")
p list.to_string
p list.append("suu")
p list.prepend("dop")
p list.to_string
p list.count
p list.insert(1, "woo")
p list.to_string
