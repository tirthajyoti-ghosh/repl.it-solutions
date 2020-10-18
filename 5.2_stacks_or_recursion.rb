def tree_height(array)
  return 0 if array.size == 0

  height = 1

  node = array.length - 1

  while node > 1
    height += 1

    node = (node - 1) / 2
  end

  height
end

p tree_height([1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0])

# Implementation details:

# Objective:

# Find height of a binary tree withour using recursion.

# Solution:

# The height of a tree is the number of nodes between the root and last node.
# So if we start from the last node (the last element of the array) and find 
# it's parent node until we reach the root node (last node's parent node, 
# then that parent node's parent node, etc.), we can get the height of the
# tree by incrementing the height (initially set to 1) by one everytime we
# visit a parent node. We can find the a node's parent node (position)
# by this formula - (node - 1) / 2.

# We run the loop until we find the root node i.e., node == 0
# and on each iteration, we modify node like this - node = (previous_node - 1) / 2.