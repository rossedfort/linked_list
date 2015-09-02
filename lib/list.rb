require_relative 'node'  # => true

class LinkedList #create the list

  attr_reader :node  # => nil

  def initialize(node = nil)
    @node = node              # => nil
  end

  def append(data)
    if node.nil?
      node = Node.new(data)
    else
      current_node = @node
      while current_node.pointer
        current_node = current_node.pointer
      end
      current_node.pointer = Node.new(data)
    end
  end

end
