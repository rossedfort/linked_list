require_relative 'node'

class LinkedList

attr_reader :head

  def empty?
    @head == nil
  end

  def head
    @head.next_node.data
  end

  def find_tail
    current = @head
    while current.next_node != nil
      current = current.next_node
    end
    current
  end

 def tail_data
    find_tail.data
 end

  def prepend(data)
    new_node = Node.new(data)
    new_node.next_node = @head
    @head = new_node
  end

  def append(data)
    new_node = Node.new(data)
    new_node.next_node = @head
    @head = new_node
  end

  def find(data)
    current = Node.new(data)
    while current != nil
      return current if current.data == data
      current = current.next_node
    end
    nil
  end

  def count
    counter = 0
    while @head != nil
      @head = @head.next_node
      counter += 1
    end
    counter
  end

  def pop
    return nil if empty?
    popped = @head
    @head = @head.next_node
    popped.data
  end

  def insert(data)
    node = Node.new(data)
    first_node = @head.next_node
    @head.next_node = node
    node.next_node = first_node
  end

 end
