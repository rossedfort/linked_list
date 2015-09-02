require_relative 'node'  # => true

class LinkedList #create the list

  attr_reader :node  # => nil

  def initialize(node = nil)
    @node = node              # => nil
  end

end

# def tail?
#   @node.data.nil?
# end
