class PolyTreeNode

    attr_accessor :value, :children
    attr_reader :parent
    
    def initialize(value)
        @parent = nil
        @children = []
        @value = value
    end

    def parent=(node)
        @parent = node
        self.parent.children.push(self) unless node.nil?
    end

    def children
        @children
    end
end