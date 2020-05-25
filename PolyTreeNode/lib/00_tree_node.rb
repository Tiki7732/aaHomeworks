class PolyTreeNode

    attr_reader :value, :children, :parent
    
    def initialize(value)
        @parent = nil
        @children = []
        @value = value
    end

    def parent=(node)
        @parent = node
    end
end