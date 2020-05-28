class PolyTreeNode

    attr_accessor :value, :children
    attr_reader :parent
    
    def initialize(value)
        @parent = nil
        @children = []
        @value = value
    end

    def parent=(node)
        return if self.parent == node
        self.parent.children.delete(self) unless self.parent.nil?
        @parent = node
        self.parent.children.push(self) unless node.nil?
    end

    def children
        @children
    end
end

# n1 = PolyTreeNode.new("root1")
# n2 = PolyTreeNode.new("root2")
# n3 = PolyTreeNode.new("root3")

# # connect n3 to n1
# n3.parent = n1
# # connect n3 to n2
# n3.parent = n2

# # this should work
# raise "Bad parent=!" unless n3.parent == n2
# raise "Bad parent=!" unless n2.children == [n3]

# # this probably doesn't
# raise "Bad parent=!" unless n1.children == []