class LinkedListNode
    attr_accessor :value, :next_node

    def initialize(value, next_node=nil)
      @value = value
      @next_node = next_node
    end  
  end
 
  class Stack
    attr_accessor :head

    def initialize
        @head = nil
    end

    # Push a value onto the stack
    def push(value)
        if head == nil
          @head = LinkedListNode.new(value)
        else
          newNode = LinkedListNode.new(value)
          temp = @head
          @head = newNode
          @head.next_node = temp
        end
    end

    def print_values()
      values = @head.value.to_s
      current = @head
      while current.next_node != nil      
        current = current.next_node 
        values += "," + current.value.to_s
      end
      return values
    end

    def pop
      if @head != nil
        popped = @head.value
        @head = @head.next_node
        return popped
      end
      return "empty"
    end
 
    def reverse_stack()
      while self.head != nil
        puts self.pop()
      end
    end
 
end

  stack = Stack.new()
  stack.push(12)
  stack.push(99)
  stack.push(37)

  puts stack.reverse_stack()