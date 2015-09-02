require 'minitest/autorun'
require 'minitest/emoji'
require './lib/node'

class NodeTests < Minitest::Test

  def test_there_is_a_node_being_initialized
    assert Node.new("a")
  end

end
