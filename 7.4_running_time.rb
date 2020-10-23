def running_time(array)
  shift = 0
  
  (1...array.length).each do |i|
    current = array[i]
    hole = i

    while(hole > 0 && array[hole - 1] > current)
      array[hole] = array[hole - 1]
      shift += 1
      hole -= 1
    end

    array[hole] = current
  end

  shift
end

puts running_time([2, 1, 3, 1, 2])
# => 4
