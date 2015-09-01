require 'minitest/autorun'
require 'minitest/emoji'
require './lib/list'

class ListTests < Minitest::Test

  def test_you_can_create_new_nodes
    assert LinkedList.new.new_node
  end

end
