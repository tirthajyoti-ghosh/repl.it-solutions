class Node
	attr_reader :data
  attr_accessor :left, :right
  
  def initialize data
    @data = data
  end
end

# helper function
def array_to_tree(array, i = 0)
  return nil if i >= array.length || array[i] == 0

  node = Node.new(array[i])

  node.left = array_to_tree(array, 2 * i + 1)
  node.right = array_to_tree(array, 2 * i + 2)

  node
end

# helper function
def height(node)
	return 0 if node.nil?
	
	left_height = height(node.left)
	right_height = height(node.right)
	
	[left_height, right_height].max + 1
end

def balanced?(node)

  # Exit condition
  return true if node.nil?
  
  # Evaluates left sub-tree height
  left_height = height(node.left)

  # Evaluates right sub-tree height
  right_height = height(node.right)

  # Checks if absolute difference between left and right height
  # is less than or equal to 1
  return false if (left_height - right_height).abs > 1

  # Asks the current node's left and right tree to repeat the above steps
  # Both has to return true for the tree to be valid
  balanced?(node.left) && balanced?(node.right)
end

def balanced_tree?(array)
  root = array_to_tree(array)

  balanced?(root)
end

puts balanced_tree?([1, 2, 0, 3, 4, 0, 0])
# => false

puts balanced_tree?([1, 2, 3, 4, 5, 6, 7])
# => true
