require_relative 'node'

class LinkedList #create the list

  def initialize(head = nil)
    @head = head
  end

  def new_node
    Node.new("ross")
  end

  def append # add an element to the end of the list
    new_node
  end

  def prepend # add an element at the beginning of the list
  end

end

LinkedList.new.append

class Tests

  # def insert # put an element at an arbitrary position in the list
  # end
  #
  # def includes? # gives back true or false whether the supplied value is in the list
  # end
  #
  # def pop # removes an element from the end of the list
  # end
  #
  # def count # count the number of elements in the list
  # end
  #
  # def return_head # return the head value at the beginning of the list
  # end
  #
  # def return_tail # return the tail value at the end of the list
  # end
  #
  # def find_by_index # find the value at a numeric position
  # end
  #
  # def find_by_value # find_by_value finds the position of the first occurrence of a value
  # end
  #
  # def remove_by_index # remove_by_index removes the value at the specified index
  # end
  #
  # def remove_by_value # remove_by_value removes the first occurrence of the specified value
  # end

end
