require 'minitest/autorun'
require 'minitest/emoji'
require './lib/list'
require './lib/node'

class ListTests < Minitest::Test

  def test_you_can_create_new_nodes
    assert Node.new("a")
  end

  def test_nodes_take_a_paramter
    assert_equal "a", Node.new("a").data
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

  def test_append_an_element_to_the_end_of_the_list
    list = LinkedList.new(Node.new("a"))
    node = Node.new("b")
    new_list = list.append(node)
    assert_equal node, new_list.data
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

  def test_pop_an_element_from_the_end_of_the_list
    list = LinkedList.new(Node.new("a"))
    node = Node.new("b")
    new_list = list.append(node)
    list.remove(node)
    assert_equal node, new_list.data
  end

  # def test_count_the_number_of_elements_in_the_list
  #   list = LinkedList.new(Node.new("a"))
  #   new_list = list.append(Node.new("b"))
  #   assert 2, new_list.count
  # end

  # def return_head # return the head value at the beginning of the list
  # end
  #
  # def return_tail # return the tail value at the end of the list
  # end
  #
  # def find_by_index # find the value at a numeric position
  # end

  def test_find_by_value # find_by_value finds the position of the first occurrence of a value
    node = Node.new("a")
    list = LinkedList.new(node)
    found = list.find("a")
    assert_equal node, found
  end

  # def remove_by_index # remove_by_index removes the value at the specified index
  # end
  #
  # def remove_by_value # remove_by_value removes the first occurrence of the specified value
  # end


end
