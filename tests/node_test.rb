require 'minitest/autorun'
require 'minitest/emoji'
require './lib/node'

class NodeTests < Minitest::Test

  def test_there_is_a_node_class
    assert Node.new
  end

  def test_nothing_yet
    skip
  end

end
