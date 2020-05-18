class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class LinkedList
  #setup head and tail
  def initialize
    @head = nil
    @tail = nil
  end

  def add(number)
    new_node = Node.new(number)
    
    if @head.nil?
      @head = new_node
      return
    end
    
    current_node = @head
    until current_node.next_node.nil?
      current_node = current_node.next_node
    end
    
    current_node.next_node = new_node
  end

  def get(index)
    current_node = @head
    
    index.times do
      current_node = current_node.next_node  
    end
    
    current_node.value
  end
end

list = LinkedList.new

list.add(3)
list.add(6)
list.add(5)
list.add(7)
list.add(1)
list.add(9)
puts list.get(5)
