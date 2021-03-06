require './lib/linked_list'
require './lib/jungle_beat'
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
# p list = LinkedList.new
# p list.append("plop")
# p list.to_string
# p list.append("suu")
# p list.prepend("dop")
# p list.to_string
# p list.count
# p list.insert(1, "woo")
# p list.to_string

#Iteration 4
# p list = LinkedList.new
# list.append("deep")
# list.append("woo")
# list.append("shi")
# list.append("shu")
# list.append("blop")
# p list.to_string
# first position indicates first position to return and second specifies how many elements to return
# p list.find(2, 1)
# p list.find(1, 3)
# p list.includes?("deep")
# p list.includes?("dep")
# list.pop
# list.pop
# list.pop
# p list.to_string

#Iteration 5
# p jb = JungleBeat.new
# p jb.list
# p jb.list.head
# jb.append("deep doo ditt")
# p jb.list.head.data
# p jb.list.head.next.data
# jb.append("woo hoo shu")
# p jb.count

#Iteration 6
p jb = JungleBeat.new
jb.append("deep doo ditt woo hoo shu")
p jb.count
p jb.list.count
p jb.play
