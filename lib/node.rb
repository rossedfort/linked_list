class Node

attr_accessor :data, :pointer

  def initialize(data = nil, pointer = nil)
    @data = data
    @pointer = pointer
  end
  def inspect
    if @pointer == nil
      "#{data.inspect}"
    else
      "#{data.inspect} -> #{pointer.inspect}"
    end
  end
end
