def bfs(graph)
  discovered = Array.new(graph.keys.length, false)
  queue = []
  path = []

  # Push the first element to queue[]
  queue.push(0)

  # Mark it as discovered
  discovered[0] = true

  # Repeat until queue is empty
  until queue.empty?

    # Dequeue first element and set it as current_node
    current_node = queue.shift

    # Push current_node to path[]
    path.push(current_node)

    # Explore adjacent nodes
    graph[current_node].each do |adjacent|

      # Check if node already discovered
      unless discovered[adjacent]

        # Enqueue node
        queue.push(adjacent)

        # Mark it as discovered
        discovered[adjacent] = true
      end
    end
  end

  path
end

p bfs({
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
})
# => [0, 2, 5, 3, 4, 1]
