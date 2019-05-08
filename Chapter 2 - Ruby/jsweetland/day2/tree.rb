class Tree
    attr_accessor :children, :node_name

    def initialize(tree)
        node = tree.first
        p node
        @node_name = node[0]
        @children = node[1].map do |child|
            subtree = {child[0] => child[1]} 
            Tree.new(subtree)
        end
    end

    def visit_all(&block)
        visit &block
        children.each {|c| c.visit_all &block}
    end
    
    def visit(&block)
        block.call self
    end
end

family_tree = Tree.new({'grandpa' => {
    'dad' => {
        'child 1' => {},
        'child 2' => {},
    },
    'uncle' => {
        'child 3' => {},
        'child 4' => {}
    }
}})

puts
puts 'Visiting a node'
puts
family_tree.visit {|node| puts node.node_name}

puts
puts 'Visiting entire tree'
puts
family_tree.visit_all {|node| puts node.node_name}
