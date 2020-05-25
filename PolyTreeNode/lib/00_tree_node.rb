class PolyTreeNode

    attr_reader :value, :children
    attr_accessor :parent
    def initialize(value)
        @parent = nil
        @children = []
        @value = value
    end
end