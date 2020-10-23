def insertion_sort(array)
  (1...array.length).each do |i|
  	current = array[i]
  	hole = i
  	
  	while(hole > 0 && array[hole - 1] > current)
  		array[hole] = array[hole - 1]
  		
  		puts array.join(' ')
  		
  		hole -= 1
  	end
  	
  	array[hole] = current
  end
	puts array.join(' ')
end

insertion_sort([1, 3, 2])
# => 1 3 3
#    1 2 3

puts '-' * 20

insertion_sort([1, 4, 6, 9, 3])
# => 1 4 6 9 9
#    1 4 6 6 9
#    1 4 4 6 9
#    1 3 4 6 9
