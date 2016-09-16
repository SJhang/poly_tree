require 'byebug'

class Node
  attr_accessor :parent, :children
  attr_reader :value

  def initialize(value="new_node")
    @value = value
    @parent = nil
    @children = Array.new
  end

  def remove_child(node)
    if @children.include?(node)
      @children.delete(node)
    else
      raise
    end
  end



  def parent=(node)
    if @parent.nil?
      #delete current nodes kids before we set new parent.
      @parent = node
      @parent.add_child(self) unless @parent == nil
    else
      @parent.remove_child(self)
      @parent = node
      @parent.add_child(self) unless @parent == nil
    end
  end

  def add_child(node)
    @children << node unless @children.include?(node)
    node.parent = self unless node.parent == self
  end
end
