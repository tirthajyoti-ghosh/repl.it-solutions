def sort_itself(array)
  (1...array.length).each do |i|
  	current = array[i]
  	hole = i
  	
  	while(hole > 0 && array[hole -1 ] > current)
  		array[hole] = array[hole - 1]
  		hole -= 1
  	end
  	
  	array[hole] = current
  	
  	puts array.join(' ')
  end
end

sort_itself([1, 4, 3, 6, 9, 2])
# => 1 4 3 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 2 3 4 6 9
