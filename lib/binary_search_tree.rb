class BinarySearchTree
  attr_reader :head
  def initialize
    @head = nil
  end

  # def insert(score, movie_title)
  #   data = {score, movie_title]
  #   if @head == nil
  #     @head = Node.new(data)
  #   else
  #     node = @head
  #     node.node_comparison(node, score)
  #     node = node.next_node until node.next_node == nil
  #     node.add_new_node(Node.new(data))
  #   end
  # end

  def count
    if @head == nil
      node_count = 0
    else
      node = @head
      node_count = 1
      until node.next_node == nil do
        node_count += 1
        node = node.next_node
      end
      node_count
    end
  end

  def include?(score)
    node = @head
    scores = []
    until node == nil
      scores << node.data.first
      node = node.next_node
    end
    scores.include?(score)
  end

  def max
    node = @head
    top_score = {node.data[1]=>node.data[0]}
    until node == nil
      if node.data.first > top_score.values[0]
        top_score = {node.data[1]=>node.data[0]}
      end
      node = node.next_node
    end
    top_score
  end

  def min
    node = @head
    low_score = {node.data[1]=>node.data[0]}
    until node == nil
      if node.data.first < low_score.values[0]
        low_score = {node.data[1]=>node.data[0]}
      end
      node = node.next_node
    end
    low_score
  end

  def sort
    node = @head
    movie_list = []
    until node == nil
      movie_list << {node.data[1]=>node.data[0]}
      node = node.next_node
    end
    movie_list.sort_by {|movie| movie.values[0]}
  end

  def load(file)

  end
end
