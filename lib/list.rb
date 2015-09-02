require './lib/node'

class LinkedList
  def initialize
     @head = Node.new
   end

   def head_data
     @head.pointer.data
   end

   def find_tail
     current = @head
     until current.pointer.nil?
       current = current.pointer
     end
     current
   end

   def tail_data
     find_tail.data
   end

   def prepend(data)
     node = Node.new(data)
     first_node = @head.pointer
     @head.pointer = node
     node.pointer = first_node
   end

   def append(data)
     new_node = Node.new(data)
     find_tail.pointer = new_node
   end

   def find(data)
     current_node = node
     while current_node != nil
       return current_node if current_node.data == data
       current_node = current_node.pointer
     end
     nil
   end

 end
