class Node
  attr_accessor :parent, :children

  def initialize(value)
    @value = value
    @parent = nil
    @children = Array.new
  end

  def get_parent
    @parent
  end

  def get_children
    @children
  end

  def remove_child(node)
    @children.delete_if {|child| child == node}
  end

  def get_value
    @value
  end

  def set_parent=(node)
    if @parent.nil?
      @parent = node
    else
      @parent.remove_child(self)
      @parent = node
    end
    @parent.add_child(self)
  end

  def add_child(node)
    @children << node
  end
end
