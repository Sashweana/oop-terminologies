# Inheritance
# A child class can inherit all data/behavior from its parent class

class Tree
  attr_reader :height, :age

  def initialize
    @age = 0
    @height = 0
  end

  def grow!
    raise NotImplementedError, 'You must implement the grow! method'
  end
end

class OrangeTree < Tree
  def grow!
    @height += 10
  end
end

class MapleTree < Tree
  def grow!
    @height += 5
  end
end

orange_tree = OrangeTree.new
p orange_tree
orange_tree.grow!
p orange_tree

puts "---------------------"
maple_tree = MapleTree.new
p maple_tree
maple_tree.grow!
p maple_tree
