require_relative "node.rb"

class Stack 
    attr_accessor :top, :last, :size

    def initialize
        @top = nil
        @last = nil
        @size = 0
    end    

    def push!(data)
        node = Node.new(data)

        if !@top
            @top = node
            @last = node
        else
            old = @top
            @top = node
            node.next = old
          
        end
        return @size += 1
    end

    def pop! 

        return nil if is_empty?
        old = @top
        if @top == @last
            @last = nil
        end

        @top = @top.next

        @size -= 1
        return old.data
    
    end

    def is_empty?
        return true if !@top
        return false        
        
    end

    def peek? 
        return 'Pilha vazia!' if is_empty? 
            
        return @top.data
    end

end



