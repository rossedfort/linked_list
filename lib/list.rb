require_relative 'node'

class LinkedList

attr_reader :head

  def empty?
    @head == nil
  end

  def head
    if @head != nil
      @head
    else
      nil
    end
  end

  def find_tail
    current = @head
    if @head != nil
      while current.next_node != nil
        current = current.next_node
      end
    else
      nil
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
    if empty?
      @head = new_node
    else
      find_tail.next_node = new_node
    end
  end

  def includes?(data)
    !find_value(data).nil?
  end

  def find_value(data)
    current = head
    while current != nil
      return current if current.data == data
      current = current.next_node
    end
    nil
  end

  def remove_value(data)
    return nil if empty?
    if @head.data == data
      deleted = @head
      @head = @head.next_node
    end
    deleted.data
  end

  def count
    counter = 0
    current = @head
    while current != nil
      current = current.next_node
      counter += 1
    end
    counter
  end

  def pop
    return nil if empty?

  end

  def insert(data)
    node = Node.new(data)
    first_node = @head.next_node
    @head.next_node = node
    node.next_node = first_node
  end

  def find_index(position, data)
    node = Node.new(data)
    position = 0
    while @head != nil
      @head = node.next_node
      new_node = node
    end
    position += 1
    node
  end

  def remove_index(position, data)
    node = Node.new(data)
    while @head != nil
      @head = node.next_node
      removed = node
    end
    removed.data
  end

end
