class LinkedList
  attr_reader :head
  
  def initialize
    @head = nil
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)      
    else present_node = @head 
      until present_node.next_node == nil
        present_node = present_node.next_node 
      end
      present_node.next_node = Node.new(data)
    end
  end

  def count 
    counter = 0
    if @head == nil 
      0 
    else
      present_node = @head
      counter += 1 
      until present_node.next_node == nil
        counter += 1 
        present_node = present_node.next_node 
      end
    end
    counter
  end

  def to_string 
    starter_data = ""
    if @head == nil
      starter_data
    else 
      present_node = @head
      while present_node.next_node != nil
      starter_data += "The #{present_node.surname} Family"
      starter_data += ' '
      present_node = present_node.next_node
      end
    end
    starter_data += "The #{present_node.surname} Family"
  end
end