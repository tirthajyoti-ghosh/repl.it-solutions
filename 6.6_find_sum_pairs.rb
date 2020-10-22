def find_pairs(array, sum)
  hash = array.each_with_index.to_h
  
  output = []
  
  array.each do |item|
  	complement = sum - item
  	if hash.include?(complement)
  		output.push([item, complement]) unless output.include?([complement, item])
  	end
  end
  
  output
end

p find_pairs([-8, 7, 11, 8, 5, 9, 3, 6, 2, -9, 4], 0)
