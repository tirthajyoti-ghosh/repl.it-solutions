class Node
  attr_accessor :value, :next_node
  
  def initialize(value,next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
  def initialize
    @head = nil
  end

  def push(number)
    new_node = Node.new(number)
    
    if @head.nil?
      @head = new_node
      return
    else
      new_node.next_node = @head
      @head = new_node
    end
  end
  
  def pop
    if @head.nil?
      return -1
    else
      value = @head.value
      next_node = @head.next_node
      @head = next_node
    end
    
    value
  end
  
  def min
    min = @head.value
    
    current_node = @head
    until current_node.nil?
      min = current_node.value if current_node.value < min
      
      current_node = current_node.next_node
    end
    
    min
  end

end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.min
# => 3

stack.pop
stack.push(7)
puts stack.min
# => 3

stack.push(2)
puts stack.min
# => 2

stack.pop
puts stack.min
# => 3
