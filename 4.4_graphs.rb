# Recursive solution:

def graph(hash_graph, array = [], key = 0)
	return array if array[-1] == 4
	
	array << hash_graph.keys[key]
	
	key = hash_graph[key][0]
	graph(hash_graph, array, key)
end

# Iterative solution:

# def graph(hash_graph)
# 	key = 0
	
# 	array = [0]
	
# 	while array[-1] != 4
# 		key = hash_graph[key][0]
# 		array << key
# 	end
	
# 	array
# end

hash = { 
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
}

p graph(hash)
# => [0, 2, 5, 4]
