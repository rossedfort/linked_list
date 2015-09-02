require_relative 'node'

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
    data
    new_node = Node.new(data)
    find_tail.pointer = new_node
  end

  def find(data)
    current = Node.new(data)
    while current != nil
      return current if current.data == data
      current = current.pointer
    end
    nil
  end

  # def insert(data, position)
  #   new_node = Node.new("a")
  #   new_node.data
  # end

  def inspect
    "#<List: #{@head.inspect}>"
  end

 end

 list = LinkedList.new
 list.append("a")
 list.inspect
 list.append("b")
 list
 list.append("c")
 list


#<List "a"->"b"->"c">
