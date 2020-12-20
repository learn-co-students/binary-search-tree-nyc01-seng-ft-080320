
require 'ostruct'

class BST

    attr_accessor :data, :left, :right

    def initialize(data)
        self.data = data
    end


    def insert(data)
        if data <= self.data
            left.nil? ? self.left = BST.new(data) : self.left.insert(data)
        elsif data > self.data
            right.nil? ? self.right = BST.new(data) : self.right.insert(data)
        end
    end

    def each(&block)
        left.each(&block) if left
        block.yield(data)
        right.each(&block) if right
    end

end