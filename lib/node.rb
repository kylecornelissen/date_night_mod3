class Node
  attr_reader :data, :next_node
  def initialize(data)
    @data = data
    @next_node = nil
    @previous_node = nil
  end

  def add_new_node(new_node)
    @next_node = new_node
  end

  def add_previous_node(new_node)
    @previous_node = new_node
  end

  # def node_comparison(node, score)
  #   if node.value == score
  #     return node
  #   elsif node.value > value
  #     insert
  #   end
  # end
end
