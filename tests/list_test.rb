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
    assert_equal nil, Node.new.pointer
  end

  def test_you_can_create_a_list
    assert LinkedList.new
  end

  def test_append_an_element_to_the_end_of_the_list
    list = LinkedList.new
    list.append("a")
    list.append("b")
    assert_equal "b", list.tail_data
  end

  def test_prepend_add_an_element_at_the_beginning_of_the_list
    list = LinkedList.new
    list.append("a")
    list.prepend("b")
    assert_equal "a", list.tail_data
  end


  def test_includes?
    list = LinkedList.new
    list.append(Node.new("a"))
    assert_equal "a", list.tail_data.data
  end

  def test_find_by_value
    list = LinkedList.new()
    list.append("a")
    found = list.find("a")
    assert_equal "a", found.data
  end

  # def test_pop_an_element_from_the_end_of_the_list
  #   skip
  #   list = LinkedList.new
  #   node = Node.new("b")
  #   new_list = list.append(node)
  #   list.remove(node)
  #   assert_equal node, new_list.data
  # end

  # def test_count_the_number_of_elements_in_the_list
  #   skip
  #   list = LinkedList.new(Node.new("a"))
  #   new_list = list.append(Node.new("b"))
  #   assert 2, new_list.count
  # end

  def test_return_head
    list = LinkedList.new
    list.append("a")
    list.append("b")
    head = list.return_head
    assert_equal "a", head
  end

  # def return_tail # return the tail value at the end of the list
  # end
  #
  # def find_by_index # find the value at a numeric position
  # end

  # def remove_by_index # remove_by_index removes the value at the specified index
  # end
  #
  # def remove_by_value # remove_by_value removes the first occurrence of the specified value
  # end


end
