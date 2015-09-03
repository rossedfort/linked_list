require_relative 'node'  # => true

class LinkedList

attr_reader :head  # => nil

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
    new_node = Node.new(data)     # => #<Node:0x007fda7b83ae48 @data="a", @next_node=nil>, #<Node:0x007fda7b83a628 @data="b", @next_node=nil>
    if new_node.next_node == nil  # => true, true
      @head = new_node            # => #<Node:0x007fda7b83ae48 @data="a", @next_node=nil>, #<Node:0x007fda7b83a628 @data="b", @next_node=nil>
      new_node.next_node = @head  # => #<Node:0x007fda7b83ae48 @data="a", @next_node=#<Node:0x007fda7b83ae48 ...>>, #<Node:0x007fda7b83a628 @data="b", @next_node=#<Node:0x007fda7b83a628 ...>>
    end                           # => #<Node:0x007fda7b83ae48 @data="a", @next_node=#<Node:0x007fda7b83ae48 ...>>, #<Node:0x007fda7b83a628 @data="b", @next_node=#<Node:0x007fda7b83a628 ...>>
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

list = LinkedList.new  # => #<LinkedList:0x007fda7b83af88>
list.append("a")       # => #<Node:0x007fda7b83ae48 @data="a", @next_node=#<Node:0x007fda7b83ae48 ...>>
list.append("b")       # => #<Node:0x007fda7b83a628 @data="b", @next_node=#<Node:0x007fda7b83a628 ...>>

list  # => #<LinkedList:0x007fda7b83af88 @head=#<Node:0x007fda7b83a628 @data="b", @next_node=#<Node:0x007fda7b83a628 ...>>>
