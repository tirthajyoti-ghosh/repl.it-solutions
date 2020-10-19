class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

def array_to_tree(array, i = 0)
  return nil if i >= array.length || array[i] == 0

  node = Node.new(array[i])

  node.left = array_to_tree(array, 2 * i + 1)
  node.right = array_to_tree(array, 2 * i + 2)

  node
end

def search_tree_validate(node, min = nil, max = nil)
  
  # an empty node means the current branch is valid
  return true if node.nil?

  # if there's a min constraint and the current node is less than that, then the current branch is invalid
  return false if min && node.data < min

  # if there's a max constraint and the current node is greater than that, then the current branch is invalid
  return false if max && node.data > max

  # recursive calls
  # the first one validates the left subtree 
  # the second one validates the right subtree
  search_tree_validate(node.left, min, node.data) && search_tree_validate(node.right, node.data, max)

end

def search_tree?(array)
	root = array_to_tree(array)
  
  search_tree_validate(root)
end

puts search_tree?([10, 4, 12])
# => true

puts search_tree?([10, 5, 7])
# => false
