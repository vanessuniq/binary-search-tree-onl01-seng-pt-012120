class BST
    attr_accessor :data, :left, :right
    def initialize(data)
       @data = data
       @left = nil
       @right = nil
    end

    def insert(data)
        if data <= self.data
            self.left.nil? ? self.left = BST.new(data) : self.left.insert(data)
        else
            self.right.nil? ? self.right = BST.new(data) : self.right.insert(data)
        end
    end

    def each(&block)
        self.left.each(&block) if self.left
        block.call(self.data)
        self.right.each(&block) if self.right
    end
    
    
end