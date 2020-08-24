def leftmost_nodes_sum(array)
  left_index = (0...array.length).map { |i| 2*i+1 if (2*i+1) < array.length-1 }.reject(&:nil?)
  
  sum = 0
  left_index.each { |i| sum += array[i] }
  
  sum + array[0]
end

puts leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9])
