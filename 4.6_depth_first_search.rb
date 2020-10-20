# Iterative solution:

def depth_first_search(graph)
  discovered = Array.new(graph.keys.length, false)
  stack = []
  path = []
  
  stack.push(0)
  discovered[0] = true
  
  until stack.empty?
  	current = stack.pop
  	
  	path.push(current)
  	
  	graph[current].reverse_each do |adjacent|
  		unless discovered[adjacent]
  			stack.push(adjacent)
  			discovered[adjacent] = true
  		end
  	end
  end
  
  path
end

# Recursive solution:

def dfs_recursive(graph)
	discovered = Array.new(graph.keys.length, false)
	path = []
	
	dfs_visit(0, graph, discovered, path)
end

def dfs_visit(current, graph, discovered, path)
	discovered[current] = true
	
	path.push(current)
	
	graph[current].each do |adjacent|
		unless discovered[adjacent]
			dfs_visit(adjacent, graph, discovered, path)
		end
	end
end

p depth_first_search({
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
})
# => [0, 2, 5, 4, 1, 3]
