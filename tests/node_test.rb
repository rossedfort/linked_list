require 'minitest/autorun'
require 'minitest/emoji'
require './lib/node'

class NodeTests < Minitest::Test

  def test_you_can_create_new_nodes
    assert Node.new("a")
  end

  def test_nodes_take_a_paramter
    assert_equal "a", Node.new("a").data
  end

  def test_nodes_take_a_fixnum
    assert_equal 5, Node.new(5).data
  end

  def test_nodes_deafault_to_nil_values_unless_otherwise_specified
    assert_equal nil, Node.new.next_node
  end

end
