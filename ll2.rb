class LinkedListValue
  attr_accessor :value, :next_node

  def initialize(val)
    @value = val
  end

  def to_s
    return @value
  end
end

class LinkedList
  def add(value)
    if @head == nil
      @head = LinkedListValue.new(value)
    else
      last = @head
      while last.next_node != nil
        last = last.next_node
      end
      last.next_node = LinkedListValue.new(value)
    end
  end  

  def to_s
    if @head != nil
      last = @head
      values = last.value.to_s
      while last.next_node != nil
        last = last.next_node
        values += "," + last.value
      end
      return values
    end
  end

  def reverse_list()
    if @head != nil && @head.next_node !=nil
      previous = nil
      current = @head
      next_ = nil
      while current != nil
        next_ = current.next_node        
        current.next_node = previous
        previous = current
        current = next_        
      end
      @head = previous
    end
  end
end

list = LinkedList.new()

list.add("a")
list.add("b")
list.add("c")
list.add("d")
list.add("e")

puts list.to_s()

list.reverse_list()

puts list.to_s()