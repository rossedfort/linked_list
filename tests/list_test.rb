require 'minitest/autorun'
require 'minitest/emoji'
require './lib/list'
require './lib/node'

class ListTests < Minitest::Test

  def test_you_can_create_new_nodes
    assert Node.new("a")
  end

  def test_you_can_create_a_nil_head
    assert_equal nil, LinkedList.new.node
  end

  def test_you_can_create_a_list
    assert LinkedList.new(nil)
  end

  def test_you_can_create_a_list_with_a_node
    node = Node.new("a")
    list = LinkedList.new(node)
    assert_equal node, list.node
  end

  def test_append # add an element to the end of the list
    list = LinkedList.new(Node.new("a"))
    new_list = list.append(Node.new("b"))
    assert new_list.data, "b"
  end

  # def prepend # add an element at the beginning of the list
  # end
  # def insert # put an element at an arbitrary position in the list
  # end
  #
  # def test_includes? # gives back true or false whether the supplied value is in the list
  #   node = Node.new("a")
  #   list = LinkedList.new(node)
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
