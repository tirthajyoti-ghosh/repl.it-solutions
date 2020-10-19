class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

class BST
  def initialize
    @current_node = nil
    @root
  end

  def insert(new_node, head = @root)

    # Base case (if tree is empty)
    if @root.nil?
      @root = new_node
      return
    end

    # Terminating condition (recursion stops when an spot for the new_node is found)
    if head.nil?
      return new_node
    end

    # if the new node is less than the head.data, go to the left descendant
    if new_node.data <= head.data
      head.left = insert(new_node, head.left) # head gets updated

    # if the new node is greater than the head.data, go to the right descendant
    else
      head.right = insert(new_node, head.right)
    end

    # Return the whole tree
    head
  end

  def pre_order(node = @root)
    if node == nil
      return ''
    end
  
    result = "#{node.data} "
    result += pre_order(node.left)
    result += pre_order(node.right)
  end
end


def binary_search_tree(array)
  tree = BST.new
  array.each { |e| tree.insert(Node.new(e)) }
  tree.pre_order
end

puts binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])
# => "8 3 1 6 4 7 10 14 13"
