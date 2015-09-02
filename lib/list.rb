require_relative 'node'

class LinkedList

  attr_reader :node

  def initialize(node = nil)
    @node = node
  end

  def tail?
    @node.data.nil?
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

  def remove(data)
    if node.data == data
      node = node.pointer
    else
      current_node = node
      prev_node = node
      while current_node
        if current_node.data == data
          prev_node.pointer = current_node.pointer
          return true
        end
        prev_node = current_node
        current_node = current_node.pointer
      end
      nil
    end
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
