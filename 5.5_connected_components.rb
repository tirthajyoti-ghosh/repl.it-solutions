def connected_graph?(graph)
  discovered = Array.new(graph.keys.length, false)
  queue = []
  
  queue.push(0)
  discovered[0] = true
  
  until queue.empty?
  	current = queue.shift
  	
  	graph[current].each do |adjacent|
  		unless discovered[adjacent]
  			queue.push(adjacent)
  			discovered[adjacent] = true
  		end
  	end
  end
  
  # If any element is false then some nodes remained undiscovered.
  discovered.none?(false)
end

puts connected_graph?({
  0 => [2], 
  1 => [4], 
  2 => [0, 5, 3], 
  3 => [5, 2], 
  4 => [5, 1], 
  5 => [4, 2, 3]
})
# => true

puts connected_graph?({
  0 => [1, 2], 
  1 => [0, 2], 
  2 => [0, 1, 3, 4, 5], 
  3 => [2, 4], 
  4 => [3, 2], 
  5 => [2]
})
# => true
