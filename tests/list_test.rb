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
    assert_equal nil, Node.new.next_node
  end

  def test_you_can_create_a_list
    assert LinkedList.new
  end

  def test_append_an_element_to_the_end_of_the_list
    list = LinkedList.new
    list.prepend("b")
    list.append("a")
    assert_equal "a", list.head
  end

  def test_prepend_add_an_element_at_the_beginning_of_the_list
    list = LinkedList.new
    list.prepend("b")
    list.prepend("a")
    assert_equal "b", list.head
  end

  def test_includes?
    list = LinkedList.new
    list.prepend(Node.new("a"))
    assert_equal "a", list.
  end

  def test_find_by_value
    list = LinkedList.new()
    list.prepend("a")
    found = list.find("a")
    assert_equal "a", found.data
  end

  def test_return_head
    list = LinkedList.new
    list.prepend("a")
    list.prepend("b")
    head = list.head
    assert_equal "a", head
  end

  def test_return_tail
    list = LinkedList.new
    list.prepend("a")
    list.prepend("b")
    assert_equal "b", list.tail.data
  end

  def test_pop_an_element_from_the_end_of_the_list
    list = LinkedList.new
    list.prepend("a")
    list.prepend("b")
    popped = list.pop
    assert_equal "b", popped
  end

  def test_count_the_number_of_elements_in_the_list
    list = LinkedList.new
    list.prepend("a")
    list.prepend("b")
    assert 2, list.count
  end

end
