class LinkedList
  attr_reader :head
  
  def initialize
    @head = nil
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)      
    else @head = present_node
      until present_node.next_node == nil
        present_node = present_node.next_node 
      end
      present_node.next_node = Node.new(data)
    end
  end
end