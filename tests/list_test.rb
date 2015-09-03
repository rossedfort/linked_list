require 'minitest/autorun'
require 'minitest/emoji'
require './lib/list'
require './lib/node'

class ListTests < Minitest::Test

  def test_you_can_create_a_list
    assert LinkedList.new
  end

  def test_append_an_element_to_the_end_of_the_list
    list = LinkedList.new
    list.append("b")
    list.append("a")
    assert_equal "a", list.head.data
  end

  def test_append_a_nil_element_to_the_end_of_the_list
    list = LinkedList.new
    list.append(nil)
    assert_equal nil, list.head.data
  end

  def test_prepend_an_element_at_the_beginning_of_the_list
    list = LinkedList.new
    list.prepend("b")
    list.prepend("a")
    assert_equal "a", list.head.data
  end

  def test_prepend_a_nil_element_at_the_beginning_of_the_list
    list = LinkedList.new
    list.prepend(nil)
    assert_equal nil, list.head.data
  end

  def test_includes?
    list = LinkedList.new
    list.append(Node.new("a"))
    assert_equal "a", list.find_value("a").data
  end

  def test_return_head
    list = LinkedList.new
    list.append("a")
    list.append("b")
    head = list.head
    assert_equal "b", list.head.data
  end

  def test_return_head_if_empty
    list = LinkedList.new
    assert_equal nil, list.head
  end

  def test_return_tail
    list = LinkedList.new
    list.prepend("a")
    list.prepend("b")
    assert_equal "a", list.find_tail.data
  end

  def test_return_tail_if_empty
    list = LinkedList.new
    assert_equal nil, list.find_tail
  end

  def test_pop_an_element_from_the_end_of_the_list
    list = LinkedList.new
    list.append("a")
    list.append("b")
    popped = list.pop
    assert_equal "b", popped
  end

  def test_count_the_number_of_elements_in_the_list
    list = LinkedList.new
    list.prepend("a")
    list.prepend("b")
    assert 2, list.count
  end

  def test_find_by_value
    list = LinkedList.new
    list.append("a")
    assert_equal "a", list.find_value("a").data
  end

  def test_remove_by_value
    list = LinkedList.new
    list.append("a")
    list.append("b")
    assert_equal "b", list.remove_value("b")
  end

  def test_find_by_index
    list = LinkedList.new
    list.append("a")
    list.append("b")
    assert_equal "b", list.find_index(1,"b").data
  end

  def test_remove_by_index
    list = LinkedList.new
    list.append("a")
    list.append("b")
    assert_equal "b", list.remove_index(1,"b")
  end

end
