def appears_most_times(array)
  hash = Hash.new(0)
  
  array.each { |e| hash[e] += 1 }  
  
  array.max_by { |k| hash[k] }
end

puts appears_most_times([1, 2, 3, 1, 5])
# => 1

puts appears_most_times([23, 43, 67, 88, 42, 35, 77, 88, 99, 11])
# => 88

puts appears_most_times([4376, -345, -345, 4376, -345, 84945, 4376, -345, -26509, 4376, 84945, 84945, -26509, 896341, 4376])
# => 4376
