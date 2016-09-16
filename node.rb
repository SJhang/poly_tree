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

  def get_value
    @value
  end

  def set_parent=(node)
    @parent = node
  end
end
