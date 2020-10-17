def leftmost_nodes_sum(array)
  left_node = 0

  sum = 0

  until array[left_node].nil?
    sum += array[left_node]
    left_node = 2 * left_node + 1  
  end

  sum
end

p leftmost_nodes_sum([5, 3, 4, 11, 13, 15, 21, 10, 4, 7, 2, 8, 0, 9, 0])
