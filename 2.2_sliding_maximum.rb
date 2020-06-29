def sliding_maximum(k, array)
  output_arr = []
  array.each_cons(k).to_a.each { |sub_arr| output_arr << sub_arr.max }
  
  output_arr
end

sliding_maximum(3, [1, 3, 5, 7, 9, 2])
# => [5, 7, 9, 9]
