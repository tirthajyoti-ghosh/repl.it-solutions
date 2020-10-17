class Node
	attr_reader :data
	attr_accessor :left, :right
	
	def initialize(data)
		@data = data	
	end
end

def array_to_tree(array, i)
	return nil if i >= array.length || array[i] == 0
	
	node = Node.new(array[i])
	node.left = array_to_tree(array, 2*i+1)
	node.right = array_to_tree(array, 2*i+2)
	
	node
end

def find_height(node)
	return 0 if node.nil?
	
	left_height = find_height(node.left)
	right_height = find_height(node.right)
	
	[left_height, right_height].max + 1
end

def binary_tree_height(array_tree)
  tree = array_to_tree(array_tree, 0)
  
  find_height(tree)
end

puts binary_tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3
