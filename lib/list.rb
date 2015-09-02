require_relative 'node'  # => true

class LinkedList
  def initialize
    @head = Node.new  # => #<Node:0x007fecd4889e38 @data=nil, @pointer=nil>
  end

  def return_head
    @head.pointer.data  # => "a"
  end

  def find_tail
    current = @head              # => #<Node:0x007fecd4889e38 @data=nil, @pointer=nil>, #<Node:0x007fecd4889e38 @data=nil, @pointer=#<Node:0x007fecd4889a28 @data="a", @pointer=nil>>
    until current.pointer.nil?   # => true, false, true
      current = current.pointer  # => #<Node:0x007fecd4889a28 @data="a", @pointer=nil>
    end                          # => nil, nil
    current                      # => #<Node:0x007fecd4889e38 @data=nil, @pointer=nil>, #<Node:0x007fecd4889a28 @data="a", @pointer=nil>
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
    data                          # => "a", "b"
    new_node = Node.new(data)     # => #<Node:0x007fecd4889a28 @data="a", @pointer=nil>, #<Node:0x007fecd4889190 @data="b", @pointer=nil>
    find_tail.pointer = new_node  # => #<Node:0x007fecd4889a28 @data="a", @pointer=nil>, #<Node:0x007fecd4889190 @data="b", @pointer=nil>
  end

  def find(data)
    current = Node.new(data)
    while current != nil
      return current if current.data == data
      current = current.pointer
    end
    nil
  end

 end

list = LinkedList.new  # => #<LinkedList:0x007fecd4889e60 @head=#<Node:0x007fecd4889e38 @data=nil, @pointer=nil>>
list.append("a")       # => #<Node:0x007fecd4889a28 @data="a", @pointer=nil>
list.append("b")       # => #<Node:0x007fecd4889190 @data="b", @pointer=nil>
list.return_head       # => "a"
